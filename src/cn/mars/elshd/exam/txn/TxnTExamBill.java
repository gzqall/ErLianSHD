package cn.mars.elshd.exam.txn;

import cn.mars.common.component.exception.TxnErrorException;
import cn.mars.common.component.exception.TxnException;
import cn.mars.common.component.logger.LOG;
import cn.mars.common.component.logger.LogFactory;
import cn.mars.common.component.util.DateUtil;
import cn.mars.common.context.DataBus;
import cn.mars.common.context.Recordset;
import cn.mars.common.proxy.config.ParamValues;
import cn.mars.common.tag.dao.InjectDAO;
import cn.mars.elshd.declar.dao.TDeclarInfo;
import cn.mars.elshd.exam.dao.TExamBill;
import cn.mars.common.context.TxnContext;
import cn.mars.elshd.param.dao.TSystemParam;

import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/**
 * 审核单信息表的服务类
 * @author
 *
 */
public class TxnTExamBill
{
	/**
	 * 日志
	 */
	protected static final LOG log = LogFactory.getLogger( TxnTExamBill.class.getName() );

	/**
	 * 框架保留的三个变量：输入节点、输出节点、缺省参数（在Action/Step中配置的参数）
	 */
	public String inputNode = null;
	public String outputNode = null;
	public ParamValues param = null;
	
	/**
	 * 数据表[t_exam_bill]的DAO对象,通过[@InjectDAO]在运行时初始化
	 */
	@InjectDAO private TExamBill daoTExamBill = null;
    /**
     * 数据表[t_system_param]的DAO对象,通过[@InjectDAO]在运行时初始化
     */
    @InjectDAO private TSystemParam daoTSystemParam = null;
    /**
     * 数据表[t_declar_info]的DAO对象,通过[@InjectDAO]在运行时初始化
     */
    @InjectDAO private TDeclarInfo daoTDeclarInfo = null;

	/** 查询审核单列表
	 * @param context 交易上下文
	 * @throws TxnException
	 * @see t_exam_bill
	 */
	public void txn01A01011( TxnContext context ) throws TxnException
	{
		daoTExamBill.selectTExamBillList(context).execute(inputNode, outputNode);
	}
	
	/** 修改审核单信息
	 * @param context 交易上下文
	 * @throws TxnException
	 * @see t_exam_bill
	 */
	public void txn01A01012( TxnContext context ) throws TxnException
	{
	    DataBus db_input = context.getRecord( inputNode );
        DataBus db_declar = context.getRecord( "declar" );

        String bill_id = db_input.getValue( "bill_id" );
        Set<Map.Entry<String, Object>> declar_set = db_declar.entrySet();
        Iterator<Map.Entry<String, Object>> it = declar_set.iterator();
        Recordset rs_declar = new Recordset();
        while( it.hasNext() ) {
            Map.Entry<String, Object>  curr_declar = it.next();
            String key = curr_declar.getKey();
            String value = (String) curr_declar.getValue();
            if( value != null && value.length() > 0 ) {
                DataBus db_one = new DataBus();
                db_one.setValue( "index_no", key );
                db_one.setValue( "declar_no", value );
                db_one.setValue( "bill_id", bill_id );
                rs_declar.add( db_one );
            }
        }
		daoTExamBill.updateOneTExamBill(context).execute(inputNode);
		daoTDeclarInfo.updateOneTDeclarInfo( context ).execute( "declar" );
	}
	
	/** 增加审核单信息
	 * @param context 交易上下文
	 * @throws TxnException
	 * @see t_exam_bill
	 */
	public void txn01A01013( TxnContext context ) throws TxnException
	{
	    DataBus db_para = new DataBus();
	    db_para.setValue( "param_id", "bill_seq" );
        db_para.setValue( "bk_flag1", "d" );
        daoTSystemParam.updateSystemParamForUpdate( context ).execute( db_para );
        String parm_value = daoTSystemParam.selectOneTSystemParam( context ).getRecord( db_para ).getValue( "param_value" );
        int bill_seq = Integer.parseInt( parm_value );
        bill_seq ++;
        if( bill_seq > 99999 ) {
            bill_seq = 1;
        }
        String bill_seq_ss = String.format( "%05d", bill_seq );
        log.debug( "the bill seq ss ------------"+bill_seq_ss );

        DataBus db_input = context.getRecord( inputNode );
        String bill_id = DateUtil.currentDate()+bill_seq_ss;
        db_input.setValue( "bill_id", bill_id );
        db_input.setValue( "bill_status", "1" );

        DataBus db_declar = context.getRecord( "declar" );

        Set<Map.Entry<String, Object>> declar_set = db_declar.entrySet();
        Iterator<Map.Entry<String, Object>> it = declar_set.iterator();
        Recordset rs_declar = new Recordset();
        while( it.hasNext() ) {
            Map.Entry<String, Object>  curr_declar = it.next();
            String key = curr_declar.getKey();
            if( "view_flag".equals( key ))
                continue;
            String value = (String) curr_declar.getValue();
            if( value != null && value.length() > 0 ) {
                DataBus db_one = new DataBus();
                db_one.setValue( "index_no", key );
                db_one.setValue( "declar_no", value );
                db_one.setValue( "bill_id", bill_id );
                rs_declar.add( db_one );
            }
        }

        if( rs_declar.size() > 90 )
            throw new TxnErrorException( "DataError", "一张审批单最多可添加90张报关单" );

		daoTExamBill.insertOneTExamBill(context).execute(inputNode);
        daoTDeclarInfo.insertOneTDeclarInfo( context ).execute( rs_declar );

        db_para.setValue( "param_value", String.valueOf( bill_seq ) );
        daoTSystemParam.updateOneTSystemParam( context ).execute( db_para );
        if( ! "true".equals(  db_declar.getValue( "view_flag" ) ) )
            context.remove( "declar" );
	}


	/** 查询审核单用于修改
	 * @param context 交易上下文
	 * @throws TxnException
	 * @see t_exam_bill
	 */
	public void txn01A01014( TxnContext context ) throws TxnException
	{
		daoTExamBill.selectOneTExamBill(context).execute(inputNode, outputNode);
        DataBus db_back = context.getRecord( "declar" );
        Recordset rs_declar = daoTDeclarInfo.selectTDeclarInfoList(context).getRecordset( inputNode );
        for( DataBus db_declar : rs_declar ) {
            db_back.setValue( db_declar.getValue( "index_no" ), db_declar.getValue( "declar_no" ) );
        }
	}
	
	/** 删除审核单信息
	 * @param context 交易上下文
	 * @throws TxnException
	 * @see t_exam_bill
	 */
	public void txn01A01015( TxnContext context ) throws TxnException
	{
		daoTExamBill.deleteOneTExamBill(context).execute(inputNode);
	}
	
	/** 审核单的记录信息
	 * @param context 交易上下文
	 * @throws TxnException
	 * @see t_exam_bill
	 */
	public void txn01A01016( TxnContext context ) throws TxnException
	{
		daoTExamBill.selectOneTExamBill(context).execute(inputNode, outputNode);
		DataBus db_back = context.getRecord( "declar" );
		Recordset rs_declar = daoTDeclarInfo.selectTDeclarInfoList(context).getRecordset( inputNode );
		for( DataBus db_declar : rs_declar ) {
            db_back.setValue( db_declar.getValue( "index_no" ), db_declar.getValue( "declar_no" ) );
        }
	}
    /** 序号归0
     * @param context 交易上下文
     * @throws TxnException
     * @see t_exam_bill
     */
    public void txn01A01018( TxnContext context ) throws TxnException
    {
        DataBus db_para = new DataBus();
        db_para.setValue( "param_id", "bill_seq" );
        db_para.setValue( "param_value", "0" );

        daoTSystemParam.updateOneTSystemParam( context ).execute( db_para );
    }
		
}

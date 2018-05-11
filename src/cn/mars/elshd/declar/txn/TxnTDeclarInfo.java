package cn.mars.elshd.declar.txn;

import cn.mars.common.component.exception.TxnException;
import cn.mars.common.component.logger.LOG;
import cn.mars.common.component.logger.LogFactory;
import cn.mars.common.proxy.config.ParamValues;
import cn.mars.common.tag.dao.InjectDAO;
import cn.mars.elshd.declar.dao.TDeclarInfo;
import cn.mars.common.context.TxnContext;

/**
 * 报关单信息表的服务类
 * @author
 *
 */
public class TxnTDeclarInfo
{
	/**
	 * 日志
	 */
	protected static final LOG log = LogFactory.getLogger( TxnTDeclarInfo.class.getName() );

	/**
	 * 框架保留的三个变量：输入节点、输出节点、缺省参数（在Action/Step中配置的参数）
	 */
	public String inputNode = null;
	public String outputNode = null;
	public ParamValues param = null;
	
	/**
	 * 数据表[t_declar_info]的DAO对象,通过[@InjectDAO]在运行时初始化
	 */
	@InjectDAO private TDeclarInfo daoTDeclarInfo = null;
	
	/** 查询报关单列表
	 * @param context 交易上下文
	 * @throws TxnException
	 * @see t_declar_info
	 */
	public void txn01B01011( TxnContext context ) throws TxnException
	{
		daoTDeclarInfo.selectTDeclarInfoList(context).execute(inputNode, outputNode);
	}
	
	/** 修改报关单信息
	 * @param context 交易上下文
	 * @throws TxnException
	 * @see t_declar_info
	 */
	public void txn01B01012( TxnContext context ) throws TxnException
	{
		daoTDeclarInfo.updateOneTDeclarInfo(context).execute(inputNode);
	}
	
	/** 增加报关单信息
	 * @param context 交易上下文
	 * @throws TxnException
	 * @see t_declar_info
	 */
	public void txn01B01013( TxnContext context ) throws TxnException
	{
		daoTDeclarInfo.insertOneTDeclarInfo(context).execute(inputNode);
	}
	
	/** 查询报关单用于修改
	 * @param context 交易上下文
	 * @throws TxnException
	 * @see t_declar_info
	 */
	public void txn01B01014( TxnContext context ) throws TxnException
	{
		daoTDeclarInfo.selectOneTDeclarInfo(context).execute(inputNode, outputNode);
	}
	
	/** 删除报关单信息
	 * @param context 交易上下文
	 * @throws TxnException
	 * @see t_declar_info
	 */
	public void txn01B01015( TxnContext context ) throws TxnException
	{
		daoTDeclarInfo.deleteOneTDeclarInfo(context).execute(inputNode);
	}
	
	/** 报关单的记录信息
	 * @param context 交易上下文
	 * @throws TxnException
	 * @see t_declar_info
	 */
	public void txn01B01016( TxnContext context ) throws TxnException
	{
		daoTDeclarInfo.selectOneTDeclarInfo(context).execute(inputNode, outputNode);
	}
		
}

package cn.mars.elshd.declar.txn;

import cn.mars.common.component.exception.TxnException;
import cn.mars.common.component.logger.LOG;
import cn.mars.common.component.logger.LogFactory;
import cn.mars.common.proxy.config.ParamValues;
import cn.mars.common.tag.dao.InjectDAO;
import cn.mars.elshd.declar.dao.TDeclarInfo;
import cn.mars.common.context.TxnContext;

/**
 * ���ص���Ϣ��ķ�����
 * @author
 *
 */
public class TxnTDeclarInfo
{
	/**
	 * ��־
	 */
	protected static final LOG log = LogFactory.getLogger( TxnTDeclarInfo.class.getName() );

	/**
	 * ��ܱ�������������������ڵ㡢����ڵ㡢ȱʡ��������Action/Step�����õĲ�����
	 */
	public String inputNode = null;
	public String outputNode = null;
	public ParamValues param = null;
	
	/**
	 * ���ݱ�[t_declar_info]��DAO����,ͨ��[@InjectDAO]������ʱ��ʼ��
	 */
	@InjectDAO private TDeclarInfo daoTDeclarInfo = null;
	
	/** ��ѯ���ص��б�
	 * @param context ����������
	 * @throws TxnException
	 * @see t_declar_info
	 */
	public void txn01B01011( TxnContext context ) throws TxnException
	{
		daoTDeclarInfo.selectTDeclarInfoList(context).execute(inputNode, outputNode);
	}
	
	/** �޸ı��ص���Ϣ
	 * @param context ����������
	 * @throws TxnException
	 * @see t_declar_info
	 */
	public void txn01B01012( TxnContext context ) throws TxnException
	{
		daoTDeclarInfo.updateOneTDeclarInfo(context).execute(inputNode);
	}
	
	/** ���ӱ��ص���Ϣ
	 * @param context ����������
	 * @throws TxnException
	 * @see t_declar_info
	 */
	public void txn01B01013( TxnContext context ) throws TxnException
	{
		daoTDeclarInfo.insertOneTDeclarInfo(context).execute(inputNode);
	}
	
	/** ��ѯ���ص������޸�
	 * @param context ����������
	 * @throws TxnException
	 * @see t_declar_info
	 */
	public void txn01B01014( TxnContext context ) throws TxnException
	{
		daoTDeclarInfo.selectOneTDeclarInfo(context).execute(inputNode, outputNode);
	}
	
	/** ɾ�����ص���Ϣ
	 * @param context ����������
	 * @throws TxnException
	 * @see t_declar_info
	 */
	public void txn01B01015( TxnContext context ) throws TxnException
	{
		daoTDeclarInfo.deleteOneTDeclarInfo(context).execute(inputNode);
	}
	
	/** ���ص��ļ�¼��Ϣ
	 * @param context ����������
	 * @throws TxnException
	 * @see t_declar_info
	 */
	public void txn01B01016( TxnContext context ) throws TxnException
	{
		daoTDeclarInfo.selectOneTDeclarInfo(context).execute(inputNode, outputNode);
	}
		
}

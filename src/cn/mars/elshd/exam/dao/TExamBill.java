package cn.mars.elshd.exam.dao;

import cn.mars.common.component.exception.TxnException;
import cn.mars.common.context.TxnContext;
import cn.mars.common.dao.BaseTable;
import cn.mars.common.dao.iface.DaoFunction;
import cn.mars.common.dao.method.*;
import cn.mars.common.tag.dao.*;

/**
 * ���ݱ�[t_exam_bill]�Ĵ�����
 * @author Administrator
 *
 */
@Table(
	tableName="t_exam_bill", sortName="elshd", database="elshd", check=false, backup=false, checkTime=30, description="��˵���Ϣ��",
	primaryKey=@PrimaryKey( name="primary", columns="bill_id" ),
	columns={
		@Column( name="bill_id", description="��˵����", dataType=Column.DATATYPE.VARCHAR, length=24, notNull=true ),
		@Column( name="taxpayer_id", description="��˰�˱��", dataType=Column.DATATYPE.VARCHAR, length=32, notNull=true ),
		@Column( name="taxpayer_name", description="��˰������", dataType=Column.DATATYPE.VARCHAR, length=500 ),
		@Column( name="imex_type", description="����������", dataType=Column.DATATYPE.CHAR, length=1, notNull=true, valueSet="#i=����;e=����" ),
		@Column( name="declar_tot_num", description="���ص��ܼ�¼��", dataType=Column.DATATYPE.INTEGER, length=10, notNull=true ),
		@Column( name="declar_tot_amt", description="���ص��ܽ��", dataType=Column.DATATYPE.DECIMAL, length=19, fractionLength=2, notNull=true ),
		@Column( name="create_date", description="¼������", dataType=Column.DATATYPE.VARCHAR, length=8, notNull=true, valueFrom=Column.VALUEFROM.GENERATE, funcName="currentDate" ),
		@Column( name="create_time", description="¼��ʱ��", dataType=Column.DATATYPE.VARCHAR, length=6, valueFrom=Column.VALUEFROM.GENERATE, funcName="currentTime" ),
		@Column( name="create_user", description="¼����", dataType=Column.DATATYPE.VARCHAR, length=100, valueFrom=Column.VALUEFROM.GENERATE, funcName="operName" ),
		@Column( name="check_date", description="�������", dataType=Column.DATATYPE.VARCHAR, length=8 ),
		@Column( name="check_time", description="���ʱ��", dataType=Column.DATATYPE.VARCHAR, length=6 ),
		@Column( name="check_user", description="�����", dataType=Column.DATATYPE.VARCHAR, length=100 ),
		@Column( name="bill_status", description="״̬", dataType=Column.DATATYPE.VARCHAR, length=1, notNull=true, valueSet="#1=¼��;2=���ͨ��;3=��˲�ͨ��" ),
		@Column( name="bk_number1", description="���ñ��1", dataType=Column.DATATYPE.INTEGER, length=10 ),
		@Column( name="bk_number2", description="���ñ��2", dataType=Column.DATATYPE.INTEGER, length=10 ),
		@Column( name="bk_value1", description="������ֵ1", dataType=Column.DATATYPE.DECIMAL, length=19, fractionLength=2 ),
		@Column( name="bk_value2", description="������ֵ2", dataType=Column.DATATYPE.DECIMAL, length=19, fractionLength=2 ),
		@Column( name="bk_type1", description="��������1", dataType=Column.DATATYPE.VARCHAR, length=1 ),
		@Column( name="bk_type2", description="��������2", dataType=Column.DATATYPE.VARCHAR, length=1 ),
		@Column( name="bk_flag1", description="���ñ�־1", dataType=Column.DATATYPE.VARCHAR, length=10 ),
		@Column( name="bk_flag2", description="���ñ�־2", dataType=Column.DATATYPE.VARCHAR, length=10 ),
		@Column( name="bk_date1", description="��������1", dataType=Column.DATATYPE.VARCHAR, length=8 ),
		@Column( name="bk_date2", description="��������2", dataType=Column.DATATYPE.VARCHAR, length=8 ),
		@Column( name="bk_time1", description="����ʱ��1", dataType=Column.DATATYPE.VARCHAR, length=6 ),
		@Column( name="bk_time2", description="����ʱ��2", dataType=Column.DATATYPE.VARCHAR, length=6 ),
		@Column( name="bk_s_str1", description="���ô�1", dataType=Column.DATATYPE.VARCHAR, length=24 ),
		@Column( name="bk_s_str2", description="���ô�2", dataType=Column.DATATYPE.VARCHAR, length=24 ),
		@Column( name="bk_l_str1", description="���ó���1", dataType=Column.DATATYPE.VARCHAR, length=100 ),
		@Column( name="bk_l_str2", description="���ó���2", dataType=Column.DATATYPE.VARCHAR, length=100 ),
		@Column( name="bk_xl_str1", description="���ó�����1", dataType=Column.DATATYPE.VARCHAR, length=300 ),
		@Column( name="bk_xl_str2", description="���ó�����2", dataType=Column.DATATYPE.VARCHAR, length=300 ),
		@Column( name="memo", description="��ע", dataType=Column.DATATYPE.VARCHAR, length=500 ),
		@Column( name="dac", description="dacУ��", dataType=Column.DATATYPE.VARCHAR, length=16 )
	},
	indexes={
		@Index( name="t_exam_bill_idx0", type=Index.TYPE.OTHER, cluster=Index.CLUSTER.OTHER, columns="create_date,create_user,check_date,check_user,bill_status" ),
		@Index( name="t_exam_bill_idx1", type=Index.TYPE.OTHER, cluster=Index.CLUSTER.OTHER, columns="taxpayer_id,imex_type,declar_tot_num,declar_tot_amt" )
	}
)
/**
 * ��Ҫע���������ݣ�
 * DAO���ǵ�����ʽ���У���������ȫ�ֱ���
 * private DaoFunction thisMethod; �����޸�������������ƣ�������ʱ��ʼ��������ֵ
 * ��ǰͨ��[register]��ʽע���SQL��䣬��ʹ��Query��SqlMethod��ʽ����
 * ��Ҫ֧������Ȩ�޵���䶼����ͨ�����õķ�ʽʵ��
 * Select��ʽ����䣬���ڵ���¼�Ĳ�ѯ�����ԣ�funcName,columns,whereDefine,sortColumns,description�������ֶ�
 * Rowset��ʽ����䣬���ڶ��¼�Ĳ�ѯ�����ԣ�funcName,columns,whereDefine,sortColumns,groupColumns,maxRecord,description�������ֶ�
 * Insert��ʽ����䣬���ڲ����¼�����ԣ�funcName,columns,description
 * Update��ʽ����䣬���ڼ�¼�޸ģ����ԣ�funcName,columns,whereDefine,description�������ֶ�
 * Delete��ʽ����䣬����ɾ����¼�����ԣ�funcName,whereDefine,description�������ֶ�
 * Query��ʽ����䣬���ڸ��ӵ�SQL��ѯ�����ԣ�funcName,sortColumns,maxRecord,description,sqlQuery,sqlCount
 * sqlQuery,sqlCount�ĸ�ʽ����ͨSQL�����ͬ��Ψһ�������ǣ���Ҫ�滻�ı���ʹ��[#name#]���棬���磺columnName like '#javaName#%'
 * SqlMethod �û��Զ����SQL���
 */
public class TExamBill extends BaseTable
{
	/**
	 * ��Ҫ�޸�������������ƣ��������������ʱ��ʼ��
	 */
	private DaoFunction thisMethod;
	
	/**
	 * ��ֹ����DAO����
	 */
	private TExamBill()
	{
		
	}
	

	/**
	 * ���¼��ѯ
	 * @Rowset ��ʼ�Ĳ��������������������Ϣ,��Ҫɾ��
	 * @param context ����������
	 * @return �ɹ�����ļ�¼����
	 * @throws TxnException
	 */
	@Rowset(
		columns="bill_id, taxpayer_id, taxpayer_name, imex_type, declar_tot_num, declar_tot_amt, create_date, create_time, create_user, check_date, check_time, check_user, bill_status, bk_number1, bk_number2, bk_value1, bk_value2, bk_type1, bk_type2, bk_flag1, bk_flag2, bk_date1, bk_date2, bk_time1, bk_time2, bk_s_str1, bk_s_str2, bk_l_str1, bk_l_str2, bk_xl_str1, bk_xl_str2, memo, dac", maxRecord="10", description="���¼��ѯ",
		filter={
			@Filter( columnName="bill_id", operator=Filter.OPTYPE.EQ ),
			@Filter( columnName="taxpayer_id", operator=Filter.OPTYPE.EQ ),
			@Filter( columnName="taxpayer_name", operator=Filter.OPTYPE.EQ ),
			@Filter( columnName="imex_type", operator=Filter.OPTYPE.EQ ),
			@Filter( columnName="declar_tot_num", operator=Filter.OPTYPE.EQ ),
			@Filter( columnName="declar_tot_amt", operator=Filter.OPTYPE.EQ ),
			@Filter( columnName="create_date", operator=Filter.OPTYPE.BETWEEN, valueItem="b_date", valueItem2="e_date" ),
			@Filter( columnName="create_user", operator=Filter.OPTYPE.EQ )
		}
	)
	public SqlRowset selectTExamBillList( TxnContext context ) throws TxnException
	{
		return new SqlRowset( thisMethod, context );
	}
	

	/**
	 * ����¼��ѯ
	 * @Select ��ʼ�Ĳ��������������������Ϣ,��Ҫɾ��
	 * @param context ����������
	 * @return �ɹ�����ļ�¼����
	 * @throws TxnException
	 */
	@Select(
		columns="bill_id,taxpayer_id,taxpayer_name,imex_type,declar_tot_num,declar_tot_amt,create_date,create_time,create_user,check_date,check_time,check_user,bill_status,bk_number1,bk_number2,bk_value1,bk_value2,bk_type1,bk_type2,bk_flag1,bk_flag2,bk_date1,bk_date2,bk_time1,bk_time2,bk_s_str1,bk_s_str2,bk_l_str1,bk_l_str2,bk_xl_str1,bk_xl_str2,memo,dac", description="����¼��ѯ",
		filter={
			@Filter( columnName="bill_id", operator=Filter.OPTYPE.EQ )
		}
	)
	public SqlSelect selectOneTExamBill( TxnContext context ) throws TxnException
	{
		return new SqlSelect( thisMethod, context );
	}
	

	/**
	 * �����¼
	 * @Insert ��ʼ�Ĳ��������������������Ϣ,��Ҫɾ��
	 * @param context ����������
	 * @return �ɹ�����ļ�¼����
	 * @throws TxnException
	 */
	@Insert(
		columns="bill_id,taxpayer_id,taxpayer_name,imex_type,declar_tot_num,declar_tot_amt,create_date,create_time,create_user,check_date,check_time,check_user,bill_status,bk_number1,bk_number2,bk_value1,bk_value2,bk_type1,bk_type2,bk_flag1,bk_flag2,bk_date1,bk_date2,bk_time1,bk_time2,bk_s_str1,bk_s_str2,bk_l_str1,bk_l_str2,bk_xl_str1,bk_xl_str2,memo,dac", description="�����¼"
	)
	public SqlInsert insertOneTExamBill( TxnContext context ) throws TxnException
	{
		return new SqlInsert( thisMethod, context );
	}
	

	/**
	 * ɾ����¼
	 * @Delete ��ʼ�Ĳ��������������������Ϣ,��Ҫɾ��
	 * @param context ����������
	 * @return �ɹ�����ļ�¼����
	 * @throws TxnException
	 */
	@Delete(
		description="ɾ����¼",
		filter={
			@Filter( columnName="bill_id", operator=Filter.OPTYPE.EQ )
		}
	)
	public SqlDelete deleteOneTExamBill( TxnContext context ) throws TxnException
	{
		return new SqlDelete( thisMethod, context );
	}
	

	/**
	 * �޸ļ�¼
	 * @Update ��ʼ�Ĳ��������������������Ϣ,��Ҫɾ��
	 * @param context ����������
	 * @return �ɹ�����ļ�¼����
	 * @throws TxnException
	 */
	@Update(
		columns="taxpayer_id,taxpayer_name,imex_type,declar_tot_num,declar_tot_amt,create_date,create_time,create_user,check_date,check_time,check_user,bill_status,bk_number1,bk_number2,bk_value1,bk_value2,bk_type1,bk_type2,bk_flag1,bk_flag2,bk_date1,bk_date2,bk_time1,bk_time2,bk_s_str1,bk_s_str2,bk_l_str1,bk_l_str2,bk_xl_str1,bk_xl_str2,memo,dac", description="�޸ļ�¼",
		filter={
			@Filter( columnName="bill_id", operator=Filter.OPTYPE.EQ )
		}
	)
	public SqlUpdate updateOneTExamBill( TxnContext context ) throws TxnException
	{
		return new SqlUpdate( thisMethod, context );
	}
	

	/**
	 * ��ѯ˰�ż���ҵ�����б�
	 * @Rowset ��ʼ�Ĳ��������������������Ϣ,��Ҫɾ��
	 * @param context ����������
	 * @return �ɹ�����ļ�¼����
	 * @throws TxnException
	 */
	@Rowset(
		columns="distinct taxpayer_id as codevalue, taxpayer_name as codename", maxRecord="-1", description="��ѯ˰�ż���ҵ�����б�",
		filter={
			@Filter( columnName="taxpayer_id", operator=Filter.OPTYPE.EQ )
		}
	)
	public SqlRowset selectTaxPayerForValueSet( TxnContext context ) throws TxnException
	{
		return new SqlRowset( thisMethod, context );
	}
	
}


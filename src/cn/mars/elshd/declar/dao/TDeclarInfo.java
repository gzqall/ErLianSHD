package cn.mars.elshd.declar.dao;

import cn.mars.common.component.exception.TxnException;
import cn.mars.common.context.TxnContext;
import cn.mars.common.dao.BaseTable;
import cn.mars.common.dao.iface.DaoFunction;
import cn.mars.common.dao.method.*;
import cn.mars.common.tag.dao.*;

/**
 * 数据表[t_declar_info]的处理类
 * @author Administrator
 *
 */
@Table(
	tableName="t_declar_info", sortName="elshd", database="elshd", check=false, backup=false, checkTime=30, description="报关单信息表",
	primaryKey=@PrimaryKey( name="primary", columns="bill_id,index_no" ),
	columns={
		@Column( name="bill_id", description="审核单号", dataType=Column.DATATYPE.VARCHAR, length=24, notNull=true ),
		@Column( name="index_no", description="索引号", dataType=Column.DATATYPE.INTEGER, length=10, notNull=true ),
		@Column( name="declar_no", description="报关单号", dataType=Column.DATATYPE.VARCHAR, length=24, notNull=true ),
		@Column( name="declar_amt", description="报关单金额", dataType=Column.DATATYPE.DECIMAL, length=19, fractionLength=2 ),
		@Column( name="declar_date", description="报关单日期", dataType=Column.DATATYPE.VARCHAR, length=8 ),
		@Column( name="bk_number1", description="备用编号1", dataType=Column.DATATYPE.INTEGER, length=10 ),
		@Column( name="bk_number2", description="备用编号2", dataType=Column.DATATYPE.INTEGER, length=10 ),
		@Column( name="bk_value1", description="备用数值1", dataType=Column.DATATYPE.DECIMAL, length=19, fractionLength=2 ),
		@Column( name="bk_value2", description="备用数值2", dataType=Column.DATATYPE.DECIMAL, length=19, fractionLength=2 ),
		@Column( name="bk_type1", description="备用类型1", dataType=Column.DATATYPE.VARCHAR, length=1 ),
		@Column( name="bk_type2", description="备用类型2", dataType=Column.DATATYPE.VARCHAR, length=1 ),
		@Column( name="bk_flag1", description="备用标志1", dataType=Column.DATATYPE.VARCHAR, length=10 ),
		@Column( name="bk_flag2", description="备用标志2", dataType=Column.DATATYPE.VARCHAR, length=10 ),
		@Column( name="bk_date1", description="备用日期1", dataType=Column.DATATYPE.VARCHAR, length=8 ),
		@Column( name="bk_date2", description="备用日期2", dataType=Column.DATATYPE.VARCHAR, length=8 ),
		@Column( name="bk_time1", description="备用时间1", dataType=Column.DATATYPE.VARCHAR, length=6 ),
		@Column( name="bk_time2", description="备用时间2", dataType=Column.DATATYPE.VARCHAR, length=6 ),
		@Column( name="bk_s_str1", description="备用串1", dataType=Column.DATATYPE.VARCHAR, length=24 ),
		@Column( name="bk_s_str2", description="备用串2", dataType=Column.DATATYPE.VARCHAR, length=24 ),
		@Column( name="bk_l_str1", description="备用长串1", dataType=Column.DATATYPE.VARCHAR, length=100 ),
		@Column( name="bk_l_str2", description="备用长串2", dataType=Column.DATATYPE.VARCHAR, length=100 ),
		@Column( name="bk_xl_str1", description="备用超长串1", dataType=Column.DATATYPE.VARCHAR, length=300 ),
		@Column( name="bk_xl_str2", description="备用超长串2", dataType=Column.DATATYPE.VARCHAR, length=300 ),
		@Column( name="memo", description="备注", dataType=Column.DATATYPE.VARCHAR, length=255 ),
		@Column( name="dac", description="dac校验", dataType=Column.DATATYPE.VARCHAR, length=16 )
	}
)
/**
 * 需要注意以下内容：
 * DAO类是单例方式运行，不允许定义全局变量
 * private DaoFunction thisMethod; 不用修改这个变量的名称，在运行时初始化变量的值
 * 以前通过[register]方式注册的SQL语句，请使用Query或SqlMethod方式代替
 * 需要支持数据权限的语句都必须通过配置的方式实现
 * Select方式的语句，用于单记录的查询，属性：funcName,columns,whereDefine,sortColumns,description和条件字段
 * Rowset方式的语句，用于多记录的查询，属性：funcName,columns,whereDefine,sortColumns,groupColumns,maxRecord,description和条件字段
 * Insert方式的语句，用于插入记录，属性：funcName,columns,description
 * Update方式的语句，用于记录修改，属性：funcName,columns,whereDefine,description和条件字段
 * Delete方式的语句，用于删除记录，属性：funcName,whereDefine,description和条件字段
 * Query方式的语句，用于复杂的SQL查询，属性：funcName,sortColumns,maxRecord,description,sqlQuery,sqlCount
 * sqlQuery,sqlCount的格式和普通SQL语句相同，唯一的区别是，需要替换的变量使用[#name#]代替，比如：columnName like '#javaName#%'
 * SqlMethod 用户自定义的SQL语句
 */
public class TDeclarInfo extends BaseTable
{
	/**
	 * 不要修改这个变量的名称，这个变量在运行时初始化
	 */
	private DaoFunction thisMethod;
	
	/**
	 * 禁止生成DAO对象
	 */
	private TDeclarInfo()
	{
		
	}
	

	/**
	 * 多记录查询
	 * @Rowset 开始的部分是这个方法的配置信息,不要删除
	 * @param context 请求上下文
	 * @return 成功处理的记录数量
	 * @throws TxnException
	 */
	@Rowset(
		columns="bill_id, index_no, declar_no, declar_amt, declar_date, bk_number1, bk_number2, bk_value1, bk_value2, bk_type1, bk_type2, bk_flag1, bk_flag2, bk_date1, bk_date2, bk_time1, bk_time2, bk_s_str1, bk_s_str2, bk_l_str1, bk_l_str2, bk_xl_str1, bk_xl_str2, memo, dac", maxRecord="10", description="多记录查询",
		filter={
			@Filter( columnName="bill_id", operator=Filter.OPTYPE.EQ ),
			@Filter( columnName="index_no", operator=Filter.OPTYPE.EQ ),
			@Filter( columnName="declar_no", operator=Filter.OPTYPE.EQ ),
			@Filter( columnName="declar_amt", operator=Filter.OPTYPE.EQ ),
			@Filter( columnName="declar_date", operator=Filter.OPTYPE.EQ )
		}
	)
	public SqlRowset selectTDeclarInfoList( TxnContext context ) throws TxnException
	{
		return new SqlRowset( thisMethod, context );
	}
	

	/**
	 * 单记录查询
	 * @Select 开始的部分是这个方法的配置信息,不要删除
	 * @param context 请求上下文
	 * @return 成功处理的记录数量
	 * @throws TxnException
	 */
	@Select(
		columns="bill_id,index_no,declar_no,declar_amt,declar_date,bk_number1,bk_number2,bk_value1,bk_value2,bk_type1,bk_type2,bk_flag1,bk_flag2,bk_date1,bk_date2,bk_time1,bk_time2,bk_s_str1,bk_s_str2,bk_l_str1,bk_l_str2,bk_xl_str1,bk_xl_str2,memo,dac", description="单记录查询",
		filter={
			@Filter( columnName="bill_id", operator=Filter.OPTYPE.EQ ),
			@Filter( columnName="index_no", operator=Filter.OPTYPE.EQ )
		}
	)
	public SqlSelect selectOneTDeclarInfo( TxnContext context ) throws TxnException
	{
		return new SqlSelect( thisMethod, context );
	}
	

	/**
	 * 插入记录
	 * @Insert 开始的部分是这个方法的配置信息,不要删除
	 * @param context 请求上下文
	 * @return 成功处理的记录数量
	 * @throws TxnException
	 */
	@Insert(
		columns="bill_id,index_no,declar_no,declar_amt,declar_date,bk_number1,bk_number2,bk_value1,bk_value2,bk_type1,bk_type2,bk_flag1,bk_flag2,bk_date1,bk_date2,bk_time1,bk_time2,bk_s_str1,bk_s_str2,bk_l_str1,bk_l_str2,bk_xl_str1,bk_xl_str2,memo,dac", description="插入记录"
	)
	public SqlInsert insertOneTDeclarInfo( TxnContext context ) throws TxnException
	{
		return new SqlInsert( thisMethod, context );
	}
	

	/**
	 * 删除记录
	 * @Delete 开始的部分是这个方法的配置信息,不要删除
	 * @param context 请求上下文
	 * @return 成功处理的记录数量
	 * @throws TxnException
	 */
	@Delete(
		description="删除记录",
		filter={
			@Filter( columnName="bill_id", operator=Filter.OPTYPE.EQ ),
			@Filter( columnName="index_no", operator=Filter.OPTYPE.EQ )
		}
	)
	public SqlDelete deleteOneTDeclarInfo( TxnContext context ) throws TxnException
	{
		return new SqlDelete( thisMethod, context );
	}
	

	/**
	 * 修改记录
	 * @Update 开始的部分是这个方法的配置信息,不要删除
	 * @param context 请求上下文
	 * @return 成功处理的记录数量
	 * @throws TxnException
	 */
	@Update(
		columns="declar_no,declar_amt,declar_date,bk_number1,bk_number2,bk_value1,bk_value2,bk_type1,bk_type2,bk_flag1,bk_flag2,bk_date1,bk_date2,bk_time1,bk_time2,bk_s_str1,bk_s_str2,bk_l_str1,bk_l_str2,bk_xl_str1,bk_xl_str2,memo,dac", description="修改记录",
		filter={
			@Filter( columnName="bill_id", operator=Filter.OPTYPE.EQ ),
			@Filter( columnName="index_no", operator=Filter.OPTYPE.EQ )
		}
	)
	public SqlUpdate updateOneTDeclarInfo( TxnContext context ) throws TxnException
	{
		return new SqlUpdate( thisMethod, context );
	}
	
}


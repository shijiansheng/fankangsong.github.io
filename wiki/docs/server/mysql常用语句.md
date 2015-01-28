# mysql常用语句

# use

	use dbname; /*选择数据库*/

# set

	set names utf8; /* 使用utf8编码 */

## show

	show tables; /* 所有的表 */
	show tables TABLENAME; /* 显示所有TABLENAME的字段 */

## update

	update TALBENAME set a=1 where id=1; /* 更新id=1的a字段值为1 */

## select

	select * from TABLENAME where id=1; /* 显示TABLENAME的id=1的所有字段和值 */
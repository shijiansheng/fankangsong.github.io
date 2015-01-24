# Javascript 正则常用方法

## test()

	/regexp/.test(string); //返回true/false


## exec()

	/REPEXP/.exec(string);

	/abc/.exec('abc111ABC'); //返回'abc'


## match()

	(string).match(/REGEXP/); //返回查询数组

	('abc 1145 ABCD').match(/abc/); //返回['abc', 'ABC'];


## split()

	('123, 2, 3, 5, 3, 666').split(/\,/); //返回['123', '2', '3', '5', '3', '666']

## replace()

	('abcdefghfdfd12312432432').replace(/\d+/, ''); //返回'abcdefghfdfd1';

## search()

	('42312abc43124231').search(/abc/); // 返回5， 位置
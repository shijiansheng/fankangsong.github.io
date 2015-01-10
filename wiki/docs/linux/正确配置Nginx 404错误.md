#Nginx 404页面返回正确的404状态码

	$.get('/file', function(response){
		$('#main').html(response);
	}).fail(){
		$('#main').html(msg)
	}

晚上写代码时测试AJAX的404，发现页面上插入的居然是404.html，然后随便测了一个域名不存在的页面，返回404页面时，http状态码居然是200。于是检查Nginx的设置，才发现配置文件写错了。

错误的：

	server{
		error_page 404 = /404.html; #这种写法，跳转404页面时实际返回的是200
	}


正确的：

	server{
		error_page 404 /404.html; #注意404后面去掉了=号
	}
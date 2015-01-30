# nginx 日志分割

如果是 `yum install` 安装的nginx，会自动安装 Logrotate，Logrotate是自动分割日志的工具。

Logrotate的默认配置文件：`/etc/logrotate.conf` ，这个配置文件包含了 `/etc/logrotate.d`
 
	/var/log/nginx/*.log {
	        monthly
	        missingok
	        rotate 52
	        compress
	        delaycompress
	        notifempty
	        create 640 nginx adm
	        sharedscripts
	        postrotate
	                [ -f /var/run/nginx.pid ] && kill -USR1 `cat /var/run/nginx.pid`
	        endscript
	}

Logrotate 依赖cron 工作： `/etc/cron.daily/logrotate`

手动执行Logrotate： `logrotate -f /etc/logrotate.d/nginx`

测试： `logrotate -d /etc/logrotate.d`
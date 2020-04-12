# AWS 인스턴스 ORACLE 설치



### 1. 파일 다운로드

파일 : oracle-xe-11.2.0-1.0.x86_64.rpm.zip

[Oracle Database 11gR2 Express Edition for Linux x64](https://www.oracle.com/database/technologies/xe-prior-releases.html#license-lightbox)

### 2. 설치

> 2-1 인스턴스 연결
>
> ```bash
> ssh -i "AWS_KEY.pem" 퍼블릭 DNS(IPv4)
> ```
>
> 2-2 root계정으로 변경
>
> ```bash
>  sudo su
> ```
>
> 2-3 다운받은 파일 옮기기 (새로운 git bash창에서 key 존재하는 곳에 다운받은 파일 옮긴 후 작성)
>
> ```bash
> $ scp -i "AWS_KEY.pem" oracle-xe-11.2.0-1.0.x86_64.rpm.zip 퍼블릭 DNS(IPv4):~/
> ```
>
> 2-4 설치
>
> ```bash
> mkdir /swap_tmp
> dd if=/dev/zero of=/swap_tmp/swapfile bs=1024 count=2097152
> cd /swap_tmp
> mkswap swapfile
> swapon swapfile
> [root@ip ec2-user]# mv oracle-xe-11.2.0-1.0.x86_64.rpm.zip /swap_tmp/
> [root@ip ec2-user]# cd /swap_tmp/
> [root@ip swap_tmp]# ls
> oracle-xe-11.2.0-1.0.x86_64.rpm.zip  swapfile
> [root@ip swap_tmp]# unzip -q oracle-xe-11.2.0-1.0.x86_64.rpm.zip
> [root@ip swap_tmp]# ls
> Disk1  oracle-xe-11.2.0-1.0.x86_64.rpm.zip  swapfile
> Disk1  oracle-xe-11.2.0-1.0.x86_64.rpm.zip  swapfile
> [root@ip swap_tmp]# cd Disk1/
> [root@ip Disk1]# rpm -ivh oracle-xe-11.2.0-1.0.x86_64.rpm
> Preparing...                          ################################# [100%]
> /var/tmp/rpm-tmp.3EEe8Q: line 257: [: 18446744073692774399: integer expression expected
> /var/tmp/rpm-tmp.3EEe8Q: line 271: [: 18446744073692774399: integer expression expected
> Updating / installing...
> 1:oracle-xe-11.2.0-1.0             ################################# [100%]
> Executing post-install steps...
>    You must run '/etc/init.d/oracle-xe configure' as the root user to configure the database.
> ```
> 
> 2-5 세팅
>
> ```bash
>[root@ip ~]# vi .bash_profile //내용추가
> # Oracle Settings
> ORACLE_HOME=/u01/app/oracle/product/11.2.0/xe/; export ORACLE_HOME
> ORACLE_BASE=/u01/app/oracle; export ORACLE_BASE
> ORACLE_SID=XE; export ORACLE_SID
> PATH=/usr/sbin:$PATH; export PATH
> PATH=$ORACLE_HOME/bin:$PATH; export PATH
> unset USERNAME
> [root@ip ~]# source .bash_profile
> [root@ip Disk1]# service oracle-xe configure
> Oracle Database 11g Express Edition Configuration
> -------------------------------------------------
> This will configure on-boot properties of Oracle Database 11g Express
> Edition.  The following questions will determine whether the database should
> be starting upon system boot, the ports it will use, and the passwords that
> will be used for database accounts.  Press <Enter> to accept the defaults.
> Ctrl-C will abort.
> ...
> Starting Oracle Net Listener...Done
> Configuring database...Done
> Starting Oracle Database 11g Express Edition instance...Done
> Installation completed successfully.
> [root@ip Disk1]# /etc/init.d/oracle-xe status
> LSNRCTL for Linux: Version 11.2.0.2.0 - Production on 12-APR-2020 08:45:48
> Copyright (c) 1991, 2011, Oracle.  All rights reserved.
> ...
> The command completed successfully
> [root@ip Disk1]# . /u01/app/oracle/product/11.2.0/xe/bin/oracle_env.sh
> [root@ip Disk1]# vi /etc/bashrc //여기도 위 내용 추가
> ```
> 
> 2-6 확인
>
> ```bash
>[root@ip ~]# sqlplus
> SQL*Plus: Release 11.2.0.2.0 Production on Sun Apr 12 08:51:12 2020
> Copyright (c) 1982, 2011, Oracle.  All rights reserved.
> Enter user-name: system
> Enter password:
> Connected to:
> Oracle Database 11g Express Edition Release 11.2.0.2.0 - 64bit Production
> SQL>
> ```

### 참고

 https://eeinger.tistory.com/5

[https://github.com/moonhanna/multicampus_linux/blob/master/%EC%98%A4%EB%9D%BC%ED%81%B4.md](https://github.com/moonhanna/multicampus_linux/blob/master/오라클.md)


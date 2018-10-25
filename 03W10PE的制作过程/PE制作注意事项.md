# PE制作

## W10PE

- w10PE使用的是WinPE生成器首先生成一个PE系统，然后进行修改
- 修改的主要是针对PECMD和注册表进行修改
- PECMD主要修改 PECMD.ini文件（也可能不是这个名字）
- 注册表可以使用Regshot软件进行对比然后添加需要的注册表
- 驱动可以使用DISM++或者NTLite软件进行驱动的添加和删除操作
- 重新封装使用wimtool.exe工具

## 03PE

- 03PE所使用的是我心如水版本进行修改和补充
- 修改的主要是针对PECMD和注册表进行修改
- PECMD主要修改 PECMD.ini文件（也可能不是这个名字）
- 注册表可以使用Regshot软件进行对比然后添加需要的注册表
- 修改我的电脑-右键-属性对话框的中标题信息（2003PE\WXPE\SYSTEM32\SYSDM.CPL）文件进行修改使用PE Explorer工具
- 添加网卡驱动和硬盘驱动参考`03PE驱动打入方法`
- ISO文件压缩成.IS文件使用windows自带的makecab命令
makecab /D CompressionType=LZX /D CompressionMemory=21 C:\Users\Administrator\Desktop\2003PE\WINPE03.ISO

## DOS工具箱

- DOS工具箱的页面显示为help.txt文件
- 添加应用的方法是放应用程序放入指定位置，创建一个BAT文件设置软件的启动。
- help.txt 文件中添加BAT文件的名称即可
- 使用工具winimage


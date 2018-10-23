# 系统封装打包
## 第一步，还原设置好的镜像
还原设置好的安装过软件的镜像。
## 第二步，检查镜像
1. 检查UAC是否处于开启状态  
    检查方法：Win+R运行Regedit.exe看是否会弹出UAC窗口
2. 检查浏览器收藏夹  
    检查内容：IE收藏夹是否处于显示状态，IE主页是否设置，其它浏览器收藏夹是否是从IE导入。其它浏览器主页等信息是否配置。其它浏览器从IE导入的收藏夹最好移动到收藏夹栏。
3. 检查WSUS统计分组
    检查方法：WIN+R运行`gpedit.msc`，打开以下路径
    ```
    计算机配置->管理模板->Windows组件->Windows update(或者叫Windows 更新)->允许客户端目标设置
    ```
    查看设置内容是否正确
4. 检查预装软件
    检查内容：预装软件是否都已经安装，预装软件安装位置是不是C盘，如果不是从新恢复到未安装软件的备份镜像从新安装软件，有些软件安装包会默认安装到D盘，如果是静默安装包可以将D盘的盘符删除后再安装。
## xp系统下
local
c:\\Documents and Settings\\Administrator\\Local Settings\\Application Data\\
roaming
c:\\Documents and Settings\\Administrator\\Application Data\\


## 第三步，杀毒
    如果安装了安全软件，最好进行一次病毒扫描。并将需要添加信任的东西添加进信任。
## 第四步，清理垃圾
    要保证垃圾清理软件安全无毒。清理过程保证系统安全。不要删的太多导致系统无法运行。
## 第五步，切换光驱iso文件
    虚拟机内关闭所有光盘中的软件，和窗口。然后将虚拟机的光驱iso文件切换为PE的ISO文件。
## 第六步，运行Easysysprep

## 第七步，压缩Program File目录
    将Program File目录压缩并生成7z自解压文件
## 第八步，删除一些文件
    以下目录如果有就删除
    ```
    C:\MSOCache\                删除整个目录
    C:\Recovery\                删除整个目录
    C:\Windows\system32\Recovery\           删除整个目录
    C:\Windows\SoftwareDistribution\Download\           删除目录中的文件
    C:\Windows\WinSxS\Backup\                如果目录中文件大小不为零就删除它们
    ```
## 第九步，运行EasySysprep
    将所需文件放入C盘的sysprep目录中，并运行EasySysprep。
    注意:系统优化那一步一定要将列表拉到最底下把最底下的三条取消选中。
         专用调用接口取消其他调用中的：首次进入桌面询问是否建立宽带连接、系统部署中关闭管理员用户组成员的UAC（一定要取消勾选）。
         
## 第十步，Ghost打包
    Ghost使用-z9打包。


##  注意事项！！！！
    如果更改了浏览器的收藏夹则修改

    xp添加sata驱动使其可以识别sata的硬盘（使用T610-2服务器 驱动选择：uata_xph.inf）！！！！！！！！！！
    驱动选择：
    板载IDE：uata_xph.inf
    RAID控制器或其他PCI IDE控制器：uata_xp.inf
                  ↓
   （PE中将administrator用户的Local和Roaming文件复制给default）
   
    QQ浏览器无法在封装以后读取default用户的配置属性，因此需要在封装前卸载然后在封装时重新安装。

    封装完成后可能会出现因为图标缓存问题而发生的图标显示不出来但可以使用，可以在封装时添加（清理系统图标缓存.bat）工具。

##  封装完成检查事项
    1.检查计算机名是否为HXT开头
    2.检查要添加的文件是否添加完整
    3.检查系统痕迹是否清除。 如 win+R 里是否有信息。
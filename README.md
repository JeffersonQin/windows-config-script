# windows-config-script

## 重装前流程

1. 配置好 `path.json`。对于每个字段，`path` 是需要备份的路径，`bak` 是备份到 `./bak` 的路径。照葫芦画瓢即可。
2. 执行 `before/backup.ps1`
3. 下载好需要用到的所有安装包，创建并扔到 setup 文件夹。
4. `custom-setups` 指向我的私人 repo，所以大家自行更换即可。

## 重装后流程

1. 执行 `after/install.bat`
2. 执行 `after/restore.ps1`

## 软件列表

* 需要下载
  * 1Password: https://downloads.1password.com/win/1PasswordSetup-latest.exe
  * 7-zip: https://www.7-zip.org/
  * 阿里云盘: https://www.aliyundrive.com/
  * 百度网盘: https://pan.baidu.com/download
  * calibre: https://calibre-ebook.com/download_windows
  * Chrome: https://www.google.cn/chrome/
  * Clash for Windows: https://github.com/Fndroid/clash_for_windows_pkg/releases
  * Carnac: https://github.com/Code52/carnac/releases
  * CrystalDiskInfo Shizuku: https://crystalmark.info/en/software/crystaldiskinfo/
  * PotPlayer: https://potplayer.daum.net/
  * Everything: https://www.voidtools.com/zh-cn/downloads/
  * FileZilla FTP Client: https://filezilla-project.org/download.php?type=client
  * Typora: https://download.typora.io/windows/typora-update-x64-1117.exe
  * QQ: https://im.qq.com/download/
  * 腾讯会议: https://meeting.tencent.com/download-center.html
  * Wacom: https://www.wacom.com/zh-cn/support/product-support/drivers
  * Wox: https://github.com/Wox-launcher/Wox/releases
  * Wechat: https://pc.weixin.qq.com/
  * Android Studio: https://developer.android.com/studio
  * Arduino: https://www.arduino.cc/en/software
  * AutoHotkey: https://www.autohotkey.com/
  * HeidiSQL: https://www.heidisql.com/download.php
  * IDEA: https://www.jetbrains.com/idea/download/#section=windows
  * PyCharm: https://www.jetbrains.com/pycharm/
  * Rider: https://www.jetbrains.com/dotnet/
  * GitHub CLI: https://cli.github.com/
  * Git: https://git-scm.com/downloads
  * GitHub Desktop: https://desktop.github.com/
  * Visual Studio Code: https://code.visualstudio.com/Download
  * Visual Studio 2022: https://visualstudio.microsoft.com/zh-hans/
  * Nodejs: https://nodejs.org/zh-cn/download/
  * Postman: https://www.postman.com/downloads/
  * Python 3.9: https://www.python.org/downloads/release/python-390/
  * 火绒: https://www.huorong.cn/
  * K-Lite Codec Pack: https://www.codecguide.com/download_k-lite_codec_pack_full.htm
  * LogitechG Hub: https://www.logitechg.com.cn/zh-cn/innovation/g-hub.html
  * Mouse Without Border: https://www.microsoft.com/en-us/download/details.aspx?id=35460
  * OBS Studio: https://obsproject.com/
  * Pandoc: https://github.com/jgm/pandoc/releases
  * PicGo: https://github.com/Molunerfinn/PicGo/releases
  * PowerToys: https://github.com/microsoft/PowerToys/releases
  * qBittorrent: https://www.qbittorrent.org/
  * XMind: https://www.xmind.cn/
  * Qfinder Pro: https://www.qnap.com/zh-cn/utilities/essentials
  * Qsync Client: https://www.qnap.com/zh-cn/utilities/essentials
  * VNC Server: https://www.realvnc.com/en/connect/download/vnc/
  * SoundWire Server: https://georgielabs.net/
  * SVP 4 Pro: https://www.svp-team.com/zh/get/
  * TeamViewer: https://www.teamviewer.cn/cn/
  * Electorrent: https://github.com/tympanix/Electorrent/releases
  * 向日葵: https://sunlogin.oray.com/download/
  * MIUI+: http://plus.miui.com/
  * Nox: https://www.yeshen.com/
  * Zoom: https://zoom.us/download
  * Mumu: https://mumu.163.com/
  * Intel AX200 网卡驱动: https://www.intel.com/content/www/us/en/download/18649/intel-wireless-bluetooth-for-windows-10-and-windows-11.html
  * Adobe 全家桶: https://weibo.com/vposy
  * Fiddler 4: https://www.telerik.com/download/fiddler
  * Firefox 国际版: https://www.mozilla.org/en-US/firefox/new/
* 自定义安装包
  * f.lux
  * Dev C++
  * Furmark

* 整包备份 / 恢复
  * 弹弹 Play
  * osu!

* UWP
  * 哔哩哔哩 UWP
  * CrystalDiskMark Shizuku Edition
  * Microsoft Whiteborad
  * Onenote for Windows 10
  * Speedtest
  * Ubuntu 18.04 (WSL)
  * Ubuntu 20.04 (WSL)
  * XAML Control Gallery
  * 网易云 UWP

set TP= X:\Program Files\7-Zip

reg add "HKU\.DEFAULT\Software\7-ZIP" /f /v "Lang" /t REG_SZ /d "zh-cn"
rem reg add "HKU\.DEFAULT\SessionInformation" /f /v "ProgramCount" /t REG_DWORD /d 4

reg add "HKU\.DEFAULT\Software\7-ZIP\Options" /f /v "CascadedMenu" /t REG_DWORD /d 1
reg add "HKU\.DEFAULT\Software\7-ZIP\Options" /f /v "ContextMenu" /t REG_DWORD /d 805
rem 4919显示全部右键菜单.807显示ZIP项,805显示主要项
reg add "HKU\.DEFAULT\Software\7-ZIP\Options" /f /v "WorkDirType" /t REG_DWORD /d 0
reg add "HKU\.DEFAULT\Software\7-ZIP\Options" /f /v "WorkDirPath" /t REG_SZ /d ""
reg add "HKU\.DEFAULT\Software\7-ZIP\Options" /f /v "TempRemovableOnly" /t REG_DWORD /d 1
rem 以下七项在天意PE3中发现存在.
reg add "HKLM\SOFTWARE\Classes\*\shellex\ContextMenuHandlers\7-ZIP" /f /ve /t REG_SZ /d "{23170F69-40C1-278A-1000-000100020000}"
reg add "HKLM\SOFTWARE\Classes\CLSID\{23170F69-40C1-278A-1000-000100020000}" /f /ve /t REG_SZ /d "7-Zip Shell Extension"
reg add "HKLM\SOFTWARE\Classes\CLSID\{23170F69-40C1-278A-1000-000100020000}\InprocServer32" /f /ve /t REG_SZ /d "%TP%\7-zip.dll"
reg add "HKLM\SOFTWARE\Classes\CLSID\{23170F69-40C1-278A-1000-000100020000}\InprocServer32" /f /v "ThreadingModel" /t REG_SZ /d "Apartment"
reg add "HKLM\SOFTWARE\Classes\Directory\shellex\DragDropHandlers\7-ZIP" /f /ve /t REG_SZ /d "{23170F69-40C1-278A-1000-000100020000}"
reg add "HKLM\SOFTWARE\Classes\Directory\shellex\ContextMenuHandlers\7-ZIP" /f /ve /t REG_SZ /d "{23170F69-40C1-278A-1000-000100020000}"
reg add "HKLM\SOFTWARE\Classes\Drive\shellex\DragDropHandlers\7-ZIP" /f /ve /t REG_SZ /d "{23170F69-40C1-278A-1000-000100020000}"

reg add "HKLM\SOFTWARE\Classes\.7z" /f /ve /t REG_SZ /d "7-Zip.7z"
reg add "HKLM\SOFTWARE\Classes\.arj" /f /ve /t REG_SZ /d "7-Zip.arj"
reg add "HKLM\SOFTWARE\Classes\.cab" /f /ve /t REG_SZ /d "7-Zip.cab"
reg add "HKLM\SOFTWARE\Classes\.rar" /f /ve /t REG_SZ /d "7-Zip.rar"
reg add "HKLM\SOFTWARE\Classes\.vhd" /f /ve /t REG_SZ /d "7-Zip.vhd"
reg add "HKLM\SOFTWARE\Classes\.zip" /f /ve /t REG_SZ /d "7-Zip.zip"
reg add "HKLM\SOFTWARE\Classes\.wim" /f /ve /t REG_SZ /d "7-Zip.wim"
reg add "HKLM\SOFTWARE\Classes\7-Zip.7z" /f /ve /t REG_SZ /d ".7z 压缩文件"
reg add "HKLM\SOFTWARE\Classes\7-Zip.7z\DefaultIcon" /f /ve /t REG_SZ /d "%TP%\7-Zip\7z.dll,0"
reg add "HKLM\SOFTWARE\Classes\7-Zip.7z\shell" /f /ve /t REG_SZ /d ""
reg add "HKLM\SOFTWARE\Classes\7-Zip.7z\shell\open" /f /ve /t REG_SZ /d ""
reg add "HKLM\SOFTWARE\Classes\7-Zip.7z\shell\open\command" /f /ve /t REG_SZ /d "\"%TP%\7-Zip\7zFM.exe\" \"%%1\""
reg add "HKLM\SOFTWARE\Classes\7-Zip.arj" /f /ve /t REG_SZ /d ".arj 压缩文件"
reg add "HKLM\SOFTWARE\Classes\7-Zip.arj\DefaultIcon" /f /ve /t REG_SZ /d "%TP%\7-Zip\7z.dll,4"
reg add "HKLM\SOFTWARE\Classes\7-Zip.arj\shell" /f /ve /t REG_SZ /d ""
reg add "HKLM\SOFTWARE\Classes\7-Zip.arj\shell\open" /f /ve /t REG_SZ /d ""
reg add "HKLM\SOFTWARE\Classes\7-Zip.arj\shell\open\command" /f /ve /t REG_SZ /d "\"%TP%\7-Zip\7zFM.exe\" \"%%1\""
reg add "HKLM\SOFTWARE\Classes\7-Zip.cab" /f /ve /t REG_SZ /d ".cab 压缩文件"
reg add "HKLM\SOFTWARE\Classes\7-Zip.cab\DefaultIcon" /f /ve /t REG_SZ /d "%TP%\7-Zip\7z.dll,7"
reg add "HKLM\SOFTWARE\Classes\7-Zip.cab\shell" /f /ve /t REG_SZ /d ""
reg add "HKLM\SOFTWARE\Classes\7-Zip.cab\shell\open" /f /ve /t REG_SZ /d ""
reg add "HKLM\SOFTWARE\Classes\7-Zip.cab\shell\open\command" /f /ve /t REG_SZ /d "\"%TP%\7-Zip\7zFM.exe\" \"%%1\""
reg add "HKLM\SOFTWARE\Classes\7-Zip.rar" /f /ve /t REG_SZ /d ".rar 压缩文件"
reg add "HKLM\SOFTWARE\Classes\7-Zip.rar\DefaultIcon" /f /ve /t REG_SZ /d "%TP%\7-Zip\7z.dll,3"
reg add "HKLM\SOFTWARE\Classes\7-Zip.rar\shell" /f /ve /t REG_SZ /d ""
reg add "HKLM\SOFTWARE\Classes\7-Zip.rar\shell\open" /f /ve /t REG_SZ /d ""
reg add "HKLM\SOFTWARE\Classes\7-Zip.rar\shell\open\command" /f /ve /t REG_SZ /d "\"%TP%\7-Zip\7zFM.exe\" \"%%1\""
reg add "HKLM\SOFTWARE\Classes\7-Zip.vhd" /f /ve /t REG_SZ /d ".vhd 压缩文件"
reg add "HKLM\SOFTWARE\Classes\7-Zip.vhd\DefaultIcon" /f /ve /t REG_SZ /d "%TP%\7-Zip\7z.dll,20"
reg add "HKLM\SOFTWARE\Classes\7-Zip.vhd\shell" /f /ve /t REG_SZ /d ""
reg add "HKLM\SOFTWARE\Classes\7-Zip.vhd\shell\open" /f /ve /t REG_SZ /d ""
reg add "HKLM\SOFTWARE\Classes\7-Zip.vhd\shell\open\command" /f /ve /t REG_SZ /d "\"%TP%\7-Zip\7zFM.exe\" \"%%1\""
reg add "HKLM\SOFTWARE\Classes\7-Zip.zip" /f /ve /t REG_SZ /d ".zip 压缩文件"
reg add "HKLM\SOFTWARE\Classes\7-Zip.zip\DefaultIcon" /f /ve /t REG_SZ /d "%TP%\7-Zip\7z.dll,1"
reg add "HKLM\SOFTWARE\Classes\7-Zip.zip\shell" /f /ve /t REG_SZ /d ""
reg add "HKLM\SOFTWARE\Classes\7-Zip.zip\shell\open" /f /ve /t REG_SZ /d ""
reg add "HKLM\SOFTWARE\Classes\7-Zip.zip\shell\open\command" /f /ve /t REG_SZ /d "\"%TP%\7-Zip\7zFM.exe\" \"%%1\""
reg add "HKLM\SOFTWARE\Classes\7-Zip.wim" /f /ve /t REG_SZ /d ".wim 压缩文件"
reg add "HKLM\SOFTWARE\Classes\7-Zip.wim\DefaultIcon" /f /ve /t REG_SZ /d "%TP%\7-Zip\7z.dll,1"
reg add "HKLM\SOFTWARE\Classes\7-Zip.wim\shell" /f /ve /t REG_SZ /d ""
reg add "HKLM\SOFTWARE\Classes\7-Zip.wim\shell\open" /f /ve /t REG_SZ /d ""
reg add "HKLM\SOFTWARE\Classes\7-Zip.wim\shell\open\command" /f /ve /t REG_SZ /d "\"%TP%\7-Zip\7zFM.exe\" \"%%1\""

:END
EXIT
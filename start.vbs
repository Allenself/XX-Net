Set oShell = CreateObject ("Wscript.Shell")

strPath = Wscript.ScriptFullName
Set objFSO = CreateObject("Scripting.FileSystemObject")
Set objFile = objFSO.GetFile(strPath)
strFolder = objFSO.GetParentFolderName(objFile)

Dim strArgs
quo = """"
strArgs = quo & strFolder & "/python3/python.exe" & quo & " " & quo & strFolder & "/launcher/start.py " & quo
oShell.Run strArgs, 0, false
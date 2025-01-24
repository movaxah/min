all : binfolders return1.exe

binfolders :
	if not exist "bin\objects" mkdir "bin\objects"
	if not exist "bin\executables" mkdir "bin\executables"

return1.exe : return1.obj
	link.exe /OUT:bin\executables\$@ /nologo /ENTRY:main /NODEFAULTLIB /SUBSYSTEM:WINDOWS bin/objects/$**

return1.obj : src\c\return1.c
	cl.exe /Fo:bin\objects\return1.obj /nologo /c /O1 $**
	
clean :
	del /q /f bin\objects\*
	del /q /f bin\executables\*

show :
	dir bin\objects
	dir bin\executables
hello.exe: hello.obj
	GoLink.exe  /console /entry GobleyGook hello.obj kernel32.dll

hello.obj:
	nasm -f win32 hello.asm -o hello.obj

.PHONY: clean
clean:
	rm *.exe *.obj
	

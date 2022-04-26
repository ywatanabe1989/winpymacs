## Enable %%paste command of IPython: configure X

- Install vcxsrv on Windows 11
  https://sourceforge.net/projects/vcxsrv/
  vcxsrv-64.1.20.14.0.installer.exe
  
    [x] Multiple windows
     
    [x] Display number: -1
     
    [x] Start no client
     
    [x] Clipboard
        [x] Primary Selection
    [x] Native opengl
    [x] Disable access control <- point 1) enable this botton to allow the connection between windows and wsl2

point 2) Windows Defender will alarm you, but accept it, too.
    

https://github.com/microsoft/WSL/issues/4106#issuecomment-502920377

## Write the following 4 lines to ~/.bashrc on Ubuntu
``` bash
export DISPLAY=$(grep -m 1 nameserver /etc/resolv.conf | awk '{print $2}'):0 # 0.0
export SINGULARITYENV_DISPLAY=$DISPLAY
export LIBGL_ALWAYS_INDIRECT=1
export SINGULARITYENV_LIBGL_ALWAYS_INDIRECT=$LIBGL_ALWAYS_INDIRECT
```

## Install wsl2 on windows 11
  - \\> wsl --install
  - \\> Restart-Computer -Force
  
## Set USERNAME & PASSWORD for your Ubuntu account

## Set DNS Server of Your Windows Machine as 8.8.8.8 and 8.8.4.4
I had an issue of quite a slow Internet connection from wsl2 Ubuntu. For more details, please see https://www.thewindowsclub.com/slow-lan-speed-on-windows

## [Optional] Allocate CPU & Memory Usage
```
\> notepad "$env:USERPROFILE\.wslconfig"
```

```
[wsl2]
processors=10
memory=20GB
```




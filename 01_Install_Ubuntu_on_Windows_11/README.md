## install wsl2 on windows 11
  - \\> wsl --install
  - \\> Restart-Computer -Force
  
## Set USERNAME & PASSWORD for your Ubuntu account

## [Optional] Allocate CPU & Memory Usage
```
\> notepad "$env:USERPROFILE\.wslconfig"
```

```
[wsl2]
processors=10
memory=20GB
```


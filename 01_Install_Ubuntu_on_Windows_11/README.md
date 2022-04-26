- install wsl2 on windows 11
  - \\> wsl --install
  - \\> Restart-Computer -Force
  
- Set USERNAME & PASSWORD for your Ubuntu account

```
notepad "$env:USERPROFILE\.wslconfig"
```

```
[wsl2]
memory=20GB
processors=10
```


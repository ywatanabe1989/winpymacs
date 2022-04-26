## Install CUDA driver on Windows 11 (**instead of on wsl**)

![CUDA on WSL Overview.](https://docs.nvidia.com/cuda/wsl-user-guide/graphics/wsl-launch-upt-0625-rz.png)

- https://docs.nvidia.com/cuda/wsl-user-guide/index.html
- Install NVIDIA Driver
  - https://developer.nvidia.com/cuda/wsl
    - **Note: This is the only driver you need to install. Do not install any Linux display driver in WSL.**
  
  - Check your graphic card
    - Windows key -> Task Manager -> More details -> Performance -> GPU 0 -> NVIDIA GeForce GTX 1070 (in my case)
  
  - Specify your product by dropping down each box in the NVIDIA's page
      - Product Type: GeForce
      - Product Series: GeForce 10 Series
      - Product: GeForce GTX 1070
      - Operating System: Windows 11
      - Download Type: Game Ready Driver (GRD)
      - Language: English (US)
    - Search -> DOWNLOAD -> DOWNLOAD -> 512.15-desktop-win10-win11-64bit-international-dch-whql .exe
  
  - NVIDIA Installer
    - License Agreement -> NVIDIA Graphics Driver and GeForce Experience- > Agree and Continue
    - Options -> Installation options -> Express (Recommended) -> Next

- \\> wsl --update

  ```
  Checking for updates...
  The Windows Subsystem for Linux kernel can be manually updated with 'wsl --update', but automatic updates cannot occur due to your system settings.
  To receive automatic kernel updates, please enable the Windows Update setting: 'Receive updates for other Microsoft products when you update Windows'.
  For more information please visit https://aka.ms/wsl2kernel.
  ```

## You might need rebooting your PC
```
\> wsl
$ nvidia-smi # failed
$ exit
\> Restart-Computer -Force # reboot the windows PC
$ nvidia-smi # succeeded this time
Tue Apr 26 13:54:09 2022
+-----------------------------------------------------------------------------+
| NVIDIA-SMI 510.60.02    Driver Version: 512.15       CUDA Version: 11.6     |
|-------------------------------+----------------------+----------------------+
| GPU  Name        Persistence-M| Bus-Id        Disp.A | Volatile Uncorr. ECC |
| Fan  Temp  Perf  Pwr:Usage/Cap|         Memory-Usage | GPU-Util  Compute M. |
|                               |                      |               MIG M. |
|===============================+======================+======================|
|   0  NVIDIA GeForce ...  On   | 00000000:0A:00.0  On |                  N/A |
|  0%   51C    P5    19W / 230W |    307MiB /  8192MiB |      0%      Default |
|                               |                      |                  N/A |
+-------------------------------+----------------------+----------------------+

+-----------------------------------------------------------------------------+
| Processes:                                                                  |
|  GPU   GI   CI        PID   Type   Process name                  GPU Memory |
|        ID   ID                                                   Usage      |
|=============================================================================|
|  No running processes found                                                 |
+-----------------------------------------------------------------------------+
```

  


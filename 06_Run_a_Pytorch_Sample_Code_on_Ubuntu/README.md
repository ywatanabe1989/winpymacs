``` bash
$ singularity shell --nv --nvccli ~/proj/winpymacs/05_Build_a_Singularity_Environment_on_Ubuntu/rocky_simplest.sif
$ ipython
```


``` python
import numpy as np
import torch
torch.cuda.current_device() # 0
```



# Guidance on running CAMML-codes on various clusters



## Kraken-GPU


Example submission script:


```bash
#!/bin/bash
#OAR -n e3md
#OAR -O stdout.txt
#OAR -E stderr.txt
#OAR -l /nodes=1/gpu=2,walltime=00:30:00
#OAR --project <project>

cd "$OAR_WORKDIR"

source /applis/environments/conda.sh
conda activate tensorial

e3md train data=qm9 model=mace trainer=gpu trainer.accelerator=cuda
```
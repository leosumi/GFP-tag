# Simulation of a polymer with a GFP attached

This repository contains a homework for the *computational cell biology* course given at EPFL (BIOENG-455, 2019).

## Generating output files

```
git clone https://github.com/leosumi/GFP-tag.git
cd GFP-tag/data
../dpd-linux <ID-1> <ID-2> ... <ID-n>
cd ..
./script.sh
```

The <ID-i> are the name of the files without the *dmpci.* prefix. dpd-linux will execute each simulation sequentially.  To save some time, you should launch multiple instance of dpd-linux.


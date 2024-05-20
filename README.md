

Re-implementation of the TASO compiler using HBLS and PGLS. HBLS combines a greedy strategy with the utilization of historical records to escape local optima. PGLS integrates a probabilistic approach within greedy strategies to accept computation graphs that exhibit performance degradation with a defined probability
## 1. Install

HBLS and PGLS builds on TASO, so it has the same hardware requirements as TASO. Specifically, you will need GPUs and drivers compatible with nvidia-docker.

```bash
cd /usr/TASO
mkdir -p build
cd build
cmake ..
sudo make install -j20
cd /usr/TASO/python
python setup.py install
```
## 2. Run

```bash
cd examples
python bert.py
```
## 3. Summary

The optimizer replaces TASO's backtracking search with HBLS and PGLS while utilizing TASO's synthesized rewrite rules. It leverages TASO's infrastructure to maintain tensor metadata, such as shape, and employs TASO's cost function to directly execute DL operators.

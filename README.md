

This is a re-implementation of the  [TASO compiler](https://github.com/jiazhihao/TASO) using MAS and SAS. The first approach uses a memory-augmented heuristic to optimize computation graphs. To further enhance the efficiency of computation graph optimization, the second approach applies a simulated annealing-like strategy, allowing computation graphs with slightly degraded performance to be included in the candidate set with a certain probability.
## 1. Install

MAS and SAS build on TASO, so they have the same hardware requirements as TASO. Specifically, you will need GPUs and drivers compatible with nvidia-docker.

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

The optimizer replaces TASO's backtracking search with MAS and SAS while utilizing TASO's synthesized rewrite rules. It leverages TASO's infrastructure to maintain tensor metadata, such as shape, and employs TASO's cost function to directly execute DL operators.

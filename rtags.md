# Build libclang

```
wget http://releases.llvm.org/3.9.1/llvm-3.9.1.src.tar.xz
tar xvf llvm-3.9.1.src.tar.xz
cd llvm-3.9.1.src
mkdir build
cd build
cmake .. -DCMAKE_INSTALL_PREFIX=$HOME/local -DCMAKE_PREFIX_PATH=$HOME/local -DCMAKE_BUILD_TYPE=Release -DLLVM_ENABLE_ASSERTIONS=OFF
make -j4
```

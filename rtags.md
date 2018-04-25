# Build libclang

```
#. fac-switch.sh cmake 3.11.0

wget http://releases.llvm.org/3.9.1/llvm-3.9.1.src.tar.xz
tar xvf llvm-3.9.1.src.tar.xz
wget http://releases.llvm.org/3.9.1/cfe-3.9.1.src.tar.xz
tar xvf cfe-3.9.1.src.tar.xz
ln -s ../../cfe-3.9.1.src llvm-3.9.1.src/tools/clang
mkdir build
cd build
cmake ../llvm-3.9.1.src \
  -DCMAKE_INSTALL_PREFIX=$HOME/local \
  -DCMAKE_PREFIX_PATH=$HOME/local \
  -DCMAKE_BUILD_TYPE=Release \
  -DLLVM_TARGETS_TO_BUILD="X86" \
  -DLLVM_ENABLE_ASSERTIONS=OFF \
  -DBUILD_SHARED_LIBS=OFF \
  -DLLVM_BUILD_TOOLS=ON \
  -DLLVM_INCLUDE_EXAMPLES=OFF \
  -DLLVM_BUILD_TESTS=OFF \
  -DLLVM_INCLUDE_TESTS=OFF \
  -DLLVM_ENABLE_EH=ON \
  -DLLVM_ENABLE_RTTI=ON \
  -DCMAKE_C_COMPILER=gcc -DCMAKE_CXX_COMPILER=g++ \
  -DCMAKE_CXX_FLAGS=-std=c++11
make clang -j4
make install
```

#Build rtags

```
git clone --recursive https://github.com/Andersbakken/rtags.git
cd rtags
mkdir build
cd build
cmake -DLIBCLANG_LLVM_CONFIG_EXECUTABLE=$HOME/local/bin/llvm-config -DCMAKE_INSTALL_PREFIX:PATH=~/usr ..
```

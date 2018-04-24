# Build libclang

```
wget http://releases.llvm.org/3.9.1/llvm-3.9.1.src.tar.xz
tar xvf llvm-3.9.1.src.tar.xz
cd llvm-3.9.1.src
cd tools
wget http://releases.llvm.org/3.9.1/cfe-3.9.1.src.tar.xz
tar xvf cfe-3.9.1.src.tar.xz
ln -s cfe-6.0.0.src clang
cd ..
mkdir build
cd build
cmake .. -DCMAKE_INSTALL_PREFIX=$HOME/local -DCMAKE_PREFIX_PATH=$HOME/local -DCMAKE_BUILD_TYPE=Release -DLLVM_ENABLE_ASSERTIONS=OFF -DLLVM_BUILD_LLVM_DYLIB=ON -DBUILD_SHARED_LIBS=ON -DLLVM_ENABLE_PROJECTS=clang
make -j4
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

http://clang.llvm.org/get_started.html

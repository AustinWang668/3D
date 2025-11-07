# Voxel Portrait Starter

## Build Requirements
- CMake 3.16+
- A C++17 compiler
- GLFW, GLM, GLAD

### macOS (Homebrew)
```bash
brew install cmake glfw glm glad
```

### Ubuntu/Debian
```bash
sudo apt update
sudo apt install -y build-essential cmake pkg-config libglfw3-dev libglm-dev libglad-dev
```

### Windows (vcpkg + Visual Studio)
```powershell
git clone https://github.com/microsoft/vcpkg
./vcpkg/bootstrap-vcpkg.bat
./vcpkg/vcpkg integrate install
./vcpkg/vcpkg install glfw3 glm glad
```
Configure CMake:
```powershell
cmake -S . -B build -DCMAKE_TOOLCHAIN_FILE=PATH\TO\vcpkg\scripts\buildsystems\vcpkg.cmake
cmake --build build
```

## Build & Run
```bash
cmake -S . -B build
cmake --build build
./build/VoxelPortrait    # Windows 下在 build\Debug\VoxelPortrait.exe
```

Shaders & assets will be copied to the build folder automatically.

# WASM export optimization:
# clone godot source code
https://www.youtube.com/watch?v=ieTSAlbFmuY
# install scons & emscripten
https://docs.godotengine.org/en/stable/development/compiling/compiling_for_web.html
# create custom file for optimization
https://godot-build-options-generator.github.io/
# compile optimized godot engine
scons profile="C:\Users\Ben\Desktop\cyber\GameDev\Compile\custom.py" tools=no target=release


set EMSCRIPTEN_ROOT=C:\emsdk\emscripten\master
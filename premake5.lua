   --[[
    This needs to be extended

    - Use custom functions to load the DiligentEngine
    --]]
workspace "Blossom"
    location "Generated"

    language "C++"

    architecture "x86_64"

    configurations { "Debug", "Release" }

project "Blossom_Editor"

    kind "ConsoleApp"

    includedirs {"include", "src/engine", "src/gui"}

    links {"Blossom_Engine", "Blossom_Gui"}

    files "src/editor/**"

project "Blossom_Engine"

    kind "StaticLib"

    includedirs {"include", "src/engine", "src/gui"}

    libdirs "lib"
    
    links {"DiligentCore", "GenericCodeGend", "HLSLd", "MachineIndependentd", "OGLCompilerd", "OSDependentd", "spirv-cross-cored", "SPIRV-Tools-opt", "SPIRV-Tools", "SPIRVd"}

    files "src/engine/**"

project "Blossom_Gui"

    kind "StaticLib"

    includedirs {"include", "src/engine", "src/gui"}

    files "src/gui/**"





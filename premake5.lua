   --[[
    - Blossom_Engine / Does the engine stuff , as a example math functions are going to be here
    - Blossom_Gui / Does the porting part as a example the RmlUI and Nuklear implementation is going to be here.
    - Blossom_Render / Does the rendering stuff
    --]]
include "scripts/diligent.lua"

workspace "Blossom"
    location "Generated"

    language "C++"

    architecture "x86_64"

    configurations { "Debug", "Release" }

    includedirs {"include", "src"}
    

project "Blossom_Editor"

    kind "ConsoleApp"

    links {"Blossom_Engine", "Blossom_Gui"}

    files "src/editor/**"

project "Blossom_Engine"

    kind "StaticLib"

    files "src/engine/**"

project "Blossom_Gui"

    kind "StaticLib"

    includedirs {"include", "src"}

    files "src/gui/**"

project "Blossom_Render"

   kind "StaticLib"

   loadDiligent()

   files "src/render/**"




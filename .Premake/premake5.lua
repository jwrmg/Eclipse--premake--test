-- solution
    -- projects
        -- demo-project
            -- data
            -- docs
            -- imde
            -- include
            -- libs
            -- src
            -- tests
            -- file.project
    -- engine
        -- engine-module
            -- data
            -- docs
            -- examples
            -- extras
            -- imde
            -- include
            -- libs
            -- src
            -- tests
            -- tools
            -- file.project
    -- dependencies
        -- bin
        -- lib
        -- header
        -- dll
    -- build
    -- .cloc
    -- .git
    -- .dirgen
    -- .vs
    -- .premake

-- premake5.lua
include "./Modules/Eclipse/EclipseProject.lua"
    
workspace "Eclipse"
    location("../Build")
    architecture("x86_64")
    configurations { "Debug", "Release" }

    flags {"MultiProcessorCompile"}

    BuildLocation = "%{wks.location}/%{cfg.buildcfg}/"

    filter "configurations:Release"
        defines {"NDEBUG"}
    filter {}
    
    group "Projects"
        include "../Projects/TestApplication"
    group ""

--CreateProject("TestProject")


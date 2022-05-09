function CreateModule(name)
project(name)

    kind("StaticLib")
    language("C++")
    architecture("x86_64")
    
    includedirs {
        "%{wks.location}"
    }

    location("../" .. OutDir .. "Modules/" .. name)

    targetdir("%{BuildLocation}%{prj.name}")
    objdir("%{BuildLocation}Imde/%{prj.name}")



    staticruntime("On")

    filter "configurations:Debug"
    runtime "Debug"
    symbols "On"

    filter "configurations:Release"
    runtime  "Release"
    optimize "On"



end
function CreateProject(name)
-- BuildLocation = ../Build
ProjectLocation = string.format("../%s/Projects/%s", BuildLocation, name)

os.mkdir(string.format("%s/data",ProjectLocation))
os.mkdir(string.format("%s/docs",ProjectLocation))
os.mkdir(string.format("%s/imde",ProjectLocation))
os.mkdir(string.format("%s/include",ProjectLocation))
os.mkdir(string.format("%s/libs",ProjectLocation))
os.mkdir(string.format("%s/src",ProjectLocation))
os.mkdir(string.format("%s/tests",ProjectLocation))

project(name)

   kind "ConsoleApp"
   language "C++"

   targetdir("%{BuildLocation}%{prj.name}")
   objdir("%{BuildLocation}Imde/%{prj.name}")

   files { "**.h", "**.cpp", "**.hpp" }

   filter "configurations:Debug"
      defines { "DEBUG" }
      symbols "On"

   filter "configurations:Release"
      defines { "NDEBUG" }
      optimize "On"

end

VendorDir = "%{wks.location}/Engine/vendors/"

-- location
-- solution_root/Engine/Vendors

IncludeDir = {}
-- IncludeDir[include name] = "%{VendorDir}folder name"
IncludeDir["GLM"] = "%{VendorDir}glm"
IncludeDir["STB"] = "%{VendorDir}stb"
IncludeDir["ImGUI"] = "%{VendorDir}ImGui"
IncludeDir["GLAD"] = "%{VendorDir}Glad/include"
IncludeDir["GLFW"] = "%{VendorDir}GLFW/include"
IncludeDir["Assimp"] = "%{VendorDir}assimp/include"
IncludeDir["termcolor"] = "%{VendorDir}termcolor/include"
project ("glfw")
	kind ("StaticLib")
	language ("C")
	architecture "x86_64"

	location(OutDir .. "Vendors/glfw")

	targetdir("%{BuildLocation}%{prj.name}")
	objdir("%{BuildLocation}Imde/%{prj.name}")
	
	includedirs { "%{DependencyDir}glfw/include/" }

	files
	{
--		"%{DependencyDir}glfw/include/GLFW/glfw3.h",
--		"%{DependencyDir}glfw/include/GLFW/glfw3native.h",
		"%{DependencyDir}glfw/src/glfw_config.h",
		"%{DependencyDir}glfw/src/context.c",
		"%{DependencyDir}glfw/src/init.c",
		"%{DependencyDir}glfw/src/input.c",
		"%{DependencyDir}glfw/src/monitor.c",
		"%{DependencyDir}glfw/src/vulkan.c",
		"%{DependencyDir}glfw/src/window.c"
	}
    
	filter "system:linux"
		pic "On"

		systemversion "latest"
		staticruntime "On"

		files
		{
			"%{DependencyDir}glfw/src/x11_init.c",
			"%{DependencyDir}glfw/src/x11_monitor.c",
			"%{DependencyDir}glfw/src/x11_window.c",
			"%{DependencyDir}glfw/src/xkb_unicode.c",
			"%{DependencyDir}glfw/src/posix_time.c",
			"%{DependencyDir}glfw/src/posix_thread.c",
			"%{DependencyDir}glfw/src/glx_context.c",
			"%{DependencyDir}glfw/src/egl_context.c",
			"%{DependencyDir}glfw/src/osmesa_context.c",
			"%{DependencyDir}glfw/src/linux_joystick.c"
		}

		defines
		{
			"_GLFW_X11"
		}

	filter "system:windows"
		systemversion "latest"
		staticruntime "On"

		files
		{
			"%{DependencyDir}glfw/src/win32_init.c",
			"%{DependencyDir}glfw/src/win32_joystick.c",
			"%{DependencyDir}glfw/src/win32_monitor.c",
			"%{DependencyDir}glfw/src/win32_time.c",
			"%{DependencyDir}glfw/src/win32_thread.c",
			"%{DependencyDir}glfw/src/win32_window.c",
			"%{DependencyDir}glfw/src/wgl_context.c",
			"%{DependencyDir}glfw/src/egl_context.c",
			"%{DependencyDir}glfw/src/osmesa_context.c"
		}

		defines 
		{ 
			"_GLFW_WIN32",
			"_CRT_SECURE_NO_WARNINGS"
		}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
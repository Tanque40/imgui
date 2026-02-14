project "IMGUI"
	kind "StaticLib"
	language 'C++'

	targetdir("bin/" .. outputdir .. "/%{prj.name}")
	objdir("bin-int/" .. outputdir .. "/%{prj.name}")

	files {
		"imconfig.h",
		"imgui.h",
		"imgui.cpp",
		"imgui_draw.cpp",
		"imgui_internal.h",
		"imgui_widgets.cpp",
		"imstb_rectpack.h",
		"imstb_textedit.h",
		"imstb_truetype.h",
		"imgui_tables.cpp",
		"backends/imgui_impl_opengl3.cpp",
		"backends/imgui_impl_glfw.cpp",
		"backends/imgui_impl_opengl3_loader.h",
		"imgui_demo.cpp"
	}

	includedirs {
		"./",
		"../GLFW/include"
	}

	filter "system:macosx"
		staticruntime "on"
		architecture "ARM64"

	filter "system:windows"
		staticruntime "on"
		architecture "x64"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

project "IMGUI"
	kind "StaticLib"
	language 'C++'
	cppdialect 'C++latest'

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
		"imgui_demo.cpp"
	}

	includedirs {
		"./",
		"../GLFW/include"
	}

	filter "system:macosx"
	architecture "ARM64"

	filter "system:windows"
	architecture "x64"

	filter "configurations:Debug"
	runtime "Debug"
	symbols "on"

	filter "configurations:Release"
	runtime "Release"
	optimize "on"

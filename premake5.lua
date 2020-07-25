project "ImGui"
	language "C++"
	staticruntime "Off"
	kind "StaticLib"
	configurations { "Debug", "Shipping" }

	targetdir (BinaryDirectory)
	objdir (IntermediateDirectory)

	files
	{
		"imgui_draw.cpp",
		"imgui_internal.h",
		"imgui_widgets.cpp",
		"imstb_rectpack.h",
		"imstb_textedit.h",
		"imstb_truetype.h",
		"imconfig.h",
		"imgui.cpp",
		"imgui.h",
		"imgui_demo.cpp"
	}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "On"

	filter "configurations:Shipping"
		runtime "Release"
		optimize "On"

	filter "system:windows"
		systemversion "latest"
		
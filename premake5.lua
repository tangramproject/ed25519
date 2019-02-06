workspace "ed25519"
	configurations { "Release" }
	platforms { "win-x86", "win-x64", "linux-x64", "osx-x64" }
	
project "ed25519"
	kind "SharedLib"
	language "C"
	targetdir "bin/%{os.target()}/%{cfg.architecture}/%{cfg.buildcfg}"
	defines { "NDEBUG", "ED25519_BUILD_DLL" }
	optimize "On"
	files { "**.h", "**.c" }

	filter { "platforms:win-x86" }
		system "windows"
		architecture "x86"

    filter { "platforms:win-x64" }
		system "windows"
		architecture "x86_64"
	  
	filter { "platforms:linux-x64" }
		system "linux"
		architecture "x86_64"

    filter { "platforms:osx-x64" }
		toolset "clang"
		system "macosx"
		architecture "x86_64"

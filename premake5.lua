workspace "ed25519"
	configurations { "Release" }
	platforms { "win-x86", "win-x64", "linux-x64", "osx-x64" }
	
project "ed25519"
	kind "SharedLib"
	language "C"
	defines { "NDEBUG", "ED25519_BUILD_DLL" }
	optimize "On"
	files { "src/*.h", "src/*.c" }

	filter { "platforms:win-x86" }
		system "windows"
		architecture "x86"
		targetdir "runtimes/win-x86/native"

    filter { "platforms:win-x64" }
		system "windows"
		architecture "x86_64"
		targetdir "runtimes/win-x64/native"
	  
	filter { "platforms:linux-x64" }
		system "linux"
		architecture "x86_64"
		targetdir "runtimes/linux-x64/native"

    filter { "platforms:osx-x64" }
		system "macosx"
		architecture "x86_64"
		targetdir "runtimes/osx-x64/native"

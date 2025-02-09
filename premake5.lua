
project "glm"
    kind "StaticLib"
    language "C++"

    targetdir { "bin/" ..outputdir.. "/%{prj.name}"}
    objdir { "bin-int/" ..outputdir.. "/%{prj.name}"}

    files
    {
        "glm/glm/**"
    }

    filter "system:windows"
    systemversion "latest"
    cppdialect "C++17"
    staticruntime "On"

    filter { "system:windows", "configurations:Release" }
        buildoptions "/MT"
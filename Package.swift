// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "GeographicLib",
    products: [
        .library(
            name: "GeographicLib",
            targets: ["GeographicLib"]
        )
    ],
    targets: [
        .target(
            name: "GeographicLib",
            path: ".",
            exclude: ["AUTHORS",
                      "CMakeLists.txt",
                      "HOWTO-RELEASE.txt",
                      "LICENSE.txt",
                      "Makefile.am",
                      "include/Makefile.am",
                      "NEWS",
                      "README.md",
                      "autogen.sh",
                      "cgi-bin",
                      "cmake",
                      "configure.ac",
                      "data-distrib",
                      "data-installer",
                      "develop/",
                      "doc",
                      "examples",
                      "experimental",
                      "include/Makefile.am",
                      "m4",
                      "makefile-admin",
                      "man",
                      "maxima",
                      "src/CMakeLists.txt",
                      "src/Makefile.am",
                      "tests",
                      "tools/",
                      "wrapper"],
            sources: ["src"],
            cxxSettings: [
                .headerSearchPath("include"),
                .define("GEOGRAPHICLIB_VERSION_STRING", to: "\"2.5\""),
                .define("GEOGRAPHICLIB_VERSION_MAJOR", to: "2"),
                .define("GEOGRAPHICLIB_VERSION_MINOR", to: "5"),
                .define("GEOGRAPHICLIB_VERSION_PATCH", to: "0"),
                .define("GEOGRAPHICLIB_DATA", to: "\"/usr/local/share/GeographicLib\""),
                .define("GEOGRAPHICLIB_HAVE_LONG_DOUBLE", to: "0"),
                .define("GEOGRAPHICLIB_WORDS_BIGENDIAN", to: "0"),
                .define("GEOGRAPHICLIB_PRECISION", to: "2"),
                .define("GEOGRAPHICLIB_SHARED_LIB", to: "0")
            ]
        )
    ]
)

# Autogenerated wrapper script for LibUnwind_jll for armv6l-linux-gnueabihf
export libunwind

using Zlib_jll
JLLWrappers.@generate_wrapper_header("LibUnwind")
JLLWrappers.@declare_library_product(libunwind, "libunwind.so.8")
function __init__()
    JLLWrappers.@generate_init_header(Zlib_jll)
    JLLWrappers.@init_library_product(
        libunwind,
        "lib/libunwind.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()

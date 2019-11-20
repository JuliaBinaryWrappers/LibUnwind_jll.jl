# Autogenerated wrapper script for LibUnwind_jll for aarch64-linux-gnu
export libunwind

using XZ_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"

# Relative path to `libunwind`
const libunwind_splitpath = ["lib", "libunwind.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libunwind_path = ""

# libunwind-specific global declaration
# This will be filled out by __init__()
libunwind_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libunwind = "libunwind.so.8"


"""
Open all libraries
"""
function __init__()
    global prefix = abspath(joinpath(@__DIR__, ".."))

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    append!.(Ref(PATH_list), (XZ_jll.PATH_list,))
    append!.(Ref(LIBPATH_list), (XZ_jll.LIBPATH_list,))

    global libunwind_path = abspath(joinpath(artifact"LibUnwind", libunwind_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libunwind_handle = dlopen(libunwind_path)
    push!(LIBPATH_list, dirname(libunwind_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(LIBPATH_list, ':')

    # Add each element of LIBPATH to our DL_LOAD_PATH (necessary on platforms
    # that don't honor our "already opened" trick)
    #for lp in LIBPATH_list
    #    push!(DL_LOAD_PATH, lp)
    #end
end  # __init__()


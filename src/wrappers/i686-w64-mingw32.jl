# Autogenerated wrapper script for LibSSH2_jll for i686-w64-mingw32
export libssh2

using MbedTLS_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "PATH"
LIBPATH_default = ""

# Relative path to `libssh2`
const libssh2_splitpath = ["bin", "libssh2.dll"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libssh2_path = ""

# libssh2-specific global declaration
# This will be filled out by __init__()
libssh2_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libssh2 = "libssh2.dll"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"LibSSH2")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    # From the list of our dependencies, generate a tuple of all the PATH and LIBPATH lists,
    # then append them to our own.
    foreach(p -> append!(PATH_list, p), (MbedTLS_jll.PATH_list,))
    foreach(p -> append!(LIBPATH_list, p), (MbedTLS_jll.LIBPATH_list,))

    global libssh2_path = normpath(joinpath(artifact_dir, libssh2_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libssh2_handle = dlopen(libssh2_path)
    push!(LIBPATH_list, dirname(libssh2_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ';')
    global LIBPATH = join(vcat(LIBPATH_list, [Sys.BINDIR, joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)]), ';')
end  # __init__()


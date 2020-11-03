# Autogenerated wrapper script for LibSSH2_jll for i686-linux-gnu
export libssh2

using MbedTLS_jll
JLLWrappers.@generate_wrapper_header("LibSSH2")
JLLWrappers.@declare_library_product(libssh2, "libssh2.so.1")
function __init__()
    JLLWrappers.@generate_init_header(MbedTLS_jll)
    JLLWrappers.@init_library_product(
        libssh2,
        "lib/libssh2.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()

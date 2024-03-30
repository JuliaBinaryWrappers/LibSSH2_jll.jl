# Autogenerated wrapper script for LibSSH2_jll for x86_64-linux-musl
export libssh2

using OpenSSL_jll
JLLWrappers.@generate_wrapper_header("LibSSH2")
JLLWrappers.@declare_library_product(libssh2, "libssh2.so.1")
function __init__()
    JLLWrappers.@generate_init_header(OpenSSL_jll)
    JLLWrappers.@init_library_product(
        libssh2,
        "lib/libssh2.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()

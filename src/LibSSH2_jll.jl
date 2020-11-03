# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule LibSSH2_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("LibSSH2")
JLLWrappers.@generate_main_file("LibSSH2", UUID("29816b5a-b9ab-546f-933c-edad1886dfa8"))
end  # module LibSSH2_jll

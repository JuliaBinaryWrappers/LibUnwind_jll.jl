# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule LibUnwind_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("LibUnwind")
JLLWrappers.@generate_main_file("LibUnwind", UUID("745a5e78-f969-53e9-954f-d19f2f74f4e3"))
end  # module LibUnwind_jll

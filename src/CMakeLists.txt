add_executable(
    project1_app 
    kseqalign.cpp
    )

target_link_libraries(
    project1_app 
    PUBLIC OpenMP::OpenMP_CXX
)
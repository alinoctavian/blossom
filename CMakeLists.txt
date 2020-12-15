cmake_minimum_required(VERSION 3.10)

project(Blossom)


set(EXEC Blossom)
set(SRC_DIR ./src)
set(INCLUDE_DIR ./include)
set(LIB_DIR ${CMAKE_CURRENT_SOURCE_DIR}/lib)

file(GLOB ENGINE_FILES 
         ${SRC_DIR}/engine/*        
)

file(GLOB GUI_FILES 
        ${SRC_DIRE}/gui/*)

file(GLOB EDITOR_FILES
        ${SRC_DIR}/editor/*
)

include_directories(${EXEC} ${INCLUDE_DIR})

add_executable(${EXEC} 
                ${ENGINE_FILES}
                ${GUI_FILES}
                ${EDITOR_FILES}
)

#${LIB_DIR}/
target_link_libraries(${EXEC}
	${CMAKE_DL_LIBS}
	
)

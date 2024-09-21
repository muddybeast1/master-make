SRC = $(shell find -iname "*.c")
# OBJ_FILES = $(SRC:%.c=%.o)
OBJ_FILES = $(patsubst %.c, %.o, $(SRC))
INCLUDES = -I./include/magic -I./include/magic2
INCLUDES = $(shell find -iname "*.h" -exec dirname {} \; | sed 's/^./-I./g' | xargs)

#$(info $(SRC) $(OBJ_FILES) $(INCLUDES))
$(info This is for includeme.mk)
# PIYUSH =
PIYUSH ?= 1

GCC ?= gcc

$(info gcc = $(GCC))

$(info value of PIYUSH = $(PIYUSH))

SRC = $(shell find -iname "*.c")
# SRC += piyush.c
$(info SRC = $(SRC))

# OBJ_FILES = $(SRC:%.c=%.o)
OBJ_FILES = $(patsubst %.c, %.o, $(SRC))

INCLUDES = -I./include/magic -I./include/magic2
INCLUDES = $(shell find -iname "*.h" -exec dirname {} \; | sed 's/^./-I./g' | xargs)

#$(info $(SRC) $(OBJ_FILES) $(INCLUDES))
$(info This is for includeme.mk)

define some_macro
	echo "Hello World"
	echo "Hello World! Again!" $@
endef

$(info $(some_macro))
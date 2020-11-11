# g++ -o version version.cpp -I/usr/local/qt5/include/QtCore -I/usr/local/qt5/include -L/usr/local/qt5/lib -lQt5Core -fPIC


BUILD_DIR := ./build
TARGET    := version

OBJ_DIR   := $(BUILD_DIR)/objects
APP_DIR   := $(BUILD_DIR)/app

SRC       := $(wildcard *.cpp)
OBJS 	  := $(SRC:%.cpp=$(OBJ_DIR)/%.o)

INC_DIRS  := /usr/local/qt5/include/QtCore \
			/usr/local/qt5/include
LIB_DIRS  := /usr/local/qt5/lib

INCLUDE   := $(addprefix -I,$(INC_DIRS))
CXXFLAGS  := -Wall -Wextra -fPIC

LDFLAGS   := $(addprefix -L,$(LIB_DIRS))
LDLIBS   	  := -lQt5Core


all: build $(APP_DIR)/$(TARGET)

# Compile
$(OBJ_DIR)/%.o: %.cpp
	@mkdir -p $(@D)
	$(CXX) $(CXXFLAGS) $(INCLUDE) -c $< -o $@

# Link
$(APP_DIR)/$(TARGET): $(OBJS)
	@mkdir -p $(@D)
	$(CXX) -o $(APP_DIR)/$(TARGET) $^ $(LDFLAGS) $(LDLIBS)

build:
	@mkdir -p $(APP_DIR)
	@mkdir -p $(OBJ_DIR)

clean:
	@rm -rvf $(BUILD_DIR)

debug: CXXFLAGS += -DDEBUG -g
debug: all

.PHONY: all build clean

info:
	@echo "[*] Application dir: $(APP_DIR)     "
	@echo "[*] Object dir:      $(OBJ_DIR)     "
	@echo "[*] Sources:         $(SRC)         "
	@echo "[*] Objects:         $(OBJS)     "
	@echo "[*] Dependencies:    $(DEPENDENCIES)"
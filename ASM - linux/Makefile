NAME = dr_quine_asm
ASM_CC = nasm
ASM_FLAGS = -f elf64 #to run Linux use elf64, otherwise macho64 for macos (remember to change the base functions to _functionname)
CC = gcc
C_FLAGS = -Wall -Wextra -Werror
COLLEEN_SRC = Colleen/Colleen.s
GRACE_SRC = Grace/Grace.s
SULLY_SRC = Sully/Sully.s
COLLEEN_OBJ = $(COLLEEN_SRC:%.s=%.o)
GRACE_OBJ = $(GRACE_SRC:%.s=%.o)
SULLY_OBJ = $(SULLY_SRC:%.s=%.o)
COLLEEN_BIN = Colleen/Colleen
GRACE_BIN = Grace/Grace
SULLY_BIN = Sully/Sully
BLUE = \033[1;36m
GREEN = \033[1;32m
YELLOW = \033[1;33m
RESET = \033[0m
all: $(NAME)
$(NAME): $(COLLEEN_BIN) $(GRACE_BIN) $(SULLY_BIN)
	@echo "$(GREEN)ASM All binaries built successfully!$(RESET)"
colleen: $(COLLEEN_BIN)
$(COLLEEN_BIN): $(COLLEEN_OBJ)
	@echo "$(BLUE)ASM Compiling Colleen...$(RESET)"
	@$(CC) $(C_FLAGS) -o $@ $^
	@echo "$(GREEN)ASM Colleen compiled 📝$(RESET)"
grace: $(GRACE_BIN)
$(GRACE_BIN): $(GRACE_OBJ)
	@echo "$(BLUE)ASM Compiling Grace...$(RESET)"
	@$(CC) $(C_FLAGS) -o $@ $^
	@echo "$(GREEN)ASM Grace compiled 🗀$(RESET)"
sully: $(SULLY_BIN)
$(SULLY_BIN): $(SULLY_OBJ)
	@echo "$(BLUE)ASM Compiling Sully...$(RESET)"
	@$(CC) $(C_FLAGS) -o $@ $^
	@echo "$(GREEN)ASM Sully compiled 👨‍👦$(RESET)"
%.o: %.s
	@$(ASM_CC) $(ASM_FLAGS) $< -o $@
clean:
	@rm -f $(COLLEEN_OBJ) $(GRACE_OBJ) $(SULLY_OBJ)
	@echo "$(YELLOW)ASM Cleaned object files 🧹$(RESET)"
fclean: clean
	@rm -f $(COLLEEN_BIN) $(GRACE_BIN) Grace/Grace_kid.s $(SULLY_BIN) Sully/Sully_*
	@echo "$(YELLOW)ASM All cleaned up 🫧$(RESET)"
re: fclean all
.PHONY: all clean fclean re colleen grace sully run
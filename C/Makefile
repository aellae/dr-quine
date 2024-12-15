NAME = dr_quine_c

CC = gcc
C_FLAGS = -Wall -Wextra -Werror

COLLEEN_SRC = Colleen/Colleen.c
GRACE_SRC = Grace/Grace.c
SULLY_SRC = Sully/Sully.c

COLLEEN_OBJ = $(COLLEEN_SRC:%.c=%.o)
GRACE_OBJ = $(GRACE_SRC:%.c=%.o)
SULLY_OBJ = $(SULLY_SRC:%.c=%.o)

COLLEEN_BIN = Colleen/Colleen
GRACE_BIN = Grace/Grace
SULLY_BIN = Sully/Sully

BLUE = \033[1;36m
GREEN = \033[1;32m
YELLOW = \033[1;33m
RESET = \033[0m

all: $(NAME)

$(NAME): $(COLLEEN_BIN) $(GRACE_BIN) $(SULLY_BIN)
	@echo "$(GREEN)C All binaries built successfully!$(RESET)"

colleen: $(COLLEEN_BIN)

$(COLLEEN_BIN): $(COLLEEN_OBJ)
	@echo "$(BLUE)C Compiling Colleen...$(RESET)"
	@$(CC) $(C_FLAGS) -o $@ $^
	@echo "$(GREEN)C Colleen compiled 📝$(RESET)"

grace: $(GRACE_BIN)

$(GRACE_BIN): $(GRACE_OBJ)
	@echo "$(BLUE)C Compiling Grace...$(RESET)"
	@$(CC) $(C_FLAGS) -o $@ $^
	@echo "$(GREEN)C Grace compiled 🗀$(RESET)"

sully: $(SULLY_BIN)

$(SULLY_BIN): $(SULLY_OBJ)
	@echo "$(BLUE)C Compiling Sully...$(RESET)"
	@$(CC) $(C_FLAGS) -o $@ $^
	@echo "$(GREEN)C Sully compiled 👨‍👦$(RESET)"

%.o: %.c
	@echo "$(YELLOW)C Building object file: $<$(RESET)"
	@$(CC) $(C_FLAGS) -c -o $@ $<

run:
	@echo "$(BLUE)C Running Colleen...$(RESET)"
	@./$(COLLEEN_BIN) > Colleen/Colleen_output.c
	@echo "$(BLUE)C Running Grace...$(RESET)"
	@cd Grace && ./Grace && cd ..
	@echo "$(BLUE)C Running Sully...$(RESET)"
	@cd Sully && ./Sully && cd ..

clean:
	@rm -f $(COLLEEN_OBJ) $(GRACE_OBJ) $(SULLY_OBJ)
	@echo "$(YELLOW)C Cleaned object files 🧹$(RESET)"

fclean: clean
	@rm -f $(COLLEEN_BIN) Colleen/Colleen_output.c $(GRACE_BIN) Grace/Grace_kid.c $(SULLY_BIN) Sully/Sully_*
	@echo "$(YELLOW)C All cleaned up 🫧$(RESET)"

re: fclean all

help:
	@echo "Usage: make [target]"
	@echo "Targets:"
	@echo "  all:    Build all binaries"
	@echo "  colleen:Build Colleen binary"
	@echo "  grace:  Build Grace binary"
	@echo "  sully:  Build Sully binary"
	@echo "  run:    Run all binaries"
	@echo "  clean:  Remove object files"
	@echo "  fclean: Remove object files and binaries"
	@echo "  re:     Remove object files and binaries, then build all binaries"

.PHONY: all clean fclean re colleen grace sully run help

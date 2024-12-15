NAME = dr_quine_js

CC = node

BLUE = \033[1;36m
GREEN = \033[1;32m
YELLOW = \033[1;33m
RESET = \033[0m

all: $(NAME)

$(NAME): colleen grace sully
	@echo "$(GREEN)JS All done 🦄$(RESET)"

colleen: 
	@echo "$(BLUE)JS Running Colleen...$(RESET)"
	@$(CC) Colleen/Colleen.js > Colleen/Colleen_output.js

grace: 
	@echo "$(BLUE)JS Running Grace...$(RESET)"
	@cd Grace && $(CC) Grace.js && cd ..

sully:
	@echo "$(BLUE)JS Running Sully...$(RESET)"
	@cd Sully && $(CC) Sully.js && cd ..

fclean:
	@rm -f Colleen/Colleen_output.js Grace/Grace_kid.js Sully/Sully_*
	@echo "$(YELLOW)JS All cleaned up 🫧$(RESET)"

re: fclean all

.PHONY: all fclean re colleen grace sully

NAME = dr_quine

all: $(NAME)

$(NAME):
	@make -C ./C
	@make -C ./ASM

clean:
	@make clean -C ./C
	@make clean -C ./ASM

fclean:
	@make fclean -C ./C
	@make fclean -C ./ASM

re:
	@make re -C ./C
	@make re -C ./ASM

bonus:
	@make -C ./JS

bonus_fclean:
	@make fclean -C ./JS

bonus_re:
	@make re -C ./JS

help:
	@echo "Usage: make [all | clean | fclean | re | bonus | bonus_fclean | bonus_re]"

.PHONY: all clean fclean re bonus bonus_fclean bonus_re help
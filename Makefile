# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: snino <snino@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/08/05 17:57:38 by snino             #+#    #+#              #
#    Updated: 2022/10/18 19:45:10 by snino            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME 			:= cub3D

CC 				:= gcc

HEADER 			:= cub3D.h

CFLAGS 			:= -Wall -Wextra -Werror -Imlx -g

LIB				:=	libft/

LIB_mlx			:= -L ./minilibxo -lmlx -framework OpenGL -framework AppKit

OBJ_DIR			:=	obj

SRCS 			:=	cub3D.c\
					ft_key.c\
					ft_move.c\
					ft_record.c\
					ft_raycast.c\
					ft_pars_map.c\
					ft_init_game.c\
					ft_check_map.c\
					ft_free_game.c\
					ft_draw_game.c\
					ft_move_utils.c\
					ft_utils_wall.c\
					ft_utils_show.c\
					ft_utils_show2.c\
					ft_move_utils2.c\
					ft_close_window.c\
					ft_init_structs.c\
					ft_error_handler.c\
                    ft_free_map_game.c\
					ft_pars_map_mass.c\
					ft_utils_textures.c\
					ft_pars_map_mass2.c\
                    ft_utils_pars_map.c\
					ft_pars_color_mass.c\
					ft_check_type_mass.c\
					ft_player_position.c\
					ft_utils_pars_map_mass.c\

OBJ 			:=	$(addprefix $(OBJ_DIR)/, $(patsubst %.c, %.o, $(SRCS)))

.PHONY			:	all clean makelibft fclean re

all				:	makelibft $(NAME)

makelibft		:
					@make -C $(LIB) all

$(NAME)			:	$(HEADER) $(OBJ)
					$(MAKE) -C ./minilibxo
					$(CC) $(CFLAGS) $(OBJ) $(LIB_mlx) $(LIB)libft.a -o $(NAME)

$(OBJ_DIR)/%.o	:	%.c	$(HEADER)
					@mkdir -p $(OBJ_DIR)
					$(CC) $(CFLAGS) $(LIB_mlx) -c $< -o $@ -I .

clean			:
					@rm -rf $(OBJ_DIR)
					@make -C $(LIB) clean

fclean			:	clean
					$(MAKE) -C ./minilibxo clean
					@$(RM) $(NAME)
					@make -C $(LIB) fclean

re				:	fclean all
# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: snino <snino@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/08/05 17:57:38 by snino             #+#    #+#              #
#    Updated: 2022/10/26 16:50:25 by snino            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME 			:= cub3D

B_NAME			:= cub3D_bonus

CC 				:=	gcc

CFLAGS 			:=	-Wall -Wextra -Werror -Imlx -g

LIBFT_A			:=	libft.a

LIBF_DIR		:=	libft/

LIBFT			:=	$(addprefix $(LIBF_DIR), $(LIBFT_A))

LIB_mlx			:=	-L ./minilibx -lmlx -framework OpenGL -framework AppKit

SRCS 			:=	cub3D.c\
					$(addprefix srcs/,\
					$(addprefix Draw_and_move/,\
					ft_key.c\
					ft_move.c\
					ft_record.c\
					ft_raycast.c\
					ft_init_game.c\
					ft_draw_game.c\
					ft_utils_wall.c\
                    ft_move_utils.c\
                    ft_move_utils2.c\
					ft_utils_textures.c)\
					$(addprefix Valid_and_pars/,\
					ft_pars_map.c\
					ft_check_map.c\
					ft_init_structs.c\
					ft_pars_map_mass.c\
					ft_pars_map_mass2.c\
                    ft_utils_pars_map.c\
                    ft_pars_color_mass.c\
                    ft_check_type_mass.c\
                    ft_player_position.c\
                    ft_utils_pars_map_mass.c)\
                    $(addprefix Error_and_show/,\
					ft_exit_game.c\
					ft_utils_show.c\
					ft_utils_show2.c))\
					$(addprefix srcs_bonus/,\
                    ft_minimap.c\
                    ft_move_door.c\
                    ft_move_bonus.c\
                    ft_draw_doors.c\
                    ft_pars_map_mass_bonus.c\
                    ft_pars_map_mass2_bonus.c)\

BONUS_SRCS		:=	cub3D_bonus.c\
					$(addprefix srcs/,\
					$(addprefix Draw_and_move/,\
					ft_key.c\
					ft_move.c\
					ft_record.c\
					ft_raycast.c\
					ft_init_game.c\
					ft_draw_game.c\
					ft_utils_wall.c\
                    ft_move_utils.c\
                    ft_move_utils2.c\
					ft_utils_textures.c)\
					$(addprefix Valid_and_pars/,\
					ft_pars_map.c\
					ft_check_map.c\
					ft_init_structs.c\
					ft_pars_map_mass.c\
					ft_pars_map_mass2.c\
                    ft_utils_pars_map.c\
                    ft_pars_color_mass.c\
                    ft_check_type_mass.c\
                    ft_player_position.c\
                    ft_utils_pars_map_mass.c)\
                    $(addprefix Error_and_show/,\
					ft_exit_game.c\
					ft_utils_show.c\
					ft_utils_show2.c))\
					$(addprefix srcs_bonus/,\
					ft_minimap.c\
					ft_move_door.c\
                   	ft_move_bonus.c\
                    ft_draw_doors.c\
                    ft_record_types_bonus.c\
                    ft_pars_map_mass_bonus.c\
                    ft_pars_map_mass2_bonus.c)\

HEADER 			:=	cub3D.h

OBJ 			:=	$(SRCS:%.c=%.o)

BONUS_OBJ 		:=	$(BONUS_SRCS:%.c=%.o)

.PHONY			:	all clean fclean bonus re

all				:	$(NAME)

bonus 			:	$(B_NAME)

$(NAME)			:	$(HEADER) $(OBJ)
					@make -C $(LIBF_DIR)
					$(MAKE) -C ./minilibx
					$(CC) $(CFLAGS)  $(OBJ) $(LIB_mlx) $(LIBFT) -o $(NAME)

$(B_NAME) 		:	$(HEADER) $(BONUS_OBJ)
					@make -C $(LIBF_DIR)
					$(MAKE) -C ./minilibx
					$(CC) $(CFLAGS) $(BONUS_OBJ) $(LIB_mlx) $(LIBFT) -o $(B_NAME)

clean			:
					@rm -rf $(OBJ)
					@rm -rf $(BONUS_OBJ)
					@make -C $(LIBF_DIR) clean

fclean			:	clean
					$(MAKE) -C ./minilibx clean
					@$(RM) $(NAME)
					@$(RM) $(B_NAME)
					@make -C $(LIBF_DIR) fclean

re				:	fclean all
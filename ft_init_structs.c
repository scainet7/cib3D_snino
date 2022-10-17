/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_init_structs.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: snino <snino@student.42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/10/17 16:07:23 by snino             #+#    #+#             */
/*   Updated: 2022/10/17 20:42:28 by snino            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "cub3D.h"

void	ft_init_struckt(t_game *game)
{
	t_pp	*player;
	t_img 	*img;

	game->mlx = NULL;
	game->win = NULL;
	player = malloc(sizeof(t_pp));
	if (!player)
		ft_error_handler(game, "Error\nMALLOC_STRUCKT_PLAYER_POSITION", leave);
	game->player = player;
	img = malloc(sizeof(t_img));
	if (!img)
		ft_error_handler(game, "Error\nMALLOC_STRUCKT_IMG", leave);
	game->img = img;
	game->img->addr = NULL;
	game->img->wall_no = NULL;
	game->img->wall_so = NULL;
	game->img->wall_ea = NULL;
	game->img->wall_we = NULL;
}


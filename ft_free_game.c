/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_free_game.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: snino <marvin@42.fr>                       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/03/08 17:18:12 by snino             #+#    #+#             */
/*   Updated: 2022/09/25 19:47:48 by snino            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "cub3D.h"

static void	ft_free_map_utils_img(t_game *game)
{
<<<<<<< HEAD
	mlx_destroy_image(game->win->mlx, game->img.wall_so);
=======
	mlx_destroy_image(game->mlx, game->img.wall);
>>>>>>> parent of 3f6eeec (V1.0 fixed init textur)
//	mlx_destroy_image(game->mlx, game->img.wall_ea);
//	mlx_destroy_image(game->mlx, game->img.wall_no);
//	mlx_destroy_image(game->mlx, game->img.wall_so);
//	mlx_destroy_image(game->mlx, game->img.wall_we);
//	mlx_destroy_image(game->mlx, game->img.ptr);
//	mlx_destroy_image(game->mlx, game->exit_c.ptr);
//	mlx_destroy_image(game->mlx, game->exit_o.ptr);
//	mlx_destroy_image(game->mlx, game->key.ptr);
//	mlx_destroy_image(game->mlx, game->floor.ptr);
}

void	ft_free_game(t_game *game)
{
	ft_free_map_utils_img(game);
//	mlx_destroy_image(game->mlx, game->player.p.ptr);
//	ft_free_map_game(game);
//	mlx_destroy_image(game->mlx, game->img.ptr);
<<<<<<< HEAD
	mlx_destroy_window(game->win->mlx, game->win->win);
=======
//	mlx_destroy_window(game->mlx, game->win);
>>>>>>> parent of 3f6eeec (V1.0 fixed init textur)
}

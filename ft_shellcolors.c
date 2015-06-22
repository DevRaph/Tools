/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_shellcolors.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: kleneyle <kleneyle@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2013/12/05 19:23:12 by kleneyle          #+#    #+#             */
/*   Updated: 2014/01/06 05:25:22 by kleneyle         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

/*
 typedef unsigned char    t_uchar;
 18:06 # define FG_COLOR_TYPE "38;5"
 # define BG_COLOR_TYPE "48;5"
 */


#include "libft.h"

static void	setcolor(t_uchar color, const char *type)
{
	char	*color_str;

	color_str = ft_itoa(color);
	ft_putstr("\033[");
	ft_putstr(type);
	ft_putchar(';');
	ft_putstr(color_str);
	ft_putchar('m');
	free(color_str);
}

void		ft_setfgcolor(t_uchar color)
{
	setcolor(color, FG_COLOR_TYPE);
}

void		ft_setbgcolor(t_uchar color)
{
	setcolor(color, BG_COLOR_TYPE);
}

void		ft_resetcolor(void)
{
	ft_putstr("\033[0m");
}

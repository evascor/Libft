/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strlcpy.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: evasco-o <evasco-o@student.42barcelona.    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/09/27 23:41:24 by evasco-o          #+#    #+#             */
/*   Updated: 2023/09/28 17:08:07 by evasco-o         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */
#include "libft.h"
#include <stdio.h>

// Mismo resultado de salida que snprintf, src length
//(formatea y almacena datos en una string especifica tomando un lim max para 
// asegurar que no se escriban más caracteres en la cadena de los que caben)

size_t	ft_strlcpy(char *dst, const char *src, size_t dstsize)
{
    size_t  i;
    size_t  s_len;

    i = 0;
    s_len = ft_strlen(src);
    if (dstsize > 0)//min 1 para NULL
    {
        while (src[i]) // i tiene que ser menor que dst - 1 (cuenta NULL)
        {
            dst[i] = src[i];
            i++;
        }
        dst[i] = '\0';
    }
    return (s_len);
}

/*int main(void)
{
    char *src = "Hello world!";
    char dst[20];

    size_t  copy = ft_strlcpy(dst, src, sizeof(dst));

    printf("%zu\n", copy); //especificador de formato para size_t
    printf("%s\n", src);
}*/
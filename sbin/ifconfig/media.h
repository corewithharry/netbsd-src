/*	$NetBSD: media.h,v 1.2 2020/09/22 14:14:17 roy Exp $	*/

#ifndef	_IFCONFIG_MEDIA_H
#define	_IFCONFIG_MEDIA_H

#include <prop/proplib.h>

#include "parse.h"

extern struct pkw kwmedia;

void	print_media_word(int, const char *);
void	process_media_commands(prop_dictionary_t);
void	media_status(int, int, prop_dictionary_t, prop_dictionary_t);

#endif	/* _IFCONFIG_MEDIA_H */

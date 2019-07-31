Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FDF07C29D
	for <lists+driverdev-devel@lfdr.de>; Wed, 31 Jul 2019 15:02:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 17BEC86837;
	Wed, 31 Jul 2019 13:02:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eU43Y4hwr7d9; Wed, 31 Jul 2019 13:02:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D937285E14;
	Wed, 31 Jul 2019 13:02:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D3D8C1BF32A
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 13:02:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CFC672206D
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 13:02:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R7ez1cnzTifk for <devel@linuxdriverproject.org>;
 Wed, 31 Jul 2019 13:02:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
 by silver.osuosl.org (Postfix) with ESMTPS id 5043320386
 for <devel@driverdev.osuosl.org>; Wed, 31 Jul 2019 13:02:05 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id B0D6EAEF3;
 Wed, 31 Jul 2019 13:02:02 +0000 (UTC)
Received: by quack2.suse.cz (Postfix, from userid 1000)
 id 2E7961E434C; Wed, 31 Jul 2019 15:01:48 +0200 (CEST)
Date: Wed, 31 Jul 2019 15:01:48 +0200
From: Jan Kara <jack@suse.cz>
To: Gao Xiang <gaoxiang25@huawei.com>
Subject: Re: [PATCH v5 12/24] erofs: introduce tagged pointer
Message-ID: <20190731130148.GE15806@quack2.suse.cz>
References: <20190730071413.11871-1-gaoxiang25@huawei.com>
 <20190730071413.11871-13-gaoxiang25@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190730071413.11871-13-gaoxiang25@huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-BeenThere: driverdev-devel@linuxdriverproject.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Driver Project Developer List
 <driverdev-devel.linuxdriverproject.org>
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Cc: devel@driverdev.osuosl.org, Stephen Rothwell <sfr@canb.auug.org.au>,
 linux-erofs@lists.ozlabs.org, Chao Yu <yuchao0@huawei.com>,
 Theodore Ts'o <tytso@mit.edu>, "Darrick J . Wong" <darrick.wong@oracle.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jan Kara <jack@suse.cz>,
 Amir Goldstein <amir73il@gmail.com>, Dave Chinner <david@fromorbit.com>,
 David Sterba <dsterba@suse.cz>, Li Guifu <bluce.liguifu@huawei.com>,
 LKML <linux-kernel@vger.kernel.org>, Christoph Hellwig <hch@infradead.org>,
 Miao Xie <miaoxie@huawei.com>, Alexander Viro <viro@zeniv.linux.org.uk>,
 linux-fsdevel@vger.kernel.org, Jaegeuk Kim <jaegeuk@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, Fang Wei <fangwei1@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue 30-07-19 15:14:01, Gao Xiang wrote:
> Currently kernel has scattered tagged pointer usages
> hacked by hand in plain code, without a unique and
> portable functionset to highlight the tagged pointer
> itself and wrap these hacked code in order to clean up
> all over meaningless magic masks.
> 
> This patch introduces simple generic methods to fold
> tags into a pointer integer. Currently it supports
> the last n bits of the pointer for tags, which can be
> selected by users.
> 
> In addition, it will also be used for the upcoming EROFS
> filesystem, which heavily uses tagged pointer pproach
>  to reduce extra memory allocation.
> 
> Link: https://en.wikipedia.org/wiki/Tagged_pointer
> 
> Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>

I'm not sure the generic approach you take is really needed here... You can
rely on getting at most two unused bits in the pointer anyway (and on mk68
architecture I've heard even that is not true but I guess you don't care).
So why not just define a single pointer type representing pointer with as
many tags as you can get? Also what I find bad about your tagptr approach
is that the way you've implemented it you loose the information about the
original pointer type. So overall I'm not sure the benefits outweight the
downsides but I guess that's a matter of taste and ultimately your call as
a maintainer of this code.

								Honza

> ---
>  fs/erofs/tagptr.h | 110 ++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 110 insertions(+)
>  create mode 100644 fs/erofs/tagptr.h
> 
> diff --git a/fs/erofs/tagptr.h b/fs/erofs/tagptr.h
> new file mode 100644
> index 000000000000..a72897c86744
> --- /dev/null
> +++ b/fs/erofs/tagptr.h
> @@ -0,0 +1,110 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/*
> + * A tagged pointer implementation
> + *
> + * Copyright (C) 2018 Gao Xiang <gaoxiang25@huawei.com>
> + */
> +#ifndef __EROFS_FS_TAGPTR_H
> +#define __EROFS_FS_TAGPTR_H
> +
> +#include <linux/types.h>
> +#include <linux/build_bug.h>
> +
> +/*
> + * the name of tagged pointer types are tagptr{1, 2, 3...}_t
> + * avoid directly using the internal structs __tagptr{1, 2, 3...}
> + */
> +#define __MAKE_TAGPTR(n) \
> +typedef struct __tagptr##n {	\
> +	uintptr_t v;	\
> +} tagptr##n##_t;
> +
> +__MAKE_TAGPTR(1)
> +__MAKE_TAGPTR(2)
> +__MAKE_TAGPTR(3)
> +__MAKE_TAGPTR(4)
> +
> +#undef __MAKE_TAGPTR
> +
> +extern void __compiletime_error("bad tagptr tags")
> +	__bad_tagptr_tags(void);
> +
> +extern void __compiletime_error("bad tagptr type")
> +	__bad_tagptr_type(void);
> +
> +/* fix the broken usage of "#define tagptr2_t tagptr3_t" by users */
> +#define __tagptr_mask_1(ptr, n)	\
> +	__builtin_types_compatible_p(typeof(ptr), struct __tagptr##n) ? \
> +		(1UL << (n)) - 1 :
> +
> +#define __tagptr_mask(ptr)	(\
> +	__tagptr_mask_1(ptr, 1) ( \
> +	__tagptr_mask_1(ptr, 2) ( \
> +	__tagptr_mask_1(ptr, 3) ( \
> +	__tagptr_mask_1(ptr, 4) ( \
> +	__bad_tagptr_type(), 0)))))
> +
> +/* generate a tagged pointer from a raw value */
> +#define tagptr_init(type, val) \
> +	((typeof(type)){ .v = (uintptr_t)(val) })
> +
> +/*
> + * directly cast a tagged pointer to the native pointer type, which
> + * could be used for backward compatibility of existing code.
> + */
> +#define tagptr_cast_ptr(tptr) ((void *)(tptr).v)
> +
> +/* encode tagged pointers */
> +#define tagptr_fold(type, ptr, _tags) ({ \
> +	const typeof(_tags) tags = (_tags); \
> +	if (__builtin_constant_p(tags) && (tags & ~__tagptr_mask(type))) \
> +		__bad_tagptr_tags(); \
> +tagptr_init(type, (uintptr_t)(ptr) | tags); })
> +
> +/* decode tagged pointers */
> +#define tagptr_unfold_ptr(tptr) \
> +	((void *)((tptr).v & ~__tagptr_mask(tptr)))
> +
> +#define tagptr_unfold_tags(tptr) \
> +	((tptr).v & __tagptr_mask(tptr))
> +
> +/* operations for the tagger pointer */
> +#define tagptr_eq(_tptr1, _tptr2) ({ \
> +	typeof(_tptr1) tptr1 = (_tptr1); \
> +	typeof(_tptr2) tptr2 = (_tptr2); \
> +	(void)(&tptr1 == &tptr2); \
> +(tptr1).v == (tptr2).v; })
> +
> +/* lock-free CAS operation */
> +#define tagptr_cmpxchg(_ptptr, _o, _n) ({ \
> +	typeof(_ptptr) ptptr = (_ptptr); \
> +	typeof(_o) o = (_o); \
> +	typeof(_n) n = (_n); \
> +	(void)(&o == &n); \
> +	(void)(&o == ptptr); \
> +tagptr_init(o, cmpxchg(&ptptr->v, o.v, n.v)); })
> +
> +/* wrap WRITE_ONCE if atomic update is needed */
> +#define tagptr_replace_tags(_ptptr, tags) ({ \
> +	typeof(_ptptr) ptptr = (_ptptr); \
> +	*ptptr = tagptr_fold(*ptptr, tagptr_unfold_ptr(*ptptr), tags); \
> +*ptptr; })
> +
> +#define tagptr_set_tags(_ptptr, _tags) ({ \
> +	typeof(_ptptr) ptptr = (_ptptr); \
> +	const typeof(_tags) tags = (_tags); \
> +	if (__builtin_constant_p(tags) && (tags & ~__tagptr_mask(*ptptr))) \
> +		__bad_tagptr_tags(); \
> +	ptptr->v |= tags; \
> +*ptptr; })
> +
> +#define tagptr_clear_tags(_ptptr, _tags) ({ \
> +	typeof(_ptptr) ptptr = (_ptptr); \
> +	const typeof(_tags) tags = (_tags); \
> +	if (__builtin_constant_p(tags) && (tags & ~__tagptr_mask(*ptptr))) \
> +		__bad_tagptr_tags(); \
> +	ptptr->v &= ~tags; \
> +*ptptr; })
> +
> +#endif	/* __EROFS_FS_TAGPTR_H */
> +
> -- 
> 2.17.1
> 
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

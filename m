Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B54BA7C334
	for <lists+driverdev-devel@lfdr.de>; Wed, 31 Jul 2019 15:20:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4D22487D05;
	Wed, 31 Jul 2019 13:20:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qqbjLmOk8WRf; Wed, 31 Jul 2019 13:20:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0F20787522;
	Wed, 31 Jul 2019 13:20:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 583901BF2CE
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 13:20:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 54ADA85E77
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 13:20:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ya1L3hpHzERT for <devel@linuxdriverproject.org>;
 Wed, 31 Jul 2019 13:20:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga05-in.huawei.com [45.249.212.191])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A357085E6B
 for <devel@driverdev.osuosl.org>; Wed, 31 Jul 2019 13:20:39 +0000 (UTC)
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 768AAB759E180569B93C;
 Wed, 31 Jul 2019 21:20:36 +0800 (CST)
Received: from [10.151.23.176] (10.151.23.176) by smtp.huawei.com
 (10.3.19.206) with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 31 Jul
 2019 21:20:28 +0800
Subject: Re: [PATCH v5 12/24] erofs: introduce tagged pointer
To: Jan Kara <jack@suse.cz>
References: <20190730071413.11871-1-gaoxiang25@huawei.com>
 <20190730071413.11871-13-gaoxiang25@huawei.com>
 <20190731130148.GE15806@quack2.suse.cz>
From: Gao Xiang <gaoxiang25@huawei.com>
Message-ID: <204b7fcc-a54b-ebd6-ff4c-2d5e2e6d4a8c@huawei.com>
Date: Wed, 31 Jul 2019 21:20:23 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <20190731130148.GE15806@quack2.suse.cz>
X-Originating-IP: [10.151.23.176]
X-CFilter-Loop: Reflected
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Miao Xie <miaoxie@huawei.com>,
 Amir Goldstein <amir73il@gmail.com>, Dave Chinner <david@fromorbit.com>,
 David Sterba <dsterba@suse.cz>, Li Guifu <bluce.liguifu@huawei.com>,
 LKML <linux-kernel@vger.kernel.org>, Christoph Hellwig <hch@infradead.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>, linux-fsdevel@vger.kernel.org,
 Jaegeuk Kim <jaegeuk@kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, Fang Wei <fangwei1@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Jan,

On 2019/7/31 21:01, Jan Kara wrote:
> On Tue 30-07-19 15:14:01, Gao Xiang wrote:
>> Currently kernel has scattered tagged pointer usages
>> hacked by hand in plain code, without a unique and
>> portable functionset to highlight the tagged pointer
>> itself and wrap these hacked code in order to clean up
>> all over meaningless magic masks.
>>
>> This patch introduces simple generic methods to fold
>> tags into a pointer integer. Currently it supports
>> the last n bits of the pointer for tags, which can be
>> selected by users.
>>
>> In addition, it will also be used for the upcoming EROFS
>> filesystem, which heavily uses tagged pointer pproach
>>  to reduce extra memory allocation.
>>
>> Link: https://en.wikipedia.org/wiki/Tagged_pointer
>>
>> Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
> 
> I'm not sure the generic approach you take is really needed here... You can
> rely on getting at most two unused bits in the pointer anyway (and on mk68
> architecture I've heard even that is not true but I guess you don't care).

Yes, and currently erofs uses 1-bit tags at most...

> So why not just define a single pointer type representing pointer with as
> many tags as you can get?
I think the primary use is to decide if the tag is beyond the bit boundary,
such as use tag 2, 3 on tagptr1_t, we can BUG_ON or check it at compile time....

BTW, my first patch is the only one fixed tagged pointer type(2-bit even if m64k) as below:
https://lore.kernel.org/lkml/1530176789-107541-1-git-send-email-gaoxiang25@huawei.com/

and Willy raised another problem is about static variable, therefore I decided to leave
multiple tagptr types for users to decide for specific situations...
https://lore.kernel.org/lkml/20180628092303.GD7646@bombadil.infradead.org/


> Also what I find bad about your tagptr approach
> is that the way you've implemented it you loose the information about the
> original pointer type.
Yes, I think that is about coding style, but the legacy way we have to do
type cast as well, I think...

   struct b *ptr = tagptr_unfold_tags(tptr);
vs
   struct b *ptr = (struct b *)((unsigned long)tptr & ~2);


> So overall I'm not sure the benefits outweight the
> downsides but I guess that's a matter of taste and ultimately your call as
> a maintainer of this code.

I think I wouldn't generalize this implementations in this series...
It will be used for EROFS only for now :)


Thanks,
Gao Xiang

> 
> 								Honza
> 
>> ---
>>  fs/erofs/tagptr.h | 110 ++++++++++++++++++++++++++++++++++++++++++++++
>>  1 file changed, 110 insertions(+)
>>  create mode 100644 fs/erofs/tagptr.h
>>
>> diff --git a/fs/erofs/tagptr.h b/fs/erofs/tagptr.h
>> new file mode 100644
>> index 000000000000..a72897c86744
>> --- /dev/null
>> +++ b/fs/erofs/tagptr.h
>> @@ -0,0 +1,110 @@
>> +/* SPDX-License-Identifier: GPL-2.0-only */
>> +/*
>> + * A tagged pointer implementation
>> + *
>> + * Copyright (C) 2018 Gao Xiang <gaoxiang25@huawei.com>
>> + */
>> +#ifndef __EROFS_FS_TAGPTR_H
>> +#define __EROFS_FS_TAGPTR_H
>> +
>> +#include <linux/types.h>
>> +#include <linux/build_bug.h>
>> +
>> +/*
>> + * the name of tagged pointer types are tagptr{1, 2, 3...}_t
>> + * avoid directly using the internal structs __tagptr{1, 2, 3...}
>> + */
>> +#define __MAKE_TAGPTR(n) \
>> +typedef struct __tagptr##n {	\
>> +	uintptr_t v;	\
>> +} tagptr##n##_t;
>> +
>> +__MAKE_TAGPTR(1)
>> +__MAKE_TAGPTR(2)
>> +__MAKE_TAGPTR(3)
>> +__MAKE_TAGPTR(4)
>> +
>> +#undef __MAKE_TAGPTR
>> +
>> +extern void __compiletime_error("bad tagptr tags")
>> +	__bad_tagptr_tags(void);
>> +
>> +extern void __compiletime_error("bad tagptr type")
>> +	__bad_tagptr_type(void);
>> +
>> +/* fix the broken usage of "#define tagptr2_t tagptr3_t" by users */
>> +#define __tagptr_mask_1(ptr, n)	\
>> +	__builtin_types_compatible_p(typeof(ptr), struct __tagptr##n) ? \
>> +		(1UL << (n)) - 1 :
>> +
>> +#define __tagptr_mask(ptr)	(\
>> +	__tagptr_mask_1(ptr, 1) ( \
>> +	__tagptr_mask_1(ptr, 2) ( \
>> +	__tagptr_mask_1(ptr, 3) ( \
>> +	__tagptr_mask_1(ptr, 4) ( \
>> +	__bad_tagptr_type(), 0)))))
>> +
>> +/* generate a tagged pointer from a raw value */
>> +#define tagptr_init(type, val) \
>> +	((typeof(type)){ .v = (uintptr_t)(val) })
>> +
>> +/*
>> + * directly cast a tagged pointer to the native pointer type, which
>> + * could be used for backward compatibility of existing code.
>> + */
>> +#define tagptr_cast_ptr(tptr) ((void *)(tptr).v)
>> +
>> +/* encode tagged pointers */
>> +#define tagptr_fold(type, ptr, _tags) ({ \
>> +	const typeof(_tags) tags = (_tags); \
>> +	if (__builtin_constant_p(tags) && (tags & ~__tagptr_mask(type))) \
>> +		__bad_tagptr_tags(); \
>> +tagptr_init(type, (uintptr_t)(ptr) | tags); })
>> +
>> +/* decode tagged pointers */
>> +#define tagptr_unfold_ptr(tptr) \
>> +	((void *)((tptr).v & ~__tagptr_mask(tptr)))
>> +
>> +#define tagptr_unfold_tags(tptr) \
>> +	((tptr).v & __tagptr_mask(tptr))
>> +
>> +/* operations for the tagger pointer */
>> +#define tagptr_eq(_tptr1, _tptr2) ({ \
>> +	typeof(_tptr1) tptr1 = (_tptr1); \
>> +	typeof(_tptr2) tptr2 = (_tptr2); \
>> +	(void)(&tptr1 == &tptr2); \
>> +(tptr1).v == (tptr2).v; })
>> +
>> +/* lock-free CAS operation */
>> +#define tagptr_cmpxchg(_ptptr, _o, _n) ({ \
>> +	typeof(_ptptr) ptptr = (_ptptr); \
>> +	typeof(_o) o = (_o); \
>> +	typeof(_n) n = (_n); \
>> +	(void)(&o == &n); \
>> +	(void)(&o == ptptr); \
>> +tagptr_init(o, cmpxchg(&ptptr->v, o.v, n.v)); })
>> +
>> +/* wrap WRITE_ONCE if atomic update is needed */
>> +#define tagptr_replace_tags(_ptptr, tags) ({ \
>> +	typeof(_ptptr) ptptr = (_ptptr); \
>> +	*ptptr = tagptr_fold(*ptptr, tagptr_unfold_ptr(*ptptr), tags); \
>> +*ptptr; })
>> +
>> +#define tagptr_set_tags(_ptptr, _tags) ({ \
>> +	typeof(_ptptr) ptptr = (_ptptr); \
>> +	const typeof(_tags) tags = (_tags); \
>> +	if (__builtin_constant_p(tags) && (tags & ~__tagptr_mask(*ptptr))) \
>> +		__bad_tagptr_tags(); \
>> +	ptptr->v |= tags; \
>> +*ptptr; })
>> +
>> +#define tagptr_clear_tags(_ptptr, _tags) ({ \
>> +	typeof(_ptptr) ptptr = (_ptptr); \
>> +	const typeof(_tags) tags = (_tags); \
>> +	if (__builtin_constant_p(tags) && (tags & ~__tagptr_mask(*ptptr))) \
>> +		__bad_tagptr_tags(); \
>> +	ptptr->v &= ~tags; \
>> +*ptptr; })
>> +
>> +#endif	/* __EROFS_FS_TAGPTR_H */
>> +
>> -- 
>> 2.17.1
>>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D1BC568394
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Jul 2019 08:33:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2191985BE4;
	Mon, 15 Jul 2019 06:33:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g1KR_iSuoygT; Mon, 15 Jul 2019 06:33:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 51EEC85BEC;
	Mon, 15 Jul 2019 06:33:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 75D4C1BF47D
 for <devel@linuxdriverproject.org>; Mon, 15 Jul 2019 06:33:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6F630204AF
 for <devel@linuxdriverproject.org>; Mon, 15 Jul 2019 06:33:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Xe4ptmrGlLoB for <devel@linuxdriverproject.org>;
 Mon, 15 Jul 2019 06:33:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by silver.osuosl.org (Postfix) with ESMTPS id 02A4C200E5
 for <devel@driverdev.osuosl.org>; Mon, 15 Jul 2019 06:33:25 +0000 (UTC)
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id CF74FC1B7BC29C189BAC;
 Mon, 15 Jul 2019 14:33:21 +0800 (CST)
Received: from [10.151.23.176] (10.151.23.176) by smtp.huawei.com
 (10.3.19.210) with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 15 Jul
 2019 14:33:12 +0800
Subject: Re: [PATCH] staging: erofs:converting all 'unsigned' to 'unsigned int'
To: Pratik Shinde <pratikshinde320@gmail.com>, <linux-erofs@lists.ozlabs.org>, 
 <yuchao0@huawei.com>
References: <20190715055030.11474-1-pratikshinde320@gmail.com>
From: Gao Xiang <gaoxiang25@huawei.com>
Message-ID: <9f3e8820-1938-e345-a010-97af325b0845@huawei.com>
Date: Mon, 15 Jul 2019 14:33:01 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <20190715055030.11474-1-pratikshinde320@gmail.com>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 Miao Xie <miaoxie@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On 2019/7/15 13:50, Pratik Shinde wrote:
> Fixed check patch warnings: converting all 'unsigned' to 'unsigned int'
> 
> Signed-off-by: Pratik Shinde <pratikshinde320@gmail.com>

The subject line should be better as "[PATCH v2] staging: erofs:converting all 'unsigned' to 'unsigned int'"

> ---
>  drivers/staging/erofs/internal.h      |  7 ++++---
>  drivers/staging/erofs/unzip_pagevec.h | 11 ++++++-----
>  drivers/staging/erofs/unzip_vle.h     |  8 ++++----
>  drivers/staging/erofs/xattr.h         | 11 ++++++-----
>  4 files changed, 20 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/staging/erofs/internal.h b/drivers/staging/erofs/internal.h
> index 963cc1b..0ebc294 100644
> --- a/drivers/staging/erofs/internal.h
> +++ b/drivers/staging/erofs/internal.h
> @@ -359,8 +359,8 @@ struct erofs_vnode {
>  	unsigned char inode_isize;
>  	unsigned short xattr_isize;
>  
> -	unsigned xattr_shared_count;
> -	unsigned *xattr_shared_xattrs;
> +	unsigned int xattr_shared_count;
> +	unsigned int *xattr_shared_xattrs;
>  
>  	union {
>  		erofs_blk_t raw_blkaddr;
> @@ -510,7 +510,8 @@ erofs_grab_bio(struct super_block *sb,
>  	return bio;
>  }
>  
> -static inline void __submit_bio(struct bio *bio, unsigned op, unsigned op_flags)
> +static inline void __submit_bio(struct bio *bio, unsigned int op,
> +				unsigned int op_flags)
>  {
>  	bio_set_op_attrs(bio, op, op_flags);
>  	submit_bio(bio);
> diff --git a/drivers/staging/erofs/unzip_pagevec.h b/drivers/staging/erofs/unzip_pagevec.h
> index 7af0ba8..e65dbca 100644
> --- a/drivers/staging/erofs/unzip_pagevec.h
> +++ b/drivers/staging/erofs/unzip_pagevec.h
> @@ -54,9 +54,9 @@ static inline void z_erofs_pagevec_ctor_exit(struct z_erofs_pagevec_ctor *ctor,
>  
>  static inline struct page *
>  z_erofs_pagevec_ctor_next_page(struct z_erofs_pagevec_ctor *ctor,
> -			       unsigned nr)
> +			       unsigned int nr)
>  {
> -	unsigned index;
> +	unsigned int index;
>  
>  	/* keep away from occupied pages */
>  	if (ctor->next)
> @@ -64,7 +64,7 @@ z_erofs_pagevec_ctor_next_page(struct z_erofs_pagevec_ctor *ctor,
>  
>  	for (index = 0; index < nr; ++index) {
>  		const erofs_vtptr_t t = ctor->pages[index];
> -		const unsigned tags = tagptr_unfold_tags(t);
> +		const unsigned int tags = tagptr_unfold_tags(t);
>  
>  		if (tags == Z_EROFS_PAGE_TYPE_EXCLUSIVE)
>  			return tagptr_unfold_ptr(t);
> @@ -91,8 +91,9 @@ z_erofs_pagevec_ctor_pagedown(struct z_erofs_pagevec_ctor *ctor,
>  }
>  
>  static inline void z_erofs_pagevec_ctor_init(struct z_erofs_pagevec_ctor *ctor,
> -					     unsigned nr,
> -					     erofs_vtptr_t *pages, unsigned i)
> +					     unsigned int nr,
> +					     erofs_vtptr_t *pages,
> +					     unsigned int i)
>  {
>  	ctor->nr = nr;
>  	ctor->curr = ctor->next = NULL;
> diff --git a/drivers/staging/erofs/unzip_vle.h b/drivers/staging/erofs/unzip_vle.h
> index ab509d75..df91ad1 100644
> --- a/drivers/staging/erofs/unzip_vle.h
> +++ b/drivers/staging/erofs/unzip_vle.h
> @@ -34,7 +34,7 @@ struct z_erofs_vle_work {
>  	unsigned short nr_pages;
>  
>  	/* L: queued pages in pagevec[] */
> -	unsigned vcnt;
> +	unsigned int vcnt;
>  
>  	union {
>  		/* L: pagevec */
> @@ -124,7 +124,7 @@ union z_erofs_onlinepage_converter {
>  	unsigned long *v;
>  };
>  
> -static inline unsigned z_erofs_onlinepage_index(struct page *page)
> +static inline unsigned int z_erofs_onlinepage_index(struct page *page)
>  {
>  	union z_erofs_onlinepage_converter u;
>  
> @@ -164,7 +164,7 @@ static inline void z_erofs_onlinepage_fixup(struct page *page,
>  	}
>  
>  	v = (index << Z_EROFS_ONLINEPAGE_INDEX_SHIFT) |
> -		((o & Z_EROFS_ONLINEPAGE_COUNT_MASK) + (unsigned)down);
> +		((o & Z_EROFS_ONLINEPAGE_COUNT_MASK) + (unsigned int)down);
>  	if (cmpxchg(p, o, v) != o)
>  		goto repeat;
>  }
> @@ -172,7 +172,7 @@ static inline void z_erofs_onlinepage_fixup(struct page *page,
>  static inline void z_erofs_onlinepage_endio(struct page *page)
>  {
>  	union z_erofs_onlinepage_converter u;
> -	unsigned v;
> +	unsigned int v;
>  
>  	DBG_BUGON(!PagePrivate(page));
>  	u.v = &page_private(page);
> diff --git a/drivers/staging/erofs/xattr.h b/drivers/staging/erofs/xattr.h
> index 35ba5ac..bbf13c4 100644
> --- a/drivers/staging/erofs/xattr.h
> +++ b/drivers/staging/erofs/xattr.h
> @@ -20,14 +20,14 @@
>  /* Attribute not found */
>  #define ENOATTR         ENODATA
>  
> -static inline unsigned inlinexattr_header_size(struct inode *inode)
> +static inline unsigned int inlinexattr_header_size(struct inode *inode)
>  {
>  	return sizeof(struct erofs_xattr_ibody_header)
>  		+ sizeof(u32) * EROFS_V(inode)->xattr_shared_count;
>  }
>  
>  static inline erofs_blk_t
> -xattrblock_addr(struct erofs_sb_info *sbi, unsigned xattr_id)
> +xattrblock_addr(struct erofs_sb_info *sbi, unsigned int xattr_id)
>  {
>  #ifdef CONFIG_EROFS_FS_XATTR
>  	return sbi->xattr_blkaddr +
> @@ -37,8 +37,8 @@ xattrblock_addr(struct erofs_sb_info *sbi, unsigned xattr_id)
>  #endif
>  }
>  
> -static inline unsigned
> -xattrblock_offset(struct erofs_sb_info *sbi, unsigned xattr_id)
> +static inline unsigned int
> +xattrblock_offset(struct erofs_sb_info *sbi, unsigned int xattr_id)

How about..

36 static inline unsigned int xattrblock_offset(struct erofs_sb_info *sbi,
37                                              unsigned int xattr_id)


>  {
>  	return (xattr_id * sizeof(__u32)) % EROFS_BLKSIZ;
>  }
> @@ -49,7 +49,8 @@ extern const struct xattr_handler erofs_xattr_trusted_handler;
>  extern const struct xattr_handler erofs_xattr_security_handler;
>  #endif
>  
> -static inline const struct xattr_handler *erofs_xattr_handler(unsigned index)
> +static inline const struct xattr_handler *erofs_xattr_handler(
> +							unsigned int index)

How about
static inline const struct xattr_handler *erofs_xattr_handler(unsigned int idx)

since the above line is somewhat odd....

Thanks,
Gao Xiang

>  {
>  static const struct xattr_handler *xattr_handler_map[] = {
>  	[EROFS_XATTR_INDEX_USER] = &erofs_xattr_user_handler,
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

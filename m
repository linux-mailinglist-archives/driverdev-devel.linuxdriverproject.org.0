Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B36AA154C
	for <lists+driverdev-devel@lfdr.de>; Thu, 29 Aug 2019 12:00:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9201C886A0;
	Thu, 29 Aug 2019 10:00:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NZ027qZ5nmx6; Thu, 29 Aug 2019 10:00:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5986A87D69;
	Thu, 29 Aug 2019 10:00:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2B18B1BF489
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 10:00:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 277FA89343
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 10:00:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id occ+vL8DpIww for <devel@linuxdriverproject.org>;
 Thu, 29 Aug 2019 10:00:07 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 81FA789180
 for <devel@driverdev.osuosl.org>; Thu, 29 Aug 2019 10:00:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ojvjtMNTisxFOJO+an7pTOSumsB4I4+hef57OZeho2g=; b=bp3AoDSf4qgAAB94kJbT59OqP
 rpIL3QyW0xfu/xvUkLXN5yOKH7n2pp+OydVGEZ/oBOSbxu+Re3oKrCJwJhV2F8VxSBfruw9yJc2Lr
 zgJRrFH+tzVm2xXqGYY/MyB88arocy0WOjfXW+to+6MAiA9EfgpdQ4kWGYPwFbAUVCrQ0Isc43K9V
 wxozfqLEkdTZtDKNmiFa7DXImCx5UY3tHfD3x36AeTA9mj+P6o7U0GewJXuhXja5VpWidq6Su0M6X
 CV4kpTix605UaB6UnorPay44KwdvOP8/gOAjHF3t6wT2EXXI+uCkweUskHxQxsZwDiEpYHsTd3gjk
 TVDORcw4w==;
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1i3HDe-0007NV-H4; Thu, 29 Aug 2019 09:59:54 +0000
Date: Thu, 29 Aug 2019 02:59:54 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Gao Xiang <gaoxiang25@huawei.com>
Subject: Re: [PATCH v6 01/24] erofs: add on-disk layout
Message-ID: <20190829095954.GB20598@infradead.org>
References: <20190802125347.166018-1-gaoxiang25@huawei.com>
 <20190802125347.166018-2-gaoxiang25@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190802125347.166018-2-gaoxiang25@huawei.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
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
Cc: Jan Kara <jack@suse.cz>, Chao Yu <yuchao0@huawei.com>,
 Dave Chinner <david@fromorbit.com>, LKML <linux-kernel@vger.kernel.org>,
 Miao Xie <miaoxie@huawei.com>, devel@driverdev.osuosl.org,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 "Darrick J . Wong" <darrick.wong@oracle.com>,
 Christoph Hellwig <hch@infradead.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Amir Goldstein <amir73il@gmail.com>, Alexander Viro <viro@zeniv.linux.org.uk>,
 Jaegeuk Kim <jaegeuk@kernel.org>, Theodore Ts'o <tytso@mit.edu>,
 Pavel Machek <pavel@denx.de>, David Sterba <dsterba@suse.cz>,
 Li Guifu <bluce.liguifu@huawei.com>, Fang Wei <fangwei1@huawei.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, linux-erofs@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

> --- /dev/null
> +++ b/fs/erofs/erofs_fs.h
> @@ -0,0 +1,316 @@
> +/* SPDX-License-Identifier: GPL-2.0-only OR Apache-2.0 */
> +/*
> + * linux/fs/erofs/erofs_fs.h

Please remove the pointless file names in the comment headers.

> +struct erofs_super_block {
> +/*  0 */__le32 magic;           /* in the little endian */
> +/*  4 */__le32 checksum;        /* crc32c(super_block) */
> +/*  8 */__le32 features;        /* (aka. feature_compat) */
> +/* 12 */__u8 blkszbits;         /* support block_size == PAGE_SIZE only */

Please remove all the byte offset comments.  That is something that can
easily be checked with gdb or pahole.

> +/* 64 */__u8 volume_name[16];   /* volume name */
> +/* 80 */__le32 requirements;    /* (aka. feature_incompat) */
> +
> +/* 84 */__u8 reserved2[44];
> +} __packed;                     /* 128 bytes */

Please don't add __packed.  In this case I think you don't need it
(but double check with pahole), but even if you would need it using
proper padding fields and making sure all fields are naturally aligned
will give you much better code generation on architectures that don't
support native unaligned access.

> +/*
> + * erofs inode data mapping:
> + * 0 - inode plain without inline data A:
> + * inode, [xattrs], ... | ... | no-holed data
> + * 1 - inode VLE compression B (legacy):
> + * inode, [xattrs], extents ... | ...
> + * 2 - inode plain with inline data C:
> + * inode, [xattrs], last_inline_data, ... | ... | no-holed data
> + * 3 - inode compression D:
> + * inode, [xattrs], map_header, extents ... | ...
> + * 4~7 - reserved
> + */
> +enum {
> +	EROFS_INODE_FLAT_PLAIN,

This one doesn't actually seem to be used.

> +	EROFS_INODE_FLAT_COMPRESSION_LEGACY,

why are we adding a legacy field to a brand new file system?

> +	EROFS_INODE_FLAT_INLINE,
> +	EROFS_INODE_FLAT_COMPRESSION,
> +	EROFS_INODE_LAYOUT_MAX

It seems like these come from the on-disk format, in which case they
should have explicit values assigned to them.

Btw, I think it generally helps file system implementation quality
if you use a separate header for the on-disk structures vs in-memory
structures, as that keeps it clear in everyones mind what needs to
stay persistent and what can be chenged easily.

> +static bool erofs_inode_is_data_compressed(unsigned int datamode)
> +{
> +	if (datamode == EROFS_INODE_FLAT_COMPRESSION)
> +		return true;
> +	return datamode == EROFS_INODE_FLAT_COMPRESSION_LEGACY;
> +}

This looks like a really obsfucated way to write:

	return datamode == EROFS_INODE_FLAT_COMPRESSION ||
		datamode == EROFS_INODE_FLAT_COMPRESSION_LEGACY;

> +/* 28 */__le32 i_reserved2;
> +} __packed;

Sane comment as above.

> +
> +/* 32 bytes on-disk inode */
> +#define EROFS_INODE_LAYOUT_V1   0
> +/* 64 bytes on-disk inode */
> +#define EROFS_INODE_LAYOUT_V2   1
> +
> +struct erofs_inode_v2 {
> +/*  0 */__le16 i_advise;

Why do we have two inode version in a newly added file system?

> +#define ondisk_xattr_ibody_size(count)	({\
> +	u32 __count = le16_to_cpu(count); \
> +	((__count) == 0) ? 0 : \
> +	sizeof(struct erofs_xattr_ibody_header) + \
> +		sizeof(__u32) * ((__count) - 1); })

This would be much more readable as a function.

> +#define EROFS_XATTR_ENTRY_SIZE(entry) EROFS_XATTR_ALIGN( \
> +	sizeof(struct erofs_xattr_entry) + \
> +	(entry)->e_name_len + le16_to_cpu((entry)->e_value_size))

Same here.

> +/* available compression algorithm types */
> +enum {
> +	Z_EROFS_COMPRESSION_LZ4,
> +	Z_EROFS_COMPRESSION_MAX
> +};

Seems like an on-disk value again that should use explicitly assigned
numbers.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B42E0A5681
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Sep 2019 14:45:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E21DC20796;
	Mon,  2 Sep 2019 12:45:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rN1HpqgvHPUF; Mon,  2 Sep 2019 12:45:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E39D9214E6;
	Mon,  2 Sep 2019 12:45:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1D6481BF359
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 12:45:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 19F3A85E93
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 12:45:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id llZiPBPoW4qP for <devel@linuxdriverproject.org>;
 Mon,  2 Sep 2019 12:45:30 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A3E4085D8E
 for <devel@driverdev.osuosl.org>; Mon,  2 Sep 2019 12:45:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8e5pl/cUyEaSaTIP0gVix4kLe1LPGSDBfLiK5Z6oMK4=; b=ZVUGTMspxfe3xQHunBefXYA5b
 RRbaGgX6OxaI5bD/kap+hgR/IMcivPmetVVU0OUh7XfX/onX4ou9VeUjDQzoj7QsZuFRnisygmRMR
 6aSRZqCeGTIR7HBudutdMooyrGcPpR0hkheR6CyDRkG5dnHP0PPWBnPiut+u+ir5xS3zAUTvIKeMp
 9kadYDIyHlr8crmhMNQf+xk98sFwL/p9FMNGUL465OFDk2tte+kQXPCeD4kLiTtAJCrJKcZsmRYhZ
 uS4+zLv9VrGHCAGQSoOHn9VVeP/qV/SEF74aqb+LcB7q27YkoFsxkDnZqLUWMBKzyYIaO02PDTHcf
 rwwT6O0Pw==;
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1i4lhx-00028u-J6; Mon, 02 Sep 2019 12:45:21 +0000
Date: Mon, 2 Sep 2019 05:45:21 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Gao Xiang <hsiangkao@aol.com>
Subject: Re: [PATCH v6 01/24] erofs: add on-disk layout
Message-ID: <20190902124521.GA22153@infradead.org>
References: <20190802125347.166018-1-gaoxiang25@huawei.com>
 <20190802125347.166018-2-gaoxiang25@huawei.com>
 <20190829095954.GB20598@infradead.org>
 <20190901075240.GA2938@hsiangkao-HP-ZHAN-66-Pro-G1>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190901075240.GA2938@hsiangkao-HP-ZHAN-66-Pro-G1>
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
Cc: devel@driverdev.osuosl.org, Stephen Rothwell <sfr@canb.auug.org.au>,
 linux-erofs@lists.ozlabs.org, Jan Kara <jack@suse.cz>,
 "Darrick J . Wong" <darrick.wong@oracle.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Amir Goldstein <amir73il@gmail.com>, Dave Chinner <david@fromorbit.com>,
 LKML <linux-kernel@vger.kernel.org>, Theodore Ts'o <tytso@mit.edu>,
 Christoph Hellwig <hch@infradead.org>, Pavel Machek <pavel@denx.de>,
 David Sterba <dsterba@suse.cz>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Jaegeuk Kim <jaegeuk@kernel.org>,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 Miao Xie <miaoxie@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Sep 01, 2019 at 03:54:11PM +0800, Gao Xiang wrote:
> It could be better has a name though, because 1) erofs.mkfs uses this
> definition explicitly, and we keep this on-disk definition erofs_fs.h
> file up with erofs-utils.
> 
> 2) For kernel use, first we have,
>    datamode < EROFS_INODE_LAYOUT_MAX; and
>    !erofs_inode_is_data_compressed, so there are only two mode here,
>         1) EROFS_INODE_FLAT_INLINE,
>         2) EROFS_INODE_FLAT_PLAIN
>    if its datamode isn't EROFS_INODE_FLAT_INLINE (tail-end block packing),
>    it should be EROFS_INODE_FLAT_PLAIN.
> 
>    The detailed logic in erofs_read_inode and
>    erofs_map_blocks_flatmode....

Ok.  At least the explicit numbering makes this a little more obvious
now.  What seems fairly odd is that there are only various places that
check for some inode layouts/formats but nothing that does a switch
over all of them.

> > why are we adding a legacy field to a brand new file system?
> 
> The difference is just EROFS_INODE_FLAT_COMPRESSION_LEGACY doesn't
> have z_erofs_map_header, so it only supports default (4k clustersize)
> fixed-sized output compression rather than per-file setting, nothing
> special at all...

It still seems odd to add a legacy field to a brand new file system.

> > structures, as that keeps it clear in everyones mind what needs to
> > stay persistent and what can be chenged easily.
> 
> All fields in this file are on-disk representation by design
> (no logic for in-memory presentation).

Ok, make sense.    Maybe add a note to the top of the file comment
that this is the on-disk format.

One little oddity is that erofs_inode_is_data_compressed is here, while
is_inode_flat_inline is in internal.h.  There are arguments for either
place, but I'd suggest to keep the related macros together.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

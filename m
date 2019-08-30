Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AF97AA3C2B
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Aug 2019 18:39:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 26510874D2;
	Fri, 30 Aug 2019 16:39:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d10V361itSwt; Fri, 30 Aug 2019 16:39:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B607A874AD;
	Fri, 30 Aug 2019 16:39:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A36621BF844
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 16:39:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9C9B7893A8
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 16:39:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dzc6SA9NITs2 for <devel@linuxdriverproject.org>;
 Fri, 30 Aug 2019 16:39:21 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2093A856B6
 for <devel@driverdev.osuosl.org>; Fri, 30 Aug 2019 16:39:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7hicMWakuRgs2TegBlYfwBT8iDprxzvg2SB2m6q1kQA=; b=Rw7TDZKu0oaHU45vECHr0BFIb
 QCsALEEmmqL6rPuPL/LqiIl68Hknd4ElB/B166cyi03n5AYPEP585r85yRxsXQlGrftxyqJLVT8kY
 oRdwaT7wD8Ho9SgDQ1/Y2TgrPgEocQPCGElTwPJ5cOtRQ8Y/6pD6y4/B3j6nh6lkNcvchE+l1mkhR
 hRKYJtKpSy2gGiNJCMIbnDF7tS6LfuVSauP6kIaz1gPpANUw+xYUPe0Cda6+eBd/31Riixe9Pc+8d
 GGOCuDkCQkPBO9ka4u10YGEG3XHCnlJ44NCL7WPiMEPGMSbeIgSRUTO1xa2Ww78gWyhWxluJjW6+U
 ECqizR7OQ==;
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1i3jva-0001L9-Az; Fri, 30 Aug 2019 16:39:10 +0000
Date: Fri, 30 Aug 2019 09:39:10 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Gao Xiang <gaoxiang25@huawei.com>
Subject: Re: [PATCH v6 03/24] erofs: add super block operations
Message-ID: <20190830163910.GB29603@infradead.org>
References: <20190802125347.166018-1-gaoxiang25@huawei.com>
 <20190802125347.166018-4-gaoxiang25@huawei.com>
 <20190829101545.GC20598@infradead.org>
 <20190829105048.GB64893@architecture4>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190829105048.GB64893@architecture4>
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 David Sterba <dsterba@suse.cz>, Li Guifu <bluce.liguifu@huawei.com>,
 Fang Wei <fangwei1@huawei.com>, Pavel Machek <pavel@denx.de>,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 linux-erofs@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Aug 29, 2019 at 06:50:48PM +0800, Gao Xiang wrote:
> > Please use an erofs_ prefix for all your functions.
> 
> It is already a static function, I have no idea what is wrong here.

Which part of all wasn't clear?  Have you looked at the prefixes for
most functions in the various other big filesystems?

> > > +	/* be careful RCU symlink path (see ext4_inode_info->i_data)! */
> > > +	if (is_inode_fast_symlink(inode))
> > > +		kfree(inode->i_link);
> > 
> > is_inode_fast_symlink only shows up in a later patch.  And really
> > obsfucates the check here in the only caller as you can just do an
> > unconditional kfree here - i_link will be NULL except for the case
> > where you explicitly set it.
> 
> I cannot fully understand your point (sorry about my English),
> I will reply you about this later.

With that I mean that you should:

 1) remove is_inode_fast_symlink and just opencode it in the few places
    using it
 2) remove the check in this place entirely as it is not needed
 3) remove the comment quoted above as it is more confusing than not
    having the comment

> > Is there any good reasons to use buffer heads like this in new code
> > vs directly using bios?
> 
> This page can save in bdev page cache, it contains not only the erofs
> superblock so it can be fetched in page cache later.

If you want it in the page cache why not use read_mapping_page or similar?

> > > +/* set up default EROFS parameters */
> > > +static void default_options(struct erofs_sb_info *sbi)
> > > +{
> > > +}
> > 
> > No need to add an empty function.
> 
> Later patch will fill this function.

Please only add the function in the patch actually adding the
functionality.

> > > +}
> > 
> > Why is this needed?  You can just free your sb privatte information in
> > ->put_super and wire up kill_block_super as the ->kill_sb method
> > directly.
> 
> See Al's comments,
> https://lore.kernel.org/r/20190720224955.GD17978@ZenIV.linux.org.uk/

With that code it makes sense.  In this paticular patch it does not.
So please add it only when actually needed.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

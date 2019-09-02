Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DA52A5A62
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Sep 2019 17:19:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CC4EE84525;
	Mon,  2 Sep 2019 15:19:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id juG44ZY5-iy6; Mon,  2 Sep 2019 15:19:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B03F983B4F;
	Mon,  2 Sep 2019 15:19:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 672A01BF32D
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 15:19:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 620A485F10
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 15:19:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TiLKa5iXailB for <devel@linuxdriverproject.org>;
 Mon,  2 Sep 2019 15:19:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E95FC85B18
 for <devel@driverdev.osuosl.org>; Mon,  2 Sep 2019 15:19:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2EGoFqF4zos5OWv6WNlwPBiBbR4EbKkewLh/Q5wrwzg=; b=hg55rG0HzZ77yWw3lDcHMwEJH
 4h8tXaA10F6hxvy5EoMJeMlsFgva45iKJC3AS9g/Ap2If6wlb+9lOoQjF6RautWXs7fuH2KbLPGpN
 TokyPVRzEED9kDfKmX0u4MhmhuRBVRYt+Z3SxO5dLwR2lBE5cfOK80/paYacTHWmSW0sdGT1Na+S7
 7aF0pm3wH2AIQejEdf+A1hMOAsn/lirsJZGtZPGXN77GBmAO/1wDvwfOk84jnwhxPVK1KEgzMy3sG
 1aboGacoWyhc+tMzP691PSZ/lxTmBIA7WJAdPZghGGSWUKZNLU67+qXiJdEu+WBVcVmXLOES8qJf1
 UBT+u7T5g==;
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1i4o6o-0004hD-LX; Mon, 02 Sep 2019 15:19:10 +0000
Date: Mon, 2 Sep 2019 08:19:10 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Gao Xiang <gaoxiang25@huawei.com>
Subject: Re: [PATCH v6 03/24] erofs: add super block operations
Message-ID: <20190902151910.GA14009@infradead.org>
References: <20190802125347.166018-1-gaoxiang25@huawei.com>
 <20190802125347.166018-4-gaoxiang25@huawei.com>
 <20190829101545.GC20598@infradead.org>
 <20190901085452.GA4663@hsiangkao-HP-ZHAN-66-Pro-G1>
 <20190902125109.GA9826@infradead.org>
 <20190902144303.GF2664@architecture4>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190902144303.GF2664@architecture4>
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
 Dave Chinner <david@fromorbit.com>, David Sterba <dsterba@suse.cz>,
 Miao Xie <miaoxie@huawei.com>, devel@driverdev.osuosl.org,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 "Darrick J . Wong" <darrick.wong@oracle.com>,
 Christoph Hellwig <hch@infradead.org>, Amir Goldstein <amir73il@gmail.com>,
 linux-erofs@lists.ozlabs.org, Alexander Viro <viro@zeniv.linux.org.uk>,
 Jaegeuk Kim <jaegeuk@kernel.org>, Theodore Ts'o <tytso@mit.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Li Guifu <bluce.liguifu@huawei.com>,
 Fang Wei <fangwei1@huawei.com>, Pavel Machek <pavel@denx.de>,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Sep 02, 2019 at 10:43:04PM +0800, Gao Xiang wrote:
> Hi Christoph,
> > > ...
> > >  24         __le32 features;        /* (aka. feature_compat) */
> > > ...
> > >  38         __le32 requirements;    /* (aka. feature_incompat) */
> > > ...
> > >  41 };
> > 
> > This is only cosmetic, why not stick to feature_compat and
> > feature_incompat?
> 
> Okay, will fix. (however, in my mind, I'm some confused why
> "features" could be incompatible...)

The feature is incompatible if it requires changes to the driver.
An easy to understand historic example is that ext3 originally did not
have the file types in the directory entry.  Adding them means old
file system drivers can not read a file system with this new feature,
so an incompat flag has to be added.

> > > > > +	memcpy(&sb->s_uuid, layout->uuid, sizeof(layout->uuid));
> > > > > +	memcpy(sbi->volume_name, layout->volume_name,
> > > > > +	       sizeof(layout->volume_name));
> > > > 
> > > > s_uuid should preferably be a uuid_t (assuming it is a real BE uuid,
> > > > if it is le it should be a guid_t).
> > > 
> > > For this case, I have no idea how to deal with...
> > > I have little knowledge about this uuid stuff, so I just copied
> > > from f2fs... (Could be no urgent of this field...)
> > 
> > Who fills out this field in the on-disk format and how?
> 
> mkfs.erofs, but this field leaves 0 for now. Is that reasonable?
> (using libuuid can generate it easily...)

If the filed is always zero for now please don't fill it out.  If you
decide it is worth adding the uuid eventually please add a compat
feature flag that you have a valid uuid and only fill out the field
if the file system actualy has a valid uuid.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

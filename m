Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 631CAA56A9
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Sep 2019 14:51:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D58DE85FF3;
	Mon,  2 Sep 2019 12:51:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VwVd-KcAsZCq; Mon,  2 Sep 2019 12:51:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 74ADA85F9A;
	Mon,  2 Sep 2019 12:51:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 489901BF359
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 12:51:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 45C06822E0
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 12:51:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 44yY17VFbW0h for <devel@linuxdriverproject.org>;
 Mon,  2 Sep 2019 12:51:37 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0F65C87DD4
 for <devel@driverdev.osuosl.org>; Mon,  2 Sep 2019 12:51:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2SRLGmzt9ygJ+k1758a7WeMkOp6QVS9SpfevL0fmQfQ=; b=p1wdTs4XDK/LQWfm/yELbp49u
 phV0PdWujXYthfryE4TkwNYPNSjVRtyhrjikDgf3P3SMQVhM4XRwApkyG5tQzhuUZhc9Bz3ebmUh7
 qJ3KM1c0uT+TU9dK8YwGrjAmSVzRQYI1dlCZedOFGQzdvco5MqhqYrS1C6rDLvn7gNyBDqmIo/xKW
 G8ajsycXwdssNAKgMAPBfcubUQjWvXjRoblHim8dRKXzpDUS1z/aSV/OxkTDhuv2tYkihbFEL8+Ig
 Joaenckr004Pz8x2NJ1XiFbwZSkzUEc91fCcuCSy47u20XG+/CKVdTloaqFrnExpE814on13j+pV8
 EmKp8xVSg==;
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1i4lnZ-0004LV-VP; Mon, 02 Sep 2019 12:51:09 +0000
Date: Mon, 2 Sep 2019 05:51:09 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Gao Xiang <hsiangkao@aol.com>
Subject: Re: [PATCH v6 03/24] erofs: add super block operations
Message-ID: <20190902125109.GA9826@infradead.org>
References: <20190802125347.166018-1-gaoxiang25@huawei.com>
 <20190802125347.166018-4-gaoxiang25@huawei.com>
 <20190829101545.GC20598@infradead.org>
 <20190901085452.GA4663@hsiangkao-HP-ZHAN-66-Pro-G1>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190901085452.GA4663@hsiangkao-HP-ZHAN-66-Pro-G1>
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
Cc: Jan Kara <jack@suse.cz>, Amir Goldstein <amir73il@gmail.com>,
 Dave Chinner <david@fromorbit.com>, David Sterba <dsterba@suse.cz>,
 Miao Xie <miaoxie@huawei.com>, devel@driverdev.osuosl.org,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 "Darrick J . Wong" <darrick.wong@oracle.com>,
 Christoph Hellwig <hch@infradead.org>, Chao Yu <yuchao0@huawei.com>,
 linux-erofs@lists.ozlabs.org, Alexander Viro <viro@zeniv.linux.org.uk>,
 Jaegeuk Kim <jaegeuk@kernel.org>, Theodore Ts'o <tytso@mit.edu>,
 Pavel Machek <pavel@denx.de>, LKML <linux-kernel@vger.kernel.org>,
 Li Guifu <bluce.liguifu@huawei.com>, Fang Wei <fangwei1@huawei.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Sep 01, 2019 at 04:54:55PM +0800, Gao Xiang wrote:
> No modification at this... (some comments already right here...)

>  20 /* 128-byte erofs on-disk super block */
>  21 struct erofs_super_block {
> ...
>  24         __le32 features;        /* (aka. feature_compat) */
> ...
>  38         __le32 requirements;    /* (aka. feature_incompat) */
> ...
>  41 };

This is only cosmetic, why not stick to feature_compat and
feature_incompat?

> > > +	bh = sb_bread(sb, 0);
> > 
> > Is there any good reasons to use buffer heads like this in new code
> > vs directly using bios?
> 
> As you said, I want it in the page cache.
> 
> The reason "why not use read_mapping_page or similar?" is simply
> read_mapping_page -> .readpage -> (for bdev inode) block_read_full_page
>  -> create_page_buffers anyway...
> 
> sb_bread haven't obsoleted... It has similar function though...

With the different that it keeps you isolated from the buffer_head
internals.  This seems to be your only direct use of buffer heads,
which while not deprecated are a bit of an ugly step child.  So if
you can easily avoid creating a buffer_head dependency in a new
filesystem I think you should avoid it.

> > > +	sbi->build_time = le64_to_cpu(layout->build_time);
> > > +	sbi->build_time_nsec = le32_to_cpu(layout->build_time_nsec);
> > > +
> > > +	memcpy(&sb->s_uuid, layout->uuid, sizeof(layout->uuid));
> > > +	memcpy(sbi->volume_name, layout->volume_name,
> > > +	       sizeof(layout->volume_name));
> > 
> > s_uuid should preferably be a uuid_t (assuming it is a real BE uuid,
> > if it is le it should be a guid_t).
> 
> For this case, I have no idea how to deal with...
> I have little knowledge about this uuid stuff, so I just copied
> from f2fs... (Could be no urgent of this field...)

Who fills out this field in the on-disk format and how?

> The background is Al's comments in erofs v2....
> (which simplify erofs_fill_super logic)
> https://lore.kernel.org/r/20190720224955.GD17978@ZenIV.linux.org.uk/
> 
> with a specific notation...
> https://lore.kernel.org/r/20190721040547.GF17978@ZenIV.linux.org.uk/
> 
> "
> > OTOH, for the case of NULL ->s_root ->put_super() won't be called
> > at all, so in that case you need it directly in ->kill_sb().
> "

Yes.  Although none of that is relevant for this initial version,
just after more features are added.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

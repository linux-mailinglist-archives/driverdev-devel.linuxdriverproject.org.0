Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B9A35A59A9
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Sep 2019 16:44:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 33A3486566;
	Mon,  2 Sep 2019 14:44:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CpTHHHzQb2ad; Mon,  2 Sep 2019 14:44:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id F41068656A;
	Mon,  2 Sep 2019 14:44:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 469F21BF86D
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 14:44:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 42C5C84FC9
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 14:44:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b0UWtAHMqB5y for <devel@linuxdriverproject.org>;
 Mon,  2 Sep 2019 14:44:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga01-in.huawei.com [45.249.212.187])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1726384E74
 for <devel@driverdev.osuosl.org>; Mon,  2 Sep 2019 14:44:36 +0000 (UTC)
Received: from DGGEMM406-HUB.china.huawei.com (unknown [172.30.72.53])
 by Forcepoint Email with ESMTP id 58F3A420F300ACFA4260;
 Mon,  2 Sep 2019 22:43:56 +0800 (CST)
Received: from dggeme762-chm.china.huawei.com (10.3.19.108) by
 DGGEMM406-HUB.china.huawei.com (10.3.20.214) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 2 Sep 2019 22:43:55 +0800
Received: from architecture4 (10.140.130.215) by
 dggeme762-chm.china.huawei.com (10.3.19.108) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10; Mon, 2 Sep 2019 22:43:55 +0800
Date: Mon, 2 Sep 2019 22:43:04 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH v6 03/24] erofs: add super block operations
Message-ID: <20190902144303.GF2664@architecture4>
References: <20190802125347.166018-1-gaoxiang25@huawei.com>
 <20190802125347.166018-4-gaoxiang25@huawei.com>
 <20190829101545.GC20598@infradead.org>
 <20190901085452.GA4663@hsiangkao-HP-ZHAN-66-Pro-G1>
 <20190902125109.GA9826@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190902125109.GA9826@infradead.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Originating-IP: [10.140.130.215]
X-ClientProxiedBy: dggeme706-chm.china.huawei.com (10.1.199.102) To
 dggeme762-chm.china.huawei.com (10.3.19.108)
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
Cc: Jan Kara <jack@suse.cz>, Amir Goldstein <amir73il@gmail.com>,
 Dave Chinner <david@fromorbit.com>, David Sterba <dsterba@suse.cz>,
 Miao Xie <miaoxie@huawei.com>, devel@driverdev.osuosl.org,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 "Darrick J . Wong" <darrick.wong@oracle.com>, Chao Yu <yuchao0@huawei.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Jaegeuk Kim <jaegeuk@kernel.org>,
 Theodore Ts'o <tytso@mit.edu>, Pavel Machek <pavel@denx.de>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Li Guifu <bluce.liguifu@huawei.com>,
 Fang Wei <fangwei1@huawei.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, linux-erofs@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Christoph,

On Mon, Sep 02, 2019 at 05:51:09AM -0700, Christoph Hellwig wrote:
> On Sun, Sep 01, 2019 at 04:54:55PM +0800, Gao Xiang wrote:
> > No modification at this... (some comments already right here...)
> 
> >  20 /* 128-byte erofs on-disk super block */
> >  21 struct erofs_super_block {
> > ...
> >  24         __le32 features;        /* (aka. feature_compat) */
> > ...
> >  38         __le32 requirements;    /* (aka. feature_incompat) */
> > ...
> >  41 };
> 
> This is only cosmetic, why not stick to feature_compat and
> feature_incompat?

Okay, will fix. (however, in my mind, I'm some confused why
"features" could be incompatible...)

> 
> > > > +	bh = sb_bread(sb, 0);
> > > 
> > > Is there any good reasons to use buffer heads like this in new code
> > > vs directly using bios?
> > 
> > As you said, I want it in the page cache.
> > 
> > The reason "why not use read_mapping_page or similar?" is simply
> > read_mapping_page -> .readpage -> (for bdev inode) block_read_full_page
> >  -> create_page_buffers anyway...
> > 
> > sb_bread haven't obsoleted... It has similar function though...
> 
> With the different that it keeps you isolated from the buffer_head
> internals.  This seems to be your only direct use of buffer heads,
> which while not deprecated are a bit of an ugly step child.  So if
> you can easily avoid creating a buffer_head dependency in a new
> filesystem I think you should avoid it.

OK, let's use read_mapping_page instead.

> 
> > > > +	sbi->build_time = le64_to_cpu(layout->build_time);
> > > > +	sbi->build_time_nsec = le32_to_cpu(layout->build_time_nsec);
> > > > +
> > > > +	memcpy(&sb->s_uuid, layout->uuid, sizeof(layout->uuid));
> > > > +	memcpy(sbi->volume_name, layout->volume_name,
> > > > +	       sizeof(layout->volume_name));
> > > 
> > > s_uuid should preferably be a uuid_t (assuming it is a real BE uuid,
> > > if it is le it should be a guid_t).
> > 
> > For this case, I have no idea how to deal with...
> > I have little knowledge about this uuid stuff, so I just copied
> > from f2fs... (Could be no urgent of this field...)
> 
> Who fills out this field in the on-disk format and how?

mkfs.erofs, but this field leaves 0 for now. Is that reasonable?
(using libuuid can generate it easily...)

> 
> > The background is Al's comments in erofs v2....
> > (which simplify erofs_fill_super logic)
> > https://lore.kernel.org/r/20190720224955.GD17978@ZenIV.linux.org.uk/
> > 
> > with a specific notation...
> > https://lore.kernel.org/r/20190721040547.GF17978@ZenIV.linux.org.uk/
> > 
> > "
> > > OTOH, for the case of NULL ->s_root ->put_super() won't be called
> > > at all, so in that case you need it directly in ->kill_sb().
> > "
> 
> Yes.  Although none of that is relevant for this initial version,
> just after more features are added.

This patch uses it actually... since no failure path in erofs_fill_super()
and s_root will be filled nearly at the end of the function...

Thanks,
Gao Xiang



_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

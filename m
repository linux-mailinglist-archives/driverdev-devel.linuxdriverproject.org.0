Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F3122A3CD2
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Aug 2019 19:16:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 633F8203D7;
	Fri, 30 Aug 2019 17:16:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VcNwGpsznIUw; Fri, 30 Aug 2019 17:16:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1363422026;
	Fri, 30 Aug 2019 17:16:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 25E201BF20D
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 17:16:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 22ED5203D7
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 17:16:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vFZ21dPlW6h8 for <devel@linuxdriverproject.org>;
 Fri, 30 Aug 2019 17:16:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga08-in.huawei.com [45.249.212.255])
 by silver.osuosl.org (Postfix) with ESMTPS id BEEF9203A7
 for <devel@driverdev.osuosl.org>; Fri, 30 Aug 2019 17:16:05 +0000 (UTC)
Received: from DGGEMM402-HUB.china.huawei.com (unknown [172.30.72.56])
 by Forcepoint Email with ESMTP id 6DF902A22AA429166DF2;
 Sat, 31 Aug 2019 01:16:00 +0800 (CST)
Received: from dggeme762-chm.china.huawei.com (10.3.19.108) by
 DGGEMM402-HUB.china.huawei.com (10.3.20.210) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Sat, 31 Aug 2019 01:15:59 +0800
Received: from architecture4 (10.140.130.215) by
 dggeme762-chm.china.huawei.com (10.3.19.108) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10; Sat, 31 Aug 2019 01:15:59 +0800
Date: Sat, 31 Aug 2019 01:15:11 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH v6 03/24] erofs: add super block operations
Message-ID: <20190830171510.GC107220@architecture4>
References: <20190802125347.166018-1-gaoxiang25@huawei.com>
 <20190802125347.166018-4-gaoxiang25@huawei.com>
 <20190829101545.GC20598@infradead.org>
 <20190829105048.GB64893@architecture4>
 <20190830163910.GB29603@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190830163910.GB29603@infradead.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Originating-IP: [10.140.130.215]
X-ClientProxiedBy: dggeme702-chm.china.huawei.com (10.1.199.98) To
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
Cc: devel@driverdev.osuosl.org, Stephen Rothwell <sfr@canb.auug.org.au>,
 linux-erofs@lists.ozlabs.org, Chao Yu <yuchao0@huawei.com>,
 Theodore Ts'o <tytso@mit.edu>, "Darrick J . Wong" <darrick.wong@oracle.com>,
 Pavel Machek <pavel@denx.de>, Jan Kara <jack@suse.cz>,
 Amir Goldstein <amir73il@gmail.com>, Dave Chinner <david@fromorbit.com>,
 David Sterba <dsterba@suse.cz>, Li Guifu <bluce.liguifu@huawei.com>,
 LKML <linux-kernel@vger.kernel.org>, Miao Xie <miaoxie@huawei.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-fsdevel@vger.kernel.org,
 Jaegeuk Kim <jaegeuk@kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, Fang Wei <fangwei1@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Christoph,

On Fri, Aug 30, 2019 at 09:39:10AM -0700, Christoph Hellwig wrote:
> On Thu, Aug 29, 2019 at 06:50:48PM +0800, Gao Xiang wrote:
> > > Please use an erofs_ prefix for all your functions.
> > 
> > It is already a static function, I have no idea what is wrong here.
> 
> Which part of all wasn't clear?  Have you looked at the prefixes for
> most functions in the various other big filesystems?

I will add erofs prefix to free_inode as you said.

At least, all non-prefix functions in erofs are all static functions,
it won't pollute namespace... I will add "erofs_" to other meaningful
callbacks...And as you can see...

cifs/cifsfs.c
1303:cifs_init_inodecache(void)
1509:   rc = cifs_init_inodecache();

hpfs/super.c
254:static int init_inodecache(void)
771:    int err = init_inodecache();

minix/inode.c
84:static int __init init_inodecache(void)
665:    int err = init_inodecache();

isofs/inode.c
88:static int __init init_inodecache(void)
1580:   int err = init_inodecache();

bfs/inode.c
261:static int __init init_inodecache(void)
468:    int err = init_inodecache();

ext4/super.c
1144:static int __init init_inodecache(void)
6115:   err = init_inodecache();

reiserfs/super.c
666:static int __init init_inodecache(void)
2606:   ret = init_inodecache();

squashfs/super.c
406:static int __init init_inodecache(void)
430:    int err = init_inodecache();

udf/super.c
177:static int __init init_inodecache(void)
232:    err = init_inodecache();

qnx4/inode.c
358:static int init_inodecache(void)
399:    err = init_inodecache();

ufs/super.c
1463:static int __init init_inodecache(void)
1517:   int err = init_inodecache();

qnx6/inode.c
618:static int init_inodecache(void)
659:    err = init_inodecache();

f2fs/super.c
3540:static int __init init_inodecache(void)
3572:   err = init_inodecache();


> 
> > > > +	/* be careful RCU symlink path (see ext4_inode_info->i_data)! */
> > > > +	if (is_inode_fast_symlink(inode))
> > > > +		kfree(inode->i_link);
> > > 
> > > is_inode_fast_symlink only shows up in a later patch.  And really
> > > obsfucates the check here in the only caller as you can just do an
> > > unconditional kfree here - i_link will be NULL except for the case
> > > where you explicitly set it.
> > 
> > I cannot fully understand your point (sorry about my English),
> > I will reply you about this later.
> 
> With that I mean that you should:
> 
>  1) remove is_inode_fast_symlink and just opencode it in the few places
>     using it
>  2) remove the check in this place entirely as it is not needed
>  3) remove the comment quoted above as it is more confusing than not
>     having the comment

Got it, thanks!

> 
> > > Is there any good reasons to use buffer heads like this in new code
> > > vs directly using bios?
> > 
> > This page can save in bdev page cache, it contains not only the erofs
> > superblock so it can be fetched in page cache later.
> 
> If you want it in the page cache why not use read_mapping_page or similar?

It's reasonable, I will change as you suggested.
(The difference is whether it has some buffer_head to the sb page or not...)

> 
> > > > +/* set up default EROFS parameters */
> > > > +static void default_options(struct erofs_sb_info *sbi)
> > > > +{
> > > > +}
> > > 
> > > No need to add an empty function.
> > 
> > Later patch will fill this function.
> 
> Please only add the function in the patch actually adding the
> functionality.

That was my fault when spilting patches...considering
it's an >7KLOC filesystem (maybe spilting the whole xfs or
ext4 properly is more harder)... Anyway, that is my fault.

> 
> > > > +}
> > > 
> > > Why is this needed?  You can just free your sb privatte information in
> > > ->put_super and wire up kill_block_super as the ->kill_sb method
> > > directly.
> > 
> > See Al's comments,
> > https://lore.kernel.org/r/20190720224955.GD17978@ZenIV.linux.org.uk/
> 
> With that code it makes sense.  In this paticular patch it does not.
> So please add it only when actually needed.

Same as above...

Thanks,
Gao Xiang

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

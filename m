Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 68214A4178
	for <lists+driverdev-devel@lfdr.de>; Sat, 31 Aug 2019 02:55:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 18DEF2660E;
	Sat, 31 Aug 2019 00:55:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lT+AonSQ4Dnz; Sat, 31 Aug 2019 00:55:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4592726600;
	Sat, 31 Aug 2019 00:55:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E2D751BF9C2
 for <devel@linuxdriverproject.org>; Sat, 31 Aug 2019 00:55:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DFCCC215DF
 for <devel@linuxdriverproject.org>; Sat, 31 Aug 2019 00:55:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3tVXBmb-XPPe for <devel@linuxdriverproject.org>;
 Sat, 31 Aug 2019 00:55:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga02-in.huawei.com [45.249.212.188])
 by silver.osuosl.org (Postfix) with ESMTPS id AE57A20457
 for <devel@driverdev.osuosl.org>; Sat, 31 Aug 2019 00:55:40 +0000 (UTC)
Received: from DGGEMM402-HUB.china.huawei.com (unknown [172.30.72.54])
 by Forcepoint Email with ESMTP id 6683374D304E71526AA5;
 Sat, 31 Aug 2019 08:55:36 +0800 (CST)
Received: from dggeme762-chm.china.huawei.com (10.3.19.108) by
 DGGEMM402-HUB.china.huawei.com (10.3.20.210) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Sat, 31 Aug 2019 08:55:35 +0800
Received: from architecture4 (10.140.130.215) by
 dggeme762-chm.china.huawei.com (10.3.19.108) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10; Sat, 31 Aug 2019 08:55:35 +0800
Date: Sat, 31 Aug 2019 08:54:46 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH v6 03/24] erofs: add super block operations
Message-ID: <20190831005446.GA233871@architecture4>
References: <20190802125347.166018-1-gaoxiang25@huawei.com>
 <20190802125347.166018-4-gaoxiang25@huawei.com>
 <20190829101545.GC20598@infradead.org>
 <20190829105048.GB64893@architecture4>
 <20190830163910.GB29603@infradead.org>
 <20190830171510.GC107220@architecture4>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190830171510.GC107220@architecture4>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Originating-IP: [10.140.130.215]
X-ClientProxiedBy: dggeme701-chm.china.huawei.com (10.1.199.97) To
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

On Sat, Aug 31, 2019 at 01:15:10AM +0800, Gao Xiang wrote:

[]

> > 
> > > > > +	/* be careful RCU symlink path (see ext4_inode_info->i_data)! */
> > > > > +	if (is_inode_fast_symlink(inode))
> > > > > +		kfree(inode->i_link);
> > > > 
> > > > is_inode_fast_symlink only shows up in a later patch.  And really
> > > > obsfucates the check here in the only caller as you can just do an
> > > > unconditional kfree here - i_link will be NULL except for the case
> > > > where you explicitly set it.
> > > 
> > > I cannot fully understand your point (sorry about my English),
> > > I will reply you about this later.
> > 
> > With that I mean that you should:
> > 
> >  1) remove is_inode_fast_symlink and just opencode it in the few places
> >     using it
> >  2) remove the check in this place entirely as it is not needed

Add some words about this suggestion since I'm addressing this place, it
seems it could not (or I am not sure at least) be freed unconditionally

	union {
		struct pipe_inode_info	*i_pipe;
		struct block_device	*i_bdev;
		struct cdev		*i_cdev;
		char			*i_link;
		unsigned		i_dir_seq;
	};

while I saw what shmem did, it seems that they handle as follows:
3636 static void shmem_free_in_core_inode(struct inode *inode)
3637 {
3638         if (S_ISLNK(inode->i_mode))
3639                 kfree(inode->i_link);
3640         kmem_cache_free(shmem_inode_cachep, SHMEM_I(inode));
3641 }

I think that would be some check on it to get it is a symlink (for
i_dir_seq it seems unsafe).... I think the original check is ok but
I will opencode it instead.

Thanks,
Gao Xiang

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C4CDA913EF
	for <lists+driverdev-devel@lfdr.de>; Sun, 18 Aug 2019 03:14:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F36478402A;
	Sun, 18 Aug 2019 01:14:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m95xh4HTFjfn; Sun, 18 Aug 2019 01:14:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1B9DB81BDB;
	Sun, 18 Aug 2019 01:14:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E91C71BF3C8
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 01:14:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E5BC085143
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 01:14:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1sfx6Q7pSLF6 for <devel@linuxdriverproject.org>;
 Sun, 18 Aug 2019 01:14:30 +0000 (UTC)
X-Greylist: delayed 00:10:02 by SQLgrey-1.7.6
Received: from sonic306-48.consmr.mail.ir2.yahoo.com
 (sonic306-48.consmr.mail.ir2.yahoo.com [77.238.176.234])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D78CE85797
 for <devel@driverdev.osuosl.org>; Sun, 18 Aug 2019 01:14:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aol.com; s=a2048;
 t=1566090868; bh=pBWBwyARZnrzm33VPsM+sotY6iI5K4m2Qacgfi12VPg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From:Subject;
 b=thMBtPet+rBU/lDJQB482lHTvePvDfhJUkjjLJZErupJmC1VwF/UEB0jDj6CMCCzNDFJUVl8oOZkX7tqIhR77cNe/vHwAyrA9s+Lpm7snFedP9XYq8Wb2QIRLQTOAvE9trWDOtr3t0/8uPesXg9b877DGM4w16uQUtlET4Plgx1qghfmpa3PwdRrOET0ZmqrnNdw+gFLuhH6ArKQErmvx3m0ETs0AtSbHAL/KVXNLljqAmwAYJWvLZAwUSztbgRaZ5IJDSWXX8BJH7b2cBv8wF17oWlq0uRkfD2ctCsyKNbvJXyUlUaUwQVyeNAiYk4U/F98VRefS53csftK0rLAjQ==
X-YMail-OSG: d7OXBJkVM1nW9fPWmebywH7Y56nwVgJNGgdGo3dOnKUoiafHfJGqeoMZ2Z1L63_
 1NCcUccshIblqErhprGtdqNBn5Id0FHAwByqLrJLy3D8-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic306.consmr.mail.ir2.yahoo.com with HTTP; Sun, 18 Aug 2019 01:14:28 +0000
Received: by smtp405.mail.ir2.yahoo.com (Oath Hermes SMTP Server) with ESMTPA
 ID 97deb381fe076b668cd11f47aa9377ca; 
 Sun, 18 Aug 2019 00:52:21 +0000 (UTC)
Date: Sun, 18 Aug 2019 08:52:11 +0800
From: Gao Xiang <hsiangkao@aol.com>
To: Richard Weinberger <richard@nod.at>
Subject: Re: [PATCH] erofs: move erofs out of staging
Message-ID: <20190818005202.GA3088@hsiangkao-HP-ZHAN-66-Pro-G1>
References: <20190817082313.21040-1-hsiangkao@aol.com>
 <1746679415.68815.1566076790942.JavaMail.zimbra@nod.at>
 <20190817220706.GA11443@hsiangkao-HP-ZHAN-66-Pro-G1>
 <1163995781.68824.1566084358245.JavaMail.zimbra@nod.at>
 <20190817233843.GA16991@hsiangkao-HP-ZHAN-66-Pro-G1>
 <20190818000408.GA20778@hsiangkao-HP-ZHAN-66-Pro-G1>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190818000408.GA20778@hsiangkao-HP-ZHAN-66-Pro-G1>
User-Agent: Mutt/1.9.4 (2018-02-28)
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
 Miao Xie <miaoxie@huawei.com>, devel <devel@driverdev.osuosl.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>, Darrick <darrick.wong@oracle.com>,
 Christoph Hellwig <hch@infradead.org>, Amir Goldstein <amir73il@gmail.com>,
 linux-erofs <linux-erofs@lists.ozlabs.org>, Al Viro <viro@zeniv.linux.org.uk>,
 Jaegeuk Kim <jaegeuk@kernel.org>, tytso <tytso@mit.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Li Guifu <bluce.liguifu@huawei.com>, Fang Wei <fangwei1@huawei.com>,
 Pavel Machek <pavel@denx.de>, linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Aug 18, 2019 at 08:04:11AM +0800, Gao Xiang wrote:
> On Sun, Aug 18, 2019 at 07:38:47AM +0800, Gao Xiang wrote:
> > Hi Richard,
> > 
> > On Sun, Aug 18, 2019 at 01:25:58AM +0200, Richard Weinberger wrote:
> 
> []
> 
> > > 
> > > While digging a little into the code I noticed that you have very few
> > > checks of the on-disk data.
> > > For example ->u.i_blkaddr. I gave it a try and created a
> > > malformed filesystem where u.i_blkaddr is 0xdeadbeef, it causes the kernel
> > > to loop forever around erofs_read_raw_page().
> > 
> > I don't fuzz all the on-disk fields for EROFS, I will do later..
> > You can see many in-kernel filesystems are still hardening the related
> > stuff. Anyway, I will dig into this field you mentioned recently, but
> > I think it can be fixed easily later.
> 
> ...I take a simple try with the following erofs-utils diff and
> a directory containing enwik9 only, with the latest kernel (5.3-rc)
> and command line is
> mkfs/mkfs.erofs -d9 enwik9.img testdir.
> 
> diff --git a/lib/inode.c b/lib/inode.c
> index 581f263..2540338 100644
> --- a/lib/inode.c
> +++ b/lib/inode.c
> @@ -388,8 +388,7 @@ static bool erofs_bh_flush_write_inode(struct erofs_buffer_head *bh)
>  			v1.i_u.compressed_blocks =
>  				cpu_to_le32(inode->u.i_blocks);
>  		else
> -			v1.i_u.raw_blkaddr =
> -				cpu_to_le32(inode->u.i_blkaddr);
> +			v1.i_u.raw_blkaddr = 0xdeadbeef;
>  		break;
>  	}
> 
> I tested the corrupted image with looped device and real blockdevice
> by dd, and it seems fine....
> [36283.012381] erofs: initializing erofs 1.0
> [36283.012510] erofs: successfully to initialize erofs
> [36283.012975] erofs: read_super, device -> /dev/loop17
> [36283.012976] erofs: options -> (null)
> [36283.012983] erofs: root inode @ nid 36
> [36283.012995] erofs: mounted on /dev/loop17 with opts: (null).
> [36297.354090] attempt to access beyond end of device
> [36297.354098] loop17: rw=0, want=29887428984, limit=1953128
> [36297.354107] attempt to access beyond end of device
> [36297.354109] loop17: rw=0, want=29887428480, limit=1953128
> [36301.827234] attempt to access beyond end of device
> [36301.827243] loop17: rw=0, want=29887428480, limit=1953128
> [36371.426889] erofs: unmounted for /dev/loop17
> [36518.156114] erofs: read_super, device -> /dev/nvme0n1p4
> [36518.156115] erofs: options -> (null)
> [36518.156260] erofs: root inode @ nid 36
> [36518.156384] erofs: mounted on /dev/nvme0n1p4 with opts: (null).
> [36522.818884] attempt to access beyond end of device
> [36522.818889] nvme0n1p4: rw=0, want=29887428984, limit=62781440
> [36522.818895] attempt to access beyond end of device
> [36522.818896] nvme0n1p4: rw=0, want=29887428480, limit=62781440
> [36524.072018] attempt to access beyond end of device
> [36524.072028] nvme0n1p4: rw=0, want=29887428480, limit=62781440
> 
> Could you give me more hints how to reproduce that? and I will
> dig into more maybe it needs more conditions...

I think I found what happened here... That is not a bug due to lack of
check of on-disk ->u.i_blkaddr (seems block layer will handle access
beyond end of device) but actually a bug of erofs_readdir:

diff --git a/fs/erofs/data.c b/fs/erofs/data.c
index fda16ec8863e..5b5f35d47370 100644
--- a/fs/erofs/data.c
+++ b/fs/erofs/data.c
@@ -329,6 +329,8 @@ static int erofs_raw_access_readpage(struct file *file, struct page *page)
 
 	trace_erofs_readpage(page, true);
 
+	WARN_ON(1);
+
 	bio = erofs_read_raw_page(NULL, page->mapping,
 				  page, &last_block, 1, false);
 
@@ -379,6 +381,8 @@ static int erofs_raw_access_readpages(struct file *filp,
 	/* the rare case (end in gaps) */
 	if (unlikely(bio))
 		__submit_bio(bio, REQ_OP_READ, 0);
+
+	WARN_ON(1);
 	return 0;
 }
 
diff --git a/fs/erofs/dir.c b/fs/erofs/dir.c
index 637d70108d59..ccca954438ed 100644
--- a/fs/erofs/dir.c
+++ b/fs/erofs/dir.c
@@ -80,8 +80,10 @@ static int erofs_readdir(struct file *f, struct dir_context *ctx)
 		unsigned int nameoff, maxsize;
 
 		dentry_page = read_mapping_page(mapping, i, NULL);
-		if (IS_ERR(dentry_page))
-			continue;
+		if (IS_ERR(dentry_page)) {
+			err = PTR_ERR(dentry_page);
+			break;
+		}
 
 		de = (struct erofs_dirent *)kmap(dentry_page);
 

It's a forever loop due to error handling of the read_mapping_page above.
I will fix that in another patch and thanks for your report!

Thanks,
Gao Xiang

> 
> Thanks,
> Gao Xiang
> 
> > 
> > Thanks,
> > Gao Xiang 
> > 
> > > 
> > > Thanks,
> > > //richard
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

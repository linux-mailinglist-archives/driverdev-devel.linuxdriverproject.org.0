Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98178A5945
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Sep 2019 16:25:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B7F2787D9D;
	Mon,  2 Sep 2019 14:25:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M237Kmb3eu+L; Mon,  2 Sep 2019 14:25:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DA0E087D63;
	Mon,  2 Sep 2019 14:25:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 00B4B1BF86D
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 14:25:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id F1BEB21511
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 14:25:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WqBHNyhYndEZ for <devel@linuxdriverproject.org>;
 Mon,  2 Sep 2019 14:25:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga02-in.huawei.com [45.249.212.188])
 by silver.osuosl.org (Postfix) with ESMTPS id E6AB720111
 for <devel@driverdev.osuosl.org>; Mon,  2 Sep 2019 14:25:46 +0000 (UTC)
Received: from DGGEMM405-HUB.china.huawei.com (unknown [172.30.72.56])
 by Forcepoint Email with ESMTP id 4877AC8A1F431A661322;
 Mon,  2 Sep 2019 22:25:44 +0800 (CST)
Received: from dggeme762-chm.china.huawei.com (10.3.19.108) by
 DGGEMM405-HUB.china.huawei.com (10.3.20.213) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 2 Sep 2019 22:25:43 +0800
Received: from architecture4 (10.140.130.215) by
 dggeme762-chm.china.huawei.com (10.3.19.108) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10; Mon, 2 Sep 2019 22:25:43 +0800
Date: Mon, 2 Sep 2019 22:24:52 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH 00/21] erofs: patchset addressing Christoph's comments
Message-ID: <20190902142452.GE2664@architecture4>
References: <20190802125347.166018-1-gaoxiang25@huawei.com>
 <20190901055130.30572-1-hsiangkao@aol.com>
 <20190902124645.GA8369@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190902124645.GA8369@infradead.org>
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
Cc: devel@driverdev.osuosl.org, Chao Yu <yuchao0@huawei.com>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, linux-fsdevel@vger.kernel.org,
 linux-erofs@lists.ozlabs.org, Chao Yu <chao@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Christoph,

On Mon, Sep 02, 2019 at 05:46:45AM -0700, Christoph Hellwig wrote:
> On Sun, Sep 01, 2019 at 01:51:09PM +0800, Gao Xiang wrote:
> > Hi,
> > 
> > This patchset is based on the following patch by Pratik Shinde,
> > https://lore.kernel.org/linux-erofs/20190830095615.10995-1-pratikshinde320@gmail.com/
> > 
> > All patches addressing Christoph's comments on v6, which are trivial,
> > most deleted code are from erofs specific fault injection, which was
> > followed f2fs and previously discussed in earlier topic [1], but
> > let's follow what Christoph's said now.
> 
> I like where the cleanups are going.  But this is really just basic

For now, I think it will go to Greg's tree. Before that, I will do patchset
v2 to address all remaining comments...

> code quality stuff.  We're not addressing the issues with large amounts
> of functionality duplicating VFS helpers.

You means killing erofs_get_meta_page or avoid erofs_read_raw_page?

 - For killing erofs_get_meta_page, here is the current erofs_get_meta_page:

 35 struct page *erofs_get_meta_page(struct super_block *sb, erofs_blk_t blkaddr)
 36 {
 37         struct inode *const bd_inode = sb->s_bdev->bd_inode;
 38         struct address_space *const mapping = bd_inode->i_mapping;
 39         /* prefer retrying in the allocator to blindly looping below */
 40         const gfp_t gfp = mapping_gfp_constraint(mapping, ~__GFP_FS);
 41         struct page *page;
 42         int err;
 43
 44 repeat:
 45         page = find_or_create_page(mapping, blkaddr, gfp);
 46         if (!page)
 47                 return ERR_PTR(-ENOMEM);
 48
 49         DBG_BUGON(!PageLocked(page));
 50
 51         if (!PageUptodate(page)) {
 52                 struct bio *bio;
 53
 54                 bio = erofs_grab_bio(sb, REQ_OP_READ | REQ_META,
 55                                      blkaddr, 1, sb, erofs_readendio);
 56
 57                 if (bio_add_page(bio, page, PAGE_SIZE, 0) != PAGE_SIZE) {
 58                         err = -EFAULT;
 59                         goto err_out;
 60                 }
 61
 62                 submit_bio(bio);
 63                 lock_page(page);
 64
 65                 /* this page has been truncated by others */
 66                 if (page->mapping != mapping) {
 67                         unlock_page(page);
 68                         put_page(page);
 69                         goto repeat;
 70                 }
 71
 72                 /* more likely a read error */
 73                 if (!PageUptodate(page)) {
 74                         err = -EIO;
 75                         goto err_out;
 76                 }
 77         }
 78         return page;
 79
 80 err_out:
 81         unlock_page(page);
 82         put_page(page);
 83         return ERR_PTR(err);
 84 }

I think it is simple enough. read_cache_page need write a similar
filler, or read_cache_page_gfp will call .readpage, and then
introduce buffer_heads, that is what I'd like to avoid now (no need these
bd_inode buffer_heads in memory...)

 - For erofs_read_raw_page, it can be avoided after iomap tail-end packing
   feature is done... If we remove it now, it will make EROFS broken.
   It is no urgent and Chao will focus on iomap tail-end packing feature.

Thanks,
Gao Xiang

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

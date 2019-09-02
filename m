Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F1E2A55C9
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Sep 2019 14:20:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3DA0285FC6;
	Mon,  2 Sep 2019 12:20:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id D64-EEO32K0a; Mon,  2 Sep 2019 12:20:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 17AB283339;
	Mon,  2 Sep 2019 12:20:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6EF2F1BF359
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 12:20:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6804987D75
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 12:20:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AlEQLZu0hWgk for <devel@linuxdriverproject.org>;
 Mon,  2 Sep 2019 12:20:20 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E25B487D6E
 for <devel@driverdev.osuosl.org>; Mon,  2 Sep 2019 12:20:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=i5OA/qh7001EI8dEeuvEnN4yuwyVMoB29w/Q1Jv0ARc=; b=E6jprwKTuDlVOxDRxjwN01ZmY
 Nl4A7Gq/ofd05hhiVv23gYTwweQKRIPZIjo/I4xYXs4OHbudOK+HsjZ2uBzMApSEl1lrZhbuFGGQ+
 EMKutBgK98psJybQMiEI0ZrJsKr0oHIfsdZYxtgmHe7BE+lAyKPoO3IMoe0EXLue4OmZqYkNPnXfi
 Ms3HTCy/ToEpSCMwZfAY2mWGr5zMZefoyJGcHZ2GUL6+pV7jiTVzh42lmUbPb5R6CD9gmf5n4tWBS
 Pe9vcKYu7xR07oYJjzJx9/SkZmAZAKkkK0lOrdjq96nJdjapKb6/bF26m20lH8gFNH/mU0ICdaiPU
 uCIldhptQ==;
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1i4lJg-00022h-Ua; Mon, 02 Sep 2019 12:20:16 +0000
Date: Mon, 2 Sep 2019 05:20:16 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Gao Xiang <hsiangkao@aol.com>
Subject: Re: [PATCH 13/21] erofs: simplify erofs_grab_bio() since bio_alloc()
 never fail
Message-ID: <20190902122016.GL15931@infradead.org>
References: <20190802125347.166018-1-gaoxiang25@huawei.com>
 <20190901055130.30572-1-hsiangkao@aol.com>
 <20190901055130.30572-14-hsiangkao@aol.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190901055130.30572-14-hsiangkao@aol.com>
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
Cc: devel@driverdev.osuosl.org, Chao Yu <chao@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Chao Yu <yuchao0@huawei.com>,
 Christoph Hellwig <hch@infradead.org>, linux-fsdevel@vger.kernel.org,
 linux-erofs@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Sep 01, 2019 at 01:51:22PM +0800, Gao Xiang wrote:
> From: Gao Xiang <gaoxiang25@huawei.com>
> 
> As Christoph pointed out [1], "erofs_grab_bio tries to
> handle a bio_alloc failure, except that the function will
> not actually fail due the mempool backing it."
> 
> Sorry about useless code, fix it now.

A lot of file systems used to have this, it is a classic that gets
copy and pasted everywhere.  If you feel like doing a little project
it might make sense to check for other places that do the same.

> +		bio = erofs_grab_bio(sb, blkaddr, 1, sb, read_endio);
>  
>  		if (bio_add_page(bio, page, PAGE_SIZE, 0) != PAGE_SIZE) {
>  			err = -EFAULT;
> @@ -275,13 +270,7 @@ static inline struct bio *erofs_read_raw_page(struct bio *bio,
>  		if (nblocks > BIO_MAX_PAGES)
>  			nblocks = BIO_MAX_PAGES;
>  
> -		bio = erofs_grab_bio(sb, blknr, nblocks, sb,
> -				     read_endio, false);
> -		if (IS_ERR(bio)) {
> -			err = PTR_ERR(bio);
> -			bio = NULL;
> -			goto err_out;
> -		}
> +		bio = erofs_grab_bio(sb, blknr, nblocks, sb, read_endio);

Btw, I think you should remove erofs_grab_bio in its current form.
The full code in data.c is indeed used in two places, so a local
erofs_raw_page_alloc_bio (or whatever name you prefer) helper here
that hardcodes the sb amd read_endio argument to simplify it a bit
makes sense.

> diff --git a/fs/erofs/zdata.c b/fs/erofs/zdata.c
> index f06a2fad7af2..abe28565d6c0 100644
> --- a/fs/erofs/zdata.c
> +++ b/fs/erofs/zdata.c
> @@ -1265,7 +1265,7 @@ static bool z_erofs_vle_submit_all(struct super_block *sb,
>  		if (!bio) {
>  			bio = erofs_grab_bio(sb, first_index + i,
>  					     BIO_MAX_PAGES, bi_private,
> -					     z_erofs_vle_read_endio, true);
> +					     z_erofs_vle_read_endio);

But I think here you might as well open code it entirely, or at least
us a separate (and local to zdata.c) helper.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

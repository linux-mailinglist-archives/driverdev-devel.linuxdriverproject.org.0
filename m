Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 12A9AA5586
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Sep 2019 14:05:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0BCCE8666F;
	Mon,  2 Sep 2019 12:05:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4cgJK6URzcyi; Mon,  2 Sep 2019 12:05:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A3621865C4;
	Mon,  2 Sep 2019 12:05:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B9E911BF359
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 12:05:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B749887CFB
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 12:05:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GITz929wJYYY for <devel@linuxdriverproject.org>;
 Mon,  2 Sep 2019 12:05:53 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5D29B87CCB
 for <devel@driverdev.osuosl.org>; Mon,  2 Sep 2019 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rQBNmZ3r7tPYZ93qcdgzs9aT3ulfgxUExQ/2KE/PgFY=; b=TTaKIim1bhF1mLqocBrdBlH85
 8sJEL9o/uIe3NswXx32FNw7orE6U35jhrCh6sKd2DBNdat+AXAON5TRrFb+KuxHVqrpOG/xPmLgZs
 tYTVBj16cMNmFbCXUpVfkgAXmoJVqikEKnhkVgXzufH7+RRgECy7TvQ7BtSQiCllCIbBDpFgWO6Ga
 UpLklxlrYvFyjCFfvqjYUDl0MNEGMbf2VASynnkfV2PLD3mrLYFZY1Pi4UsguCMW69cUtuJ0CbY5L
 mrrAOEjySYvNc6lJitTAD3pije93p6JhN8g570szEXj+Ehs+eLTSKX+G6uWyoq6iRWyp51Y3XfJWa
 NprfvUrGQ==;
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1i4l5g-0005RV-BO; Mon, 02 Sep 2019 12:05:48 +0000
Date: Mon, 2 Sep 2019 05:05:48 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Gao Xiang <hsiangkao@aol.com>
Subject: Re: [PATCH 02/21] erofs: on-disk format should have explicitly
 assigned numbers
Message-ID: <20190902120548.GB15931@infradead.org>
References: <20190802125347.166018-1-gaoxiang25@huawei.com>
 <20190901055130.30572-1-hsiangkao@aol.com>
 <20190901055130.30572-3-hsiangkao@aol.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190901055130.30572-3-hsiangkao@aol.com>
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

On Sun, Sep 01, 2019 at 01:51:11PM +0800, Gao Xiang wrote:
>  enum {
> -	EROFS_INODE_FLAT_PLAIN,
> -	EROFS_INODE_FLAT_COMPRESSION_LEGACY,
> -	EROFS_INODE_FLAT_INLINE,
> -	EROFS_INODE_FLAT_COMPRESSION,
> +	EROFS_INODE_FLAT_PLAIN			= 0,
> +	EROFS_INODE_FLAT_COMPRESSION_LEGACY	= 1,
> +	EROFS_INODE_FLAT_INLINE			= 2,
> +	EROFS_INODE_FLAT_COMPRESSION		= 3,
>  	EROFS_INODE_LAYOUT_MAX
>  };
>  
> @@ -184,7 +184,7 @@ struct erofs_xattr_entry {
>  
>  /* available compression algorithm types */
>  enum {
> -	Z_EROFS_COMPRESSION_LZ4,
> +	Z_EROFS_COMPRESSION_LZ4	= 0,
>  	Z_EROFS_COMPRESSION_MAX
>  };

This all looks ok - it somtimes also helps to have a comment near
the numbers to indicate where they are stored, must that isn't a must.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

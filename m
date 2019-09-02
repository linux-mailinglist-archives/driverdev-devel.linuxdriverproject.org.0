Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AEB43A5A75
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Sep 2019 17:23:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7814F2154A;
	Mon,  2 Sep 2019 15:23:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aJvnXZyTO2yO; Mon,  2 Sep 2019 15:23:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 64D9221541;
	Mon,  2 Sep 2019 15:23:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 551F91BF32D
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 15:23:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 51686207A2
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 15:23:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ItROxymvesVg for <devel@linuxdriverproject.org>;
 Mon,  2 Sep 2019 15:23:28 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by silver.osuosl.org (Postfix) with ESMTPS id A36EF203B2
 for <devel@driverdev.osuosl.org>; Mon,  2 Sep 2019 15:23:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qlt1XZvn+qXgX2CBCaJ2bCzou441y9kxu8YsfHGoCq0=; b=NCN9+wvdBIRI2Pfb0QIrDqKWa
 qHDXFSl8v9/HhWPrQ/KFTTKLr9x6MilMwRmZRtlpqvUzB91OTeE0EzFNVz6N84SRzAFGVCl5mK6F1
 MMXmumOBHphfa6vwNFPuxMkpT8P8DSD8LoROBqhL7pd3u+osqxIdiFgBpAojI6n2uNpqYfbKxnZbN
 Va5jRgrOJPmLpoSDQRd/VPVHigQ1Y9H3PH56mh20OIjulyQPprs/AaysOdvi0NrqLH2RtRHmF2fuK
 AaqYeJuBeFX2e1Bv39sBrB0YpPwcbtcT29m/uZlJ4ouiXq6EHJc8s4H+48oUyuNG2VToIoIVuRjci
 ILfA9cMow==;
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1i4oAt-0006QV-Jw; Mon, 02 Sep 2019 15:23:23 +0000
Date: Mon, 2 Sep 2019 08:23:23 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Gao Xiang <gaoxiang25@huawei.com>
Subject: Re: [PATCH 00/21] erofs: patchset addressing Christoph's comments
Message-ID: <20190902152323.GB14009@infradead.org>
References: <20190802125347.166018-1-gaoxiang25@huawei.com>
 <20190901055130.30572-1-hsiangkao@aol.com>
 <20190902124645.GA8369@infradead.org>
 <20190902142452.GE2664@architecture4>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190902142452.GE2664@architecture4>
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
Cc: devel@driverdev.osuosl.org, Chao Yu <yuchao0@huawei.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Christoph Hellwig <hch@infradead.org>, linux-fsdevel@vger.kernel.org,
 linux-erofs@lists.ozlabs.org, Chao Yu <chao@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Sep 02, 2019 at 10:24:52PM +0800, Gao Xiang wrote:
> > code quality stuff.  We're not addressing the issues with large amounts
> > of functionality duplicating VFS helpers.
> 
> You means killing erofs_get_meta_page or avoid erofs_read_raw_page?
> 
>  - For killing erofs_get_meta_page, here is the current erofs_get_meta_page:

> I think it is simple enough. read_cache_page need write a similar
> filler, or read_cache_page_gfp will call .readpage, and then
> introduce buffer_heads, that is what I'd like to avoid now (no need these
> bd_inode buffer_heads in memory...)

If using read_cache_page_gfp and ->readpage works, please do.  The
fact that the block device inode uses buffer heads is an implementation
detail that might not last very long and should be invisible to you.
It also means you can get rid of a lot of code that you don't have
to maintain and others don't have to update for global API changes.

>  - For erofs_read_raw_page, it can be avoided after iomap tail-end packing
>    feature is done... If we remove it now, it will make EROFS broken.
>    It is no urgent and Chao will focus on iomap tail-end packing feature.

Ok.  I wish we would have just sorted this out beforehand, which we
could have trivially done without all that staging mess.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

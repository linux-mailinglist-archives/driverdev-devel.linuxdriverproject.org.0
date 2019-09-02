Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 34553A560D
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Sep 2019 14:31:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C72B521509;
	Mon,  2 Sep 2019 12:31:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S4PRjEyvWwT7; Mon,  2 Sep 2019 12:31:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D3B5B207A6;
	Mon,  2 Sep 2019 12:31:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1F7571BF359
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 12:31:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 164C2863F4
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 12:31:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RetlbBoL5SZ9 for <devel@linuxdriverproject.org>;
 Mon,  2 Sep 2019 12:31:30 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CB0BF8674D
 for <devel@driverdev.osuosl.org>; Mon,  2 Sep 2019 12:31:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UtOXrhZ6Qo2E9DiEP7YXIr28AIXW+0S0Ci2r4SnPHSc=; b=nZE3UBBQdpl31RWqK8b4lIqyc
 YNuxzTF6JzAbvix1mEl6wIYepkdU5wsfqTp2AI2Z5LCz+DvE1PglTfCQkjncbxOcdLPmpxi+KWjV4
 Rk/fESJLFGmo7mdQYNkbb8dq5A3BH6QbTcRnQ2rNyvZwMIdernWqo55AdvxwBMkj7No3/PcYu0Vlb
 oqonhW0z/6oPX3i1RL/OKFNUwyiTpkRanwau/B/TNZ6JhWY22G2VBP3DoBv5sghAgqE8GMdAkEqfU
 xWUBQmZrMYo5Vc1XQLIbyE76Yr08z0HT5raE7mEGwqHLk2ev/FFbbsmkgVuHAycF2Z0YVH1xSdLaO
 iyykZgaKg==;
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1i4lUS-0005TK-Qb; Mon, 02 Sep 2019 12:31:24 +0000
Date: Mon, 2 Sep 2019 05:31:24 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Gao Xiang <hsiangkao@aol.com>
Subject: Re: [PATCH 20/21] erofs: kill use_vmap module parameter
Message-ID: <20190902123124.GR15931@infradead.org>
References: <20190802125347.166018-1-gaoxiang25@huawei.com>
 <20190901055130.30572-1-hsiangkao@aol.com>
 <20190901055130.30572-21-hsiangkao@aol.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190901055130.30572-21-hsiangkao@aol.com>
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

> @@ -224,9 +220,6 @@ static void *erofs_vmap(struct page **pages, unsigned int count)
>  {
>  	int i = 0;
>  
> -	if (use_vmap)
> -		return vmap(pages, count, VM_MAP, PAGE_KERNEL);
> -
>  	while (1) {
>  		void *addr = vm_map_ram(pages, count, -1, PAGE_KERNEL);

I think you can just open code this in the caller.

>  static void erofs_vunmap(const void *mem, unsigned int count)
>  {
> -	if (!use_vmap)
> -		vm_unmap_ram(mem, count);
> -	else
> -		vunmap(mem);
> +	vm_unmap_ram(mem, count);
>  }

And this wrapper can go away entirely.

And don't forget to report your performance observations to the arm64
maintainers!
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 74D3BA3BFF
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Aug 2019 18:28:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 68A72874A6;
	Fri, 30 Aug 2019 16:28:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0GDWKR2AUJ7v; Fri, 30 Aug 2019 16:28:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1E6C88746E;
	Fri, 30 Aug 2019 16:28:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D08A61BF844
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 16:28:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CCC7987E3C
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 16:28:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tG5aeL7mTmfD for <devel@linuxdriverproject.org>;
 Fri, 30 Aug 2019 16:28:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5862487D87
 for <devel@driverdev.osuosl.org>; Fri, 30 Aug 2019 16:28:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RdPMpAXXBaiQno2G62m49MFypxqlVKUtgB8faAoi/bA=; b=m0ltjgx7t4ynixYMj9EPQrDSd
 gouxhmamQQK46+oauBJCwjtVgtNnrQh3DY23q1oViqIYVv0QTxvU8EoQ2QX088A3jt8it37QT5tav
 +G99U5Hvmr8MWiuaitu6f4u0/16jw6KiM7gZ1aQphmP3iwQ4Ep8Ka7z0Z1hi8dRKhi7TrUA50F4rN
 6tsT6WTOz8bN8V7WcePdcW6dl7pBthWt1CXoQ36kayghdBUUFC2rvbk2mlhO/aFNG+K6fyaE5nxxt
 s8RKesu5J5MzBXL4CN/QjwpPqfrgUu3acD8Zy1p3mVZi/IUFVrm/eTTNm+BVfU3APEHcq1XOQIYIO
 cSh/4TjEA==;
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1i3jky-0006Lt-Fu; Fri, 30 Aug 2019 16:28:12 +0000
Date: Fri, 30 Aug 2019 09:28:12 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Gao Xiang <gaoxiang25@huawei.com>
Subject: Re: [PATCH v3 7/7] erofs: redundant assignment in
 __erofs_get_meta_page()
Message-ID: <20190830162812.GA10694@infradead.org>
References: <20190830032006.GA20217@architecture4>
 <20190830033643.51019-1-gaoxiang25@huawei.com>
 <20190830033643.51019-7-gaoxiang25@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190830033643.51019-7-gaoxiang25@huawei.com>
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Miao Xie <miaoxie@huawei.com>,
 Chao Yu <yuchao0@huawei.com>, LKML <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>, weidu.du@huawei.com,
 Fang Wei <fangwei1@huawei.com>, Joe Perches <joe@perches.com>,
 linux-erofs@lists.ozlabs.org, Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

> -		err = bio_add_page(bio, page, PAGE_SIZE, 0);
> -		if (err != PAGE_SIZE) {
> +		if (bio_add_page(bio, page, PAGE_SIZE, 0) != PAGE_SIZE) {
>  			err = -EFAULT;
>  			goto err_out;
>  		}

This patch looks like an improvement.  But looking at that whole
area just makes me cringe.

Why is there __erofs_get_meta_page with the two weird booleans instead
of a single erofs_get_meta_page that gets and gfp_t for additional
flags and an unsigned int for additional bio op flags.

Why do need ioprio support to start with?  Seeing that in a new
fs look kinda odd.  Do you have benchmarks that show the difference?

That function then calls erofs_grab_bio, which tries to handle a
bio_alloc failure, except that the function will not actually fail
due the mempool backing it.  It also seems like and awfully
huge function to inline.

Why is there __submit_bio which really just obsfucates what is
going on?  Also why is __submit_bio using bio_set_op_attrs instead
of opencode it as the comment right next to it asks you to?

Also I really don't understand why you can't just use read_cache_page
or even read_cache_page_gfp instead of __erofs_get_meta_page.
That function is a whole lot of duplication of functionality shared
by a lot of other file systems.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

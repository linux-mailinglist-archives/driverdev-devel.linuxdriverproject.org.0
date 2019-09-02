Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76B2DA56BA
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Sep 2019 14:54:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B006787DAA;
	Mon,  2 Sep 2019 12:54:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Yi1oEDI4oQt2; Mon,  2 Sep 2019 12:54:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3973987B60;
	Mon,  2 Sep 2019 12:54:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 87EA91BF359
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 12:54:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 857B121080
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 12:54:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6hMllTNtYam5 for <devel@linuxdriverproject.org>;
 Mon,  2 Sep 2019 12:54:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by silver.osuosl.org (Postfix) with ESMTPS id 14CEE2010C
 for <devel@driverdev.osuosl.org>; Mon,  2 Sep 2019 12:54:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Cfou+aUkoFJmVggCmG5eZbSGsSmpOejeEZjjhO0gxJ4=; b=nfwL6FD/J5EAsuQwSDBysBDcS
 l4z7uQMeWEypiiaMxnhvBiPDbiKdqtKF8yZaWdcy/67tm+ZPiBujr4hww6UUL2LKJGKZuCEx8Mfiw
 KR/KFNkASy3e7RmEVI9D91/iZLmvxSrzqaeRhrIqQroiOFxTYd1yTOyPhfAzRdVpS/7LrPAgab/dv
 Xy+1eLJYjahB6DI6QNqSKKeh+EdsIkKAlxXZOwq85lzYWfTn0SQPjKsZOnoIsaoKUcWPVvnkqMGvA
 xXZDRWaYbqIPpRL1pLS8KqxGbZydOOwozGUN8EHI3LhJvnJymhNZHJXpcwW3sowqW2OJQG5msHlRH
 kibL2g0KA==;
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1i4lqw-0004g0-Qu; Mon, 02 Sep 2019 12:54:38 +0000
Date: Mon, 2 Sep 2019 05:54:38 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Gao Xiang <gaoxiang25@huawei.com>
Subject: Re: [PATCH 16/21] erofs: kill magic underscores
Message-ID: <20190902125438.GA17750@infradead.org>
References: <20190802125347.166018-1-gaoxiang25@huawei.com>
 <20190901055130.30572-1-hsiangkao@aol.com>
 <20190901055130.30572-17-hsiangkao@aol.com>
 <20190902122627.GN15931@infradead.org>
 <20190902123937.GA17916@architecture4>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190902123937.GA17916@architecture4>
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

On Mon, Sep 02, 2019 at 08:39:37PM +0800, Gao Xiang wrote:
> > 
> > > +	if (erofs_inode_version(advise) == EROFS_INODE_LAYOUT_V2) {
> > 
> > I still need to wade through the old thread - but didn't you say this
> > wasn't really a new vs old version but a compat vs full inode?  Maybe
> > the names aren't that suitable either?
> 
> Could you kindly give some suggestions for better naming about it?
> there are all supported by EROFS... (Actually we only mainly use v1...)

Maybe EROFS_INODE_LAYOUT_COMPACT and EROFS_INODE_LAYOUT_EXTENDED?
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

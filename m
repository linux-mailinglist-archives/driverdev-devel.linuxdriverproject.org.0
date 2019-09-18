Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 89D32B6A7A
	for <lists+driverdev-devel@lfdr.de>; Wed, 18 Sep 2019 20:24:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2D5BF867D0;
	Wed, 18 Sep 2019 18:24:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HIZ2EFisJr1u; Wed, 18 Sep 2019 18:24:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A295D867AC;
	Wed, 18 Sep 2019 18:24:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AD7551BF2BC
 for <devel@linuxdriverproject.org>; Wed, 18 Sep 2019 18:24:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A9E5B867A8
 for <devel@linuxdriverproject.org>; Wed, 18 Sep 2019 18:24:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ICvmzDlqgslX for <devel@linuxdriverproject.org>;
 Wed, 18 Sep 2019 18:24:15 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C9B4D816D8
 for <devel@linuxdriverproject.org>; Wed, 18 Sep 2019 18:24:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wyclBAhLGTUISnYVlcWzGC24WmHGZKrQOXN5phZ/Nf4=; b=QSEo2lNK2OFM0t3mHSJ+VX6Wl
 nu23w9dBQYbchoaYzWewSepOEs+S5RBbIgoC3/E6UN00rGkioOK4qvUrySXmw9BmFlJaaSnffZnHK
 LF2Hz7DjkASMtJ3hFxPYyk98yhPIt6hxZ8+ATGWRPjIaQ8vipzTwhXsHJaHSLQ91WDDQ3pA6N3uDM
 N7KFX35NKSts2qLCMUO+LTXc3emZWENCKakH19mIOpMd3BS5T3iUeRf4uqnFLbHmEL/ThXh+0x+SP
 2QUocLufhJ/V5/pCraKRcckZY+78atNbFGRNCY83N60iARiF2I10VQuIU8jDkyuSwyFN3iwrtffGX
 elqgtqT2Q==;
Received: from hch by bombadil.infradead.org with local (Exim 4.92.2 #3 (Red
 Hat Linux)) id 1iAece-0003ss-ER; Wed, 18 Sep 2019 18:24:12 +0000
Date: Wed, 18 Sep 2019 11:24:12 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [GIT PULL] Staging/IIO driver patches for 5.4-rc1
Message-ID: <20190918182412.GA9924@infradead.org>
References: <20190918114754.GA1899504@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190918114754.GA1899504@kroah.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-kernel@vger.kernel.org,
 devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Just as a note of record:  I don't think either file system move
is a good idea.  erofs still needs a lot of work, especially in
interacting with the mm code like abusing page->mapping.

exfat is just a random old code drop from Samsung hastily picked up,
and also duplicating the fat16/32 functionality, and without
consultation of the developes of that who are trying to work through
their process of contributing the uptodate and official version of it.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

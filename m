Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6296BA55FF
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Sep 2019 14:28:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 917548674D;
	Mon,  2 Sep 2019 12:28:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xFjJrRDxjgE1; Mon,  2 Sep 2019 12:28:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id EBBED865C1;
	Mon,  2 Sep 2019 12:28:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9D1DA1BF359
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 12:28:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 99EE0865C1
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 12:28:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ekZbUXLd9Cl2 for <devel@linuxdriverproject.org>;
 Mon,  2 Sep 2019 12:28:04 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3F9BC863F4
 for <devel@driverdev.osuosl.org>; Mon,  2 Sep 2019 12:28:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=F00YZR20OKS9hpCy+NmnvPb/a9hMj2df+foI3LrwsI0=; b=Ei9IagKy4eiTF1pBi0Lf/vIfL
 S+xgDHBkxR+1oKoyugKczja5koHUZDuTb/ZLi20pCuPakSbdEQhMtKQbs8tn711wLvPAtKUsThQMD
 s5GcniBuXJlw1gZjDilvtU/iNyWffavjNO+25PQN//pNmOGwq+UN8Nx3PE1Zsvbh5G+11m/QVf7RW
 HJ3pklGCjX6lqeIKZtj10IV86p8psVVqorn5V0oKiECXxb59+TDJ6qOwa4JOjhCSX+LwL5vK54Kzn
 mHZ+y/8hkhw7J7aAI4AIfd1FWIzYzoUNKlAF8pkn4FCgzoczmje/U9O6TNeGZ4dR4yBqicJu2A/XF
 ItEvhs2aw==;
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1i4lRB-00049w-8b; Mon, 02 Sep 2019 12:28:01 +0000
Date: Mon, 2 Sep 2019 05:28:01 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Gao Xiang <hsiangkao@aol.com>
Subject: Re: [PATCH 18/21] erofs: add "erofs_" prefix for common and short
 functions
Message-ID: <20190902122801.GP15931@infradead.org>
References: <20190802125347.166018-1-gaoxiang25@huawei.com>
 <20190901055130.30572-1-hsiangkao@aol.com>
 <20190901055130.30572-19-hsiangkao@aol.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190901055130.30572-19-hsiangkao@aol.com>
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

Thanks.  I don't have a tree with all these applies, but please make
sure this covers at least all inlines in headers and all methods
wired up to operation structures.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

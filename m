Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8E68A32F3
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Aug 2019 10:44:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 673F189350;
	Fri, 30 Aug 2019 08:44:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HLt+l9MgXKrh; Fri, 30 Aug 2019 08:44:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 49D8F892A2;
	Fri, 30 Aug 2019 08:44:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B93491BF847
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 08:44:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B673C87FDA
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 08:44:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b29Ha8fesclc for <devel@linuxdriverproject.org>;
 Fri, 30 Aug 2019 08:44:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga03-in.huawei.com [45.249.212.189])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DB53387FCC
 for <devel@driverdev.osuosl.org>; Fri, 30 Aug 2019 08:44:26 +0000 (UTC)
Received: from DGGEMM404-HUB.china.huawei.com (unknown [172.30.72.53])
 by Forcepoint Email with ESMTP id B098D2181E2B1D99C5AA;
 Fri, 30 Aug 2019 16:44:22 +0800 (CST)
Received: from dggeme762-chm.china.huawei.com (10.3.19.108) by
 DGGEMM404-HUB.china.huawei.com (10.3.20.212) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 30 Aug 2019 16:44:22 +0800
Received: from architecture4 (10.140.130.215) by
 dggeme762-chm.china.huawei.com (10.3.19.108) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10; Fri, 30 Aug 2019 16:44:21 +0800
Date: Fri, 30 Aug 2019 16:43:33 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH] staging: exfat: add exfat filesystem code to staging
Message-ID: <20190830084333.GA193084@architecture4>
References: <20190829094136.GA28643@infradead.org>
 <20190829095019.GA13557@kroah.com>
 <20190829103749.GA13661@infradead.org>
 <20190829111810.GA23393@kroah.com> <20190829151144.GJ23584@kadam>
 <20190829152757.GA125003@architecture4>
 <20190829154346.GK23584@kadam>
 <20190829155127.GA136563@architecture4>
 <20190829160441.GA141079@architecture4>
 <20190830083445.GL23584@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190830083445.GL23584@kadam>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Originating-IP: [10.140.130.215]
X-ClientProxiedBy: dggeme704-chm.china.huawei.com (10.1.199.100) To
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
Cc: devel@driverdev.osuosl.org, Sasha Levin <alexander.levin@microsoft.com>,
 Valdis =?gbk?Q?Kl=A8=A5tnieks?= <valdis.kletnieks@vt.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Christoph Hellwig <hch@infradead.org>, linux-fsdevel@vger.kernel.org, OGAWA
 Hirofumi <hirofumi@mail.parknet.co.jp>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Dan,

On Fri, Aug 30, 2019 at 11:34:45AM +0300, Dan Carpenter wrote:
> On Fri, Aug 30, 2019 at 12:04:41AM +0800, Gao Xiang wrote:
> > Anyway, I'm fine to delete them all if you like, but I think majority of these
> > are meaningful.
> > 
> > data.c-		/* page is already locked */
> > data.c-		DBG_BUGON(PageUptodate(page));
> > data.c-
> > data.c:		if (unlikely(err))
> > data.c-			SetPageError(page);
> > data.c-		else
> > data.c-			SetPageUptodate(page);
> 
> If we cared about speed here then we would delete the DBG_BUGON() check
> because that's going to be expensive.  The likely/unlikely annotations
> should be used in places a reasonable person thinks it will make a
> difference to benchmarks.

DBG_BUGON will be a no-op ((void)x) in non-debugging mode,
I discussed related stuffs with Greg many months before [1] and
other filesystems also have similar functions...

p.s. I think we come to an agreement here...
I killed all unlikely/likely.

[1] http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/2018-November/128951.html
sorry about no lore here.

Thanks,
Gao Xiang

> 
> regards,
> dan carpenter
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

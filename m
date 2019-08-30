Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F19EDA3025
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Aug 2019 08:39:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AC57484989;
	Fri, 30 Aug 2019 06:39:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eUvSLFFx_lmg; Fri, 30 Aug 2019 06:39:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1E8D284508;
	Fri, 30 Aug 2019 06:39:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 25FD71BF3C6
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 06:39:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 213CA80ED2
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 06:39:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A0mn8YpF61jO for <devel@linuxdriverproject.org>;
 Fri, 30 Aug 2019 06:39:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga02-in.huawei.com [45.249.212.188])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1A60886E3C
 for <devel@driverdev.osuosl.org>; Fri, 30 Aug 2019 06:39:33 +0000 (UTC)
Received: from DGGEMM401-HUB.china.huawei.com (unknown [172.30.72.55])
 by Forcepoint Email with ESMTP id 965DF347AF6FC41C08BF;
 Fri, 30 Aug 2019 14:39:27 +0800 (CST)
Received: from dggeme762-chm.china.huawei.com (10.3.19.108) by
 DGGEMM401-HUB.china.huawei.com (10.3.20.209) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 30 Aug 2019 14:39:27 +0800
Received: from architecture4 (10.140.130.215) by
 dggeme762-chm.china.huawei.com (10.3.19.108) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10; Fri, 30 Aug 2019 14:39:26 +0800
Date: Fri, 30 Aug 2019 14:38:39 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH] staging: exfat: add exfat filesystem code to staging
Message-ID: <20190830063838.GA144157@architecture4>
References: <20190829062340.GB3047@infradead.org>
 <20190829063955.GA30193@kroah.com>
 <20190829094136.GA28643@infradead.org>
 <20190829095019.GA13557@kroah.com>
 <20190829103749.GA13661@infradead.org>
 <20190829111810.GA23393@kroah.com> <20190829151144.GJ23584@kadam>
 <20190829152757.GA125003@architecture4>
 <20190829154346.GK23584@kadam>
 <cd38b645-2930-3e02-6c6a-5972ea02b537@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cd38b645-2930-3e02-6c6a-5972ea02b537@huawei.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Originating-IP: [10.140.130.215]
X-ClientProxiedBy: dggeme710-chm.china.huawei.com (10.1.199.106) To
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
Cc: devel@driverdev.osuosl.org, Christoph Hellwig <hch@infradead.org>,
 Valdis =?gbk?Q?Kl=A8=A5tnieks?= <valdis.kletnieks@vt.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Chao Yu <yuchao0@huawei.com>,
 linux-kernel@vger.kernel.org, Sasha Levin <alexander.levin@microsoft.com>,
 linux-fsdevel@vger.kernel.org, OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Dan,

On Fri, Aug 30, 2019 at 10:06:25AM +0800, Chao Yu wrote:
> On 2019/8/29 23:43, Dan Carpenter wrote:
> >> p.s. There are 2947 (un)likely places in fs/ directory.
> > 
> > I was complaining about you adding new pointless ones, not existing
> > ones.  The likely/unlikely annotations are supposed to be functional and
> > not decorative.  I explained this very clearly.
> > 
> > Probably most of the annotations in fs/ are wrong but they are also
> > harmless except for the slight messiness.  However there are definitely
> > some which are important so removing them all isn't a good idea.
> 
> Hi Dan,
> 
> Could you please pick up one positive example using likely and unlikely
> correctly? so we can follow the example, rather than removing them all blindly.

I'm also curious about that, what is the filesystem or kernel standard about
likely/unlikely use (since I didn't find some documented standard so I used
in my personal way, I think it is reasonable at least to cover all error
handling paths), maybe I'm an _idiot_ as some earlier unfriendly word said
somewhere so I'm too stupid to understand the implicit meaning of some document.

> 
> Thanks,
> 
> > 
> >> If you like, I will delete them all.
> > 
> > But for erofs, I don't think that any of the likely/unlikely calls have
> > been thought about so I'm fine with removing all of them in one go.

Add a word (just a note), I don't think such kind of "any", "few", "all"
words are meaningful without some explicit evidence. (e.g. such as EROFS
have few error handling path. I don't think that is true and worth to
give many details since EROFS code is here for more than one year.)

Yes, EROFS is not prefectly, I have to admit, and I said similar words
on other threads for many times if you decide to check each likely/unlikely
line by line, I cannot say all unlikely/likely cases I wrote are reasonable
(just as bug-free, I think no one can make such guarantee even for new code),
but I can say the majority of them are reasonable in my personal understanding
of likely/unlikely. And I can fix all your reports in time (but maybe some
are not urgent at all.)

In addition there will be endless discussions on detailed code since there are
many personal tendencies from various people in it, as the saying goes "There
are a thousand Hamlets in a thousand people's eyes. "

Anyway, I have sent a patch to kill them all blindly as you like, so I think
we can come to an agreement on it, but I still don't fully agree with your
"for EROFS, I don't think that any of the likely/unlikely calls have been
thought about" conclusion.

Thanks,
Gao Xiang

> > 
> > regards,
> > dan carpenter
> > 
> > .
> > 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

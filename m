Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F1BCA123B
	for <lists+driverdev-devel@lfdr.de>; Thu, 29 Aug 2019 09:02:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 47A36893B7;
	Thu, 29 Aug 2019 07:02:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t1Ak03qSLjWk; Thu, 29 Aug 2019 07:02:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B5E5389297;
	Thu, 29 Aug 2019 07:02:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 85DD51BF9B5
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 07:02:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7DCA1871AD
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 07:02:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id it9jAoPF28oI for <devel@linuxdriverproject.org>;
 Thu, 29 Aug 2019 07:02:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga01-in.huawei.com [45.249.212.187])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 788DB84578
 for <devel@driverdev.osuosl.org>; Thu, 29 Aug 2019 07:02:43 +0000 (UTC)
Received: from DGGEMM406-HUB.china.huawei.com (unknown [172.30.72.56])
 by Forcepoint Email with ESMTP id 6612FD7DAFD70E48869C;
 Thu, 29 Aug 2019 15:02:37 +0800 (CST)
Received: from dggeme762-chm.china.huawei.com (10.3.19.108) by
 DGGEMM406-HUB.china.huawei.com (10.3.20.214) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 29 Aug 2019 15:02:36 +0800
Received: from architecture4 (10.140.130.215) by
 dggeme762-chm.china.huawei.com (10.3.19.108) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10; Thu, 29 Aug 2019 15:02:36 +0800
Date: Thu, 29 Aug 2019 15:01:49 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH] staging: exfat: add exfat filesystem code to staging
Message-ID: <20190829070149.GA155353@architecture4>
References: <20190828160817.6250-1-gregkh@linuxfoundation.org>
 <20190828170022.GA7873@kroah.com>
 <20190829062340.GB3047@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190829062340.GB3047@infradead.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Originating-IP: [10.140.130.215]
X-ClientProxiedBy: dggeme717-chm.china.huawei.com (10.1.199.113) To
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
Cc: devel@driverdev.osuosl.org, Eric Biggers <ebiggers@kernel.org>,
 Valdis =?gbk?Q?Kl=A8=A5tnieks?= <valdis.kletnieks@vt.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, yuchao0@huawei.com,
 linux-kernel@vger.kernel.org, Sasha Levin <alexander.levin@microsoft.com>,
 Zefan Li <lizefan@huawei.com>, linux-fsdevel@vger.kernel.org,
 "Theodore Y. Ts'o" <tytso@mit.edu>, miaoxie@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Christoph,

On Wed, Aug 28, 2019 at 11:23:40PM -0700, Christoph Hellwig wrote:
> Can we please just review the damn thing and get it into the proper
> tree?  That whole concept of staging file systems just has been one
> fricking disaster, including Greg just moving not fully reviewed ones
> over like erofs just because he feels like it.  I'm getting sick and
> tired of this scheme.

I just want to a word on EROFS stuff (I'm not suitable to comment
on the current exfat implementation). Since EROFS stuff has been
in staging tree for more than a year, anyone who wants to review
it can review this filesystem at any time.

EROFS is not just a homebrew or experimental fs for now, it has been
widely used for many commerical smartphones, and we will upstream it
to AOSP for more Android smartphones after it gets merged to upstream.
I personally cc-ed you for a month, and I didn't get any objection
from others (including Linus) for about 2 months. That isn't because
of someone likes it, rather we cannot make no progress compared with
some exist fs community because this is our love work.

And it's self-contained driver at least, and it's disabled by default,
It cannot be stayed in staging tree to do a lot of EROFS feature
improvements itself forever (since it is cleaned enough).
It has proven its validity as well.

Thanks,
Gao Xiang

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

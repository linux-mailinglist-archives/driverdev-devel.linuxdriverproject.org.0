Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DCFFA3B4A
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Aug 2019 18:05:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 18B74260A3;
	Fri, 30 Aug 2019 16:05:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IiDzPGL-xYbA; Fri, 30 Aug 2019 16:05:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 507FD25E18;
	Fri, 30 Aug 2019 16:05:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C4D9B1BF844
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 16:05:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BE1198938C
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 16:05:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cp2ecnY85syo for <devel@linuxdriverproject.org>;
 Fri, 30 Aug 2019 16:05:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga03-in.huawei.com [45.249.212.189])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4B59E89383
 for <devel@driverdev.osuosl.org>; Fri, 30 Aug 2019 16:05:16 +0000 (UTC)
Received: from DGGEMM401-HUB.china.huawei.com (unknown [172.30.72.57])
 by Forcepoint Email with ESMTP id BE52241B7913997FE1D5;
 Sat, 31 Aug 2019 00:05:10 +0800 (CST)
Received: from dggeme762-chm.china.huawei.com (10.3.19.108) by
 DGGEMM401-HUB.china.huawei.com (10.3.20.209) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Sat, 31 Aug 2019 00:05:10 +0800
Received: from architecture4 (10.140.130.215) by
 dggeme762-chm.china.huawei.com (10.3.19.108) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10; Sat, 31 Aug 2019 00:05:09 +0800
Date: Sat, 31 Aug 2019 00:04:20 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH v3 6/7] erofs: remove all likely/unlikely annotations
Message-ID: <20190830160415.GC69026@architecture4>
References: <20190830032006.GA20217@architecture4>
 <20190830033643.51019-1-gaoxiang25@huawei.com>
 <20190830033643.51019-6-gaoxiang25@huawei.com>
 <20190830154650.GB11571@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190830154650.GB11571@infradead.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Originating-IP: [10.140.130.215]
X-ClientProxiedBy: dggeme701-chm.china.huawei.com (10.1.199.97) To
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
Cc: devel@driverdev.osuosl.org, Chao Yu <chao@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Miao Xie <miaoxie@huawei.com>,
 Chao Yu <yuchao0@huawei.com>, LKML <linux-kernel@vger.kernel.org>,
 weidu.du@huawei.com, Fang Wei <fangwei1@huawei.com>,
 Joe Perches <joe@perches.com>, linux-erofs@lists.ozlabs.org,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Christoph,

On Fri, Aug 30, 2019 at 08:46:50AM -0700, Christoph Hellwig wrote:
> On Fri, Aug 30, 2019 at 11:36:42AM +0800, Gao Xiang wrote:
> > As Dan Carpenter suggested [1], I have to remove
> > all erofs likely/unlikely annotations.
> 
> Do you have to remove all of them, or just those where you don't have
> a particularly good reason why you think in this particular case they
> might actually matter?

I just added unlikely/likely for all erofs error handling paths or
rare happened cases at first... (That is all in my thought...)

I don't have some benchmark data for each unlikely/likely case (and I have
no idea "is that worth to take time to benchmark rather than do another more
useful stuffs"), so..I have to kill them all...

Thanks,
Gao Xiang


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

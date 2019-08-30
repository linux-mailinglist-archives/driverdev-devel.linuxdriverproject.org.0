Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 683B1A2CA8
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Aug 2019 04:07:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1087388D8F;
	Fri, 30 Aug 2019 02:07:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HC9Th9evv4L2; Fri, 30 Aug 2019 02:07:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B04F988D24;
	Fri, 30 Aug 2019 02:07:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4A50D1BF29F
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 02:06:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 47476261A4
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 02:06:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h73wUWyEF-hc for <devel@linuxdriverproject.org>;
 Fri, 30 Aug 2019 02:06:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by silver.osuosl.org (Postfix) with ESMTPS id 3C12D20412
 for <devel@driverdev.osuosl.org>; Fri, 30 Aug 2019 02:06:45 +0000 (UTC)
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 0EC28CB0385988FD9438;
 Fri, 30 Aug 2019 10:06:42 +0800 (CST)
Received: from [10.134.22.195] (10.134.22.195) by smtp.huawei.com
 (10.3.19.205) with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 30 Aug
 2019 10:06:31 +0800
Subject: Re: [PATCH] staging: exfat: add exfat filesystem code to staging
To: Dan Carpenter <dan.carpenter@oracle.com>, Gao Xiang <gaoxiang25@huawei.com>
References: <20190828160817.6250-1-gregkh@linuxfoundation.org>
 <20190828170022.GA7873@kroah.com> <20190829062340.GB3047@infradead.org>
 <20190829063955.GA30193@kroah.com> <20190829094136.GA28643@infradead.org>
 <20190829095019.GA13557@kroah.com> <20190829103749.GA13661@infradead.org>
 <20190829111810.GA23393@kroah.com> <20190829151144.GJ23584@kadam>
 <20190829152757.GA125003@architecture4> <20190829154346.GK23584@kadam>
From: Chao Yu <yuchao0@huawei.com>
Message-ID: <cd38b645-2930-3e02-6c6a-5972ea02b537@huawei.com>
Date: Fri, 30 Aug 2019 10:06:25 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190829154346.GK23584@kadam>
Content-Language: en-US
X-Originating-IP: [10.134.22.195]
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
 =?UTF-8?Q?Valdis_Kl=c4=93tnieks?= <valdis.kletnieks@vt.edu>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Sasha Levin <alexander.levin@microsoft.com>, linux-fsdevel@vger.kernel.org,
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 2019/8/29 23:43, Dan Carpenter wrote:
>> p.s. There are 2947 (un)likely places in fs/ directory.
> 
> I was complaining about you adding new pointless ones, not existing
> ones.  The likely/unlikely annotations are supposed to be functional and
> not decorative.  I explained this very clearly.
> 
> Probably most of the annotations in fs/ are wrong but they are also
> harmless except for the slight messiness.  However there are definitely
> some which are important so removing them all isn't a good idea.

Hi Dan,

Could you please pick up one positive example using likely and unlikely
correctly? so we can follow the example, rather than removing them all blindly.

Thanks,

> 
>> If you like, I will delete them all.
> 
> But for erofs, I don't think that any of the likely/unlikely calls have
> been thought about so I'm fine with removing all of them in one go.
> 
> regards,
> dan carpenter
> 
> .
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 040C6A1EA6
	for <lists+driverdev-devel@lfdr.de>; Thu, 29 Aug 2019 17:15:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 31A5287075;
	Thu, 29 Aug 2019 15:15:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z_kLU1Z4YZPB; Thu, 29 Aug 2019 15:14:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1031F86EDB;
	Thu, 29 Aug 2019 15:14:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C08D81BF487
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 15:14:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BD43686EDB
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 15:14:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IGhEHd2QYkTc for <devel@linuxdriverproject.org>;
 Thu, 29 Aug 2019 15:14:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga01-in.huawei.com [45.249.212.187])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9EB3586ED0
 for <devel@driverdev.osuosl.org>; Thu, 29 Aug 2019 15:14:52 +0000 (UTC)
Received: from DGGEMM402-HUB.china.huawei.com (unknown [172.30.72.56])
 by Forcepoint Email with ESMTP id C23A7307FB9537182FB3;
 Thu, 29 Aug 2019 23:14:40 +0800 (CST)
Received: from dggeme762-chm.china.huawei.com (10.3.19.108) by
 DGGEMM402-HUB.china.huawei.com (10.3.20.210) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 29 Aug 2019 23:14:40 +0800
Received: from architecture4 (10.140.130.215) by
 dggeme762-chm.china.huawei.com (10.3.19.108) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10; Thu, 29 Aug 2019 23:14:39 +0800
Date: Thu, 29 Aug 2019 23:13:53 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH] staging: erofs: using switch-case while checking the
 inode type.
Message-ID: <20190829151352.GA100055@architecture4>
References: <20190829130813.11721-1-pratikshinde320@gmail.com>
 <20190829135607.GA195010@architecture4>
 <CAGu0czRasWHj53uF5zAoDRjbxU2sgN6HtazN_9Y-mkK6NjO-LQ@mail.gmail.com>
 <20190829141522.GA15562@architecture4>
 <20190829150436.GI23584@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190829150436.GI23584@kadam>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-erofs@lists.ozlabs.org, Pratik Shinde <pratikshinde320@gmail.com>,
 Chao Yu <yuchao0@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Dan,

On Thu, Aug 29, 2019 at 06:04:36PM +0300, Dan Carpenter wrote:
> On Thu, Aug 29, 2019 at 10:15:22PM +0800, Gao Xiang wrote:
> > I am very happy that you send a patch about this, but we have
> > to take care of handling "fall through" properly at least,
> > and I don't want to introduce some extra compile warnings
> > instead at this time.
> 
> I can't apply the patch so I maybe missed something.  I don't see
> a fall through issue.  We have the code so you could use ^^^^^^^^ to
> indicate which lines have a fall through problem.
> 
> > 
> > EROFS is sensitive for now and I have no idea what the "real"
> > point is.
> 
> What does "sensitive" mean here?  Now that it's out of staging we
> aren't applying clean up patches?

Of course not, I mean we should avoid "fall through" problem
but I have no time to verify this patch since I am fixing what
hch said as well.

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

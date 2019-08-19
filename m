Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59A5891CC8
	for <lists+driverdev-devel@lfdr.de>; Mon, 19 Aug 2019 07:52:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 56A388798F;
	Mon, 19 Aug 2019 05:52:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NnzPjH2skMSf; Mon, 19 Aug 2019 05:52:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8824687874;
	Mon, 19 Aug 2019 05:52:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0A74B1BF41B
 for <devel@linuxdriverproject.org>; Mon, 19 Aug 2019 05:52:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 057ED8553C
 for <devel@linuxdriverproject.org>; Mon, 19 Aug 2019 05:52:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7sHLhYhA3fPN for <devel@linuxdriverproject.org>;
 Mon, 19 Aug 2019 05:51:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga08-in.huawei.com [45.249.212.255])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 910C884E4E
 for <devel@driverdev.osuosl.org>; Mon, 19 Aug 2019 05:51:59 +0000 (UTC)
Received: from DGGEMM401-HUB.china.huawei.com (unknown [172.30.72.54])
 by Forcepoint Email with ESMTP id 83A1CB25DEFF370E1043;
 Mon, 19 Aug 2019 13:51:55 +0800 (CST)
Received: from dggeme762-chm.china.huawei.com (10.3.19.108) by
 DGGEMM401-HUB.china.huawei.com (10.3.20.209) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 19 Aug 2019 13:51:54 +0800
Received: from 138 (10.175.124.28) by dggeme762-chm.china.huawei.com
 (10.3.19.108) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1591.10; Mon, 19
 Aug 2019 13:51:54 +0800
Date: Mon, 19 Aug 2019 14:08:58 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Joe Perches <joe@perches.com>
Subject: Re: [PATCH] erofs: Use common kernel logging style
Message-ID: <20190819060858.GC30459@138>
References: <20190817220706.GA11443@hsiangkao-HP-ZHAN-66-Pro-G1>
 <1163995781.68824.1566084358245.JavaMail.zimbra@nod.at>
 <20190817233843.GA16991@hsiangkao-HP-ZHAN-66-Pro-G1>
 <1405781266.69008.1566116210649.JavaMail.zimbra@nod.at>
 <20190818084521.GA17909@hsiangkao-HP-ZHAN-66-Pro-G1>
 <1133002215.69049.1566119033047.JavaMail.zimbra@nod.at>
 <20190818092839.GA18975@hsiangkao-HP-ZHAN-66-Pro-G1>
 <52e4e3a7f160f5d2825bec04a3bc4eb4b0d1165a.camel@perches.com>
 <20190819055243.GB30459@138>
 <31cb3e54fe532630b45bb74ba4fc688eb86eab1f.camel@perches.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <31cb3e54fe532630b45bb74ba4fc688eb86eab1f.camel@perches.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Originating-IP: [10.175.124.28]
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
Cc: devel <devel@driverdev.osuosl.org>, Chao Yu <yuchao0@huawei.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Miao Xie <miaoxie@huawei.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Li Guifu <bluce.liguifu@huawei.com>, Fang Wei <fangwei1@huawei.com>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 linux-erofs <linux-erofs@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Joe,

On Sun, Aug 18, 2019 at 10:47:17PM -0700, Joe Perches wrote:
> On Mon, 2019-08-19 at 13:52 +0800, Gao Xiang wrote:
> > Hi Joe,
> 
> Hello.
> 
> > On Sun, Aug 18, 2019 at 10:28:41PM -0700, Joe Perches wrote:
> > > Rename errln, infoln, and debugln to the typical pr_<level> uses
> > > to the typical kernel styles of pr_<level>
> > 
> > How about using erofs_err / ... to instead that?
> 
> <shrug>  I've no opinion.
> It seems most fs/*/* filesystems actually do use pr_<level>
> sed works well if you want that.

Sorry, I mainly refer to ext4, ext2, xfs and f2fs...
I didn't notice the other filesystems, you are right.

Okay, I have no opinion as well (maybe we could turn back later to
introduce sb parameter...)

> 
> >  - I can hardly see directly use pr_<level> for those filesystems in fs/...
> 
> just fyi:
> 
> There was this one existing pr_<level> use in erofs

That is just because the following piece of code was taken from fs/mpage.c,
I tend to replace it with iomap in the later version after tail-end packing inline is done.

Thanks,
Gao Xiang

> 
> drivers/staging/erofs/data.c:366:                               pr_err("%s, readahead error at page %lu of nid %llu\n",
> drivers/staging/erofs/data.c-367-                                      __func__, page->index,
> drivers/staging/erofs/data.c-368-                                      EROFS_V(mapping->host)->nid);
> 
> 
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

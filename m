Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 32DD9A55C1
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Sep 2019 14:19:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 36CBA84E0A;
	Mon,  2 Sep 2019 12:19:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id USwAYzUV-90d; Mon,  2 Sep 2019 12:19:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0EFB4810BC;
	Mon,  2 Sep 2019 12:19:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EF01D1BF359
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 12:19:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id EC62887D6A
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 12:19:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3OKSBmjZLQMD for <devel@linuxdriverproject.org>;
 Mon,  2 Sep 2019 12:19:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga08-in.huawei.com [45.249.212.255])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C171987D36
 for <devel@driverdev.osuosl.org>; Mon,  2 Sep 2019 12:19:30 +0000 (UTC)
Received: from DGGEMM405-HUB.china.huawei.com (unknown [172.30.72.55])
 by Forcepoint Email with ESMTP id 90FEE4A06E9169645A6E;
 Mon,  2 Sep 2019 20:19:26 +0800 (CST)
Received: from dggeme762-chm.china.huawei.com (10.3.19.108) by
 DGGEMM405-HUB.china.huawei.com (10.3.20.213) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 2 Sep 2019 20:19:26 +0800
Received: from architecture4 (10.140.130.215) by
 dggeme762-chm.china.huawei.com (10.3.19.108) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10; Mon, 2 Sep 2019 20:19:25 +0800
Date: Mon, 2 Sep 2019 20:18:34 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH 12/21] erofs: kill verbose debug info in erofs_fill_super
Message-ID: <20190902121834.GC2664@architecture4>
References: <20190802125347.166018-1-gaoxiang25@huawei.com>
 <20190901055130.30572-1-hsiangkao@aol.com>
 <20190901055130.30572-13-hsiangkao@aol.com>
 <20190902121424.GK15931@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190902121424.GK15931@infradead.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Originating-IP: [10.140.130.215]
X-ClientProxiedBy: dggeme713-chm.china.huawei.com (10.1.199.109) To
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
Cc: devel@driverdev.osuosl.org, Chao Yu <yuchao0@huawei.com>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, linux-fsdevel@vger.kernel.org,
 linux-erofs@lists.ozlabs.org, Chao Yu <chao@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Christoph,

On Mon, Sep 02, 2019 at 05:14:24AM -0700, Christoph Hellwig wrote:
> On Sun, Sep 01, 2019 at 01:51:21PM +0800, Gao Xiang wrote:
> > From: Gao Xiang <gaoxiang25@huawei.com>
> > 
> > As Christoph said [1], "That is some very verbose
> > debug info.  We usually don't add that and let
> > people trace the function instead. "
> 
> Note that this applies to most of the infoln users as far as
> I can tell.  And if you want to keep some of those I think you
> should converted them to use pr_info directly, and also print
> sb->s_id as a prefix before the actual message so that the user
> knows which file system is affected.

Thanks for your suggestion...

I think I will turn them into erofs_errln and etc...
and print sb->s_id as a prefix...

Thanks,
Gao Xiang


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

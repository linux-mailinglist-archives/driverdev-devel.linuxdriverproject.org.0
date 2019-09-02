Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C312A5ACD
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Sep 2019 17:51:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 550E121551;
	Mon,  2 Sep 2019 15:51:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ExjIhety+tbG; Mon,  2 Sep 2019 15:51:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 558FA2154E;
	Mon,  2 Sep 2019 15:51:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 897C51BF32D
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 15:51:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 85177864D8
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 15:51:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ozHDC8X8c7qj for <devel@linuxdriverproject.org>;
 Mon,  2 Sep 2019 15:51:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga02-in.huawei.com [45.249.212.188])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4DB6C864D2
 for <devel@driverdev.osuosl.org>; Mon,  2 Sep 2019 15:51:33 +0000 (UTC)
Received: from DGGEMM404-HUB.china.huawei.com (unknown [172.30.72.56])
 by Forcepoint Email with ESMTP id D87F48830A7DEFEEDC58;
 Mon,  2 Sep 2019 23:51:29 +0800 (CST)
Received: from dggeme762-chm.china.huawei.com (10.3.19.108) by
 DGGEMM404-HUB.china.huawei.com (10.3.20.212) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 2 Sep 2019 23:51:29 +0800
Received: from architecture4 (10.140.130.215) by
 dggeme762-chm.china.huawei.com (10.3.19.108) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10; Mon, 2 Sep 2019 23:51:29 +0800
Date: Mon, 2 Sep 2019 23:50:38 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH 00/21] erofs: patchset addressing Christoph's comments
Message-ID: <20190902155037.GD179615@architecture4>
References: <20190802125347.166018-1-gaoxiang25@huawei.com>
 <20190901055130.30572-1-hsiangkao@aol.com>
 <20190902124645.GA8369@infradead.org>
 <20190902142452.GE2664@architecture4>
 <20190902152323.GB14009@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190902152323.GB14009@infradead.org>
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
Cc: devel@driverdev.osuosl.org, Chao Yu <yuchao0@huawei.com>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, linux-fsdevel@vger.kernel.org,
 linux-erofs@lists.ozlabs.org, Chao Yu <chao@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Christoph,

On Mon, Sep 02, 2019 at 08:23:23AM -0700, Christoph Hellwig wrote:
> On Mon, Sep 02, 2019 at 10:24:52PM +0800, Gao Xiang wrote:
> > > code quality stuff.  We're not addressing the issues with large amounts
> > > of functionality duplicating VFS helpers.
> > 
> > You means killing erofs_get_meta_page or avoid erofs_read_raw_page?
> > 
> >  - For killing erofs_get_meta_page, here is the current erofs_get_meta_page:
> 
> > I think it is simple enough. read_cache_page need write a similar
> > filler, or read_cache_page_gfp will call .readpage, and then
> > introduce buffer_heads, that is what I'd like to avoid now (no need these
> > bd_inode buffer_heads in memory...)
> 
> If using read_cache_page_gfp and ->readpage works, please do.  The
> fact that the block device inode uses buffer heads is an implementation
> detail that might not last very long and should be invisible to you.
> It also means you can get rid of a lot of code that you don't have
> to maintain and others don't have to update for global API changes.

I care about those useless buffer_heads in memory for our products...

Since we are nobh filesystem (a little request, could I use it
after buffer_heads are fully avoided, I have no idea why I need
those buffer_heads in memory.... But I think bd_inode is good
for caching metadata...)

> 
> >  - For erofs_read_raw_page, it can be avoided after iomap tail-end packing
> >    feature is done... If we remove it now, it will make EROFS broken.
> >    It is no urgent and Chao will focus on iomap tail-end packing feature.
> 
> Ok.  I wish we would have just sorted this out beforehand, which we
> could have trivially done without all that staging mess.

Firstly, I'd like to introduce EROFS as a self-contained
filesystem to introduce new fixed-sized output compression
to upstream and promote it...

And then we can do many improvements for EROFS in parallel...
(if we introduce EROFS and touch many core modules like
iomap, mm readahead code or modify LZ4 code at once...
It could be more careful... Let's improve it step-by-step...
We are a dedicated team if the Linux community needs us,
we will still here... It will be actively maintained.)

Thanks,
Gao Xiang


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

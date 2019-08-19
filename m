Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E94E91E3B
	for <lists+driverdev-devel@lfdr.de>; Mon, 19 Aug 2019 09:45:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 89762204A5;
	Mon, 19 Aug 2019 07:45:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j4yC4L+0VGCw; Mon, 19 Aug 2019 07:45:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7515B20468;
	Mon, 19 Aug 2019 07:45:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 36B631BF393
 for <devel@linuxdriverproject.org>; Mon, 19 Aug 2019 07:45:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 334952047C
 for <devel@linuxdriverproject.org>; Mon, 19 Aug 2019 07:45:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 79jDMUcCy3T3 for <devel@linuxdriverproject.org>;
 Mon, 19 Aug 2019 07:45:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga03-in.huawei.com [45.249.212.189])
 by silver.osuosl.org (Postfix) with ESMTPS id D934520468
 for <devel@driverdev.osuosl.org>; Mon, 19 Aug 2019 07:45:17 +0000 (UTC)
Received: from DGGEMM401-HUB.china.huawei.com (unknown [172.30.72.54])
 by Forcepoint Email with ESMTP id 44C1AA404B148E78718E;
 Mon, 19 Aug 2019 15:45:13 +0800 (CST)
Received: from dggeme762-chm.china.huawei.com (10.3.19.108) by
 DGGEMM401-HUB.china.huawei.com (10.3.20.209) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 19 Aug 2019 15:45:13 +0800
Received: from 138 (10.175.124.28) by dggeme762-chm.china.huawei.com
 (10.3.19.108) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1591.10; Mon, 19
 Aug 2019 15:45:11 +0800
Date: Mon, 19 Aug 2019 16:02:18 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Richard Weinberger <richard@nod.at>
Subject: Re: [PATCH] erofs: move erofs out of staging
Message-ID: <20190819080218.GA42231@138>
References: <1133002215.69049.1566119033047.JavaMail.zimbra@nod.at>
 <20190818155812.GB13230@infradead.org>
 <20190818161638.GE1118@sol.localdomain>
 <20190818162201.GA16269@infradead.org>
 <20190818172938.GA14413@sol.localdomain>
 <20190818174702.GA17633@infradead.org>
 <20190818181654.GA1617@hsiangkao-HP-ZHAN-66-Pro-G1>
 <20190818201405.GA27398@hsiangkao-HP-ZHAN-66-Pro-G1>
 <1559833874.69649.1566200143457.JavaMail.zimbra@nod.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559833874.69649.1566200143457.JavaMail.zimbra@nod.at>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Originating-IP: [10.175.124.28]
X-ClientProxiedBy: dggeme718-chm.china.huawei.com (10.1.199.114) To
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
Cc: Jan Kara <jack@suse.cz>, Christoph Hellwig <hch@infradead.org>,
 Chao Yu <yuchao0@huawei.com>, Dave Chinner <david@fromorbit.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Miao Xie <miaoxie@huawei.com>,
 devel <devel@driverdev.osuosl.org>, Stephen Rothwell <sfr@canb.auug.org.au>,
 Darrick <darrick.wong@oracle.com>, Eric Biggers <ebiggers@kernel.org>,
 torvalds <torvalds@linux-foundation.org>, Amir Goldstein <amir73il@gmail.com>,
 Al Viro <viro@zeniv.linux.org.uk>, Jaegeuk Kim <jaegeuk@kernel.org>,
 tytso <tytso@mit.edu>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 David Sterba <dsterba@suse.cz>, Li Guifu <bluce.liguifu@huawei.com>,
 Fang Wei <fangwei1@huawei.com>, Pavel Machek <pavel@denx.de>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 linux-erofs <linux-erofs@lists.ozlabs.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Richard,

On Mon, Aug 19, 2019 at 09:35:43AM +0200, Richard Weinberger wrote:
> ----- Urspr=FCngliche Mail -----
> > I have made a simple fuzzer to inject messy in inode metadata,
> > dir data, compressed indexes and super block,
> > https://git.kernel.org/pub/scm/linux/kernel/git/xiang/erofs-utils.git/c=
ommit/?h=3Dexperimental-fuzzer
> > =

> > I am testing with some given dirs and the following script.
> > Does it look reasonable?
> =

> I think that's a very good start. :-)

I have been testing with this tools for hours, it seems strong
against corrupted images without compression.

I'm now struggling with corrupted images with compression,
hopefully most of them can be fixed trivially... I will send
the bunch of fixes later... Let me dig into it more...

Thanks for your reply :-)

Thanks,
Gao Xiang

> =

> Thanks,
> //richard
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

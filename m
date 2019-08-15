Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2391F8E536
	for <lists+driverdev-devel@lfdr.de>; Thu, 15 Aug 2019 09:08:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 73B3B227CC;
	Thu, 15 Aug 2019 07:08:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ywiVHar-b11a; Thu, 15 Aug 2019 07:08:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E55D32276C;
	Thu, 15 Aug 2019 07:08:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 526571BF84C
 for <devel@linuxdriverproject.org>; Thu, 15 Aug 2019 07:08:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4DBD5867A5
 for <devel@linuxdriverproject.org>; Thu, 15 Aug 2019 07:08:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WSMzRtOym0nA for <devel@linuxdriverproject.org>;
 Thu, 15 Aug 2019 07:08:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga02-in.huawei.com [45.249.212.188])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6F9CE8655C
 for <devel@driverdev.osuosl.org>; Thu, 15 Aug 2019 07:08:35 +0000 (UTC)
Received: from DGGEMM404-HUB.china.huawei.com (unknown [172.30.72.53])
 by Forcepoint Email with ESMTP id D21833C0005A2CC6FB3C;
 Thu, 15 Aug 2019 15:08:27 +0800 (CST)
Received: from dggeme762-chm.china.huawei.com (10.3.19.108) by
 DGGEMM404-HUB.china.huawei.com (10.3.20.212) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 15 Aug 2019 15:08:27 +0800
Received: from 138 (10.175.124.28) by dggeme762-chm.china.huawei.com
 (10.3.19.108) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1591.10; Thu, 15
 Aug 2019 15:08:26 +0800
Date: Thu, 15 Aug 2019 15:25:35 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Pavel Machek <pavel@denx.de>
Subject: Re: [PATCH v7 08/24] erofs: add namei functions
Message-ID: <20190815072534.GA38177@138>
References: <20190813091326.84652-1-gaoxiang25@huawei.com>
 <20190813091326.84652-9-gaoxiang25@huawei.com>
 <20190813114821.GB11559@amd> <20190813122332.GA17429@138>
 <20190815070132.GB3669@amd>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190815070132.GB3669@amd>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Originating-IP: [10.175.124.28]
X-ClientProxiedBy: dggeme712-chm.china.huawei.com (10.1.199.108) To
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
Cc: Jan Kara <jack@suse.cz>, Chao Yu <yuchao0@huawei.com>,
 Dave Chinner <david@fromorbit.com>, David Sterba <dsterba@suse.cz>,
 Miao Xie <miaoxie@huawei.com>, devel@driverdev.osuosl.org,
 Stephen Rothwell <sfr@canb.auug.org.au>, "Darrick J .
 Wong" <darrick.wong@oracle.com>, Richard Weinberger <richard@nod.at>,
 Christoph Hellwig <hch@infradead.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Amir Goldstein <amir73il@gmail.com>, Alexander Viro <viro@zeniv.linux.org.uk>,
 Jaegeuk Kim <jaegeuk@kernel.org>, Theodore Ts'o <tytso@mit.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Li Guifu <bluce.liguifu@huawei.com>,
 Fang Wei <fangwei1@huawei.com>, linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>, linux-erofs@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Pavel,

On Thu, Aug 15, 2019 at 09:01:32AM +0200, Pavel Machek wrote:
> Hi!
> 
> > > > +	/*
> > > > +	 * on-disk error, let's only BUG_ON in the debugging mode.
> > > > +	 * otherwise, it will return 1 to just skip the invalid name
> > > > +	 * and go on (in consideration of the lookup performance).
> > > > +	 */
> > > > +	DBG_BUGON(qd->name > qd->end);
> > > 
> > > I believe you should check for errors in non-debug mode, too.
> > 
> > Thanks for your kindly reply!
> > 
> > The following is just my personal thought... If I am wrong, please
> > kindly point out...
> > 
> > As you can see, this is a new prefixed string binary search algorithm
> > which can provide similar performance with hashed approach (but no
> > need to store hash value at all), so I really care about its lookup
> > performance.
> > 
> > There is something needing to be concerned, is, whether namei() should
> > report any potential on-disk issues or just return -ENOENT for these
> > corrupted dirs, I think I tend to use the latter one.
> 
> -ENOENT is okay for corrupted directories, as long as corrupted
> directories do not cause some kind of security bugs (memory
> corruption, crashes, ...)

Yes, I am certain that it will return -ENOENT for such corrupted
directories and it will certainly not crash the kernel as well.

I have fuzzed it for several months and it seems fine after
commit 419d6efc50e9 ("staging: erofs: keep corrupted fs from crashing kernel in erofs_namei()")

Don't worry about that :)

Thanks,
Gao Xiang

> 
> 
> Best regards,
> 								Pavel
> -- 
> DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
> HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

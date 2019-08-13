Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B37E38B7F5
	for <lists+driverdev-devel@lfdr.de>; Tue, 13 Aug 2019 14:06:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CF71B875E2;
	Tue, 13 Aug 2019 12:06:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6pDTT63uM7en; Tue, 13 Aug 2019 12:06:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3346587605;
	Tue, 13 Aug 2019 12:06:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5BDD71BF418
 for <devel@linuxdriverproject.org>; Tue, 13 Aug 2019 12:06:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5897082019
 for <devel@linuxdriverproject.org>; Tue, 13 Aug 2019 12:06:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AVaKhJgFi7CA for <devel@linuxdriverproject.org>;
 Tue, 13 Aug 2019 12:06:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga03-in.huawei.com [45.249.212.189])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E3EC185551
 for <devel@driverdev.osuosl.org>; Tue, 13 Aug 2019 12:06:29 +0000 (UTC)
Received: from DGGEMM401-HUB.china.huawei.com (unknown [172.30.72.57])
 by Forcepoint Email with ESMTP id CF558F30528089ECDCC9;
 Tue, 13 Aug 2019 20:06:26 +0800 (CST)
Received: from dggeme762-chm.china.huawei.com (10.3.19.108) by
 DGGEMM401-HUB.china.huawei.com (10.3.20.209) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 13 Aug 2019 20:06:26 +0800
Received: from 138 (10.175.124.28) by dggeme762-chm.china.huawei.com
 (10.3.19.108) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1591.10; Tue, 13
 Aug 2019 20:06:25 +0800
Date: Tue, 13 Aug 2019 20:23:32 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Pavel Machek <pavel@denx.de>
Subject: Re: [PATCH v7 08/24] erofs: add namei functions
Message-ID: <20190813122332.GA17429@138>
References: <20190813091326.84652-1-gaoxiang25@huawei.com>
 <20190813091326.84652-9-gaoxiang25@huawei.com>
 <20190813114821.GB11559@amd>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190813114821.GB11559@amd>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Originating-IP: [10.175.124.28]
X-ClientProxiedBy: dggeme716-chm.china.huawei.com (10.1.199.112) To
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

On Tue, Aug 13, 2019 at 01:48:21PM +0200, Pavel Machek wrote:
> Hi!
> 
> > +	/*
> > +	 * on-disk error, let's only BUG_ON in the debugging mode.
> > +	 * otherwise, it will return 1 to just skip the invalid name
> > +	 * and go on (in consideration of the lookup performance).
> > +	 */
> > +	DBG_BUGON(qd->name > qd->end);
> 
> I believe you should check for errors in non-debug mode, too.

Thanks for your kindly reply!

The following is just my personal thought... If I am wrong, please
kindly point out...

As you can see, this is a new prefixed string binary search algorithm
which can provide similar performance with hashed approach (but no
need to store hash value at all), so I really care about its lookup
performance.

There is something needing to be concerned, is, whether namei() should
report any potential on-disk issues or just return -ENOENT for these
corrupted dirs, I think I tend to use the latter one.

The reason (in my opinion) is if you consider another some another
complicated non-transverse ondisk implementation, it cannot transverse
all the entires so they could/couldn't report all potential issues
in namei() (For such corrupted dir, they can return -ENOENT due
to lack of information of course, just avoiding crashing the kernel
is OK).

Therefore, in my thought, such issue can be reported by fsck-like
tools such as erofs.fsck. And actually readdir() will also report
all issues as well, thus we can have performance gain on lookup.

> 
> 
> > +			if (unlikely(!ndirents)) {
> > +				DBG_BUGON(1);
> > +				kunmap_atomic(de);
> > +				put_page(page);
> > +				page = ERR_PTR(-EIO);
> > +				goto out;
> > +			}
> 
> -EUCLEAN is right error code for corrupted filesystem. (And you
>  probably want to print something to the syslog, too).

Yes, you are right :) -EUCLEAN/EFSCORRUPTED is actually for such thing,
nowadays, EROFS treats all EFSCORRUPTED cases into EIO, and I will
update that in one patch... (Yes, it needs to print something of course :))

Thanks,
Gao Xiang

> 
> 								Pavel
> -- 
> DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
> HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

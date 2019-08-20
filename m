Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 284839573E
	for <lists+driverdev-devel@lfdr.de>; Tue, 20 Aug 2019 08:23:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E4C8388231;
	Tue, 20 Aug 2019 06:23:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jZzlFdXxyTTh; Tue, 20 Aug 2019 06:23:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 54E598817D;
	Tue, 20 Aug 2019 06:23:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 27E4E1BF2B8
 for <devel@linuxdriverproject.org>; Tue, 20 Aug 2019 06:23:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2207E86A48
 for <devel@linuxdriverproject.org>; Tue, 20 Aug 2019 06:23:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bc9OXYOFqVoy for <devel@linuxdriverproject.org>;
 Tue, 20 Aug 2019 06:22:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga03-in.huawei.com [45.249.212.189])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D017282835
 for <devel@driverdev.osuosl.org>; Tue, 20 Aug 2019 06:22:57 +0000 (UTC)
Received: from DGGEMM403-HUB.china.huawei.com (unknown [172.30.72.53])
 by Forcepoint Email with ESMTP id 7E5E841EF0B333FB35FC;
 Tue, 20 Aug 2019 14:22:54 +0800 (CST)
Received: from dggeme762-chm.china.huawei.com (10.3.19.108) by
 DGGEMM403-HUB.china.huawei.com (10.3.20.211) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 20 Aug 2019 14:22:53 +0800
Received: from architecture4 (10.140.130.215) by
 dggeme762-chm.china.huawei.com (10.3.19.108) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10; Tue, 20 Aug 2019 14:22:53 +0800
Date: Tue, 20 Aug 2019 14:22:13 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Qu Wenruo <quwenruo.btrfs@gmx.com>
Subject: Re: [PATCH] erofs: move erofs out of staging
Message-ID: <20190820062213.GA202784@architecture4>
References: <20190818162201.GA16269@infradead.org>
 <20190818172938.GA14413@sol.localdomain>
 <20190818174702.GA17633@infradead.org>
 <20190818181654.GA1617@hsiangkao-HP-ZHAN-66-Pro-G1>
 <20190818201405.GA27398@hsiangkao-HP-ZHAN-66-Pro-G1>
 <20190819160923.GG15198@magnolia>
 <20190819203051.GA10075@hsiangkao-HP-ZHAN-66-Pro-G1>
 <bdb91cbf-985b-5a2c-6019-560b79739431@gmx.com>
 <698e2fa6-956b-b367-6f6a-3e6b09bfef5f@huawei.com>
 <301ccbea-4140-3816-a1b3-5018ffb4036c@gmx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <301ccbea-4140-3816-a1b3-5018ffb4036c@gmx.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Originating-IP: [10.140.130.215]
X-ClientProxiedBy: dggeme708-chm.china.huawei.com (10.1.199.104) To
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
Cc: Jan Kara <jack@suse.cz>, Amir Goldstein <amir73il@gmail.com>,
 Dave Chinner <david@fromorbit.com>, David Sterba <dsterba@suse.cz>,
 miaoxie@huawei.com, devel <devel@driverdev.osuosl.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 "Darrick J. Wong" <darrick.wong@oracle.com>,
 Richard Weinberger <richard@nod.at>, Christoph Hellwig <hch@infradead.org>,
 torvalds <torvalds@linux-foundation.org>, Chao Yu <yuchao0@huawei.com>,
 Eric Biggers <ebiggers@kernel.org>, Al Viro <viro@zeniv.linux.org.uk>,
 Jaegeuk Kim <jaegeuk@kernel.org>, "Theodore Y. Ts'o" <tytso@mit.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Li Guifu <bluce.liguifu@huawei.com>, Fang Wei <fangwei1@huawei.com>,
 Pavel Machek <pavel@denx.de>, linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 linux-erofs <linux-erofs@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Qu,

On Tue, Aug 20, 2019 at 02:04:46PM +0800, Qu Wenruo wrote:
> [...]
> 
> And performance is another point.
> That tree-checker in btrfs is as fast/slow as CRC32.
> Not sure how it would be for dm-verity, but I guess it's slower than
> CRC32 if using any strong hash.

Just a word, dm-verity can do simple CRC32 without hash
tree in priciple as well. It is only a time problem.

> 
> Anyway, for a RO fs, if it's relying on dm-verify then that's OK for
> real-world usage.
> But as a standalone fs, even it's RO, a verification layer would be a
> great plus.

Yes, again, it's on my schedule at least.

> 
> At least when new student developers try fuzzed images on the fs, it
> would be a good surprise other than tons of new bug reports.
> 
> > 
> >  
> >>>
> [...]
> >>>
> >>> Yes, we will do such a debugging tool of course. Actually Li Guifu is now
> >>> developping a erofs-fuse to support old linux versions or other OSes for
> >>> archiveing only use, we will base on that code to develop a better fuzzer
> >>> tool as well.
> >>
> >> Personally speaking, debugging tool is way more important than a running
> >> kernel module/fuse.
> >> It's human trying to write the code, most of time is spent educating
> >> code readers, thus debugging tool is way more important than dead cold code.
> > 
> > Agree, Xiang and I have no time to developing this feature now, we are glad very much if you could help
> > us to do it ;)
> 
> In fact, since the fs is a RO fs, it could be pretty good educational
> example for any fs newbies. Thus a debug tool which can show the full
> metadata of the fs can really be helpful.

Yes, I think EROFS will be helpful for all fs newbies to understand
the basic fs concepts, and I have received contributions from some
new kernel developers. And again, I will do in my spare time.

I'm dedicated to playing with EROFS in my spare time (rather than
only at work to maintain for our products), so I will do and don't
worry about that.

And I agree with Miao Xie on one word, you can join us as well for
educational reason or whatever if you have some extra time... :)

Thanks,
Gao Xiang

> 
> In fact, btrfs-debug-tree (now "btrfs ins dump-tree") leads my way to
> btrfs, and still one of my favourite tool to debug.
> 
> Thanks,
> Qu
> 
> 




> _______________________________________________
> devel mailing list
> devel@linuxdriverproject.org
> http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

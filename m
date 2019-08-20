Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0270A955B8
	for <lists+driverdev-devel@lfdr.de>; Tue, 20 Aug 2019 05:46:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 47D0620417;
	Tue, 20 Aug 2019 03:46:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s9sVwg8I59b4; Tue, 20 Aug 2019 03:46:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3986B22636;
	Tue, 20 Aug 2019 03:46:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DFE941BF956
 for <devel@linuxdriverproject.org>; Tue, 20 Aug 2019 03:46:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D557688091
 for <devel@linuxdriverproject.org>; Tue, 20 Aug 2019 03:46:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PD88zAJa2C0Q for <devel@linuxdriverproject.org>;
 Tue, 20 Aug 2019 03:46:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga03-in.huawei.com [45.249.212.189])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 70E5481F33
 for <devel@driverdev.osuosl.org>; Tue, 20 Aug 2019 03:46:48 +0000 (UTC)
Received: from DGGEMM402-HUB.china.huawei.com (unknown [172.30.72.54])
 by Forcepoint Email with ESMTP id 08831357FA33624EA854;
 Tue, 20 Aug 2019 11:46:42 +0800 (CST)
Received: from dggeme762-chm.china.huawei.com (10.3.19.108) by
 DGGEMM402-HUB.china.huawei.com (10.3.20.210) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 20 Aug 2019 11:46:41 +0800
Received: from architecture4 (10.140.130.215) by
 dggeme762-chm.china.huawei.com (10.3.19.108) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10; Tue, 20 Aug 2019 11:46:40 +0800
Date: Tue, 20 Aug 2019 11:46:01 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Miao Xie <miaoxie@huawei.com>
Subject: Re: [PATCH] erofs: move erofs out of staging
Message-ID: <20190820034601.GC159846@architecture4>
References: <20190818161638.GE1118@sol.localdomain>
 <20190818162201.GA16269@infradead.org>
 <20190818172938.GA14413@sol.localdomain>
 <20190818174702.GA17633@infradead.org>
 <20190818181654.GA1617@hsiangkao-HP-ZHAN-66-Pro-G1>
 <20190818201405.GA27398@hsiangkao-HP-ZHAN-66-Pro-G1>
 <20190819160923.GG15198@magnolia>
 <20190819203051.GA10075@hsiangkao-HP-ZHAN-66-Pro-G1>
 <bdb91cbf-985b-5a2c-6019-560b79739431@gmx.com>
 <698e2fa6-956b-b367-6f6a-3e6b09bfef5f@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <698e2fa6-956b-b367-6f6a-3e6b09bfef5f@huawei.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Originating-IP: [10.140.130.215]
X-ClientProxiedBy: dggeme719-chm.china.huawei.com (10.1.199.115) To
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
 Dave Chinner <david@fromorbit.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 devel <devel@driverdev.osuosl.org>, Christoph Hellwig <hch@infradead.org>,
 "Darrick J. Wong" <darrick.wong@oracle.com>,
 Richard Weinberger <richard@nod.at>, Qu Wenruo <quwenruo.btrfs@gmx.com>,
 Eric Biggers <ebiggers@kernel.org>, torvalds <torvalds@linux-foundation.org>,
 Amir Goldstein <amir73il@gmail.com>, Stephen Rothwell <sfr@canb.auug.org.au>,
 Al Viro <viro@zeniv.linux.org.uk>, Jaegeuk
 Kim <jaegeuk@kernel.org>, "Theodore Y. Ts'o" <tytso@mit.edu>, Pavel
 Machek <pavel@denx.de>, David Sterba <dsterba@suse.cz>, Li
 Guifu <bluce.liguifu@huawei.com>, Fang Wei <fangwei1@huawei.com>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 linux-erofs <linux-erofs@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Aug 20, 2019 at 11:33:51AM +0800, Miao Xie wrote:
> 
> 
> on 2019/8/20 at 8:55, Qu Wenruo wrote:
> > [...]
> >>>> I have made a simple fuzzer to inject messy in inode metadata,
> >>>> dir data, compressed indexes and super block,
> >>>> https://git.kernel.org/pub/scm/linux/kernel/git/xiang/erofs-utils.git/commit/?h=experimental-fuzzer
> >>>>
> >>>> I am testing with some given dirs and the following script.
> >>>> Does it look reasonable?
> >>>>
> >>>> # !/bin/bash
> >>>>
> >>>> mkdir -p mntdir
> >>>>
> >>>> for ((i=0; i<1000; ++i)); do
> >>>> 	mkfs/mkfs.erofs -F$i testdir_fsl.fuzz.img testdir_fsl > /dev/null 2>&1
> >>>
> >>> mkfs fuzzes the image? Er....
> >>
> >> Thanks for your reply.
> >>
> >> First, This is just the first step of erofs fuzzer I wrote yesterday night...
> >>
> >>>
> >>> Over in XFS land we have an xfs debugging tool (xfs_db) that knows how
> >>> to dump (and write!) most every field of every metadata type.  This
> >>> makes it fairly easy to write systematic level 0 fuzzing tests that
> >>> check how well the filesystem reacts to garbage data (zeroing,
> >>> randomizing, oneing, adding and subtracting small integers) in a field.
> >>> (It also knows how to trash entire blocks.)
> > 
> > The same tool exists for btrfs, although lacks the write ability, but
> > that dump is more comprehensive and a great tool to learn the on-disk
> > format.
> > 
> > 
> > And for the fuzzing defending part, just a few kernel releases ago,
> > there is none for btrfs, and now we have a full static verification
> > layer to cover (almost) all on-disk data at read and write time.
> > (Along with enhanced runtime check)
> > 
> > We have covered from vague values inside tree blocks and invalid/missing
> > cross-ref find at runtime.
> > 
> > Currently the two layered check works pretty fine (well, sometimes too
> > good to detect older, improper behaved kernel).
> > - Tree blocks with vague data just get rejected by verification layer
> >   So that all members should fit on-disk format, from alignment to
> >   generation to inode mode.
> > 
> >   The error will trigger a good enough (TM) error message for developer
> >   to read, and if we have other copies, we retry other copies just as
> >   we hit a bad copy.
> > 
> > - At runtime, we have much less to check
> >   Only cross-ref related things can be wrong now. since everything
> >   inside a single tree block has already be checked.
> > 
> > In fact, from my respect of view, such read time check should be there
> > from the very beginning.
> > It acts kinda of a on-disk format spec. (In fact, by implementing the
> > verification layer itself, it already exposes a lot of btrfs design
> > trade-offs)
> > 
> > Even for a fs as complex (buggy) as btrfs, we only take 1K lines to
> > implement the verification layer.
> > So I'd like to see every new mainlined fs to have such ability.
> 
> It is a good idea. In fact, we already have a verification layer which was implemented
> as a device mapper sub-module. I think it is enough for a read-only filesystem because
> it is simple, flexible and independent(we can modify the filesystem layout without
> verification module modification).
> 
>  
> >>
> >> Actually, compared with XFS, EROFS has rather simple on-disk format.
> >> What we inject one time is quite deterministic.
> >>
> >> The first step just purposely writes some random fuzzed data to
> >> the base inode metadata, compressed indexes, or dir data field
> >> (one round one field) to make it validity and coverability.
> >>
> >>>
> >>> You might want to write such a debugging tool for erofs so that you can
> >>> take apart crashed images to get a better idea of what went wrong, and
> >>> to write easy fuzzing tests.
> >>
> >> Yes, we will do such a debugging tool of course. Actually Li Guifu is now
> >> developping a erofs-fuse to support old linux versions or other OSes for
> >> archiveing only use, we will base on that code to develop a better fuzzer
> >> tool as well.
> > 
> > Personally speaking, debugging tool is way more important than a running
> > kernel module/fuse.
> > It's human trying to write the code, most of time is spent educating
> > code readers, thus debugging tool is way more important than dead cold code.
> 
> Agree, Xiang and I have no time to developing this feature now, we are glad very much if you could help
> us to do it ;)

I can speed all my spare time for this...

As I said before, All HUAWEI smartphone products will continue using
this filesystem, and maintaining this filesystem is one of our paid
jobs, but since our Android products is based on dm-verity + EROFS,
it's only on my personal time schedule (bosses care more about Android
and money) and I will do that in my spare time of course.

Thanks,
Gao Xiang

> 
> Thanks
> Miao
> 
> > 
> > Thanks,
> > Qu
> >>
> >> Thanks,
> >> Gao Xiang
> >>
> >>>
> >>> --D
> >>>
> >>>> 	umount mntdir
> >>>> 	mount -t erofs -o loop testdir_fsl.fuzz.img mntdir
> >>>> 	for j in `find mntdir -type f`; do
> >>>> 		md5sum $j > /dev/null
> >>>> 	done
> >>>> done
> >>>>
> >>>> Thanks,
> >>>> Gao Xiang
> >>>>
> >>>>>
> >>>>> Thanks,
> >>>>> Gao Xiang
> >>>>>
> > 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

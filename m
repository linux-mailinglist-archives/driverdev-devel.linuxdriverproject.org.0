Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A523D9962B
	for <lists+driverdev-devel@lfdr.de>; Thu, 22 Aug 2019 16:17:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 15E47876F9;
	Thu, 22 Aug 2019 14:17:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r1gYcCP0wqIg; Thu, 22 Aug 2019 14:17:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C05B5876FC;
	Thu, 22 Aug 2019 14:17:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C09FE1BF836
 for <devel@linuxdriverproject.org>; Thu, 22 Aug 2019 14:17:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BD05C86ADD
 for <devel@linuxdriverproject.org>; Thu, 22 Aug 2019 14:17:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 277_Glcgc4JB for <devel@linuxdriverproject.org>;
 Thu, 22 Aug 2019 14:17:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga08-in.huawei.com [45.249.212.255])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8C41786AD8
 for <devel@driverdev.osuosl.org>; Thu, 22 Aug 2019 14:17:30 +0000 (UTC)
Received: from DGGEMM402-HUB.china.huawei.com (unknown [172.30.72.56])
 by Forcepoint Email with ESMTP id 95EBB64521012408328E;
 Thu, 22 Aug 2019 22:17:25 +0800 (CST)
Received: from dggeme762-chm.china.huawei.com (10.3.19.108) by
 DGGEMM402-HUB.china.huawei.com (10.3.20.210) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 22 Aug 2019 22:17:25 +0800
Received: from architecture4 (10.140.130.215) by
 dggeme762-chm.china.huawei.com (10.3.19.108) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10; Thu, 22 Aug 2019 22:17:24 +0800
Date: Thu, 22 Aug 2019 22:16:44 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v8 00/24] erofs: promote erofs from staging v8
Message-ID: <20190822141641.GA195034@architecture4>
References: <20190815044155.88483-1-gaoxiang25@huawei.com>
 <20190815090603.GD4938@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190815090603.GD4938@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Originating-IP: [10.140.130.215]
X-ClientProxiedBy: dggeme709-chm.china.huawei.com (10.1.199.105) To
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
 Dave Chinner <david@fromorbit.com>, David
 Sterba <dsterba@suse.cz>, Miao Xie <miaoxie@huawei.com>,
 devel@driverdev.osuosl.org, Stephen Rothwell <sfr@canb.auug.org.au>,
 "Darrick J . Wong" <darrick.wong@oracle.com>, Richard
 Weinberger <richard@nod.at>, Christoph Hellwig <hch@infradead.org>, Linus
 Torvalds <torvalds@linux-foundation.org>, Chao Yu <yuchao0@huawei.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Jaegeuk Kim <jaegeuk@kernel.org>,
 Theodore Ts'o <tytso@mit.edu>, Pavel Machek <pavel@denx.de>,
 LKML <linux-kernel@vger.kernel.org>, Li Guifu <bluce.liguifu@huawei.com>,
 Zefan Li <lizefan@huawei.com>, Fang Wei <fangwei1@huawei.com>,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 linux-erofs@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Greg,

On Thu, Aug 15, 2019 at 11:06:03AM +0200, Greg Kroah-Hartman wrote:
> On Thu, Aug 15, 2019 at 12:41:31PM +0800, Gao Xiang wrote:
> > [I strip the previous cover letter, the old one can be found in v6:
> >  https://lore.kernel.org/r/20190802125347.166018-1-gaoxiang25@huawei.com/]
> > 
> > We'd like to submit a formal moving patch applied to staging tree
> > for 5.4, before that we'd like to hear if there are some ACKs,
> > suggestions or NAKs, objections of EROFS. Therefore, we can improve
> > it in this round or rethink about the whole thing.
> > 
> > As related materials mentioned [1] [2], the goal of EROFS is to
> > save extra storage space with guaranteed end-to-end performance
> > for read-only files, which has better performance over exist Linux
> > compression filesystems based on fixed-sized output compression
> > and inplace decompression. It even has better performance in
> > a large compression ratio range compared with generic uncompressed
> > filesystems with proper CPU-storage combinations. And we think this
> > direction is correct and a dedicated kernel team is continuously /
> > actively working on improving it, enough testers and beta / end
> > users using it.
> > 
> > EROFS has been applied to almost all in-service HUAWEI smartphones
> > (Yes, the number is still increasing by time) and it seems like
> > a success. It can be used in more wider scenarios. We think it's
> > useful for Linux / Android OS community and it's the time moving
> > out of staging.
> > 
> > In order to get started, latest stable mkfs.erofs is available at
> > 
> > git://git.kernel.org/pub/scm/linux/kernel/git/xiang/erofs-utils.git -b dev
> > 
> > with README in the repository.
> > 
> > We are still tuning sequential read performance for ultra-fast
> > speed NVME SSDs like Samsung 970PRO, but at least now you can
> > try on your PC with some data with proper compression ratio,
> > the latest Linux kernel, USB stick for convenience sake and
> > a not very old-fashioned CPU. There are also benchmarks available
> > in the above materials mentioned.
> > 
> > EROFS is a self-contained filesystem driver. Although there are
> > still some TODOs to be more generic, we will actively keep on
> > developping / tuning EROFS with the evolution of Linux kernel
> > as the other in-kernel filesystems.
> > 
> > As I mentioned before in LSF/MM 2019, in the future, we'd like
> > to generalize the decompression engine into a library for other
> > fses to use after the whole system is mature like fscrypt.
> > However, such metadata should be designed respectively for
> > each fs, and synchronous metadata read cost will be larger
> > than EROFS because of those ondisk limitation. Therefore EROFS
> > is still a better choice for read-only scenarios.
> > 
> > EROFS is now ready for reviewing and moving, and the code is
> > already cleaned up as shiny floors... Please kindly take some
> > precious time, share your comments about EROFS and let us know
> > your opinion about this. It's really important for us since
> > generally speaking, we like to use Linux _in-tree_ stuffs rather
> > than lack of supported out-of-tree / orphan stuffs as well.
> 
> I know everyone is busy, but given the length this has been in staging,
> and the constant good progress toward cleaning it all up that has been
> happening, I want to get this moved out of staging soon.
> 
> So, unless there are any objections, I'll take this patchset in a week
> into my staging tree to move the filesystem into the "real" part of the
> kernel.

It seem that the time is passed, as a brief conclusion, it seems we don't
get "real" objection in the previous week.

During these days, we have enhanced our robustness against corrupted images
by our first fuzzer based on mkfs.erofs these days (since it's a RO fs, it
will generate reproductable images). Although the original intended use case
of EROFS is on the top of dm-verity for Android, we still want to gain more
wider use so we quickly build a fuzzer and addresses them (yes, we will
develop another independent fuzzer tools as well.)

And thanks all people for all useful suggestions these days, and we think
these wonderful fses (ext4/xfs/btrfs/...) have awesome rich tools, that's
also our next step to address on, especially debugging tools.

As a Newborn communities, we only have a few paid-job people working on
that, but we are doing our best on EROFS, please kindly give us some time
to grow up (I personally speed my all spare/working time on EROFS from its
start), and apply EROFS to more wider use like what we did successfully
for many many HUAWEI smartphones...

As Greg said before [1], we have already proven the advantage of EROFS
solutions, the next step is to develop it more actively... And we would
also like to generalize the decompression engine into a library for other
general fses to use (we're very happy to share our efforts), it seems
interesting to other fs as well [2].

I sent several patchsets from July 4, 2019 (v1-v8), Cc most of fs people
at the first beginning and get responses and suggestions from people (Ted,
Pavel, Eric, Stephen, Amir, David, Jan, Richard, Linus...), so could you
kindly consider the following moving patch [3] and let us join, contribute
Linux "real" part community more actively, again, we have a steady stream
of work on EROFS, and will do our best on it. Thank you all very much!

Sorry about my English...

[1] https://lore.kernel.org/r/20190618064523.GA6015@kroah.com/
[2] https://lore.kernel.org/r/20190820162510.GC10232@mit.edu/
[3] https://lore.kernel.org/r/20190817082313.21040-1-hsiangkao@aol.com/

Thanks,
Gao Xiang

> 
> thanks,
> 
> greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5F4791774
	for <lists+driverdev-devel@lfdr.de>; Sun, 18 Aug 2019 17:12:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6AAD587568;
	Sun, 18 Aug 2019 15:12:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4O7JhsPFjtXh; Sun, 18 Aug 2019 15:12:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D36CE85C8C;
	Sun, 18 Aug 2019 15:12:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C2A881BF3D1
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 15:12:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BEB5185725
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 15:12:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I47lllGCqddF for <devel@linuxdriverproject.org>;
 Sun, 18 Aug 2019 15:12:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu [18.9.28.11])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A492A85722
 for <devel@driverdev.osuosl.org>; Sun, 18 Aug 2019 15:12:14 +0000 (UTC)
Received: from callcc.thunk.org ([12.235.16.3]) (authenticated bits=0)
 (User authenticated as tytso@ATHENA.MIT.EDU)
 by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id x7IFBt5Z011483
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Sun, 18 Aug 2019 11:11:56 -0400
Received: by callcc.thunk.org (Postfix, from userid 15806)
 id E4DB04218EF; Sun, 18 Aug 2019 11:11:54 -0400 (EDT)
Date: Sun, 18 Aug 2019 11:11:54 -0400
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: Richard Weinberger <richard@nod.at>
Subject: Re: [PATCH] erofs: move erofs out of staging
Message-ID: <20190818151154.GA32157@mit.edu>
Mail-Followup-To: "Theodore Y. Ts'o" <tytso@mit.edu>,
 Richard Weinberger <richard@nod.at>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Gao Xiang <hsiangkao@aol.com>, Jan Kara <jack@suse.cz>,
 Chao Yu <yuchao0@huawei.com>, Dave Chinner <david@fromorbit.com>,
 David Sterba <dsterba@suse.cz>, Miao Xie <miaoxie@huawei.com>,
 devel <devel@driverdev.osuosl.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 Darrick <darrick.wong@oracle.com>,
 Christoph Hellwig <hch@infradead.org>,
 Amir Goldstein <amir73il@gmail.com>,
 linux-erofs <linux-erofs@lists.ozlabs.org>,
 Al Viro <viro@zeniv.linux.org.uk>, Jaegeuk Kim <jaegeuk@kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Li Guifu <bluce.liguifu@huawei.com>, Fang Wei <fangwei1@huawei.com>,
 Pavel Machek <pavel@denx.de>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 torvalds <torvalds@linux-foundation.org>
References: <20190817082313.21040-1-hsiangkao@aol.com>
 <20190817220706.GA11443@hsiangkao-HP-ZHAN-66-Pro-G1>
 <1163995781.68824.1566084358245.JavaMail.zimbra@nod.at>
 <20190817233843.GA16991@hsiangkao-HP-ZHAN-66-Pro-G1>
 <1405781266.69008.1566116210649.JavaMail.zimbra@nod.at>
 <20190818084521.GA17909@hsiangkao-HP-ZHAN-66-Pro-G1>
 <1133002215.69049.1566119033047.JavaMail.zimbra@nod.at>
 <20190818090949.GA30276@kroah.com>
 <790210571.69061.1566120073465.JavaMail.zimbra@nod.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <790210571.69061.1566120073465.JavaMail.zimbra@nod.at>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
 Dave Chinner <david@fromorbit.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Miao Xie <miaoxie@huawei.com>,
 devel <devel@driverdev.osuosl.org>, Stephen Rothwell <sfr@canb.auug.org.au>,
 Darrick <darrick.wong@oracle.com>, Christoph Hellwig <hch@infradead.org>,
 torvalds <torvalds@linux-foundation.org>, Chao Yu <yuchao0@huawei.com>,
 Al Viro <viro@zeniv.linux.org.uk>, Jaegeuk Kim <jaegeuk@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 David Sterba <dsterba@suse.cz>, Li Guifu <bluce.liguifu@huawei.com>,
 Fang Wei <fangwei1@huawei.com>, Pavel Machek <pavel@denx.de>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 linux-erofs <linux-erofs@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Aug 18, 2019 at 11:21:13AM +0200, Richard Weinberger wrote:
> > Not to say that erofs shouldn't be worked on to fix these kinds of
> > issues, just that it's not an unheard of thing to trust the disk image.
> > Especially for the normal usage model of erofs, where the whole disk
> > image is verfied before it is allowed to be mounted as part of the boot
> > process.
> 
> For normal use I see no problem at all.
> I fear distros that try to mount anything you plug into your USB.
> 
> At least SUSE already blacklists erofs:
> https://github.com/openSUSE/suse-module-tools/blob/master/suse-module-tools.spec#L24

Note that of the mainstream file systems, ext4 and xfs don't guarantee
that it's safe to blindly take maliciously provided file systems, such
as those provided by a untrusted container, and mount it on a file
system without problems.  As I recall, one of the XFS developers
described file system fuzzing reports as a denial of service attack on
the developers.  And on the ext4 side, while I try to address them, it
is by no means considered a high priority work item, and I don't
consider fixes of fuzzing reports to be worthy of coordinated
disclosure or a high priority bug to fix.  (I have closed more bugs in
this area than XFS has, although that may be that ext4 started with
more file system format bugs than XFS; however given the time to first
bug in 2017 using American Fuzzy Lop[1] being 5 seconds for btrfs, 10
seconds for f2fs, 25 seconds for reiserfs, 4 minutes for ntfs, 1h45m
for xfs, and 2h for ext4, that seems unlikely.)

[1] https://events.static.linuxfound.org/sites/events/files/slides/AFL%20filesystem%20fuzzing%2C%20Vault%202016_0.pdf

So holding a file system like EROFS to a higher standard than say,
ext4, xfs, or btrfs hardly seems fair.  There seems to be a very
unfortunate tendancy for us to hold new file systems to impossibly
high standards, when in fact, adding a file system to Linux should
not, in my opinion, be a remarkable event.  We have a huge number of
them already, many of which are barely maintained and probably have
far worse issues than file systems trying to get into the clubhouse.

If a file system is requesting core changes to the VM or block layers,
sure, we should care about the interfaces.  But this nitpicking about
whether or not a file system can be trusted in what I consider to be
COMPLETELY INSANE CONTAINER USE CASES is really not fair.

Cheers,

						- Ted
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

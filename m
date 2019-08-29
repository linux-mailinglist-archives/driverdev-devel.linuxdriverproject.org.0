Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CC32A2054
	for <lists+driverdev-devel@lfdr.de>; Thu, 29 Aug 2019 18:06:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 082708733E;
	Thu, 29 Aug 2019 16:06:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kWfQXqdfs1JO; Thu, 29 Aug 2019 16:06:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 70260871D0;
	Thu, 29 Aug 2019 16:06:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6933E1BF2BB
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 16:06:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 663AF253E7
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 16:06:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e8lhtRyh+0uP for <devel@linuxdriverproject.org>;
 Thu, 29 Aug 2019 16:06:30 +0000 (UTC)
X-Greylist: delayed 22:39:37 by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0074.hostedemail.com
 [216.40.44.74])
 by silver.osuosl.org (Postfix) with ESMTPS id 591F4203B0
 for <devel@driverdev.osuosl.org>; Thu, 29 Aug 2019 16:06:30 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave07.hostedemail.com (Postfix) with ESMTP id ED0561802345F
 for <devel@driverdev.osuosl.org>; Thu, 29 Aug 2019 15:58:26 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay06.hostedemail.com (Postfix) with ESMTP id 22F09182251AF;
 Thu, 29 Aug 2019 15:58:23 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com,
 :::::::::::::::::::::::::::::::::::::::::::::,
 RULES_HIT:41:355:379:599:968:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2198:2199:2393:2553:2559:2562:2693:2828:3138:3139:3140:3141:3142:3354:3622:3865:3867:3868:3870:3871:3872:3874:4321:4605:5007:6119:6742:6743:7903:10004:10400:10848:11026:11232:11657:11658:11914:12296:12297:12740:12760:12895:13069:13138:13161:13229:13231:13311:13357:13439:14096:14097:14180:14659:14721:21060:21080:21611:21627:21740:30012:30030:30054:30069:30070:30090:30091,
 0,
 RBL:23.242.196.136:@perches.com:.lbl8.mailshell.net-62.14.0.180 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:24,
 LUA_SUMMARY:none
X-HE-Tag: cub88_2b93c88708b5f
X-Filterd-Recvd-Size: 3480
Received: from XPS-9350.home (cpe-23-242-196-136.socal.res.rr.com
 [23.242.196.136]) (Authenticated sender: joe@perches.com)
 by omf13.hostedemail.com (Postfix) with ESMTPA;
 Thu, 29 Aug 2019 15:58:19 +0000 (UTC)
Message-ID: <67d6efbbc9ac6db23215660cb970b7ef29dc0c1d.camel@perches.com>
Subject: Re: [PATCH v6 01/24] erofs: add on-disk layout
From: Joe Perches <joe@perches.com>
To: Gao Xiang <gaoxiang25@huawei.com>, Christoph Hellwig <hch@infradead.org>
Date: Thu, 29 Aug 2019 08:58:17 -0700
In-Reply-To: <20190829103252.GA64893@architecture4>
References: <20190802125347.166018-1-gaoxiang25@huawei.com>
 <20190802125347.166018-2-gaoxiang25@huawei.com>
 <20190829095954.GB20598@infradead.org>
 <20190829103252.GA64893@architecture4>
User-Agent: Evolution 3.32.1-2 
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, Stephen Rothwell <sfr@canb.auug.org.au>,
 linux-erofs@lists.ozlabs.org, Chao Yu <yuchao0@huawei.com>,
 Theodore Ts'o <tytso@mit.edu>, "Darrick J . Wong" <darrick.wong@oracle.com>,
 Pavel Machek <pavel@denx.de>, Jan Kara <jack@suse.cz>,
 Amir Goldstein <amir73il@gmail.com>, Dave Chinner <david@fromorbit.com>,
 David Sterba <dsterba@suse.cz>, Li Guifu <bluce.liguifu@huawei.com>,
 LKML <linux-kernel@vger.kernel.org>, Miao Xie <miaoxie@huawei.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-fsdevel@vger.kernel.org,
 Jaegeuk Kim <jaegeuk@kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, Fang Wei <fangwei1@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, 2019-08-29 at 18:32 +0800, Gao Xiang wrote:
> Hi Christoph,
> 
> On Thu, Aug 29, 2019 at 02:59:54AM -0700, Christoph Hellwig wrote:
> > > --- /dev/null
> > > +++ b/fs/erofs/erofs_fs.h
> > > @@ -0,0 +1,316 @@
> > > +/* SPDX-License-Identifier: GPL-2.0-only OR Apache-2.0 */
> > > +/*
> > > + * linux/fs/erofs/erofs_fs.h
> > 
> > Please remove the pointless file names in the comment headers.
> 
> Already removed in the latest version.
> 
> > > +struct erofs_super_block {
> > > +/*  0 */__le32 magic;           /* in the little endian */
> > > +/*  4 */__le32 checksum;        /* crc32c(super_block) */
> > > +/*  8 */__le32 features;        /* (aka. feature_compat) */
> > > +/* 12 */__u8 blkszbits;         /* support block_size == PAGE_SIZE only */
> > 
> > Please remove all the byte offset comments.  That is something that can
> > easily be checked with gdb or pahole.
> 
> I have no idea the actual issue here.
> It will help all developpers better add fields or calculate
> these offsets in their mind, and with care.
> 
> Rather than they didn't run "gdb" or "pahole" and change it by mistake.

I think Christoph is not right here.

Using external tools for validation is extra work
when necessary for understanding the code.

The expected offset is somewhat valuable, but
perhaps the form is a bit off given the visual
run-in to the field types.

The extra work with this form is manipulating all
the offsets whenever a structure change occurs.

The comments might be better with a form more like:

struct erofs_super_block {	/* offset description */
	__le32 magic;		/*   0  */
	__le32 checksum;	/*   4  crc32c(super_block) */
	__le32 features;	/*   8  (aka. feature_compat) */
	__u8 blkszbits;		/*  12  support block_size == PAGE_SIZE only */


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

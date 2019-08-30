Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 348D3A3643
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Aug 2019 14:07:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C7E5B263D5;
	Fri, 30 Aug 2019 12:07:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NmBhPGChBiSP; Fri, 30 Aug 2019 12:07:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C476626393;
	Fri, 30 Aug 2019 12:06:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0D86E1BF473
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 12:06:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 09EAC86B11
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 12:06:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0TyzlTMk4Sbr for <devel@linuxdriverproject.org>;
 Fri, 30 Aug 2019 12:06:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A2B2086AB1
 for <devel@driverdev.osuosl.org>; Fri, 30 Aug 2019 12:06:55 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 0B3E4B662;
 Fri, 30 Aug 2019 12:06:53 +0000 (UTC)
Received: by ds.suse.cz (Postfix, from userid 10065)
 id 4079DDA809; Fri, 30 Aug 2019 14:07:14 +0200 (CEST)
Date: Fri, 30 Aug 2019 14:07:14 +0200
From: David Sterba <dsterba@suse.cz>
To: Joe Perches <joe@perches.com>
Subject: Re: [PATCH v6 01/24] erofs: add on-disk layout
Message-ID: <20190830120714.GN2752@twin.jikos.cz>
Mail-Followup-To: dsterba@suse.cz, Joe Perches <joe@perches.com>,
 Gao Xiang <gaoxiang25@huawei.com>,
 Christoph Hellwig <hch@infradead.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 Theodore Ts'o <tytso@mit.edu>, Pavel Machek <pavel@denx.de>,
 Amir Goldstein <amir73il@gmail.com>,
 "Darrick J . Wong" <darrick.wong@oracle.com>,
 Dave Chinner <david@fromorbit.com>,
 Jaegeuk Kim <jaegeuk@kernel.org>, Jan Kara <jack@suse.cz>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 linux-fsdevel@vger.kernel.org, devel@driverdev.osuosl.org,
 LKML <linux-kernel@vger.kernel.org>, linux-erofs@lists.ozlabs.org,
 Chao Yu <yuchao0@huawei.com>, Miao Xie <miaoxie@huawei.com>,
 Li Guifu <bluce.liguifu@huawei.com>, Fang Wei <fangwei1@huawei.com>
References: <20190802125347.166018-1-gaoxiang25@huawei.com>
 <20190802125347.166018-2-gaoxiang25@huawei.com>
 <20190829095954.GB20598@infradead.org>
 <20190829103252.GA64893@architecture4>
 <67d6efbbc9ac6db23215660cb970b7ef29dc0c1d.camel@perches.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <67d6efbbc9ac6db23215660cb970b7ef29dc0c1d.camel@perches.com>
User-Agent: Mutt/1.5.23.1-rc1 (2014-03-12)
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
Reply-To: dsterba@suse.cz
Cc: Jan Kara <jack@suse.cz>, Chao Yu <yuchao0@huawei.com>,
 Dave Chinner <david@fromorbit.com>, LKML <linux-kernel@vger.kernel.org>,
 Miao Xie <miaoxie@huawei.com>, devel@driverdev.osuosl.org,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 "Darrick J . Wong" <darrick.wong@oracle.com>,
 Christoph Hellwig <hch@infradead.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Amir Goldstein <amir73il@gmail.com>, Alexander Viro <viro@zeniv.linux.org.uk>,
 Jaegeuk Kim <jaegeuk@kernel.org>, Theodore Ts'o <tytso@mit.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 David Sterba <dsterba@suse.cz>, Li Guifu <bluce.liguifu@huawei.com>,
 Fang Wei <fangwei1@huawei.com>, Pavel Machek <pavel@denx.de>,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 linux-erofs@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Aug 29, 2019 at 08:58:17AM -0700, Joe Perches wrote:
> On Thu, 2019-08-29 at 18:32 +0800, Gao Xiang wrote:
> > Hi Christoph,
> > 
> > On Thu, Aug 29, 2019 at 02:59:54AM -0700, Christoph Hellwig wrote:
> > > > --- /dev/null
> > > > +++ b/fs/erofs/erofs_fs.h
> > > > @@ -0,0 +1,316 @@
> > > > +/* SPDX-License-Identifier: GPL-2.0-only OR Apache-2.0 */
> > > > +/*
> > > > + * linux/fs/erofs/erofs_fs.h
> > > 
> > > Please remove the pointless file names in the comment headers.
> > 
> > Already removed in the latest version.
> > 
> > > > +struct erofs_super_block {
> > > > +/*  0 */__le32 magic;           /* in the little endian */
> > > > +/*  4 */__le32 checksum;        /* crc32c(super_block) */
> > > > +/*  8 */__le32 features;        /* (aka. feature_compat) */
> > > > +/* 12 */__u8 blkszbits;         /* support block_size == PAGE_SIZE only */
> > > 
> > > Please remove all the byte offset comments.  That is something that can
> > > easily be checked with gdb or pahole.
> > 
> > I have no idea the actual issue here.
> > It will help all developpers better add fields or calculate
> > these offsets in their mind, and with care.
> > 
> > Rather than they didn't run "gdb" or "pahole" and change it by mistake.
> 
> I think Christoph is not right here.
> 
> Using external tools for validation is extra work
> when necessary for understanding the code.

The advantage of using the external tools that the information about
offsets is provably correct ...

> The expected offset is somewhat valuable, but
> perhaps the form is a bit off given the visual
> run-in to the field types.
> 
> The extra work with this form is manipulating all
> the offsets whenever a structure change occurs.

... while this is error prone.

> The comments might be better with a form more like:
> 
> struct erofs_super_block {	/* offset description */
> 	__le32 magic;		/*   0  */
> 	__le32 checksum;	/*   4  crc32c(super_block) */
> 	__le32 features;	/*   8  (aka. feature_compat) */
> 	__u8 blkszbits;		/*  12  support block_size == PAGE_SIZE only */
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

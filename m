Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94740A5928
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Sep 2019 16:20:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7C62087D9F;
	Mon,  2 Sep 2019 14:20:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w6XDrdL1em4w; Mon,  2 Sep 2019 14:20:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id EC1F787D39;
	Mon,  2 Sep 2019 14:20:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 42CF31BF86D
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 14:20:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3D80E85CA1
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 14:20:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MZL923BITeUp for <devel@linuxdriverproject.org>;
 Mon,  2 Sep 2019 14:20:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 08D1181436
 for <devel@driverdev.osuosl.org>; Mon,  2 Sep 2019 14:20:21 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id AB78EAD4E;
 Mon,  2 Sep 2019 14:20:18 +0000 (UTC)
Received: by ds.suse.cz (Postfix, from userid 10065)
 id 080BADA796; Mon,  2 Sep 2019 16:20:37 +0200 (CEST)
Date: Mon, 2 Sep 2019 16:20:37 +0200
From: David Sterba <dsterba@suse.cz>
To: Chao Yu <chao@kernel.org>
Subject: Re: [PATCH v8 11/24] erofs: introduce xattr & posixacl support
Message-ID: <20190902142037.GW2752@twin.jikos.cz>
Mail-Followup-To: dsterba@suse.cz, Chao Yu <chao@kernel.org>,
 Christoph Hellwig <hch@infradead.org>,
 Gao Xiang <gaoxiang25@huawei.com>, linux-fsdevel@vger.kernel.org,
 devel@driverdev.osuosl.org,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 LKML <linux-kernel@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 Theodore Ts'o <tytso@mit.edu>, Pavel Machek <pavel@denx.de>,
 Amir Goldstein <amir73il@gmail.com>,
 "Darrick J . Wong" <darrick.wong@oracle.com>,
 Dave Chinner <david@fromorbit.com>,
 Jaegeuk Kim <jaegeuk@kernel.org>, Jan Kara <jack@suse.cz>,
 Richard Weinberger <richard@nod.at>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 linux-erofs@lists.ozlabs.org, Chao Yu <yuchao0@huawei.com>,
 Miao Xie <miaoxie@huawei.com>, Li Guifu <bluce.liguifu@huawei.com>,
 Fang Wei <fangwei1@huawei.com>
References: <20190815044155.88483-1-gaoxiang25@huawei.com>
 <20190815044155.88483-12-gaoxiang25@huawei.com>
 <20190902125711.GA23462@infradead.org>
 <20190902130644.GT2752@suse.cz>
 <813e1b65-e6ba-631c-6506-f356738c477f@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <813e1b65-e6ba-631c-6506-f356738c477f@kernel.org>
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
 Richard Weinberger <richard@nod.at>, Christoph Hellwig <hch@infradead.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Amir Goldstein <amir73il@gmail.com>, Alexander Viro <viro@zeniv.linux.org.uk>,
 Jaegeuk Kim <jaegeuk@kernel.org>, Theodore Ts'o <tytso@mit.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, dsterba@suse.cz,
 Li Guifu <bluce.liguifu@huawei.com>, Fang Wei <fangwei1@huawei.com>,
 Pavel Machek <pavel@denx.de>, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, linux-erofs@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Sep 02, 2019 at 09:51:59PM +0800, Chao Yu wrote:
> On 2019-9-2 21:06, David Sterba wrote:
> > On Mon, Sep 02, 2019 at 05:57:11AM -0700, Christoph Hellwig wrote:
> >>> +config EROFS_FS_XATTR
> >>> +	bool "EROFS extended attributes"
> >>> +	depends on EROFS_FS
> >>> +	default y
> >>> +	help
> >>> +	  Extended attributes are name:value pairs associated with inodes by
> >>> +	  the kernel or by users (see the attr(5) manual page, or visit
> >>> +	  <http://acl.bestbits.at/> for details).
> >>> +
> >>> +	  If unsure, say N.
> >>> +
> >>> +config EROFS_FS_POSIX_ACL
> >>> +	bool "EROFS Access Control Lists"
> >>> +	depends on EROFS_FS_XATTR
> >>> +	select FS_POSIX_ACL
> >>> +	default y
> >>
> >> Is there any good reason to make these optional these days?
> > 
> > I objected against adding so many config options, not to say for the
> > standard features. The various cache strategies or other implementation
> > details have been removed but I agree that making xattr/acl configurable
> > is not necessary as well.
> 
> I can see similar *_ACL option in btrfs/ext4/xfs, should we remove them as well
> due to the same reason?

Oh right, I think the reasons are historical and that we can remove the
options nowadays. From the compatibility POV this should be safe, with
ACLs compiled out, no tool would use them, and no harm done when the
code is present but not used.

There were some efforts by embedded guys to make parts of kernel more
configurable to allow removing subsystems to reduce the final image
size. In this case I don't think it would make any noticeable
difference, eg. the size of fs/btrfs/acl.o on release config is 1.6KiB,
while the whole module is over 1.3MiB.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

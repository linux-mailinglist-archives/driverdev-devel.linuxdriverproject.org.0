Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D7A3A572E
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Sep 2019 15:06:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 70187855CE;
	Mon,  2 Sep 2019 13:06:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BGIv5gsFYGje; Mon,  2 Sep 2019 13:06:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 44AF185085;
	Mon,  2 Sep 2019 13:06:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5F9161BF408
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 13:06:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 515BD86489
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 13:06:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Fib50ETNLsqx for <devel@linuxdriverproject.org>;
 Mon,  2 Sep 2019 13:06:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 62E6E84368
 for <devel@driverdev.osuosl.org>; Mon,  2 Sep 2019 13:06:27 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 7B1EFAC9A;
 Mon,  2 Sep 2019 13:06:24 +0000 (UTC)
Received: by ds.suse.cz (Postfix, from userid 10065)
 id 8B96BDA796; Mon,  2 Sep 2019 15:06:44 +0200 (CEST)
Date: Mon, 2 Sep 2019 15:06:44 +0200
From: David Sterba <dsterba@suse.cz>
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH v8 11/24] erofs: introduce xattr & posixacl support
Message-ID: <20190902130644.GT2752@suse.cz>
Mail-Followup-To: dsterba@suse.cz, Christoph Hellwig <hch@infradead.org>,
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
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190902125711.GA23462@infradead.org>
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
 Dave Chinner <david@fromorbit.com>, Miao Xie <miaoxie@huawei.com>,
 devel@driverdev.osuosl.org, Stephen Rothwell <sfr@canb.auug.org.au>,
 "Darrick J . Wong" <darrick.wong@oracle.com>,
 Richard Weinberger <richard@nod.at>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Amir Goldstein <amir73il@gmail.com>, Alexander Viro <viro@zeniv.linux.org.uk>,
 Jaegeuk Kim <jaegeuk@kernel.org>, Theodore Ts'o <tytso@mit.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Li Guifu <bluce.liguifu@huawei.com>,
 Fang Wei <fangwei1@huawei.com>, Pavel Machek <pavel@denx.de>,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 linux-erofs@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Sep 02, 2019 at 05:57:11AM -0700, Christoph Hellwig wrote:
> > +config EROFS_FS_XATTR
> > +	bool "EROFS extended attributes"
> > +	depends on EROFS_FS
> > +	default y
> > +	help
> > +	  Extended attributes are name:value pairs associated with inodes by
> > +	  the kernel or by users (see the attr(5) manual page, or visit
> > +	  <http://acl.bestbits.at/> for details).
> > +
> > +	  If unsure, say N.
> > +
> > +config EROFS_FS_POSIX_ACL
> > +	bool "EROFS Access Control Lists"
> > +	depends on EROFS_FS_XATTR
> > +	select FS_POSIX_ACL
> > +	default y
> 
> Is there any good reason to make these optional these days?

I objected against adding so many config options, not to say for the
standard features. The various cache strategies or other implementation
details have been removed but I agree that making xattr/acl configurable
is not necessary as well.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

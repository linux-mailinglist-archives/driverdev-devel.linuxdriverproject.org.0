Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A1179A3C37
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Aug 2019 18:40:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E49D5263F2;
	Fri, 30 Aug 2019 16:40:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cWXhiOFXX+Up; Fri, 30 Aug 2019 16:40:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 72649263F5;
	Fri, 30 Aug 2019 16:40:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B95CC1BF844
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 16:40:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B64EA263D5
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 16:40:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0o12p9LIllVY for <devel@linuxdriverproject.org>;
 Fri, 30 Aug 2019 16:40:25 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by silver.osuosl.org (Postfix) with ESMTPS id 4B4F9214D2
 for <devel@driverdev.osuosl.org>; Fri, 30 Aug 2019 16:40:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AT7c8Uf6oRKSCvH0T7rxwpH4EoIuzd5Fl8xv/gJGnw4=; b=XKxQMKVi9kAdTU+vbb0Unuz1w
 1OC04HlMkxRWKs69JYntBAUF4Vq2rS9l2rajiJty/VLSOfmjDMy+0igRW96PttjZ1sVU4ZpTv/387
 URunnMETnkxIuM82Rxm4Ch3c6EgKekyOk6PUM01SL5x0M70Gwdlqg/fz3lOS1cSnIsj0jJQEAQopu
 LkT2Rihs462KZRs+vsR+k/TmnMtkm28eZgXiXoUJwS2Ll1xhYkJN1fpn+44WyZolCVtFv+DYTc6JK
 F7IsP1hyzpQH9I9Ix7oOpfg+bKAuiOZusNnDVQsLRBCmrqavz6liyImmftILLHQIWu8d4n01QmuYH
 J05OeGxHA==;
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1i3jwb-0002a3-O7; Fri, 30 Aug 2019 16:40:13 +0000
Date: Fri, 30 Aug 2019 09:40:13 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Gao Xiang <gaoxiang25@huawei.com>
Subject: Re: [PATCH v6 04/24] erofs: add raw address_space operations
Message-ID: <20190830164013.GC29603@infradead.org>
References: <20190802125347.166018-1-gaoxiang25@huawei.com>
 <20190802125347.166018-5-gaoxiang25@huawei.com>
 <20190829101721.GD20598@infradead.org>
 <20190829114610.GF64893@architecture4>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190829114610.GF64893@architecture4>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
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

On Thu, Aug 29, 2019 at 07:46:11PM +0800, Gao Xiang wrote:
> Hi Christoph,
> 
> On Thu, Aug 29, 2019 at 03:17:21AM -0700, Christoph Hellwig wrote:
> > The actual address_space operations seem to largely duplicate
> > the iomap versions.  Please use those instead.  Also I don't think
> > any new file system should write up ->bmap these days.
> 
> iomap doesn't support tail-end packing inline data till now,
> I think Chao and I told you and Andreas before [1].
> 
> Since EROFS keeps a self-contained driver for now, we will use
> iomap if it supports tail-end packing inline data later.

Well, so work with the maintainers to enhance the core kernel.  That
is how Linux development works.  We've added various iomap enhancements
for gfs in the last merge windows, and we've added more for the brand
new zonefs file system we plan to merge for 5.4.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

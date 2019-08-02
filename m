Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E8967EE61
	for <lists+driverdev-devel@lfdr.de>; Fri,  2 Aug 2019 10:08:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 25B3C884DF;
	Fri,  2 Aug 2019 08:08:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EE5U0e9al0Rl; Fri,  2 Aug 2019 08:08:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 553C888496;
	Fri,  2 Aug 2019 08:08:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D53B71BF232
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 08:06:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D17EA84D42
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 08:06:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 45bcxO6TksWo for <devel@linuxdriverproject.org>;
 Fri,  2 Aug 2019 08:06:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E889E884B3
 for <devel@driverdev.osuosl.org>; Fri,  2 Aug 2019 08:06:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oQGkgX+xjP5mcvxvnZUNTJDjzsROZ8JGq6RAdmO4uPA=; b=Kn7zyiwFYY1w4GG19f5Z+fxXG
 rpdCjyayz/9gviyRYspgLpeSBWC2GfVoCY+63/ODQnmLa1Ss8JkqUpftu3V0chMAiw/KlU2kDYgEh
 oR5YKgy/zWb5/EAWdvNxCcTyybQ/h6IZloFk2u58KpdWjALZ6VxSlYgO9NyD6ORVH0k4+/SJs5gc5
 s9u9DnNkq+UczyxB+jcY/9wLHc7m1xooYunausG0HwlgSx5YAgAGjYk+/D776D8302Y3gySch17HH
 NqaNqFjlPIzia2+bWk3vao3mV6/a02u4eJ9MN9jE/yE1oy7yiEOCMpBpQIwm2mrZk60vD3Q8D3Ve6
 97+ImnTKw==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=hirez.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1htSZZ-0007h0-0W; Fri, 02 Aug 2019 08:05:57 +0000
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 8B3D42029F4CB; Fri,  2 Aug 2019 10:05:54 +0200 (CEST)
Date: Fri, 2 Aug 2019 10:05:54 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: john.hubbard@gmail.com
Subject: Re: [PATCH 00/34] put_user_pages(): miscellaneous call sites
Message-ID: <20190802080554.GD2332@hirez.programming.kicks-ass.net>
References: <20190802021653.4882-1-jhubbard@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190802021653.4882-1-jhubbard@nvidia.com>
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
Cc: linux-fbdev@vger.kernel.org, Jan Kara <jack@suse.cz>, kvm@vger.kernel.org,
 Dave Hansen <dave.hansen@linux.intel.com>, Dave Chinner <david@fromorbit.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 sparclinux@vger.kernel.org, Dan Williams <dan.j.williams@intel.com>,
 devel@driverdev.osuosl.org, rds-devel@oss.oracle.com,
 linux-rdma@vger.kernel.org, x86@kernel.org, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 xen-devel@lists.xenproject.org, devel@lists.orangefs.org,
 linux-media@vger.kernel.org, John Hubbard <jhubbard@nvidia.com>,
 intel-gfx@lists.freedesktop.org, linux-block@vger.kernel.org,
 =?iso-8859-1?B?Suly9G1l?= Glisse <jglisse@redhat.com>,
 linux-rpi-kernel@lists.infradead.org, ceph-devel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-nfs@vger.kernel.org,
 netdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 linux-xfs@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Aug 01, 2019 at 07:16:19PM -0700, john.hubbard@gmail.com wrote:

> This is part a tree-wide conversion, as described in commit fc1d8e7cca2d
> ("mm: introduce put_user_page*(), placeholder versions"). That commit
> has an extensive description of the problem and the planned steps to
> solve it, but the highlites are:

That is one horridly mangled Changelog there :-/ It looks like it's
partially duplicated.

Anyway; no objections to any of that, but I just wanted to mention that
there are other problems with long term pinning that haven't been
mentioned, notably they inhibit compaction.

A long time ago I proposed an interface to mark pages as pinned, such
that we could run compaction before we actually did the pinning.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

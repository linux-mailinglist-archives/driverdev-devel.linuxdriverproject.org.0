Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BE77A165A
	for <lists+driverdev-devel@lfdr.de>; Thu, 29 Aug 2019 12:37:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E7C5489280;
	Thu, 29 Aug 2019 10:37:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rEKdocwhk7aK; Thu, 29 Aug 2019 10:37:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 679488879C;
	Thu, 29 Aug 2019 10:37:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5D0691BF2CA
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 10:37:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 59FD188809
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 10:37:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9LuSMMQp+Gxg for <devel@linuxdriverproject.org>;
 Thu, 29 Aug 2019 10:37:51 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E56B98879C
 for <devel@driverdev.osuosl.org>; Thu, 29 Aug 2019 10:37:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZZ9awTrmHwspxJUBC4pTryA35oCVUvGKerbRnjNApsQ=; b=vDJbpzPth5LsCcTimIYNmCOAx
 9P8D58bdWIRa8Cbv9sybzMwbtGcbIucr5MmCaN8i3tNRUPtRZ3E8T5q/IFWuyKleJzq/Sjiv/VdyJ
 y8UnWm2ppWl48mjgcnnnqTK6h6vcmao5kJukOXJdLX3yXqcqzeysdhYJlVBd4Tx89PpUjIhxM8tNG
 vxw44VH3Lv2ize116mKLnIiMi3bLor8Hvt+PZT9sRv/oSDK0osK4Ai5SZcL3AOj+dpG/pnT9X3QUs
 XW0u59pXRTdm40spaY0NorGhLTNMOesNexRPq1dB1N6SXcTXLW8y2fGELfy9BdUS2x75F1oOxC2op
 aLLKKDg4w==;
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1i3HoL-0003aB-FW; Thu, 29 Aug 2019 10:37:49 +0000
Date: Thu, 29 Aug 2019 03:37:49 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] staging: exfat: add exfat filesystem code to staging
Message-ID: <20190829103749.GA13661@infradead.org>
References: <20190828160817.6250-1-gregkh@linuxfoundation.org>
 <20190828170022.GA7873@kroah.com>
 <20190829062340.GB3047@infradead.org>
 <20190829063955.GA30193@kroah.com>
 <20190829094136.GA28643@infradead.org>
 <20190829095019.GA13557@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190829095019.GA13557@kroah.com>
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
Cc: devel@driverdev.osuosl.org, Sasha Levin <alexander.levin@microsoft.com>,
 Valdis =?utf-8?Q?Kl=C4=93tnieks?= <valdis.kletnieks@vt.edu>,
 linux-kernel@vger.kernel.org, Christoph Hellwig <hch@infradead.org>,
 linux-fsdevel@vger.kernel.org, OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Aug 29, 2019 at 11:50:19AM +0200, Greg Kroah-Hartman wrote:
> I did try just that, a few years ago, and gave up on it.  I don't think
> it can be added to the existing vfat code base but I am willing to be
> proven wrong.

And what exactly was the problem?

> 
> Now that we have the specs, it might be easier, and the vfat spec is a
> subset of the exfat spec, but to get stuff working today, for users,
> it's good to have it in staging.  We can do the normal, "keep it in
> stable, get a clean-room implementation merged like usual, and then
> delete the staging version" three step process like we have done a
> number of times already as well.
> 
> I know the code is horrible, but I will gladly take horrible code into
> staging.  If it bothers you, just please ignore it.  That's what staging
> is there for :)

And then after a while you decide it's been long enough and force move
it out of staging like the POS erofs code?
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

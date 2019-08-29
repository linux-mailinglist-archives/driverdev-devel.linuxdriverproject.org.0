Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CBC6A17FF
	for <lists+driverdev-devel@lfdr.de>; Thu, 29 Aug 2019 13:18:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 98D39872CF;
	Thu, 29 Aug 2019 11:18:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5R9pl-N8vL1b; Thu, 29 Aug 2019 11:18:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 64E7587290;
	Thu, 29 Aug 2019 11:18:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3FEC51BF3CA
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 11:18:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 39D3388519
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 11:18:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AOUshyDrSI8D for <devel@linuxdriverproject.org>;
 Thu, 29 Aug 2019 11:18:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 00B4D88518
 for <devel@driverdev.osuosl.org>; Thu, 29 Aug 2019 11:18:39 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5BE292189D;
 Thu, 29 Aug 2019 11:18:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567077519;
 bh=JQtNUh7qNDLWcxdyjDm3BBzByZeQKwMS+SSkLoxQodM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=yqtbZ88ABfdZ9RN4GuefAC+ALscE6vMxl+0MPD59YrtSAr9Du5eDjuO1E162mutBg
 7q8+OtpqhfroNvAuGOqGE2xjytsVqA6JFYCBJtekwFOfqDsUImnd8GylDlgZcSM4Yl
 YptKdYXQFKDVvuJLdhpL/dStQIy55eTjOUKom9gI=
Date: Thu, 29 Aug 2019 13:18:37 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Gao Xiang <gaoxiang25@huawei.com>
Subject: Re: [PATCH] staging: exfat: add exfat filesystem code to staging
Message-ID: <20190829111837.GB23393@kroah.com>
References: <20190828160817.6250-1-gregkh@linuxfoundation.org>
 <20190828170022.GA7873@kroah.com>
 <20190829062340.GB3047@infradead.org>
 <20190829063955.GA30193@kroah.com>
 <20190829094136.GA28643@infradead.org>
 <20190829095019.GA13557@kroah.com>
 <20190829103749.GA13661@infradead.org>
 <20190829110443.GD64893@architecture4>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190829110443.GD64893@architecture4>
User-Agent: Mutt/1.12.1 (2019-06-15)
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

On Thu, Aug 29, 2019 at 07:04:43PM +0800, Gao Xiang wrote:
> On Thu, Aug 29, 2019 at 03:37:49AM -0700, Christoph Hellwig wrote:
> > On Thu, Aug 29, 2019 at 11:50:19AM +0200, Greg Kroah-Hartman wrote:
> > > I did try just that, a few years ago, and gave up on it.  I don't think
> > > it can be added to the existing vfat code base but I am willing to be
> > > proven wrong.
> > 
> > And what exactly was the problem?
> > 
> > > 
> > > Now that we have the specs, it might be easier, and the vfat spec is a
> > > subset of the exfat spec, but to get stuff working today, for users,
> > > it's good to have it in staging.  We can do the normal, "keep it in
> > > stable, get a clean-room implementation merged like usual, and then
> > > delete the staging version" three step process like we have done a
> > > number of times already as well.
> > > 
> > > I know the code is horrible, but I will gladly take horrible code into
> > > staging.  If it bothers you, just please ignore it.  That's what staging
> > > is there for :)
> > 
> > And then after a while you decide it's been long enough and force move
> > it out of staging like the POS erofs code?
> 
> The problem is that EROFS has been there for a year and
> I sent v1-v8 patches here, You didn't review or reply it
> once until now.
> 
> And I have no idea what is the relationship between EROFS
> and the current exfat implementation.

There isn't any, other than it too is a filesystem that was in the
staging directory :)

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

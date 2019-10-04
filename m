Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 44BC6CBEF7
	for <lists+driverdev-devel@lfdr.de>; Fri,  4 Oct 2019 17:19:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8DFD820516;
	Fri,  4 Oct 2019 15:19:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iOGsUTrqLuH5; Fri,  4 Oct 2019 15:19:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D7892204DE;
	Fri,  4 Oct 2019 15:19:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1278A1BF38E
 for <devel@linuxdriverproject.org>; Fri,  4 Oct 2019 15:19:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0F3C087C0E
 for <devel@linuxdriverproject.org>; Fri,  4 Oct 2019 15:19:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ru+A5OAhsFCw for <devel@linuxdriverproject.org>;
 Fri,  4 Oct 2019 15:19:42 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7669D87C0D
 for <devel@driverdev.osuosl.org>; Fri,  4 Oct 2019 15:19:42 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CEF5B222C2;
 Fri,  4 Oct 2019 15:19:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570202382;
 bh=Pq6hbDsQZxwre7MzFt398+CEXy84MFC3LjumafQCV4M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gCYK3lgUboe3FuKPEs2rc8lxU0t0/iNDy4oVyz2VV094/Q1KyzMTC1aKQReJ3rB8m
 ipkK78pody2hXsi8W0iGDS8g6l/kRI1MFJHYsNnOEoBvPs+vb+cvTa8PhDQFRfK/jC
 Dm5oZ7phqNtUUhFHwPust2e877Z581WnBLC3lb9c=
Date: Fri, 4 Oct 2019 17:19:16 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Benjamin Poirier <benjamin.poirier@gmail.com>
Subject: Re: [PATCH v2 0/17] staging: qlge: Fix rx stall in case of
 allocation failures
Message-ID: <20191004151916.GA776553@kroah.com>
References: <20190927101210.23856-1-bpoirier@suse.com>
 <20191004081931.GA67764@kroah.com> <20191004091545.GA29467@f1>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191004091545.GA29467@f1>
User-Agent: Mutt/1.12.2 (2019-09-21)
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 GR-Linux-NIC-Dev@marvell.com, linux-kernel@vger.kernel.org,
 Manish Chopra <manishc@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Oct 04, 2019 at 06:15:45PM +0900, Benjamin Poirier wrote:
> On 2019/10/04 10:19, Greg Kroah-Hartman wrote:
> > On Fri, Sep 27, 2019 at 07:11:54PM +0900, Benjamin Poirier wrote:
> [...]
> > 
> > As this code got moved to staging with the goal to drop it from the
> > tree, why are you working on fixing it up?  Do you want it moved back
> > out of staging into the "real" part of the tree, or are you just fixing
> > things that you find in order to make it cleaner before we delete it?
> > 
> > confused,
> > 
> 
> I expected one of two possible outcomes after moving the qlge driver to
> staging:
> 1) it gets the attention of people looking for something to work on and
> the driver is improved and submitted for normal inclusion in the future
> 2) it doesn't get enough attention and the driver is removed
> 
> I don't plan to do further work on it and I'm admittedly not holding my
> breath for others to rush in but I already had those patches; it wasn't
> a big effort to submit them as a first step towards outcome #1.
> 
> If #2 is a foregone conclusion, then there's little point in applying
> the patches. The only benefit I can think of that if the complete
> removal is reverted in the future, this specific problem will at least
> be fixed.

That makes more sense, I'll go queue these up now, as I don't want to
waste the work you did on this.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

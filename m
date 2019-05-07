Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84924169C0
	for <lists+driverdev-devel@lfdr.de>; Tue,  7 May 2019 20:01:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 44AB187E6C;
	Tue,  7 May 2019 18:01:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xyTbnZRozgHu; Tue,  7 May 2019 18:01:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id ACAC687E27;
	Tue,  7 May 2019 18:01:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3F4A81BF5A7
 for <devel@linuxdriverproject.org>; Tue,  7 May 2019 18:01:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3C03086DD6
 for <devel@linuxdriverproject.org>; Tue,  7 May 2019 18:01:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2dN2yE0WzqOG for <devel@linuxdriverproject.org>;
 Tue,  7 May 2019 18:01:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BD0D486DAB
 for <devel@linuxdriverproject.org>; Tue,  7 May 2019 18:01:10 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 264082054F;
 Tue,  7 May 2019 18:01:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557252070;
 bh=Mp/HjbvtE5nVEbdDNQk2fWnPDyFLe9Vh/gHeSPClAxc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=I2wTQHoOCno+0CmCUP72wemgA/de0ptsX7TfB92rG91n8Hd6Y+3y4A702t5JzgERK
 kit3ThAS4oAsN3OybS17ah6IF8BrQ5U8mc8qyQv3sDJRF8DmdmTPDcf0UtKq9lNaEq
 Zb/HYe3GXl+YseEPsMCLf5Fqp6VSuV7w20lQ32CA=
Date: Tue, 7 May 2019 20:01:08 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>
Subject: Re: [GIT PULL] Staging/IIO driver patches for 5.2-rc1
Message-ID: <20190507180108.GC11857@kroah.com>
References: <20190507175853.GA11568@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190507175853.GA11568@kroah.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: devel@linuxdriverproject.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, May 07, 2019 at 07:58:53PM +0200, Greg KH wrote:
> The following changes since commit 085b7755808aa11f78ab9377257e1dad2e6fa4bb:
> 
>   Linux 5.1-rc6 (2019-04-21 10:45:57 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git tags/staging-5.2-rc1
> 
> for you to fetch changes up to e2a5be107f52cefb9010ccae6f569c3ddaa954cc:
> 
>   staging: kpc2000: kpc_spi: Fix build error for {read,write}q (2019-05-03 08:23:20 +0200)
> 
> ----------------------------------------------------------------
> Staging / IIO driver patches for 5.2-rc1
> 
> Here is the big staging and iio driver update for 5.2-rc1.
> 
> Lots of tiny fixes all over the staging and IIO driver trees here, along
> with some new IIO drivers.
> 
> Also we ended up deleting two drivers, making this pull request remove a
> few hundred thousand lines of code, always a nice thing to see.  Both of
> the drivers removed have been replaced with "real" drivers in their
> various subsystem directories, and they will be coming to you from those
> locations during this merge window.
> 
> There are some core vt/selection changes in here, that was due to some
> cleanups needed for the speakup fixes.  Those have all been acked by the
> various subsystem maintainers (i.e. me), so those are ok.
> 
> We also added a few new drivers, for some odd hardware, giving new
> developers plenty to work on with basic coding style cleanups to come in
> the near future.
> 
> Other than that, nothing unusual here.
> 
> All of these have been in linux-next for a while with no reported
> issues, other than an odd gcc warning for one of the new drivers that
> should be fixed up soon.
> 
> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

I forgot to mention that the "counter" subsystem was added in here as
well, as it is needed by the IIO drivers and subsystem.  It's reflected
in the shortlog and diffstat, but I forgot to cover it in the text
above, sorry.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

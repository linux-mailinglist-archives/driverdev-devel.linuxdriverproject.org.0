Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDF02211C7C
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Jul 2020 09:15:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 059E38AAEA;
	Thu,  2 Jul 2020 07:15:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YnbSOyC86Lik; Thu,  2 Jul 2020 07:15:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E1D048A625;
	Thu,  2 Jul 2020 07:15:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8E8311BF2B5
 for <devel@linuxdriverproject.org>; Thu,  2 Jul 2020 07:15:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8794E8A246
 for <devel@linuxdriverproject.org>; Thu,  2 Jul 2020 07:15:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rSPvMKw6FPBv for <devel@linuxdriverproject.org>;
 Thu,  2 Jul 2020 07:15:19 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EC9758A196
 for <devel@driverdev.osuosl.org>; Thu,  2 Jul 2020 07:15:19 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 338D120760;
 Thu,  2 Jul 2020 07:15:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1593674119;
 bh=MRCM/Ch9F5pAAhstgP59WNRDrGujJhxiyr5i2ugKjYM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KelG/lKND0yzyu2mmAIIB97kFNJC13BYg7RLG03bhVnBCzGCQRLUfz3bvnNJwKx37
 RQ24yzJ6VFACxbULp4y2VE+T847OclvtGCzmkuPWcnRReRI2YHwZBjZWs367QQ8IcL
 tF0eH5/C8lHvv2LOKGAak8GftACvoTUxYGHWg+fc=
Date: Thu, 2 Jul 2020 09:15:23 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: Re: [PATCH] wilc1000: move wilc driver out of staging
Message-ID: <20200702071523.GB961982@kroah.com>
References: <20200625123712.14156-1-ajay.kathat@microchip.com>
 <875zb6e6zr.fsf@tynnyri.adurom.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <875zb6e6zr.fsf@tynnyri.adurom.net>
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
Cc: devel@driverdev.osuosl.org, Ajay.Kathat@microchip.com,
 Venkateswara.Kaja@microchip.com, linux-wireless@vger.kernel.org,
 Nicolas.Ferre@microchip.com, Sripad.Balwadgi@microchip.com,
 johannes@sipsolutions.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jul 02, 2020 at 10:00:40AM +0300, Kalle Valo wrote:
> <Ajay.Kathat@microchip.com> writes:
> 
> > From: Ajay Singh <ajay.kathat@microchip.com>
> >
> > WILC1000 is an IEEE 802.11 b/g/n IoT link controller module. The
> > WILC1000 connects to Microchip AVR/SMART MCUs, SMART MPUs, and other
> > processors with minimal resource requirements with a simple
> > SPI/SDIO-to-Wi-Fi interface.
> >
> > WILC1000 driver has been part of staging for few years. With
> > contributions from the community, it has improved significantly. Full
> > driver review has helped in achieving the current state.
> > The details for those reviews are captured in 1 & 2.
> >
> > [1]. https://lore.kernel.org/linux-wireless/1537957525-11467-1-git-send-email-ajay.kathat@microchip.com/
> > [2]. https://lore.kernel.org/linux-wireless/1562896697-8002-1-git-send-email-ajay.kathat@microchip.com/
> >
> > Signed-off-by: Ajay Singh <ajay.kathat@microchip.com>
> > ---
> >
> > As suggested, keeping all the changes in single commit with file rename
> > so it's easy to move out of staging [3].
> >
> > Please choose whichever option you prefer between the git mv or patch series
> > sent last Tuesday. The resulting driver is the same as no patch has been
> > queued in between.
> >
> > [3]. https://lore.kernel.org/linux-wireless/20200623110000.31559-1-ajay.kathat@microchip.com/
> 
> As discussed with Greg I created an immutable branch for this and merged
> the branch to wireless-drivers-next:
> 
> 5625f965d764 wilc1000: move wilc driver out of staging
> 
> Greg, here's the location of the immutable branch:
> 
> git://git.kernel.org/pub/scm/linux/kernel/git/kvalo/wireless-drivers-next.git wilc1000-move-out-of-staging

Looks good, I've pulled it into my staging tree as well, but there's
still a TODO file left in drivers/staging/wilc1000, right?

I'll just add a patch to my tree to remove that last file.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2A02211CFF
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Jul 2020 09:30:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 13D3B8AA2E;
	Thu,  2 Jul 2020 07:30:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g7lRdB3cpE5H; Thu,  2 Jul 2020 07:30:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 780848A9DE;
	Thu,  2 Jul 2020 07:30:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C3BCC1BF2B5
 for <devel@linuxdriverproject.org>; Thu,  2 Jul 2020 07:30:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BE6F188DA8
 for <devel@linuxdriverproject.org>; Thu,  2 Jul 2020 07:30:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U0ASbfoOb7XM for <devel@linuxdriverproject.org>;
 Thu,  2 Jul 2020 07:30:00 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 413E888DA5
 for <devel@driverdev.osuosl.org>; Thu,  2 Jul 2020 07:30:00 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 853AC2089D;
 Thu,  2 Jul 2020 07:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1593675000;
 bh=5KpG7Rmmj2kBiuJ1Yme87Hw2VHqvA6xqs+1sx9ftQoc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wHQC0d+CCM/LJMpYfxGoKCynT4fkvYbws9pLSwiDwoLePgAk95lcRjEP54J82jRpe
 SNVOosMJamFaj6xamkTLeL7MwCV8HR6uP3ymQhTNAEFzmaW5XFW8MPKzQXXM6zcrvS
 PNcC73dRyFy48DJuqAmeZzg8ZjmCfiJjUKwYsCGU=
Date: Thu, 2 Jul 2020 09:30:03 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Ajay.Kathat@microchip.com
Subject: Re: [PATCH] wilc1000: move wilc driver out of staging
Message-ID: <20200702073003.GA1073011@kroah.com>
References: <20200625123712.14156-1-ajay.kathat@microchip.com>
 <875zb6e6zr.fsf@tynnyri.adurom.net>
 <20200702071523.GB961982@kroah.com>
 <cb2299ce-c315-1748-b475-8798165d4111@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cb2299ce-c315-1748-b475-8798165d4111@microchip.com>
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
Cc: devel@driverdev.osuosl.org, Venkateswara.Kaja@microchip.com,
 linux-wireless@vger.kernel.org, Nicolas.Ferre@microchip.com,
 Sripad.Balwadgi@microchip.com, johannes@sipsolutions.net, kvalo@codeaurora.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jul 02, 2020 at 07:24:34AM +0000, Ajay.Kathat@microchip.com wrote:
> 
> 
> On 02/07/20 12:45 pm, Greg KH wrote:
> > EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> > 
> > On Thu, Jul 02, 2020 at 10:00:40AM +0300, Kalle Valo wrote:
> >> <Ajay.Kathat@microchip.com> writes:
> >>
> >>> From: Ajay Singh <ajay.kathat@microchip.com>
> >>>
> >>> WILC1000 is an IEEE 802.11 b/g/n IoT link controller module. The
> >>> WILC1000 connects to Microchip AVR/SMART MCUs, SMART MPUs, and other
> >>> processors with minimal resource requirements with a simple
> >>> SPI/SDIO-to-Wi-Fi interface.
> >>>
> >>> WILC1000 driver has been part of staging for few years. With
> >>> contributions from the community, it has improved significantly. Full
> >>> driver review has helped in achieving the current state.
> >>> The details for those reviews are captured in 1 & 2.
> >>>
> >>> [1]. https://lore.kernel.org/linux-wireless/1537957525-11467-1-git-send-email-ajay.kathat@microchip.com/
> >>> [2]. https://lore.kernel.org/linux-wireless/1562896697-8002-1-git-send-email-ajay.kathat@microchip.com/
> >>>
> >>> Signed-off-by: Ajay Singh <ajay.kathat@microchip.com>
> >>> ---
> >>>
> >>> As suggested, keeping all the changes in single commit with file rename
> >>> so it's easy to move out of staging [3].
> >>>
> >>> Please choose whichever option you prefer between the git mv or patch series
> >>> sent last Tuesday. The resulting driver is the same as no patch has been
> >>> queued in between.
> >>>
> >>> [3]. https://lore.kernel.org/linux-wireless/20200623110000.31559-1-ajay.kathat@microchip.com/
> >>
> >> As discussed with Greg I created an immutable branch for this and merged
> >> the branch to wireless-drivers-next:
> >>
> >> 5625f965d764 wilc1000: move wilc driver out of staging
> >>
> >> Greg, here's the location of the immutable branch:
> >>
> >> git://git.kernel.org/pub/scm/linux/kernel/git/kvalo/wireless-drivers-next.git wilc1000-move-out-of-staging
> > 
> > Looks good, I've pulled it into my staging tree as well, but there's
> > still a TODO file left in drivers/staging/wilc1000, right?
> > 
> > I'll just add a patch to my tree to remove that last file.
> > 
> 
> Yes, TODO file needs to be removed after the driver movement.

Now gone from my tree.

> Thanks Greg for all your support to move driver out of staging.

Glad to see it move out, thanks to you all for all of your work!

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

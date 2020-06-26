Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F0EF20B2D3
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Jun 2020 15:46:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4C55A241C8;
	Fri, 26 Jun 2020 13:46:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Xmd+54omP1JS; Fri, 26 Jun 2020 13:46:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E68952474E;
	Fri, 26 Jun 2020 13:46:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6A9261BF306
 for <devel@linuxdriverproject.org>; Fri, 26 Jun 2020 13:46:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6629B241C8
 for <devel@linuxdriverproject.org>; Fri, 26 Jun 2020 13:46:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Mt8DM-inLcpt for <devel@linuxdriverproject.org>;
 Fri, 26 Jun 2020 13:46:15 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 9193D23B44
 for <devel@driverdev.osuosl.org>; Fri, 26 Jun 2020 13:46:15 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D7020207D8;
 Fri, 26 Jun 2020 13:46:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1593179175;
 bh=lXvpjgrXaRMFxrlwi8Jgiz3rcpcrBJD6clWIhgXFK+k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gdoGbd9VsejD7yCyx5NnrN9OKGCi77HCHvyGG8UHXfrB6imW8CVLqc4bJuYyVTL6r
 YQkoCqtNvR3igjefTgYWMQCr5qzgwX3BpxkzD7HbZ2BTPRO9AHP6YsWw8ELe0IdKAJ
 N5KLHtT5A0tmQCk6mDJoJItomYQlEcgvlOgw3OR0=
Date: Fri, 26 Jun 2020 15:46:10 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: Re: [PATCH v7 00/17] wilc1000: move out of staging
Message-ID: <20200626134610.GB4095392@kroah.com>
References: <20200623110000.31559-1-ajay.kathat@microchip.com>
 <87ftaketkw.fsf@tynnyri.adurom.net>
 <20200624091000.GD1731290@kroah.com>
 <87366kztcr.fsf@codeaurora.org>
 <20200624145254.GA1876138@kroah.com>
 <87a70qe6fb.fsf@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87a70qe6fb.fsf@codeaurora.org>
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

On Fri, Jun 26, 2020 at 08:34:48AM +0300, Kalle Valo wrote:
> Greg KH <gregkh@linuxfoundation.org> writes:
> 
> > On Wed, Jun 24, 2020 at 12:49:24PM +0300, Kalle Valo wrote:
> >> Greg KH <gregkh@linuxfoundation.org> writes:
> >> 
> >> > On Wed, Jun 24, 2020 at 11:50:07AM +0300, Kalle Valo wrote:
> >> >> <Ajay.Kathat@microchip.com> writes:
> >> >> 
> >> >> > From: Ajay Singh <ajay.kathat@microchip.com>
> >> >> >
> >> >> > This patch series is to review and move wilc1000 driver out of staging.
> >> >> > Most of the review comments received in [1] & [2] are addressed in the
> >> >> > latest code.
> >> >> > Please review and provide your inputs.
> >> >> >
> >> >> > [1]. https://lore.kernel.org/linux-wireless/1537957525-11467-1-git-send-email-ajay.kathat@microchip.com/
> >> >> > [2]. https://lore.kernel.org/linux-wireless/1562896697-8002-1-git-send-email-ajay.kathat@microchip.com/
> >> >> >
> >> >> > Changes since v6:
> >> >> >  - added Reviewed-by tag received for DT binding document patch earlier.
> >> >> >    * https://lore.kernel.org/linux-wireless/20200405013235.GA24105@bogus
> >> >> >  - merged latest driver and included --base commit as suggested.
> >> >> 
> >> >> Greg, in preparation for moving the driver to drivers/net/wireless can I
> >> >> ask you to not to take wilc1000 patches for the time being? I think that
> >> >> way it would be easier to move the driver between trees if there are no
> >> >> changes after v5.8-rc1. Or is there a better way handle the move?
> >> >
> >> > The best way is for there to be a series of patches that just adds the
> >> > driver to the "real" part of the tree, and when that is merged, let me
> >> > know and I will just delete the driver version in the staging tree.
> >> >
> >> > Does that work for you?
> >> 
> >> It would be fine for me but won't that approach break the build (eg.
> >> allyesconfig) due to two duplicate versions of the same driver in
> >> wireless-drivers-next?
> >
> > For maybe one day, yes, but that's all.
> >
> >> What I was thinking that Ajay would create a patch moving the driver
> >> from drivers/staging/wilc1000 to
> >> drivers/net/wireless/microchip/wilc1000. Using 'git mv' and 'git
> >> format-patch --find-renames' the patch should be really small, mostly
> >> just renames and small changes to Kconfig, Makefile and MAINTAINERS
> >> files. But this of course would require that there are no wilc1000
> >> patches in your tree until you get the driver move commit during the
> >> next merge window, otherwise we would see conflicts between staging-next
> >> and wireless-drivers-next.
> >> 
> >> But I don't have any strong opinions, whatever is easiest for everyone :)
> >
> > It's kind of hard to review patches that do moves, but if you all want
> > to do that, that's fine with me.
> 
> Actually we have been reviewing the driver with full diffs, one file per
> patch style[1], so I think everyone are happy. At least I have not heard
> any complaints.
> 
> And Ajay already submitted that the simple rename patch proposed, thanks
> Ajay!
> 
> https://patchwork.kernel.org/patch/11625025/
> 
> And indeed the patch is simple as it can get. So Greg, if it's ok for
> you I would like to apply that simple patch to wireless-drivers-next.
> 
> > Note, I can't guarantee that I'll not take any wilc1000 patches, I'll
> > probably forget, but git mv will handle all of that just fine.
> 
> Good point. To be on the safe side one option is that if I create a
> topic branch for this simple patch and use v5.8-rc1 as the baseline.
> Then I would pull the topic branch to wireless-drivers-next and you
> could pull it to staging-next. That way you would not have wilc1000 in
> your tree anymore and no accidental submission or commits either :) What
> do you think?

That sounds great, I will be happy to pull such a branch.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

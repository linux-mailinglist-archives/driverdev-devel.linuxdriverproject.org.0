Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A464319564C
	for <lists+driverdev-devel@lfdr.de>; Fri, 27 Mar 2020 12:25:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 42CD1264B4;
	Fri, 27 Mar 2020 11:25:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Zkb8avemWhio; Fri, 27 Mar 2020 11:25:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2F4612634F;
	Fri, 27 Mar 2020 11:25:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CA8181BF371
 for <devel@linuxdriverproject.org>; Fri, 27 Mar 2020 11:25:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C6C222152C
 for <devel@linuxdriverproject.org>; Fri, 27 Mar 2020 11:25:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FAzN9EMqNoQc for <devel@linuxdriverproject.org>;
 Fri, 27 Mar 2020 11:25:15 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 11E6E204D3
 for <devel@driverdev.osuosl.org>; Fri, 27 Mar 2020 11:25:15 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5EDC5206F8;
 Fri, 27 Mar 2020 11:25:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585308314;
 bh=nYLHHHRgW7KyhXgGAfcT0pygfJkAcJNPNdQChIW8IzE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=18dP0C8Mb7gJckrnRxRLPL+nbNHpzhZUFKEJGWDnCbTz27iZ61uQ1UzoML5cqpwjZ
 OnMES3/9QvzfhK6otlnz7npww5X9/VLU5sDKzxloN3NhcbnzffEaCd8pBwM/aSppbp
 q/SogzJO2Od4oA1on+He3NN2cgG9I3jI1cN7hBEc=
Date: Fri, 27 Mar 2020 12:25:11 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: Re: [PATCH v6 00/17] wilc1000: move out of staging
Message-ID: <20200327112511.GA1708276@kroah.com>
References: <20200327063302.20511-1-ajay.kathat@microchip.com>
 <87ftduoxou.fsf@tynnyri.adurom.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87ftduoxou.fsf@tynnyri.adurom.net>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Ajay.Kathat@microchip.com, Venkateswara.Kaja@microchip.com,
 linux-wireless@vger.kernel.org, Nicolas.Ferre@microchip.com,
 Adham.Abozaeid@microchip.com, johannes@sipsolutions.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Mar 27, 2020 at 01:16:01PM +0200, Kalle Valo wrote:
> <Ajay.Kathat@microchip.com> writes:
> 
> > From: Ajay Singh <ajay.kathat@microchip.com>
> >
> > This patch series is to review and move wilc1000 driver out of staging.
> > Most of the review comments received in [1] & [2] are addressed in the
> > latest code. Please review and provide your inputs.
> >
> > [1]. https://lore.kernel.org/linux-wireless/1537957525-11467-1-git-send-email-ajay.kathat@microchip.com/
> > [2]. https://lore.kernel.org/linux-wireless/1562896697-8002-1-git-send-email-ajay.kathat@microchip.com/
> >
> > Changes since v5:
> >  - handle DT binding review comments suggested in below link:
> >   * https://lore.kernel.org/driverdev-devel/20200320175920.GA31641@bogus
> >  - merged latest driver from staging which contains few cleanup patches
> >    and changes to use crc7 from existing library instead of having
> >    private implementation.
> 
> This is already the third version this month, please avoid spamming the
> list unnecessarily. What you can do to speed up the acceptance is to get
> Reviewed-by tags from people, the more I see those the more confident I
> get about the driver. I will also review this again once I find some
> free time, but don't know when that will happen.
> 
> But it would be good to document in the cover letter what commit id are
> you using as the baseline. That way it's easy to review rest of the
> changes Greg has applied separately and you don't need to resend the
> whole driver everytime.

Using the --base= flag in git format-patch is helpful in automating that
:)

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 792AB206FBF
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Jun 2020 11:10:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8314F22658;
	Wed, 24 Jun 2020 09:10:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8UN9MS1vXMAM; Wed, 24 Jun 2020 09:10:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4101022115;
	Wed, 24 Jun 2020 09:10:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9E14E1BF860
 for <devel@linuxdriverproject.org>; Wed, 24 Jun 2020 09:10:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9A22F87F94
 for <devel@linuxdriverproject.org>; Wed, 24 Jun 2020 09:10:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h62v7bt8BKml for <devel@linuxdriverproject.org>;
 Wed, 24 Jun 2020 09:10:02 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 09A49876D5
 for <devel@driverdev.osuosl.org>; Wed, 24 Jun 2020 09:10:02 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2022F206FA;
 Wed, 24 Jun 2020 09:10:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592989801;
 bh=ySZRsnelEtYBE9E+FVEs9L8ikqhoNBjiN1Mye2PDBFw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KPHh0wDlRKWHLWvJ9N6DUZIoTErg8CqXoedkQvXOW8ZlIDETkMb8fbG+JoUX8pXZt
 FlYHnIbPDwI8fuEotnM2Kw0k2P08t2PnVteZVDjaYgODDiSLeJ++nuM6BrPc2MaIEO
 Sz57wwRDereYAmoA8gz3Hz83fHrNZcvg9ozTq4mc=
Date: Wed, 24 Jun 2020 11:10:00 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: Re: [PATCH v7 00/17] wilc1000: move out of staging
Message-ID: <20200624091000.GD1731290@kroah.com>
References: <20200623110000.31559-1-ajay.kathat@microchip.com>
 <87ftaketkw.fsf@tynnyri.adurom.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87ftaketkw.fsf@tynnyri.adurom.net>
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

On Wed, Jun 24, 2020 at 11:50:07AM +0300, Kalle Valo wrote:
> <Ajay.Kathat@microchip.com> writes:
> 
> > From: Ajay Singh <ajay.kathat@microchip.com>
> >
> > This patch series is to review and move wilc1000 driver out of staging.
> > Most of the review comments received in [1] & [2] are addressed in the
> > latest code.
> > Please review and provide your inputs.
> >
> > [1]. https://lore.kernel.org/linux-wireless/1537957525-11467-1-git-send-email-ajay.kathat@microchip.com/
> > [2]. https://lore.kernel.org/linux-wireless/1562896697-8002-1-git-send-email-ajay.kathat@microchip.com/
> >
> > Changes since v6:
> >  - added Reviewed-by tag received for DT binding document patch earlier.
> >    * https://lore.kernel.org/linux-wireless/20200405013235.GA24105@bogus
> >  - merged latest driver and included --base commit as suggested.
> 
> Greg, in preparation for moving the driver to drivers/net/wireless can I
> ask you to not to take wilc1000 patches for the time being? I think that
> way it would be easier to move the driver between trees if there are no
> changes after v5.8-rc1. Or is there a better way handle the move?

The best way is for there to be a series of patches that just adds the
driver to the "real" part of the tree, and when that is merged, let me
know and I will just delete the driver version in the staging tree.

Does that work for you?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

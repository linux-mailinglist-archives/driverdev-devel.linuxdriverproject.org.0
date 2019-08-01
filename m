Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 627807E066
	for <lists+driverdev-devel@lfdr.de>; Thu,  1 Aug 2019 18:42:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 44C7A8506D;
	Thu,  1 Aug 2019 16:42:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ctlLWZN6ik+R; Thu,  1 Aug 2019 16:42:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1FF7C84C23;
	Thu,  1 Aug 2019 16:42:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6E91E1BF39C
 for <devel@linuxdriverproject.org>; Thu,  1 Aug 2019 16:42:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6A77984C23
 for <devel@linuxdriverproject.org>; Thu,  1 Aug 2019 16:42:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eNgIdsr0bFVm for <devel@linuxdriverproject.org>;
 Thu,  1 Aug 2019 16:42:49 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 077FC84BF1
 for <devel@driverdev.osuosl.org>; Thu,  1 Aug 2019 16:42:49 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 62F6520838;
 Thu,  1 Aug 2019 16:42:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564677768;
 bh=0pixw0pD9ci8WXzdw9Uc1tAJ1g+aMpJiBL1yEL6eg8A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UESIWu2nUV5xEV9AuMstaCs71hmlhAD4iK4xYj9T++L24b91pzRYA2zYUC0g8Zsf9
 9SbLpfLw4iSbZTKSwHvN+D4CUl8hp75m/H5KWX8PjRiRb/Tym3tjAfx4lkaDR0eqSh
 AzhchSnog/6EsKNlpSsWNr7KMmYmq7iJj89rJ+uY=
Date: Thu, 1 Aug 2019 18:42:46 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Adham.Abozaeid@microchip.com
Subject: Re: [PATCH] staging: wilc1000: remove unused function
Message-ID: <20190801164246.GA14781@kroah.com>
References: <20190731205546.6647-1-adham.abozaeid@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190731205546.6647-1-adham.abozaeid@microchip.com>
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
Cc: devel@driverdev.osuosl.org, johannes@sipsolutions.net,
 linux-wireless@vger.kernel.org, Ajay.Kathat@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jul 31, 2019 at 09:01:20PM +0000, Adham.Abozaeid@microchip.com wrote:
> From: Adham Abozaeid <adham.abozaeid@microchip.com>
> 
> function wilc_resolve_disconnect_aberration isn't referenced, so
> removing it
> 
> Signed-off-by: Adham Abozaeid <adham.abozaeid@microchip.com>
> ---
>  drivers/staging/wilc1000/wilc_hif.c | 9 ---------
>  drivers/staging/wilc1000/wilc_hif.h | 1 -
>  2 files changed, 10 deletions(-)

When you send multiple patches, with the second one depending on the
first one, always properly number them and send them as a patch series.
Please do that here when you fix up the first one and send both of these
at the same time.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

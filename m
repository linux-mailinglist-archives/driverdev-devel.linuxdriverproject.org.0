Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 351C1321B8C
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Feb 2021 16:35:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2AE218720D;
	Mon, 22 Feb 2021 15:35:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GA-B+bsplgrm; Mon, 22 Feb 2021 15:35:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id ADC17871AE;
	Mon, 22 Feb 2021 15:35:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3DE071BF3FE
 for <devel@linuxdriverproject.org>; Mon, 22 Feb 2021 15:35:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3A7A885F11
 for <devel@linuxdriverproject.org>; Mon, 22 Feb 2021 15:35:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YU2dkannV9kr for <devel@linuxdriverproject.org>;
 Mon, 22 Feb 2021 15:35:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 65CE085F77
 for <devel@driverdev.osuosl.org>; Mon, 22 Feb 2021 15:35:22 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 70774601FE;
 Mon, 22 Feb 2021 15:35:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1614008121;
 bh=ev9CGT5HfRmRrOSpRJ5upqV6cFH+EE9YngPfxF/Mi4w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wHJ6ikHa+7KNhQatQG7n+Knb50UQ2CFRsz9xEVSRigmu8rmtgNWG13A0MP1KQwxGw
 C8+YxHpXSmu3sWFqrpv73qoByEYBHl99n30bWRsITE9pdBGa9Hz/EeEYP44OTx/2so
 EHXoJmNln1KC+0AmkAE5D1tebtfzAnqFPvMs3LCE=
Date: Mon, 22 Feb 2021 16:35:19 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Shreesh Adiga <16567adigashreesh@gmail.com>
Subject: Re: [PATCH 1/2] staging: octeon: refactor interface check logic in
 ethernet.c
Message-ID: <YDPPN3w/vNdP4wgS@kroah.com>
References: <20210221160545.2967003-1-16567adigashreesh@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210221160545.2967003-1-16567adigashreesh@gmail.com>
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Feb 21, 2021 at 09:35:44PM +0530, Shreesh Adiga wrote:
> The check for interface is duplicated in 3 places and has been refactored
> into a function.
> 
> Signed-off-by: Shreesh Adiga <16567adigashreesh@gmail.com>
> ---
>  drivers/staging/octeon/ethernet.c | 18 +++++++++---------
>  1 file changed, 9 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/staging/octeon/ethernet.c b/drivers/staging/octeon/ethernet.c
> index 5dea6e96ec90..af546ef41843 100644
> --- a/drivers/staging/octeon/ethernet.c
> +++ b/drivers/staging/octeon/ethernet.c
> @@ -228,6 +228,12 @@ static struct net_device_stats *cvm_oct_common_get_stats(struct net_device *dev)
>  	return &dev->stats;
>  }
>  
> +static int cvm_oct_validate_interface(int interface)

Shouldn't this return a bool?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

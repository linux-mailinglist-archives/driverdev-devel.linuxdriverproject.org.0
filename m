Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0820313C08C
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Jan 2020 13:19:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1408B2051A;
	Wed, 15 Jan 2020 12:19:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id us5T1v2NeeAK; Wed, 15 Jan 2020 12:19:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5413A2051E;
	Wed, 15 Jan 2020 12:19:39 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D78001BF5A0
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 Jan 2020 12:19:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D19A42051A
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 Jan 2020 12:19:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TOfT-MSopbSU
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 Jan 2020 12:19:32 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 8287B2044F
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 Jan 2020 12:19:32 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AFAA524679;
 Wed, 15 Jan 2020 12:19:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579090772;
 bh=d0eHONX34sawuahmDM7DEf+YCspTGMom/C1T8Trx5TU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gcyw+ZQVecxTUlvx4dHt0tTqQgmeWZ5GA0984boNCCPy2Y0a0WPJA5fKHq3LnJjLs
 OJh2jkfx5+pnInol4Hn1nkophKGhGjYkogikJJmSO2f1i5Ujn/rif3VYi/7InKgiOX
 M+IZvvL1n2ONnwP3w9cw/EzoY3bOa9Yu/f0vzyF4=
Date: Wed, 15 Jan 2020 13:19:29 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Christian Gromm <christian.gromm@microchip.com>
Subject: Re: [PATCH RFC v3 6/9] staging: most: change storage class of struct
 mostcore
Message-ID: <20200115121929.GC3394319@kroah.com>
References: <1579017478-3339-1-git-send-email-christian.gromm@microchip.com>
 <1579017478-3339-7-git-send-email-christian.gromm@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1579017478-3339-7-git-send-email-christian.gromm@microchip.com>
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
Cc: driverdev-devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jan 14, 2020 at 04:57:55PM +0100, Christian Gromm wrote:
> This patch allocated the mostcore structure dynamically and releases
> the memory in the dedicated release function.
> 
> Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
> ---
> v3:
> 	This patch has been added to the series.
> 
>  drivers/staging/most/core.c | 110 ++++++++++++++++++++++++--------------------
>  1 file changed, 59 insertions(+), 51 deletions(-)
> 
> diff --git a/drivers/staging/most/core.c b/drivers/staging/most/core.c
> index 4f60c09..92303d0 100644
> --- a/drivers/staging/most/core.c
> +++ b/drivers/staging/most/core.c
> @@ -33,9 +33,10 @@ static struct mostcore {
>  	struct device_driver drv;
>  	struct bus_type bus;
>  	struct list_head comp_list;
> -} mc;
> +} *mc;

Why do you need one single global variable for all of this?  Shouldn't
there be one per "bus controller" that you have in the system?  No other
driver/bus subsystem has a single global state for everything, why is
this unique?

It's good you are making this dynamic, but I would go further and not
make there be one at all, this state should be per-bus.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

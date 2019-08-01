Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CA4767E062
	for <lists+driverdev-devel@lfdr.de>; Thu,  1 Aug 2019 18:42:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 91E8622BA3;
	Thu,  1 Aug 2019 16:42:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c2Y6AWOGJnfs; Thu,  1 Aug 2019 16:42:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 346AD228BD;
	Thu,  1 Aug 2019 16:42:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1C05B1BF39C
 for <devel@linuxdriverproject.org>; Thu,  1 Aug 2019 16:42:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9126784BF1
 for <devel@linuxdriverproject.org>; Thu,  1 Aug 2019 16:41:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IoVYSLGqR1KX for <devel@linuxdriverproject.org>;
 Thu,  1 Aug 2019 16:41:58 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1B43181D35
 for <devel@driverdev.osuosl.org>; Thu,  1 Aug 2019 16:41:58 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 705DE20838;
 Thu,  1 Aug 2019 16:41:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564677717;
 bh=eknL7DZfqIIEbpkvgdNMFNcQaCK/jHKsF7wcP4BIOds=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UAIqnerPahMJKZjbSHzoUVBG2mp4T4FpNqDN0ezjnGErWygQo8dPbjCRcAXKM4liH
 60YSE+Kn2cL5A9wHGQ/DVP8nGycaujtGZ5NUWTSC0mgYUhrJ5i3ZMRXROjvXtuAbKF
 Gn001hEEfhrKfO4B31HxECK2GO0IS2otXEQGDAhs=
Date: Thu, 1 Aug 2019 18:41:55 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Adham.Abozaeid@microchip.com
Subject: Re: [PATCH] staging: wilc1000: merge drv_handle and operation_mode
 wids
Message-ID: <20190801164155.GA14688@kroah.com>
References: <20190731205245.6590-1-adham.abozaeid@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190731205245.6590-1-adham.abozaeid@microchip.com>
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

On Wed, Jul 31, 2019 at 08:58:19PM +0000, Adham.Abozaeid@microchip.com wrote:
> From: Adham Abozaeid <adham.abozaeid@microchip.com>
> 
> wilc_set_wfi_drv_handler and wilc_set_operation_mode sends the same
> parameters to the FW, so it's better to combine them together.
> 
> Kept wilc_set_wfi_drv_handler implementation since it sends all the
> required parameters, and renamed it to wilc_set_operation_mode to be
> more descriptive.
> 
> Signed-off-by: Adham Abozaeid <adham.abozaeid@microchip.com>
> ---
>  drivers/staging/wilc1000/wilc_hif.c           | 29 ++-----------------
>  drivers/staging/wilc1000/wilc_hif.h           |  5 ++--
>  drivers/staging/wilc1000/wilc_netdev.c        |  6 ++--
>  .../staging/wilc1000/wilc_wfi_cfgoperations.c | 24 +++++++--------
>  drivers/staging/wilc1000/wilc_wlan_if.h       |  3 +-
>  5 files changed, 20 insertions(+), 47 deletions(-)

This patch causes the following build error:
drivers/staging/wilc1000/wilc_hif.c: In function wilc_deinit:
drivers/staging/wilc1000/wilc_hif.c:1610:2: error: implicit declaration of function wilc_set_wfi_drv_handler [-Werror=implicit-function-declaration]
 1610 |  wilc_set_wfi_drv_handler(vif, 0, 0, 0);
      |  ^~~~~~~~~~~~~~~~~~~~~~~~

Always test build your patches...
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

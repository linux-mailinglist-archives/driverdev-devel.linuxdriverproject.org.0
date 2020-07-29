Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E93BF232315
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Jul 2020 19:03:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9A09C24CEB;
	Wed, 29 Jul 2020 17:03:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rD9APk1Js-6d; Wed, 29 Jul 2020 17:03:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3A37B248F6;
	Wed, 29 Jul 2020 17:03:30 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6161E1BF36B
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 29 Jul 2020 17:03:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5E5E48362C
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 29 Jul 2020 17:03:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U1_6D2077267
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 29 Jul 2020 17:03:22 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C670B869F4
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 29 Jul 2020 17:03:22 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 230FF2075F;
 Wed, 29 Jul 2020 17:03:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1596042202;
 bh=tN2gQ5G8WWKqV4dm/+l+pdqvb0TfiJWKgRNP3Mopmg8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YIkR5cSnYDqOH7ytn1cb1C1Ucxw2hxU+NMzZcwlqiG/KKBoVpfd1yFF1ytDgNH+Q4
 p6zUVOfubhNniwAM6sTNBbBNUEJiYgjuKAz24YBkqxqlkXYXYtT/dnBFvPfPe3I2IB
 hQ0MZK74NhbCCNQ//SLF6h1DoaTsc8KntUOT70L4=
Date: Wed, 29 Jul 2020 19:03:13 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Christian Gromm <christian.gromm@microchip.com>
Subject: Re: [PATCH] staging: most: usb: rename most_usb.ko
Message-ID: <20200729170313.GA3668028@kroah.com>
References: <1596040728-3353-1-git-send-email-christian.gromm@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1596040728-3353-1-git-send-email-christian.gromm@microchip.com>
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

On Wed, Jul 29, 2020 at 06:38:48PM +0200, Christian Gromm wrote:
> To avoid a name conflict when adding the usb module to the
> driver's directory in the stable branch, this patch simply
> renames the kernel object.
> 
> Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
> Reported-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> ---
>  drivers/staging/most/usb/{most_usb.ko => most-usb.ko} | Bin
>  1 file changed, 0 insertions(+), 0 deletions(-)
>  rename drivers/staging/most/usb/{most_usb.ko => most-usb.ko} (100%)
> 
> diff --git a/drivers/staging/most/usb/most_usb.ko b/drivers/staging/most/usb/most-usb.ko
> similarity index 100%
> rename from drivers/staging/most/usb/most_usb.ko
> rename to drivers/staging/most/usb/most-usb.ko

You renamed a binary file???  That is not in the source tree?

No, I mean make the patch move the .c file from staging to the
drivers/most directory and adjust the Kconfig/Makefiles for that
movement.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

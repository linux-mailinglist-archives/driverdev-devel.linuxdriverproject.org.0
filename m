Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C1DA312562
	for <lists+driverdev-devel@lfdr.de>; Sun,  7 Feb 2021 16:35:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A5A2086B17;
	Sun,  7 Feb 2021 15:35:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rp+RhOS3tuXJ; Sun,  7 Feb 2021 15:35:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8A18C869AB;
	Sun,  7 Feb 2021 15:35:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 29F4C1BF3ED
 for <devel@linuxdriverproject.org>; Sun,  7 Feb 2021 15:35:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 24B6F8544C
 for <devel@linuxdriverproject.org>; Sun,  7 Feb 2021 15:35:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DHJiB1OqBp96 for <devel@linuxdriverproject.org>;
 Sun,  7 Feb 2021 15:35:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id ABBE58543E
 for <devel@driverdev.osuosl.org>; Sun,  7 Feb 2021 15:35:09 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id B479564E27;
 Sun,  7 Feb 2021 15:35:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1612712109;
 bh=y+pwhFgfAo4wBpP1y6ygycBPpFQjtHzP+ttAAI+Eslo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=T78g36yPRtCo5fdIUlADzAgIqHSa8jaqJDrMXPOTgKiqgaQEGUN1B8sFdqEdC0UgS
 X3mPbZyrQ9+T1M2g9odHxnk8r+F3NxuaoyiNTs0RzxtnpmRw6yPaFcI0zU1pWmGejR
 RR36t48/8CrcOw47MvSuLLdsUGCDM2/VWZ8IVUyM=
Date: Sun, 7 Feb 2021 16:35:06 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Phillip Potter <phil@philpotter.co.uk>
Subject: Re: [PATCH v2] staging: octeon: convert all uses of strlcpy to
 strscpy in ethernet-mdio.c
Message-ID: <YCAIqrpLLBxZh+47@kroah.com>
References: <20210207151320.88696-1-phil@philpotter.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210207151320.88696-1-phil@philpotter.co.uk>
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
Cc: devel@driverdev.osuosl.org, andrew@lunn.ch, linux-kernel@vger.kernel.org,
 chris.packham@alliedtelesis.co.nz, alexander.sverdlin@nokia.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Feb 07, 2021 at 03:13:20PM +0000, Phillip Potter wrote:
> Convert three calls to strlcpy inside the cvm_oct_get_drvinfo function
> to strscpy calls. As return values were not checked for these three
> calls before, change should be safe as functionality is equivalent.
> 
> Signed-off-by: Phillip Potter <phil@philpotter.co.uk>
> ---
> 
> v2: Modified changelog to take account of feedback from Greg KH.
> 
>  drivers/staging/octeon/ethernet-mdio.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/octeon/ethernet-mdio.c b/drivers/staging/octeon/ethernet-mdio.c
> index b0fd083a5bf2..b3049108edc4 100644
> --- a/drivers/staging/octeon/ethernet-mdio.c
> +++ b/drivers/staging/octeon/ethernet-mdio.c
> @@ -21,9 +21,9 @@
>  static void cvm_oct_get_drvinfo(struct net_device *dev,
>  				struct ethtool_drvinfo *info)
>  {
> -	strlcpy(info->driver, KBUILD_MODNAME, sizeof(info->driver));
> -	strlcpy(info->version, UTS_RELEASE, sizeof(info->version));
> -	strlcpy(info->bus_info, "Builtin", sizeof(info->bus_info));
> +	strscpy(info->driver, KBUILD_MODNAME, sizeof(info->driver));
> +	strscpy(info->version, UTS_RELEASE, sizeof(info->version));
> +	strscpy(info->bus_info, "Builtin", sizeof(info->bus_info));
>  }
>  
>  static int cvm_oct_nway_reset(struct net_device *dev)

Sorry, this does not apply to my tree, someone already did this
conversion before you :(

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A291522DFCD
	for <lists+driverdev-devel@lfdr.de>; Sun, 26 Jul 2020 17:02:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7674B20BF9;
	Sun, 26 Jul 2020 15:02:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L-LM2bQ4fAAT; Sun, 26 Jul 2020 15:02:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2DE1420392;
	Sun, 26 Jul 2020 15:02:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 56B4D1BF46D
 for <devel@linuxdriverproject.org>; Sun, 26 Jul 2020 15:02:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 50CA085FA5
 for <devel@linuxdriverproject.org>; Sun, 26 Jul 2020 15:02:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3xty-7DxHm0Q for <devel@linuxdriverproject.org>;
 Sun, 26 Jul 2020 15:02:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C12D385FA3
 for <devel@driverdev.osuosl.org>; Sun, 26 Jul 2020 15:02:47 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 00B0E2065F;
 Sun, 26 Jul 2020 15:02:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1595775767;
 bh=f3y4+0LTpamybnhtv3IjlJLojrpbCyRtRcCbDJsbJck=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FoDzpgFXVa63BwD6myxZjyYjnSp819WnkLpTTmaFPnG9qXuOfZcqlIbbkmIU378l2
 mnpQTke+lH6n2C5eIPSjBhuk5z2TFLZLaWQxo1p2XQUQ66k5fx8CdMEh7S5cvHr/3d
 WSI5KB9gzuFXzoEy7PtKfTJzGRxI7UI9K5OW2krg=
Date: Sun, 26 Jul 2020 17:02:44 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Aditya Jain <aditya.jainadityajain.jain@gmail.com>
Subject: Re: [PATCH v3 3/4] staging: rtl8723bs: include: Further clean up
 function declarations
Message-ID: <20200726150244.GD452766@kroah.com>
References: <20200726141831.2662-1-aditya.jainadityajain.jain@gmail.com>
 <20200726142013.2891-1-aditya.jainadityajain.jain@gmail.com>
 <20200726142013.2891-3-aditya.jainadityajain.jain@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200726142013.2891-3-aditya.jainadityajain.jain@gmail.com>
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
Cc: devel@driverdev.osuosl.org, hdegoede@redhat.com,
 linux-kernel@vger.kernel.org, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Jul 26, 2020 at 07:50:12PM +0530, Aditya Jain wrote:
> Cleaning up messy multiline function declarations in hal_phy_cfg.h
> 
> This patch is a continuation of patch "Clean up function declarations"

This should be merged with that patch, no reason to make it separate.

> 
> Signed-off-by: Aditya Jain <aditya.jainadityajain.jain@gmail.com>
> ---
>  .../staging/rtl8723bs/include/hal_phy_cfg.h   | 56 ++++++-------------
>  1 file changed, 16 insertions(+), 40 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/include/hal_phy_cfg.h b/drivers/staging/rtl8723bs/include/hal_phy_cfg.h
> index 3cec06e9f359..2b059c9c7851 100644
> --- a/drivers/staging/rtl8723bs/include/hal_phy_cfg.h
> +++ b/drivers/staging/rtl8723bs/include/hal_phy_cfg.h
> @@ -46,49 +46,25 @@ s32 PHY_MACConfig8723B(struct adapter *padapter);
>  void PHY_SetTxPowerIndex(struct adapter *Adapter, u32 PowerIndex,
>  			 u8 RFPath, u8 Rate);
>  
> -u8
> -PHY_GetTxPowerIndex(
> -struct adapter *padapter,
> -u8 			RFPath,
> -u8 			Rate,
> -enum CHANNEL_WIDTH		BandWidth,
> -u8 			Channel
> -	);
> -
> -void
> -PHY_GetTxPowerLevel8723B(
> -struct adapter *Adapter,
> -	s32 *powerlevel
> -	);
> -
> -void
> -PHY_SetTxPowerLevel8723B(
> -struct adapter *Adapter,
> -u8 	channel
> -	);
> -
> -void
> -PHY_SetBWMode8723B(
> -struct adapter *Adapter,
> -enum CHANNEL_WIDTH			Bandwidth,	/*  20M or 40M */
> -unsigned char 			Offset		/*  Upper, Lower, or Don't care */
> -);
> +u8 PHY_GetTxPowerIndex(struct adapter *padapter, u8 RFPath, u8 Rate,
> +			enum CHANNEL_WIDTH BandWidth, u8 Channel);
> +
> +void PHY_GetTxPowerLevel8723B(struct adapter *Adapter, s32 *powerlevel);
> +
> +void PHY_SetTxPowerLevel8723B(struct adapter *Adapter, u8 channel);
>  
> -void
> -PHY_SwChnl8723B(/*  Call after initialization */
> -struct adapter *Adapter,
> -u8 channel
> -	);
> -
> -void
> -PHY_SetSwChnlBWMode8723B(
> -struct adapter *Adapter,
> -u8 			channel,
> -enum CHANNEL_WIDTH		Bandwidth,
> -u8 			Offset40,
> -u8 			Offset80
> +void PHY_SetBWMode8723B(struct adapter *Adapter,
> +			enum CHANNEL_WIDTH Bandwidth,	/*  20M or 40M */
> +			unsigned char Offset	/*  Upper, Lower, or Don't care */

Those comments should go at the top of the function declaration, in
kernel doc format.

thanks

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

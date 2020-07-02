Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DD6DA211BEB
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Jul 2020 08:22:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BA9D62631D;
	Thu,  2 Jul 2020 06:22:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eWdvDPAYR3Fb; Thu,  2 Jul 2020 06:22:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2419026316;
	Thu,  2 Jul 2020 06:22:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8E5151BF5F5
 for <devel@linuxdriverproject.org>; Thu,  2 Jul 2020 06:22:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 08C3025028
 for <devel@linuxdriverproject.org>; Thu,  2 Jul 2020 06:22:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SY6H-mRIaaJr for <devel@linuxdriverproject.org>;
 Thu,  2 Jul 2020 06:22:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 689D125014
 for <devel@driverdev.osuosl.org>; Thu,  2 Jul 2020 06:22:40 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9E4E6208FE;
 Thu,  2 Jul 2020 06:22:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1593670960;
 bh=qUQS9WYY2oyPoyjWnwNnXzFofBRbxf66JWC23zR+dmg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=eD3QrVuRFDGGm+yneWPwxxH3MDozAE/nJv3qw1VtkUU4u1TFVfHL6nKN8bh3AFjZl
 HvxdAyLmRcyg69neowIqz7aPtdSKdO0/V3g8josGClm/nT5ueqPrM5O0s3ctiX/VIu
 3KZC5qesHo1FikB0Z2VT+rMdufrMDcRnp7gYx7Ik=
Date: Thu, 2 Jul 2020 08:19:42 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: B K Karthik <bkkarthik@pesu.pes.edu>
Subject: Re: [PATCH] staging: rtl8188eu: include: rtw_cmd.h: fixed a blank
 space coding style issue.
Message-ID: <20200702061942.GA935451@kroah.com>
References: <20200702045004.5wp7fnzw5pg4yov5@pesu-pes-edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200702045004.5wp7fnzw5pg4yov5@pesu-pes-edu>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jul 02, 2020 at 12:50:04AM -0400, B K Karthik wrote:
> add blank spaces for improved code readability.
> 
> Signed-off-by: B K Karthik <karthik.bk2000@live.com>
> ---
>  drivers/staging/rtl8188eu/include/rtw_cmd.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/rtl8188eu/include/rtw_cmd.h b/drivers/staging/rtl8188eu/include/rtw_cmd.h
> index fa5e212fc9e0..002a797c6d0a 100644
> --- a/drivers/staging/rtl8188eu/include/rtw_cmd.h
> +++ b/drivers/staging/rtl8188eu/include/rtw_cmd.h
> @@ -115,7 +115,7 @@ struct	setopmode_parm {
>   */
> 
>  #define RTW_SSID_SCAN_AMOUNT 9 /*  for WEXT_CSCAN_AMOUNT 9 */
> -#define RTW_CHANNEL_SCAN_AMOUNT (14+37)
> +#define RTW_CHANNEL_SCAN_AMOUNT (14 + 37)
>  struct sitesurvey_parm {
>  	int scan_mode;	/* active: 1, passive: 0 */
>  	u8 ssid_num;

You sent 8 patches, some of them duplicates (I think), with no sense of
what order to apply these in.

Please resend them all as a patch series, properly numbered, so that I
have a chance to figure this out, I have dropped all of your patches
from my review queue.

thanks,

greg k-h

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

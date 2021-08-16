Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 94ED93EDDC0
	for <lists+driverdev-devel@lfdr.de>; Mon, 16 Aug 2021 21:18:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AB14483579;
	Mon, 16 Aug 2021 19:18:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hYDvrO6NgCKo; Mon, 16 Aug 2021 19:18:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C53CB8350A;
	Mon, 16 Aug 2021 19:18:26 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3D0B91BF3DC
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 16 Aug 2021 19:18:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2CCDD83508
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 16 Aug 2021 19:18:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uLZoIc5s3r84
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 16 Aug 2021 19:18:12 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D668B83530
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 16 Aug 2021 19:18:12 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id E1D8760F4B;
 Mon, 16 Aug 2021 19:18:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1629141492;
 bh=jAE9abmJ700Mk5ZUdqDCscF9tLfArjXKP9Jel24DQik=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=GqKmnIX8GDRtAPJlLRq8J76K6UYBkG4ZO8osAZdVkCYxXR3fXT2MUS7kvTJhLgxl5
 Bpz5++PI/MnuHpTvBqyTpWIFWr8lZc+w1Z6wCIe4ITzBmbNPXt53xS0Q5YFSoKzd5P
 zw+fKDBW/OWLKSs/bZL/kKTuIyXqRal6iVrkoDZk=
Date: Mon, 16 Aug 2021 21:18:10 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Leon Krieg <info@madcow.dev>
Subject: Re: [PATCH] staging/ks7010: Fix coding style problems [Version 2]
Message-ID: <YRq58ppe6obZsNbN@kroah.com>
References: <20210816180447.GA17851@mad-cln-mothership-1.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210816180447.GA17851@mad-cln-mothership-1.local>
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

On Mon, Aug 16, 2021 at 08:04:47PM +0200, Leon Krieg wrote:
> By doing some last-second wording changes directly in the diff I've
> screwed up and managed to use spaces instead of tabs for the Kconfig file.
> This is embarrassing!
> 
> Signed-off-by: Leon Krieg <info@madcow.dev>
> ---
>  drivers/staging/ks7010/Kconfig       |  7 ++++---
>  drivers/staging/ks7010/ks_hostif.c   |  2 +-
>  drivers/staging/ks7010/ks_wlan_net.c | 20 ++++++++++----------
>  3 files changed, 15 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/staging/ks7010/Kconfig b/drivers/staging/ks7010/Kconfig
> index 0987fdc2f70d..4bc17e50ac89 100644
> --- a/drivers/staging/ks7010/Kconfig
> +++ b/drivers/staging/ks7010/Kconfig
> @@ -6,6 +6,7 @@ config KS7010
>  	select WEXT_PRIV
>  	select FW_LOADER
>  	help
> -	  This is a driver for KeyStream KS7010 based SDIO WIFI cards. It is
> -	  found on at least later Spectec SDW-821 (FCC-ID "S2Y-WLAN-11G-K" only,
> -	  sadly not FCC-ID "S2Y-WLAN-11B-G") and Spectec SDW-823 microSD cards.
> +	  Selecting this option enables the driver for KeyStream KS7010 SDIO
> +	  hardware found in at least Spectec SDW-821 and SDW-823 microSD cards
> +	  (FCC-ID "S2Y-WLAN-11G-K" but not FCC-ID "S2Y-WLAN-11B-G" and Spectec
> +	  SDW-823).
> 
> diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
> index eaa70893224a..d2f9d0ed62c1 100644
> --- a/drivers/staging/ks7010/ks_hostif.c
> +++ b/drivers/staging/ks7010/ks_hostif.c
> @@ -134,7 +134,7 @@ int get_current_ap(struct ks_wlan_private *priv, struct link_ap_info *ap_info)
>  	size = (ap_info->rsn.size <= RSN_IE_BODY_MAX) ?
>  		ap_info->rsn.size : RSN_IE_BODY_MAX;
>  	if ((ap_info->rsn_mode & RSN_MODE_WPA2) &&
> -	    (priv->wpa.version == IW_AUTH_WPA_VERSION_WPA2)) {
> +	    priv->wpa.version == IW_AUTH_WPA_VERSION_WPA2) {
>  		ap->rsn_ie.id = RSN_INFO_ELEM_ID;
>  		ap->rsn_ie.size = size;
>  		memcpy(ap->rsn_ie.body, ap_info->rsn.body, size);
> diff --git a/drivers/staging/ks7010/ks_wlan_net.c b/drivers/staging/ks7010/ks_wlan_net.c
> index 09e7b4cd0138..33abb6a7dbe0 100644
> --- a/drivers/staging/ks7010/ks_wlan_net.c
> +++ b/drivers/staging/ks7010/ks_wlan_net.c
> @@ -181,26 +181,26 @@ static int ks_wlan_set_freq(struct net_device *dev,
>  
>  	/* for SLEEP MODE */
>  	/* If setting by frequency, convert to a channel */
> -	if ((fwrq->freq.e == 1) &&
> -	    (fwrq->freq.m >= 241200000) && (fwrq->freq.m <= 248700000)) {
> +	if (fwrq->freq.e == 1 &&
> +	    fwrq->freq.m >= 241200000 && fwrq->freq.m <= 248700000) {
>  		int f = fwrq->freq.m / 100000;
>  		int c = 0;
>  
>  		while ((c < 14) && (f != frequency_list[c]))
>  			c++;
> -		/* Hack to fall through... */
> +		fallthrough;
>  		fwrq->freq.e = 0;
>  		fwrq->freq.m = c + 1;
>  	}
>  	/* Setting by channel number */
> -	if ((fwrq->freq.m > 1000) || (fwrq->freq.e > 0))
> +	if (fwrq->freq.m > 1000 || fwrq->freq.e > 0)
>  		return -EOPNOTSUPP;
>  
>  	channel = fwrq->freq.m;
>  	/* We should do a better check than that,
>  	 * based on the card capability !!!
>  	 */
> -	if ((channel < 1) || (channel > 14)) {
> +	if (channel < 1 || channel > 14) {
>  		netdev_dbg(dev, "%s: New channel value of %d is invalid!\n",
>  			   dev->name, fwrq->freq.m);
>  		return -EINVAL;
> @@ -664,7 +664,7 @@ static int ks_wlan_set_rts(struct net_device *dev, struct iw_request_info *info,
>  	/* for SLEEP MODE */
>  	if (vwrq->rts.disabled)
>  		rthr = 2347;
> -	if ((rthr < 0) || (rthr > 2347))
> +	if (rthr < 0 || rthr > 2347)
>  		return -EINVAL;
>  
>  	priv->reg.rts = rthr;
> @@ -702,7 +702,7 @@ static int ks_wlan_set_frag(struct net_device *dev,
>  	/* for SLEEP MODE */
>  	if (vwrq->frag.disabled)
>  		fthr = 2346;
> -	if ((fthr < 256) || (fthr > 2346))
> +	if (fthr < 256 || fthr > 2346)
>  		return -EINVAL;
>  
>  	fthr &= ~0x1;	/* Get an even value - is it really needed ??? */
> @@ -781,7 +781,7 @@ static int ks_wlan_set_encode(struct net_device *dev,
>  		return -EINVAL;
>  
>  	/* for SLEEP MODE */
> -	if ((index < 0) || (index > 4))
> +	if (index < 0 || index > 4)
>  		return -EINVAL;
>  
>  	index = (index == 0) ? priv->reg.wep_index : (index - 1);
> @@ -882,7 +882,7 @@ static int ks_wlan_get_encode(struct net_device *dev,
>  	}
>  
>  	/* Which key do we want ? -1 -> tx index */
> -	if ((index < 0) || (index >= 4))
> +	if (index < 0 || index >= 4)
>  		index = priv->reg.wep_index;
>  	if (priv->reg.privacy_invoked) {
>  		enc->flags &= ~IW_ENCODE_DISABLED;
> @@ -1860,7 +1860,7 @@ static int ks_wlan_set_power_mgmt(struct net_device *dev,
>  		return -EINVAL;
>  
>  	if ((*uwrq == POWER_MGMT_SAVE1 || *uwrq == POWER_MGMT_SAVE2) &&
> -	    (priv->reg.operation_mode != MODE_INFRASTRUCTURE))
> +	    priv->reg.operation_mode != MODE_INFRASTRUCTURE)
>  		return -EINVAL;
>  
>  	priv->reg.power_mgmt = *uwrq;
> -- 
> 2.27.0
> 
> _______________________________________________
> devel mailing list
> devel@linuxdriverproject.org
> http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Hi,

This is the friendly patch-bot of Greg Kroah-Hartman.  You have sent him
a patch that has triggered this response.  He used to manually respond
to these common problems, but in order to save his sanity (he kept
writing the same thing over and over, yet to different people), I was
created.  Hopefully you will not take offence and will fix the problem
in your patch and resubmit it so that it can be accepted into the Linux
kernel tree.

You are receiving this message because of the following common error(s)
as indicated below:

- This looks like a new version of a previously submitted patch, but you
  did not list below the --- line any changes from the previous version.
  Please read the section entitled "The canonical patch format" in the
  kernel file, Documentation/SubmittingPatches for what needs to be done
  here to properly describe this.

If you wish to discuss this problem further, or you have questions about
how to resolve this issue, please feel free to respond to this email and
Greg will reply once he has dug out from the pending patches received
from other developers.

thanks,

greg k-h's patch email bot
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

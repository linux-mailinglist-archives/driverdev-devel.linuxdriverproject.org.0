Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DD79316C09
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Feb 2021 18:04:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1E2E586C04;
	Wed, 10 Feb 2021 17:04:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ro29AHtEDziT; Wed, 10 Feb 2021 17:04:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7B51286B6D;
	Wed, 10 Feb 2021 17:04:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C07491BF860
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 17:04:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BD2AE872AF
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 17:04:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VXeiPMSnxEZU for <devel@linuxdriverproject.org>;
 Wed, 10 Feb 2021 17:04:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6C82E87459
 for <devel@driverdev.osuosl.org>; Wed, 10 Feb 2021 17:04:43 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 731B964E77;
 Wed, 10 Feb 2021 17:04:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1612976683;
 bh=sqLJQB5qbe+Y6SsNKWJZfY3Q/pijUWUYYHnOJleb87w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=iG/pvFPdebDEDllFMOFF+Q5Dp3h6Gp7rdgI0bAPYUH85T0luSDpSjnYJd7rj6ubZD
 ezL2ibq3AkKQQ7sjiaQ+3UhrysAPU+KzcBYH4UndpsSPUyK3fQQbXDRiTKy/y6PFRY
 ofL7t37ZUrJfpOazOKv2IJlx/pMRAG8O9x9Qwp3s=
Date: Wed, 10 Feb 2021 18:04:40 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Mairo Paul Rufus <akoudanilo@gmail.com>
Subject: Re: [PATCH] staging: wlan-ng: Fix comments typos
Message-ID: <YCQSKNYU7zhcKHHl@kroah.com>
References: <20210210145952.722586-1-akoudanilo@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210210145952.722586-1-akoudanilo@gmail.com>
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
Cc: devel@driverdev.osuosl.org, trivial@kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Feb 10, 2021 at 03:59:52PM +0100, Mairo Paul Rufus wrote:
> Signed-off-by: Mairo Paul Rufus <akoudanilo@gmail.com>
> ---
>  drivers/staging/wlan-ng/p80211netdev.c | 2 +-
>  drivers/staging/wlan-ng/prism2mib.c    | 2 +-
>  drivers/staging/wlan-ng/prism2sta.c    | 4 ++--
>  3 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/wlan-ng/p80211netdev.c b/drivers/staging/wlan-ng/p80211netdev.c
> index 7b091c5a2984..4a6813e89916 100644
> --- a/drivers/staging/wlan-ng/p80211netdev.c
> +++ b/drivers/staging/wlan-ng/p80211netdev.c
> @@ -274,7 +274,7 @@ static void p80211netdev_rx_bh(unsigned long arg)
>  	struct sk_buff *skb = NULL;
>  	struct net_device *dev = wlandev->netdev;
>  
> -	/* Let's empty our our queue */
> +	/* Let's empty our queue */
>  	while ((skb = skb_dequeue(&wlandev->nsd_rxq))) {
>  		if (wlandev->state == WLAN_DEVICE_OPEN) {
>  			if (dev->type != ARPHRD_ETHER) {
> diff --git a/drivers/staging/wlan-ng/prism2mib.c b/drivers/staging/wlan-ng/prism2mib.c
> index 7d7d77b04255..875812a391c9 100644
> --- a/drivers/staging/wlan-ng/prism2mib.c
> +++ b/drivers/staging/wlan-ng/prism2mib.c
> @@ -292,7 +292,7 @@ int prism2mgmt_mibset_mibget(struct wlandevice *wlandev, void *msgp)
>  	/*
>  	 ** Determine if this is a "mibget" or a "mibset".  If this is a
>  	 ** "mibget", then make sure that the MIB may be read.  Otherwise,
> -	 ** this is a "mibset" so make make sure that the MIB may be written.
> +	 ** this is a "mibset" so make sure that the MIB may be written.
>  	 */
>  
>  	isget = (msg->msgcode == DIDMSG_DOT11REQ_MIBGET);
> diff --git a/drivers/staging/wlan-ng/prism2sta.c b/drivers/staging/wlan-ng/prism2sta.c
> index 8f25496188aa..e6dcb687e7a1 100644
> --- a/drivers/staging/wlan-ng/prism2sta.c
> +++ b/drivers/staging/wlan-ng/prism2sta.c
> @@ -461,7 +461,7 @@ u32 prism2sta_ifstate(struct wlandevice *wlandev, u32 ifstate)
>  		case WLAN_MSD_FWLOAD:
>  			wlandev->msdstate = WLAN_MSD_RUNNING_PENDING;
>  			/* Initialize the device+driver for full
> -			 * operation. Note that this might me an FWLOAD to
> +			 * operation. Note that this might me an FWLOAD
>  			 * to RUNNING transition so we must not do a chip
>  			 * or board level reset.  Note that on failure,
>  			 * the MSD state is set to HWPRESENT because we
> @@ -1352,7 +1352,7 @@ void prism2sta_processing_defer(struct work_struct *data)
>  		 * we get back in range.  We should block transmits and
>  		 * receives in this state.  Do we need an indication here?
>  		 * Probably not since a polling user-mode element would
> -		 * get this status from from p2PortStatus(FD40). What about
> +		 * get this status from p2PortStatus(FD40). What about
>  		 * p80211?
>  		 * Response:
>  		 * Block Transmits, Ignore receives of data frames
> -- 
> 2.26.2

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

- You did not specify a description of why the patch is needed, or
  possibly, any description at all, in the email body.  Please read the
  section entitled "The canonical patch format" in the kernel file,
  Documentation/SubmittingPatches for what is needed in order to
  properly describe the change.

- You did not write a descriptive Subject: for the patch, allowing Greg,
  and everyone else, to know what this patch is all about.  Please read
  the section entitled "The canonical patch format" in the kernel file,
  Documentation/SubmittingPatches for what a proper Subject: line should
  look like.

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

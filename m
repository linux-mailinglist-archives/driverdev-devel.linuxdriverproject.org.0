Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E2C63B87A
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Jun 2019 17:48:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8D2A7855D1;
	Mon, 10 Jun 2019 15:48:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ADj5Ez7inxkl; Mon, 10 Jun 2019 15:48:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9D345855C6;
	Mon, 10 Jun 2019 15:48:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 64EBF1BF399
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 15:48:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 61AE3855C6
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 15:48:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o3FtDG5A24kE for <devel@linuxdriverproject.org>;
 Mon, 10 Jun 2019 15:48:04 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DA3A88558A
 for <devel@driverdev.osuosl.org>; Mon, 10 Jun 2019 15:48:04 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 39B3420859;
 Mon, 10 Jun 2019 15:48:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560181684;
 bh=s/LAKmlHEH3zUNukB0yjQTETxfcFC8gag3lro9BlcFw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gFGhGAj1S/a5vI1H1ndGakbD6DIjcERFGWfnPUIanOba4OK4VTRZPO+BfgsCCdGOW
 ShymN1csSlnb787DHwuTvUWQIDGn3P2bsmRsPbpzpHLige+gygX/hFNlRXbKaIMG7Z
 mxtXJHYwQ+XRGVmXE862+CMffmHoprAMc9niXEKY=
Date: Mon, 10 Jun 2019 17:48:02 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Merwin Trever Ferrao <merwintf@gmail.com>
Subject: Re: [PATCH 16/16] Staging: wlan-ng: cfg80211: fixed alignment issue
 with open parenthesis line ending with (
Message-ID: <20190610154802.GA29035@kroah.com>
References: <20190610103825.19364-1-merwintf@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190610103825.19364-1-merwintf@gmail.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Jun 10, 2019 at 04:08:25PM +0530, Merwin Trever Ferrao wrote:
> From: Merwin Trever Ferrao <Merwintf@gmail.com>
> 
> Fixed a coding style issue.
> 
> Signed-off-by: Merwin Trever Ferrao <merwintf@gmail.com>
> ---
>  drivers/staging/wlan-ng/cfg80211.c | 32 ++++++++++++++----------------
>  1 file changed, 15 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/staging/wlan-ng/cfg80211.c b/drivers/staging/wlan-ng/cfg80211.c
> index eee1998c4b18..5424e2682911 100644
> --- a/drivers/staging/wlan-ng/cfg80211.c
> +++ b/drivers/staging/wlan-ng/cfg80211.c
> @@ -324,8 +324,7 @@ static int prism2_scan(struct wiphy *wiphy,
>  		(i < request->n_channels) && i < ARRAY_SIZE(prism2_channels);
>  		i++)
>  		msg1.channellist.data.data[i] =
> -			ieee80211_frequency_to_channel(
> -				request->channels[i]->center_freq);
> +			ieee80211_frequency_to_channel(request->channels[i]->center_freq);

And now you violate the other coding style rule of too long lines :(

You can just keep sending patches fixing this back and forth, if you
want a never-ending set of patches to be applied, but we don't really
like that.

So the code is ok as-is.

>  	msg1.channellist.data.len = request->n_channels;
>  
>  	msg1.maxchanneltime.data = 250;
> @@ -359,15 +358,15 @@ static int prism2_scan(struct wiphy *wiphy,
>  		freq = ieee80211_channel_to_frequency(msg2.dschannel.data,
>  						      NL80211_BAND_2GHZ);
>  		bss = cfg80211_inform_bss(wiphy,
> -			ieee80211_get_channel(wiphy, freq),
> -			CFG80211_BSS_FTYPE_UNKNOWN,
> -			(const u8 *)&msg2.bssid.data.data,
> -			msg2.timestamp.data, msg2.capinfo.data,
> -			msg2.beaconperiod.data,
> -			ie_buf,
> -			ie_len,
> -			(msg2.signal.data - 65536) * 100, /* Conversion to signed type */
> -			GFP_KERNEL
> +					  ieee80211_get_channel(wiphy, freq),
> +					  CFG80211_BSS_FTYPE_UNKNOWN,
> +					  (const u8 *)&msg2.bssid.data.data,
> +					  msg2.timestamp.data, msg2.capinfo.data,
> +					  msg2.beaconperiod.data,
> +					  ie_buf,
> +					  ie_len,
> +					  (msg2.signal.data - 65536) * 100, /* Conversion to signed type */
> +					  GFP_KERNEL
>  		);

Why is this final ); way over here?

>  
>  		if (!bss) {
> @@ -475,14 +474,13 @@ static int prism2_connect(struct wiphy *wiphy, struct net_device *dev,
>  			}
>  
>  			result = prism2_domibset_uint32(wlandev,
> -				DIDMIB_DOT11SMT_PRIVACYTABLE_WEPDEFAULTKEYID,
> -				sme->key_idx);
> +							DIDMIB_DOT11SMT_PRIVACYTABLE_WEPDEFAULTKEYID,
> +							sme->key_idx);
>  			if (result)
>  				goto exit;
>  
>  			/* send key to driver */
> -			did = didmib_dot11smt_wepdefaultkeystable_key(
> -					sme->key_idx + 1);
> +			did = didmib_dot11smt_wepdefaultkeystable_key(sme->key_idx + 1);

Too long of a line.

Remember, checkpatch is just a "hint", you still have to use your brain
when looking at the output of it.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id EF2EB334218
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Mar 2021 16:52:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4D0786F4A6;
	Wed, 10 Mar 2021 15:52:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Utlyn5en7ZQG; Wed, 10 Mar 2021 15:52:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 51A676F49E;
	Wed, 10 Mar 2021 15:52:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 00AD81BF873
 for <devel@linuxdriverproject.org>; Wed, 10 Mar 2021 15:51:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DF40B6F49E
 for <devel@linuxdriverproject.org>; Wed, 10 Mar 2021 15:51:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Hj8vbICpKY2f for <devel@linuxdriverproject.org>;
 Wed, 10 Mar 2021 15:51:49 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 564306F48C
 for <devel@driverdev.osuosl.org>; Wed, 10 Mar 2021 15:51:49 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7D79164E86;
 Wed, 10 Mar 2021 15:51:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1615391507;
 bh=cx2k3zIevdtlZosOIu0f6rmjRxaYgbMOD0ua7N3lBQg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JuPixlUojewCJxizHFgv508Mf/dCoggWsL9Rd9zsfbnmVi3fCQSMse04AwoRkPsDE
 u0Oc22drHPorD2NLTpowMmAPsK/D2lodUeDhvJ9qlgObXQXNQqTWKwKtJEt9eKz3/o
 ciFn+92WIh81f3kHgIpyfn3yLEUrcvyBtOvZSaMc=
Date: Wed, 10 Mar 2021 16:51:44 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Fabio Aiuto <fabioaiuto83@gmail.com>
Subject: Re: [PATCH] staging: rtl8723bs: align comments
Message-ID: <YEjrEErDZTH47gto@kroah.com>
References: <20210310153717.GA5741@agape.jhs>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210310153717.GA5741@agape.jhs>
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

On Wed, Mar 10, 2021 at 04:37:21PM +0100, Fabio Aiuto wrote:
> fix the following checkpatch warnings:
> 
> WARNING: Block comments use * on subsequent lines
> +	/*
> +		AMPDU_para [1:0]:Max AMPDU Len => 0:8k , 1:16k, 2:32k, 3:64k
> --
> WARNING: Block comments use * on subsequent lines
> +/*
> +op_mode
> 
> Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
> ---
>  drivers/staging/rtl8723bs/core/rtw_ap.c | 28 ++++++++++++-------------
>  1 file changed, 14 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/core/rtw_ap.c b/drivers/staging/rtl8723bs/core/rtw_ap.c
> index b6f944b37b08..3a0e4f64466a 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_ap.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_ap.c
> @@ -721,9 +721,9 @@ static void update_hw_ht_param(struct adapter *padapter)
>  
>  	/* handle A-MPDU parameter field */
>  	/*
> -		AMPDU_para [1:0]:Max AMPDU Len => 0:8k , 1:16k, 2:32k, 3:64k
> -		AMPDU_para [4:2]:Min MPDU Start Spacing
> -	*/
> +	 *	AMPDU_para [1:0]:Max AMPDU Len => 0:8k , 1:16k, 2:32k, 3:64k
> +	 *	AMPDU_para [4:2]:Min MPDU Start Spacing
> +	 */
>  	max_AMPDU_len = pmlmeinfo->HT_caps.u.HT_cap_element.AMPDU_para & 0x03;
>  
>  	min_MPDU_spacing = (
> @@ -1815,17 +1815,17 @@ void update_beacon(struct adapter *padapter, u8 ie_id, u8 *oui, u8 tx)
>  }
>  
>  /*
> -op_mode
> -Set to 0 (HT pure) under the following conditions
> -	- all STAs in the BSS are 20/40 MHz HT in 20/40 MHz BSS or
> -	- all STAs in the BSS are 20 MHz HT in 20 MHz BSS
> -Set to 1 (HT non-member protection) if there may be non-HT STAs
> -	in both the primary and the secondary channel
> -Set to 2 if only HT STAs are associated in BSS,
> -	however and at least one 20 MHz HT STA is associated
> -Set to 3 (HT mixed mode) when one or more non-HT STAs are associated
> -	(currently non-GF HT station is considered as non-HT STA also)
> -*/
> + *op_mode
> + *Set to 0 (HT pure) under the following conditions
> + *	 - all STAs in the BSS are 20/40 MHz HT in 20/40 MHz BSS or
> + *	 - all STAs in the BSS are 20 MHz HT in 20 MHz BSS
> + *Set to 1 (HT non-member protection) if there may be non-HT STAs
> + *	 in both the primary and the secondary channel
> + *Set to 2 if only HT STAs are associated in BSS,
> + *	 however and at least one 20 MHz HT STA is associated
> + *Set to 3 (HT mixed mode) when one or more non-HT STAs are associated
> + *	 (currently non-GF HT station is considered as non-HT STA also)
> + */

Add a space after the ' ' to make it look correct please.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

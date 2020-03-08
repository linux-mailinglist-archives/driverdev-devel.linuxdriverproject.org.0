Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DC8217D5DB
	for <lists+driverdev-devel@lfdr.de>; Sun,  8 Mar 2020 20:32:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5322B20518;
	Sun,  8 Mar 2020 19:32:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N0CR9T7v+4dt; Sun,  8 Mar 2020 19:32:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5E9D220509;
	Sun,  8 Mar 2020 19:32:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2699E1BF319
 for <devel@linuxdriverproject.org>; Sun,  8 Mar 2020 19:31:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1E8CE87778
 for <devel@linuxdriverproject.org>; Sun,  8 Mar 2020 19:31:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3r4pE-DO0Xxo for <devel@linuxdriverproject.org>;
 Sun,  8 Mar 2020 19:31:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail2-relais-roc.national.inria.fr
 (mail2-relais-roc.national.inria.fr [192.134.164.83])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6015087747
 for <devel@driverdev.osuosl.org>; Sun,  8 Mar 2020 19:31:57 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="5.70,530,1574118000"; d="scan'208";a="439382032"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
 by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Mar 2020 20:31:54 +0100
Date: Sun, 8 Mar 2020 20:31:53 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Shreeya Patel <shreeya.patel23498@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: Add space around
 operator
In-Reply-To: <20200308192152.26403-1-shreeya.patel23498@gmail.com>
Message-ID: <alpine.DEB.2.21.2003082030310.2400@hadrien>
References: <20200308192152.26403-1-shreeya.patel23498@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, nramas@linux.microsoft.com,
 daniel.baluta@gmail.com, sbrivio@redhat.com, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, hverkuil@xs4all.nl,
 outreachy-kernel@googlegroups.com, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, 9 Mar 2020, Shreeya Patel wrote:

> Add space around & operator for improving the code
> readability.

I guess you found this with checkpatch.  If so, it could be nice to add
"Reported by checkpatch." to the log message.  OK otherwise.

Acked-by: Julia Lawall <julia.lawall@inria.fr>

>
> Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
> ---
>  drivers/staging/rtl8188eu/core/rtw_mlme.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme.c b/drivers/staging/rtl8188eu/core/rtw_mlme.c
> index e764436e120f..8da955e8343b 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_mlme.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_mlme.c
> @@ -924,7 +924,7 @@ static void rtw_joinbss_update_network(struct adapter *padapter, struct wlan_net
>  	/* update fw_state will clr _FW_UNDER_LINKING here indirectly */
>  	switch (pnetwork->network.InfrastructureMode) {
>  	case Ndis802_11Infrastructure:
> -		if (pmlmepriv->fw_state&WIFI_UNDER_WPS)
> +		if (pmlmepriv->fw_state & WIFI_UNDER_WPS)
>  			pmlmepriv->fw_state = WIFI_STATION_STATE|WIFI_UNDER_WPS;
>  		else
>  			pmlmepriv->fw_state = WIFI_STATION_STATE;
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200308192152.26403-1-shreeya.patel23498%40gmail.com.
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

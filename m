Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D00FB296044
	for <lists+driverdev-devel@lfdr.de>; Thu, 22 Oct 2020 15:47:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5FF2C2E0F3;
	Thu, 22 Oct 2020 13:47:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 64btzqv7-iza; Thu, 22 Oct 2020 13:47:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7828020465;
	Thu, 22 Oct 2020 13:47:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 058FA1BF288
 for <devel@linuxdriverproject.org>; Thu, 22 Oct 2020 13:47:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0205A874C1
 for <devel@linuxdriverproject.org>; Thu, 22 Oct 2020 13:47:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m3YLXtNvZxTN for <devel@linuxdriverproject.org>;
 Thu, 22 Oct 2020 13:47:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail2-relais-roc.national.inria.fr
 (mail2-relais-roc.national.inria.fr [192.134.164.83])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 932AA871B7
 for <devel@driverdev.osuosl.org>; Thu, 22 Oct 2020 13:47:11 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="5.77,404,1596492000"; d="scan'208";a="473874482"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
 by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Oct 2020 15:47:08 +0200
Date: Thu, 22 Oct 2020 15:47:08 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Izabela Bakollari <izabela.bakollari@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging/wlan-ng: Fix line that exceeds
 100 columns
In-Reply-To: <20201022130807.212454-1-izabela.bakollari@gmail.com>
Message-ID: <alpine.DEB.2.22.394.2010221545480.5113@hadrien>
References: <20201022130807.212454-1-izabela.bakollari@gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On Thu, 22 Oct 2020, izabela.bakollari@gmail.com wrote:

> From: Izabela Bakollari <izabela.bakollari@gmail.com>
>
> Rearrange comment that exceeds 100 columns length. Issue reported
> by checkpatch.pl
>
> Signed-off-by: Izabela Bakollari <izabela.bakollari@gmail.com>
> ---
>  drivers/staging/wlan-ng/cfg80211.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/staging/wlan-ng/cfg80211.c b/drivers/staging/wlan-ng/cfg80211.c
> index 759e475e303c..5fad37a49aa5 100644
> --- a/drivers/staging/wlan-ng/cfg80211.c
> +++ b/drivers/staging/wlan-ng/cfg80211.c
> @@ -366,7 +366,8 @@ static int prism2_scan(struct wiphy *wiphy,
>  					  msg2.beaconperiod.data,
>  					  ie_buf,
>  					  ie_len,
> -					  (msg2.signal.data - 65536) * 100, /* Conversion to signed type */
> +					  (msg2.signal.data - 65536) * 100,
> +					  /* Conversion to signed type */

I think that the comment is in the wrong place.  GFP_KERNEL has to do with
whether the allocation can wait in case of insufficient memory, and not
with signed types.  The signed type thing must be the argument before.  Si
it would be better to put the comment above that code.

julia


>  					  GFP_KERNEL);
>
>  		if (!bss) {
> --
> 2.18.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20201022130807.212454-1-izabela.bakollari%40gmail.com.
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

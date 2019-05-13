Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D6D91B2EA
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 May 2019 11:33:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 461CD8646F;
	Mon, 13 May 2019 09:33:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id By4ycKhokIP7; Mon, 13 May 2019 09:33:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 66028864B2;
	Mon, 13 May 2019 09:33:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CC8AE1BF358
 for <devel@linuxdriverproject.org>; Mon, 13 May 2019 09:33:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C95B385829
 for <devel@linuxdriverproject.org>; Mon, 13 May 2019 09:33:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BxEmHWy-jnWv for <devel@linuxdriverproject.org>;
 Mon, 13 May 2019 09:33:26 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DC39485734
 for <devel@driverdev.osuosl.org>; Mon, 13 May 2019 09:33:26 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3365D20873;
 Mon, 13 May 2019 09:33:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557740006;
 bh=Oh5xXg6uTFSzSLkeVykgO08l4nnAKG9rNXBddLbIWzs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mxWEuWK7B06nvRkMIiatxxlv4Z+H8puDaQkfQ097Re5RMkyaxLMZGjHSQ2s2nlHsm
 gOd/TnrushyhGYk+rRfigzDrZx5FyxZVssmt3AwZhDsuFNxp5XsfI+DI8mzRUAsxdl
 BhefurJNWCigEz+aVb8rYZkIXbrl3+DEOqDmUm7o=
Date: Mon, 13 May 2019 11:33:24 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Vatsala Narang <vatsalanarang@gmail.com>
Subject: Re: [PATCH v2 6/6] staging: rtl8723bs: core: Move logical operator
 to previous line.
Message-ID: <20190513093324.GA21213@kroah.com>
References: <20190505132253.4516-1-vatsalanarang@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190505132253.4516-1-vatsalanarang@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: devel@driverdev.osuosl.org, julia.lawall@lip6.fr,
 linux-kernel@vger.kernel.org, hadess@hadess.net, hdegoede@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, May 05, 2019 at 06:52:53PM +0530, Vatsala Narang wrote:
> Move logical operator to previous line to get rid of checkpatch warning.
> 
> Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
> ---
>  drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
> index 0b5bd047a552..b5e355de1199 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
> @@ -5656,9 +5656,9 @@ static u8 chk_ap_is_alive(struct adapter *padapter, struct sta_info *psta)
>  	);
>  	#endif
>  
> -	if ((sta_rx_data_pkts(psta) == sta_last_rx_data_pkts(psta))
> -		&& sta_rx_beacon_pkts(psta) == sta_last_rx_beacon_pkts(psta)
> -		&& sta_rx_probersp_pkts(psta) == sta_last_rx_probersp_pkts(psta)
> +	if ((sta_rx_data_pkts(psta) == sta_last_rx_data_pkts(psta)) &&
> +	    sta_rx_beacon_pkts(psta) == sta_last_rx_beacon_pkts(psta) &&
> +	     sta_rx_probersp_pkts(psta) == sta_last_rx_probersp_pkts(psta)

Odd, you should align these two lines, right?

>  	) {

This should go on the previous line.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8213BFC43C
	for <lists+driverdev-devel@lfdr.de>; Thu, 14 Nov 2019 11:33:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 55BFD8970D;
	Thu, 14 Nov 2019 10:33:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y7KdZlpRY42F; Thu, 14 Nov 2019 10:33:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 601EC8971B;
	Thu, 14 Nov 2019 10:33:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D66DC1BF3A3
 for <devel@linuxdriverproject.org>; Thu, 14 Nov 2019 10:33:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CF3AA89EEF
 for <devel@linuxdriverproject.org>; Thu, 14 Nov 2019 10:33:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DckzhO+9B4TH for <devel@linuxdriverproject.org>;
 Thu, 14 Nov 2019 10:33:34 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx01-fr.bfs.de (mx01-fr.bfs.de [193.174.231.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0208689EE1
 for <devel@driverdev.osuosl.org>; Thu, 14 Nov 2019 10:33:33 +0000 (UTC)
Received: from mail-fr.bfs.de (mail-fr.bfs.de [10.177.18.200])
 by mx01-fr.bfs.de (Postfix) with ESMTPS id 6AF3920346;
 Thu, 14 Nov 2019 11:33:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bfs.de; s=dkim201901; 
 t=1573727601;
 h=from:from:sender:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=cKhNKGzpQjIXpZ4KphvaUafb/xdZMCyUdnUQ1YJ5Vic=;
 b=H6bk6suLnD4e9AdKorHz8a6XT0fRGyL1Y3ljTQKsJXuK/tiaTNrLxQkDWn6S8KmFHGy24a
 x3MvTHlAWkcZXl7+UQTbSsmE52w9BLHviTfp0rATgm620k90hPmXq5+pEyR/r7fmgrSDLY
 u8+nxRtEJCsriRIBoDBLSyG03lcLNjS8DlFjjR0+2wRYi3nIK0XYnGPCQNcXvnHxoS//mI
 0fMsUO1axJyl1hPp+hmdjyFzKaXAGZ0JJRAgJZmMLAxQB4DYJD4jVCHG2W97dlhpGdonc/
 DWlhGQpXM/YGhawoKNyTqn5BCjCOFHfatns+BiD3mH1p5PDNbsL9DgNJMNtZ2A==
Received: from [134.92.181.33] (unknown [134.92.181.33])
 by mail-fr.bfs.de (Postfix) with ESMTPS id F3BD6BEEBD;
 Thu, 14 Nov 2019 11:33:10 +0100 (CET)
Message-ID: <5DCD2D66.2050206@bfs.de>
Date: Thu, 14 Nov 2019 11:33:10 +0100
From: walter harms <wharms@bfs.de>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; de;
 rv:1.9.1.16) Gecko/20101125 SUSE/3.0.11 Thunderbird/3.0.11
MIME-Version: 1.0
To: linux-kernel@vger.kernel.org
Subject: Re: [PATCH] staging: rtl8192u: fix indentation issue
References: <20191114095430.132120-1-colin.king@canonical.com>
In-Reply-To: <20191114095430.132120-1-colin.king@canonical.com>
Authentication-Results: mx01-fr.bfs.de
X-Spamd-Result: default: False [-3.10 / 7.00]; ARC_NA(0.00)[];
 HAS_REPLYTO(0.00)[wharms@bfs.de]; BAYES_HAM(-3.00)[100.00%];
 FROM_HAS_DN(0.00)[]; TO_DN_SOME(0.00)[];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; MIME_GOOD(-0.10)[text/plain];
 REPLYTO_ADDR_EQ_FROM(0.00)[]; RCPT_COUNT_FIVE(0.00)[5];
 DKIM_SIGNED(0.00)[]; NEURAL_HAM(-0.00)[-0.999,0];
 FROM_EQ_ENVFROM(0.00)[]; MIME_TRACE(0.00)[0:+];
 RCVD_COUNT_TWO(0.00)[2]; MID_RHS_MATCH_FROM(0.00)[];
 RCVD_TLS_ALL(0.00)[]
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
Reply-To: wharms@bfs.de
Cc: devel@driverdev.osuosl.org, Colin King <colin.king@canonical.com>,
 kernel-janitors@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



Am 14.11.2019 10:54, schrieb Colin King:
> From: Colin Ian King <colin.king@canonical.com>
> 
> There is a block of statements that are indented
> too deeply, remove the extraneous tabs.
> 
> Signed-off-by: Colin Ian King <colin.king@canonical.com>
> ---
>  drivers/staging/rtl8192u/r819xU_cmdpkt.c | 25 ++++++++++++------------
>  1 file changed, 13 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192u/r819xU_cmdpkt.c b/drivers/staging/rtl8192u/r819xU_cmdpkt.c
> index e064f43fd8b6..bc98cdaf61ec 100644
> --- a/drivers/staging/rtl8192u/r819xU_cmdpkt.c
> +++ b/drivers/staging/rtl8192u/r819xU_cmdpkt.c
> @@ -169,19 +169,20 @@ static void cmdpkt_beacontimerinterrupt_819xusb(struct net_device *dev)
>  {
>  	struct r8192_priv *priv = ieee80211_priv(dev);
>  	u16 tx_rate;
> -		/* 87B have to S/W beacon for DTM encryption_cmn. */
> -		if (priv->ieee80211->current_network.mode == IEEE_A ||
> -		    priv->ieee80211->current_network.mode == IEEE_N_5G ||
> -		    (priv->ieee80211->current_network.mode == IEEE_N_24G &&
> -		     (!priv->ieee80211->pHTInfo->bCurSuppCCK))) {
> -			tx_rate = 60;
> -			DMESG("send beacon frame  tx rate is 6Mbpm\n");
> -		} else {
> -			tx_rate = 10;
> -			DMESG("send beacon frame  tx rate is 1Mbpm\n");
> -		}
>  
> -		rtl819xusb_beacon_tx(dev, tx_rate); /* HW Beacon */
> +	/* 87B have to S/W beacon for DTM encryption_cmn. */
> +	if (priv->ieee80211->current_network.mode == IEEE_A ||
> +	    priv->ieee80211->current_network.mode == IEEE_N_5G ||
> +	    (priv->ieee80211->current_network.mode == IEEE_N_24G &&
> +	     (!priv->ieee80211->pHTInfo->bCurSuppCCK))) {
> +		tx_rate = 60;
> +		DMESG("send beacon frame  tx rate is 6Mbpm\n");
> +	} else {
> +		tx_rate = 10;
> +		DMESG("send beacon frame  tx rate is 1Mbpm\n");
> +	}
> +
> +	rtl819xusb_beacon_tx(dev, tx_rate); /* HW Beacon */
>  }
>  
>  /*-----------------------------------------------------------------------------

this is hard to read in the first place.
Maybe using switch() here is better to read (untested example below).


	switch(priv->ieee80211->current_network.mode) {

	case IEEE_A:
	case IEEE_N_5G:
	 tx_rate = 60;
         break;
        IEEE_N_24G:
	     if ( !priv->ieee80211->pHTInfo->bCurSuppCCK )
		tx_rate = 60;
             // fall truh

        default:
		tx_rate = 10;

	}	

	if (txrate == 60 )
	     DMESG("send beacon frame  tx rate is 6Mbpm\n");
	else if (txrate == 10 )
	     DMESG("send beacon frame  tx rate is 1Mbpm\n");

JM2C

re,
 wh
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

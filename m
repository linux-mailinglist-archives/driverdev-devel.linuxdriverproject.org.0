Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 924671B5A81
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 Apr 2020 13:29:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id ACCDA231A0;
	Thu, 23 Apr 2020 11:29:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UF+HLnrN3CvQ; Thu, 23 Apr 2020 11:29:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 37C0822728;
	Thu, 23 Apr 2020 11:29:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9B3F91BF3FE
 for <devel@linuxdriverproject.org>; Thu, 23 Apr 2020 11:29:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9813E88557
 for <devel@linuxdriverproject.org>; Thu, 23 Apr 2020 11:29:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g+yfTzf3oxZN for <devel@linuxdriverproject.org>;
 Thu, 23 Apr 2020 11:29:13 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 24BB88853D
 for <devel@driverdev.osuosl.org>; Thu, 23 Apr 2020 11:29:13 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7120820736;
 Thu, 23 Apr 2020 11:29:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587641352;
 bh=GLlc36Uzd9tq03rZItAwzH28jaEo5ZcpHGyvduOR2A0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=2UfGZuQCnr47rkAUJssPrBDRMExOsOBUUr0CuLJo6mJx9nyJv6MMYUvhnKJoL+Vua
 9Wh/S1YtwuHrLDjruOSyXA344ONMBut+uKlZLIF2zhiFvO8wnKdR1hE82NG7KEuMOt
 GnbEpGteOvxHw9Aka5yptbzP0plKT0e1K0kHzKZw=
Date: Thu, 23 Apr 2020 13:29:10 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Ivan Safonov <insafonov@gmail.com>
Subject: Re: [PATCH] staging:r8188eu: avoid skb_clone for amsdu to msdu
 conversion
Message-ID: <20200423112910.GA3768232@kroah.com>
References: <20200418084112.3723-1-insafonov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200418084112.3723-1-insafonov@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Saurav Girepunje <saurav.girepunje@gmail.com>,
 linux-kernel@vger.kernel.org, Puranjay Mohan <puranjay12@gmail.com>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Apr 18, 2020 at 11:41:12AM +0300, Ivan Safonov wrote:
> skb clones use same data buffer, so tail of one skb is corrupted by beginning of next skb.

Please properly wrap your changelog text at the correct column (72).

Also, your subject: line does not have the correct driver name :(

> 
> Signed-off-by: Ivan Safonov <insafonov@gmail.com>
> ---
>  drivers/staging/rtl8188eu/core/rtw_recv.c | 19 ++++++-------------
>  1 file changed, 6 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c b/drivers/staging/rtl8188eu/core/rtw_recv.c
> index d4278361e002..a036ef104198 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_recv.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_recv.c
> @@ -1525,21 +1525,14 @@ static int amsdu_to_msdu(struct adapter *padapter, struct recv_frame *prframe)
>  
>  		/* Allocate new skb for releasing to upper layer */
>  		sub_skb = dev_alloc_skb(nSubframe_Length + 12);
> -		if (sub_skb) {
> -			skb_reserve(sub_skb, 12);
> -			skb_put_data(sub_skb, pdata, nSubframe_Length);
> -		} else {
> -			sub_skb = skb_clone(prframe->pkt, GFP_ATOMIC);
> -			if (sub_skb) {
> -				sub_skb->data = pdata;
> -				sub_skb->len = nSubframe_Length;
> -				skb_set_tail_pointer(sub_skb, nSubframe_Length);
> -			} else {
> -				DBG_88E("skb_clone() Fail!!! , nr_subframes=%d\n", nr_subframes);
> -				break;
> -			}
> +		if (!sub_skb) {
> +			DBG_88E("dev_alloc_skb() Fail!!! , nr_subframes=%d\n", nr_subframes);
> +			break;
>  		}
>  
> +		skb_reserve(sub_skb, 12);
> +		skb_put_data(sub_skb, pdata, nSubframe_Length);
> +

Have you tested this?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

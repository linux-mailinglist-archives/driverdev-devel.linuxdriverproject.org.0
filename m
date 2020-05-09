Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C77FB1CBE7A
	for <lists+driverdev-devel@lfdr.de>; Sat,  9 May 2020 09:43:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6F2AB88F88;
	Sat,  9 May 2020 07:43:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SiF-1kLKhIyZ; Sat,  9 May 2020 07:43:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CA1B688C2F;
	Sat,  9 May 2020 07:43:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1F5331BF38B
 for <devel@linuxdriverproject.org>; Sat,  9 May 2020 07:43:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1B01F87583
 for <devel@linuxdriverproject.org>; Sat,  9 May 2020 07:43:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6s1Ka41dRvEb for <devel@linuxdriverproject.org>;
 Sat,  9 May 2020 07:43:02 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1459E8756D
 for <devel@driverdev.osuosl.org>; Sat,  9 May 2020 07:43:02 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 34DFC24953;
 Sat,  9 May 2020 07:43:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589010181;
 bh=ptvuRf7F2tJWhTTSAUYDoRicbbLI9qbZu6bxKj0Ytfo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=B6A2qaFw13v7+IrUNrtLZqbOyi3DfgMxp+SwN5G45vf8tIYmYkeRHEKE6cY3XuwNL
 FJhNwSluLOHM0Ln4VkuDdV1lDs8JsUyoYyhaz8MMePDWnH2EmJMD8wJzcwHGQJnHs5
 cm+nBEPh80VKgFj8hzD9eM/5ptRE3WmJyBu7bbRU=
Date: Sat, 9 May 2020 09:42:58 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Qiuhao Li <Qiuhao.Li@outlook.com>
Subject: Re: [PATCH] staging: rtl8188eu: use usleep_range() for ATIM window
 size
Message-ID: <20200509074258.GB1831917@kroah.com>
References: <HK0PR01MB28684D4FFF457F5979ECFC27FCA30@HK0PR01MB2868.apcprd01.prod.exchangelabs.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <HK0PR01MB28684D4FFF457F5979ECFC27FCA30@HK0PR01MB2868.apcprd01.prod.exchangelabs.com>
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
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, May 09, 2020 at 03:19:31PM +0800, Qiuhao Li wrote:
> According to Documentation/timers/timers-howto.rst, sleeping for small
> milliseconds should use usleep_range() instead of msleep().
> 
> Signed-off-by: Qiuhao Li <Qiuhao.Li@outlook.com>
> ---
>  drivers/staging/rtl8188eu/core/rtw_mlme_ext.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
> index 8d035f67ef61..61fdd942c30a 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
> @@ -5406,7 +5406,8 @@ u8 tx_beacon_hdl(struct adapter *padapter, unsigned char *pbuf)
>  			return H2C_SUCCESS;
>  
>  		if ((pstapriv->tim_bitmap & BIT(0)) && (psta_bmc->sleepq_len > 0)) {
> -			msleep(10);/*  10ms, ATIM(HIQ) Windows */
> +			/* 10ms, ATIM(HIQ) Windows */
> +			usleep_range(10000, 10001);

How do you know this will work properly?  Can you test this?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

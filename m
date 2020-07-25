Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B8C6622D6F4
	for <lists+driverdev-devel@lfdr.de>; Sat, 25 Jul 2020 13:05:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2251E214D2;
	Sat, 25 Jul 2020 11:05:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y6mGfWxwi+vM; Sat, 25 Jul 2020 11:05:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BCFC12051E;
	Sat, 25 Jul 2020 11:05:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 863F81BF23F
 for <devel@linuxdriverproject.org>; Sat, 25 Jul 2020 11:05:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7F45420427
 for <devel@linuxdriverproject.org>; Sat, 25 Jul 2020 11:05:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AUwirup7SZGW for <devel@linuxdriverproject.org>;
 Sat, 25 Jul 2020 11:05:30 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 6FBCC20334
 for <devel@driverdev.osuosl.org>; Sat, 25 Jul 2020 11:05:30 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7F9B3206C1;
 Sat, 25 Jul 2020 11:05:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1595675130;
 bh=7vlb1HHPpldNtaNTZpRtZTb1tg4MXxIayT7+Jy7ak/8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jqudBdMhr3YiRRCeXhrGK43HI2oCCVeKBYsXTf0hhHhBC5itNI9dE4Gc+OrK8GNNI
 v/Q3hg/dmQ4CFILSais2+tIlZwfIwgoMhlqSmAFTfnnxljc1WKV3fvl1dq8IMlYMCk
 8Abjk/t7W242/z0pZP4qyB43WFv5UfWjHzihRjS8=
Date: Sat, 25 Jul 2020 13:05:26 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Anant Thazhemadam <anant.thazhemadam@gmail.com>
Subject: Re: [PATCH] Fix one coding style issue
Message-ID: <20200725110526.GA396778@kroah.com>
References: <20200725103008.7261-1-anant.thazhemadam@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200725103008.7261-1-anant.thazhemadam@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Merwin Trever Ferrao <merwintf@gmail.com>,
 Joe Perches <joe@perches.com>, linux-kernel@vger.kernel.org,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Jul 25, 2020 at 04:00:03PM +0530, Anant Thazhemadam wrote:
> The coding style issue that raised an error (upon checking against
> checkpatch.pl) has been fixed.

You are not saying what issue was fixed.

Also, your subject line needs to be fixed, please see the link provided
by the bot previously for what to do.

> Exactly one coding style issue has been fixed; as required by Task 10
> of the Eudyptula Challenge.

We don't care why you are doing this work, no need to put that in the
changelog.

> 
> Signed-off-by: Anant Thazhemadam <anant.thazhemadam@gmail.com>
> ---
>  drivers/staging/rtl8188eu/core/rtw_security.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/rtl8188eu/core/rtw_security.c b/drivers/staging/rtl8188eu/core/rtw_security.c
> index 21f6652dd69f..dc22ee9c24ad 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_security.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_security.c
> @@ -718,7 +718,9 @@ u32 rtw_tkip_decrypt(struct adapter *padapter, u8 *precvframe)
>  				res = _FAIL;
>  			}
>  		} else {
> -			RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("%s: stainfo==NULL!!!\n",__func__));
> +			RT_TRACE(_module_rtl871x_security_c_, _drv_err_,
> +				 ("%s: stainfo==NULL!!!\n", __func__)
> +				);

Very odd line breaks, this now looks worse than before :(

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

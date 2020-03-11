Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D467318116F
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Mar 2020 08:08:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7664B22098;
	Wed, 11 Mar 2020 07:08:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vJAL2Evjupl5; Wed, 11 Mar 2020 07:08:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5237D2156B;
	Wed, 11 Mar 2020 07:08:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AE40A1BF352
 for <devel@linuxdriverproject.org>; Wed, 11 Mar 2020 07:08:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AA4AF87F19
 for <devel@linuxdriverproject.org>; Wed, 11 Mar 2020 07:08:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FN1ub9SSeX+6 for <devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 07:08:05 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CF69487EEE
 for <devel@driverdev.osuosl.org>; Wed, 11 Mar 2020 07:08:05 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 309BB208E4;
 Wed, 11 Mar 2020 07:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583910485;
 bh=KWEMZBtvojoiS04WgF5wQ4fehfKEjCOMaHzHE9OimCo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=i8mlWTqL8hQaKdnBrGXlmaFGFg14Y58UbQQPFmbkMSqc09kQUUJnoi30vPVobfFZT
 n1flj0u5KAweKqLuUA9tKjx4qzht5Ljz8Nska+4sDXiRp+7gNtCgj6ytN5ve1KbtpW
 heAls2eIfiR94jE9W3SBdKMq/WdTWh19vhQELeGc=
Date: Wed, 11 Mar 2020 08:08:03 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Thiago Souza Ferreira <thsouza2013@gmail.com>
Subject: Re: [PATCH] staging: rtl8188eu: Fix block comments to use *
Message-ID: <20200311070803.GA3585003@kroah.com>
References: <20200311012332.27498-1-thsouza2013@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200311012332.27498-1-thsouza2013@gmail.com>
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
Cc: devel@driverdev.osuosl.org, lkcamp@lists.libreplanetbr.org,
 linux-kernel@vger.kernel.org, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Mar 11, 2020 at 01:23:32AM +0000, Thiago Souza Ferreira wrote:
> Fix "Block comments use * on subsequent lines" warning of
> rtw_mlme_ext.c, found by checkpatch.pl script
> 
> Signed-off-by: Thiago Souza Ferreira <thsouza2013@gmail.com>
> ---
>  drivers/staging/rtl8188eu/core/rtw_mlme_ext.c | 69 ++++++++++---------
>  1 file changed, 35 insertions(+), 34 deletions(-)
> 
> diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
> index 36841d20c..02b87a804 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
> @@ -20,8 +20,8 @@
>  static u8 null_addr[ETH_ALEN] = {};
>  
>  /**************************************************
> -OUI definitions for the vendor specific IE
> -***************************************************/
> + *OUI definitions for the vendor specific IE
> + ***************************************************/

Please use a ' ' before the text to make it look "clean".

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

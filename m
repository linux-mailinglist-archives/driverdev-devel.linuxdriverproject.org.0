Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CE3A1B85DF
	for <lists+driverdev-devel@lfdr.de>; Sat, 25 Apr 2020 12:57:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id F2335881A8;
	Sat, 25 Apr 2020 10:57:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IScd5Uovuads; Sat, 25 Apr 2020 10:57:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 41D6A87999;
	Sat, 25 Apr 2020 10:57:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 591B41BF5A6
 for <devel@linuxdriverproject.org>; Sat, 25 Apr 2020 10:57:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5616685EBB
 for <devel@linuxdriverproject.org>; Sat, 25 Apr 2020 10:57:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MgPSM-cKj98s for <devel@linuxdriverproject.org>;
 Sat, 25 Apr 2020 10:57:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DF35F85EAA
 for <devel@driverdev.osuosl.org>; Sat, 25 Apr 2020 10:57:17 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 26F5620714;
 Sat, 25 Apr 2020 10:57:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587812237;
 bh=ahHvZa0kV6fBVPT9PiZNAdoAVU0at8XiPcIB1IJsIuA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RJLWAhjpyWqkesSXczSZP4wjmmg7mjfrlnfwilcjybZ/lUZunCc3mjSw+FUXRsy2/
 zDqLD76OEKs7T1iWq9h+MHzGtb38wNq8OGnmw41NvvdhpocxnagXdWBlSR2z9tbELa
 s5jL9vxlpvjs6J4u5m41j9GHndKTtY1lkTGroQ/A=
Date: Sat, 25 Apr 2020 12:57:14 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Oscar Carter <oscar.carter@gmx.com>
Subject: Re: [PATCH v2] staging: vt6656: Add formula to the vnt_rf_addpower
 function
Message-ID: <20200425105714.GA2071664@kroah.com>
References: <20200423170557.10401-1-oscar.carter@gmx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200423170557.10401-1-oscar.carter@gmx.com>
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
Cc: devel@driverdev.osuosl.org, Malcolm Priestley <tvboxspy@gmail.com>,
 Forest Bond <forest@alittletooquiet.net>,
 Dan Carpenter <dan.carpenter@oracle.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Apr 23, 2020 at 07:05:57PM +0200, Oscar Carter wrote:
> Use a formula to calculate the return value of the vnt_rf_addpower
> function instead of the "if" statement with literal values for every
> case.
> 
> Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
> ---
> Changelog v1 -> v2
> - Change the type of "base" variable from s32 to int as Dan Carpenter
>   suggested.
> - Remove the "--" postoperator and replace with (base - 1) as Dan
>   Carpenter suggested. Also, as this expression has a minus before the
>   parenthesis, remove it an apply the minus operator changing the sign of
>   "base" and literal "1".
> 
>  drivers/staging/vt6656/rf.c | 20 +++-----------------
>  1 file changed, 3 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/staging/vt6656/rf.c b/drivers/staging/vt6656/rf.c
> index 06fa8867cfa3..612fd4a59f8a 100644
> --- a/drivers/staging/vt6656/rf.c
> +++ b/drivers/staging/vt6656/rf.c
> @@ -538,28 +538,14 @@ int vnt_rf_write_embedded(struct vnt_private *priv, u32 data)
> 
>  static u8 vnt_rf_addpower(struct vnt_private *priv)
>  {
> +	int base;
>  	s32 rssi = -priv->current_rssi;
> 
>  	if (!rssi)
>  		return 7;
> 
> -	if (priv->rf_type == RF_VT3226D0) {
> -		if (rssi < -70)
> -			return 9;
> -		else if (rssi < -65)
> -			return 7;
> -		else if (rssi < -60)
> -			return 5;
> -	} else {
> -		if (rssi < -80)
> -			return 9;
> -		else if (rssi < -75)
> -			return 7;
> -		else if (rssi < -70)
> -			return 5;
> -	}
> -
> -	return 0;
> +	base = (priv->rf_type == RF_VT3226D0) ? -60 : -70;
> +	return (rssi < base) ? ((rssi - base + 1) / -5) * 2 + 5 : 0;

I _hate_ ? : functions, just spell this out please as a real if()
statement.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

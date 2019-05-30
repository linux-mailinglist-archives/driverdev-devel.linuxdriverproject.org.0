Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF6AF303EB
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 May 2019 23:15:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C56CC8845E;
	Thu, 30 May 2019 21:15:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8-4hAGZzVsBF; Thu, 30 May 2019 21:15:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5DC34882AA;
	Thu, 30 May 2019 21:15:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5F5C51BF867
 for <devel@linuxdriverproject.org>; Thu, 30 May 2019 21:15:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5C9DE86A63
 for <devel@linuxdriverproject.org>; Thu, 30 May 2019 21:15:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G_OVRH02p8kZ for <devel@linuxdriverproject.org>;
 Thu, 30 May 2019 21:15:13 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E280F86A61
 for <devel@driverdev.osuosl.org>; Thu, 30 May 2019 21:15:13 +0000 (UTC)
Received: from localhost (unknown [207.225.69.115])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AB80921E6D;
 Thu, 30 May 2019 21:15:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559250913;
 bh=td1ZMqdWFXe4eiww03RgX6CVYsoiM7Kuh45FZNRGmJk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=faMNQ1PBLFR1RwoVfreFw1diU2hoNFv274ZDQvqxI5FkO+YxocpCpuTOe/7kE2lUd
 FAyNaf4BxGOm7swFfgyJ5+aWkhqCgeEIZ68RgInNoVhsbZigGH0DukU28jg7pUflzU
 EGcVneyU8r/XsSKrhaXiAFzja/EcBO1PJXcvSBrU=
Date: Thu, 30 May 2019 14:15:13 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Nishka Dasgupta <nishkadg.linux@gmail.com>
Subject: Re: [PATCH] staging: vt6655: Change return type of function and
 remove variable
Message-ID: <20190530211513.GA25966@kroah.com>
References: <20190529134529.8481-1-nishkadg.linux@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190529134529.8481-1-nishkadg.linux@gmail.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
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
Cc: madhumithabiw@gmail.com, brandonbonaby94@gmail.com,
 devel@driverdev.osuosl.org, forest@alittletooquiet.net,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, May 29, 2019 at 07:15:29PM +0530, Nishka Dasgupta wrote:
> As the function CARDbRadioPowerOff always returns true, and this value
> does not appear to be used anywhere, the return variable can be entirely
> removed and the function converted to type void.
> Issue found with Coccinelle.
> 
> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
> ---
>  drivers/staging/vt6655/card.c | 56 ++++++++++++++++-------------------
>  drivers/staging/vt6655/card.h |  2 +-
>  2 files changed, 27 insertions(+), 31 deletions(-)
> 
> diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
> index 6ecbe925026d..2aca5b38be5c 100644
> --- a/drivers/staging/vt6655/card.c
> +++ b/drivers/staging/vt6655/card.c
> @@ -409,42 +409,38 @@ bool CARDbSetBeaconPeriod(struct vnt_private *priv,
>   *  Out:
>   *      none
>   *
> - * Return Value: true if success; otherwise false
> + * Return Value: none

That's obvious and the whole line can be removed.

>   */
> -bool CARDbRadioPowerOff(struct vnt_private *priv)
> +void CARDbRadioPowerOff(struct vnt_private *priv)
>  {
> -	bool bResult = true;
> -
> -	if (priv->bRadioOff)
> -		return true;
> -
> -	switch (priv->byRFType) {
> -	case RF_RFMD2959:
> -		MACvWordRegBitsOff(priv->PortOffset, MAC_REG_SOFTPWRCTL,
> -				   SOFTPWRCTL_TXPEINV);
> -		MACvWordRegBitsOn(priv->PortOffset, MAC_REG_SOFTPWRCTL,
> -				  SOFTPWRCTL_SWPE1);
> -		break;
> +	if (!priv->bRadioOff) {
> +		switch (priv->byRFType) {

No, don't do that.  Leave the indentation alone and just return "early"
like the code did.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

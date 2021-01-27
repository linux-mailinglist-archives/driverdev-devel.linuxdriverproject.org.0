Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ADC1305A84
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 Jan 2021 13:00:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id AC41E2266C;
	Wed, 27 Jan 2021 12:00:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L1ao6rGfyllG; Wed, 27 Jan 2021 12:00:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 28A522202C;
	Wed, 27 Jan 2021 12:00:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 763301BF973
 for <devel@linuxdriverproject.org>; Wed, 27 Jan 2021 12:00:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7294186745
 for <devel@linuxdriverproject.org>; Wed, 27 Jan 2021 12:00:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fOngQEZY9hWk for <devel@linuxdriverproject.org>;
 Wed, 27 Jan 2021 12:00:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BACFE86738
 for <devel@driverdev.osuosl.org>; Wed, 27 Jan 2021 12:00:40 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id BAC4320770;
 Wed, 27 Jan 2021 12:00:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1611748840;
 bh=qovR8b6obg/+C2aAJyNjJh+/aJICMootmi3BriCc59w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sr4iPfoQBoy30bKObSK4x6S59hIlRiqskqolruHNu/9+oTkb1ums4Ize04t4qVdsH
 jnbjjdD/oXPPsCDQ0q5WoQqlz5fx0t5//tiPZGBhq24Ldx6ozjEd8jgTyDvZj2tfid
 v/nBCDRfyrvN/pOcOoPVAXnp4lwvLT7WRRun+94s=
Date: Wed, 27 Jan 2021 13:00:37 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: B K Karthik <bkkarthik@pesu.pes.edu>
Subject: Re: [PATCH] staging: greybus: audio_helper.c: Replace strlcpy() with
 strscpy()
Message-ID: <YBFV5eo5AYmLd4E0@kroah.com>
References: <20210109132731.tczawd5p74xnfz7p@pesu.pes.edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210109132731.tczawd5p74xnfz7p@pesu.pes.edu>
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
Cc: devel@driverdev.osuosl.org, greybus-dev@lists.linaro.org,
 Alex Elder <elder@kernel.org>, Johan Hovold <johan@kernel.org>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Jan 09, 2021 at 06:57:31PM +0530, B K Karthik wrote:
> In gbaudio_remove_controls() , replace the usage of strlcpy() with
> strscpy() because strlcpy() only limits the *destination*
> size, and the source is always read fully.
> 
> https://lore.kernel.org/r/CAHk-=wgfRnXz0W3D37d01q3JFkr_i_uTL=V6A6G1oUZcprmknw@mail.gmail.com/
> was quoted by checkpatch while showing this warning.
> 
> Signed-off-by: B K Karthik <bkkarthik@pesu.pes.edu>
> ---
>  drivers/staging/greybus/audio_helper.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/greybus/audio_helper.c b/drivers/staging/greybus/audio_helper.c
> index 3011b8abce38..1ed4772d2771 100644
> --- a/drivers/staging/greybus/audio_helper.c
> +++ b/drivers/staging/greybus/audio_helper.c
> @@ -166,7 +166,7 @@ static int gbaudio_remove_controls(struct snd_card *card, struct device *dev,
>  			snprintf(id.name, sizeof(id.name), "%s %s", prefix,
>  				 control->name);
>  		else
> -			strlcpy(id.name, control->name, sizeof(id.name));
> +			strscpy(id.name, control->name, sizeof(id.name));

Is this something that matters here?  Isn't the string coming from the
kernel (i.e. a trusted source), or if not, where is it coming from?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

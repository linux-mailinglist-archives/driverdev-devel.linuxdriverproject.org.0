Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BE8BD1E1AE9
	for <lists+driverdev-devel@lfdr.de>; Tue, 26 May 2020 07:59:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D754522888;
	Tue, 26 May 2020 05:59:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a+zjH422-Pxp; Tue, 26 May 2020 05:59:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3B1952280C;
	Tue, 26 May 2020 05:59:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 249881BF20D
 for <devel@linuxdriverproject.org>; Tue, 26 May 2020 05:59:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 216168543A
 for <devel@linuxdriverproject.org>; Tue, 26 May 2020 05:59:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k9SaR+Dlsqri for <devel@linuxdriverproject.org>;
 Tue, 26 May 2020 05:59:34 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7484885149
 for <devel@driverdev.osuosl.org>; Tue, 26 May 2020 05:59:34 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B8F8B208A7;
 Tue, 26 May 2020 05:59:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590472774;
 bh=91GSc5vk3kWD9RbbmSySJA3v41Ugm8I61Feoei3yqZs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PIMrKGzmX5tunpbyiILByunDgCP3hPUXNyC1ilzPnMnv4Jz8b75Blm3xG+ABhRH5v
 AO9ikiCHrXEPYLLVf1QURfky4ljoJcqu1N2Fy5Gt/90/+w+JBHBlkkv66X/X8OGgGM
 gj7Bn62i9sVcz1vxREK1htH3AsILM+jKOLGJks38=
Date: Tue, 26 May 2020 07:59:32 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Igor Ribeiro Barbosa Duarte <igor.ribeiro.duarte@gmail.com>
Subject: Re: [PATCH] staging: wlan-ng: Fix number of characters warning style.
Message-ID: <20200526055932.GB2576013@kroah.com>
References: <20200525221025.GA27612@igor-Aspire-F5-573G>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200525221025.GA27612@igor-Aspire-F5-573G>
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, May 25, 2020 at 07:10:25PM -0300, Igor Ribeiro Barbosa Duarte wrote:
> Fix checkpatch error "WARNING: line over 80 characters" at cfg80211.c:451
> 
> Signed-off-by: Igor Ribeiro Barbosa Duarte <igor.ribeiro.duarte@gmail.com>
> ---
>  drivers/staging/wlan-ng/cfg80211.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/wlan-ng/cfg80211.c b/drivers/staging/wlan-ng/cfg80211.c
> index fac38c8..a911bcd 100644
> --- a/drivers/staging/wlan-ng/cfg80211.c
> +++ b/drivers/staging/wlan-ng/cfg80211.c
> @@ -447,9 +447,10 @@ static int prism2_connect(struct wiphy *wiphy, struct net_device *dev,
>  	/* Set the channel */
>  	if (channel) {
>  		chan = ieee80211_frequency_to_channel(channel->center_freq);
> -		result = prism2_domibset_uint32(wlandev,
> -						DIDMIB_DOT11PHY_DSSSTABLE_CURRENTCHANNEL,
> -						chan);
> +		result = prism2_domibset_uint32
> +			 (wlandev,
> +			  DIDMIB_DOT11PHY_DSSSTABLE_CURRENTCHANNEL,
> +			  chan);

The original really is easier to read and understand, don't you think
so?

Checkpatch is a hint, it doesn't always have to be followed exactly.
Perhaps that crazy #define could be shortened, or use a more
conventional name?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

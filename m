Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 58E481D4A63
	for <lists+driverdev-devel@lfdr.de>; Fri, 15 May 2020 12:05:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E9F5588DB4;
	Fri, 15 May 2020 10:05:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EmW9Bm48S-DB; Fri, 15 May 2020 10:05:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 653EE88D99;
	Fri, 15 May 2020 10:05:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1F2C41BF2BF
 for <devel@linuxdriverproject.org>; Fri, 15 May 2020 10:05:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 14A77899BD
 for <devel@linuxdriverproject.org>; Fri, 15 May 2020 10:05:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TWnofRb8h7af for <devel@linuxdriverproject.org>;
 Fri, 15 May 2020 10:05:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 37821899B9
 for <devel@driverdev.osuosl.org>; Fri, 15 May 2020 10:05:08 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 62B69206F1;
 Fri, 15 May 2020 10:05:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589537107;
 bh=yf/Bcnv7O6skIG8X503CVl+4UYSemnxT3mdUADsqf+k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=1GhbEZ3d0a3dHufS6XzHsCXiHUvI0b5g6OyB49Az5W7tvoM6SosxiScjVanKbanXk
 wBygtkr7yJGgqB8CfyZCpG2AB9bHAOx+wCkW6o8XemJoZFbPjUNPybxsfukjHacpoX
 hC9uv7MZtEGlnXw6BV5bz6ewkJ1UQ+3BP+zKZid8=
Date: Fri, 15 May 2020 12:05:05 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: heshuai1 <hexiaoshuaishuai@gmail.com>
Subject: Re: [PATCH] rtl8723bs: core: fix a coding style error
Message-ID: <20200515100505.GA1619720@kroah.com>
References: <1589535644-6820-1-git-send-email-heshuai1@xiaomi.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1589535644-6820-1-git-send-email-heshuai1@xiaomi.com>
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
Cc: devel@driverdev.osuosl.org, vkor@vkten.in, linux-kernel@vger.kernel.org,
 nishkadg.linux@gmail.com, heshuai1 <heshuai1@xiaomi.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, May 15, 2020 at 05:40:44PM +0800, heshuai1 wrote:
> Fix this coding style error reported by checkpatch.pl:
>   ERROR: do not use assignment in if condition
>   #1120: FILE: drivers/staging/rtl8723bs/core/rtw_ieee80211.c:1120::
>   +	 if ((addr = of_get_property(np, "local-mac-address", &len)) &&
> 
> Signed-off-by: heshuai1 <heshuai1@xiaomi.com>
> ---
>  drivers/staging/rtl8723bs/core/rtw_ieee80211.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/core/rtw_ieee80211.c b/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
> index ca98274..06be1d4 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
> @@ -1117,8 +1117,8 @@ void rtw_macaddr_cfg(struct device *dev, u8 *mac_addr)
>  	}
>  
>  	if (is_broadcast_ether_addr(mac) || is_zero_ether_addr(mac)) {
> -		if ((addr = of_get_property(np, "local-mac-address", &len)) &&
> -		    len == ETH_ALEN) {
> +		addr = of_get_property(np, "local-mac-address", &len);
> +		if (addr && len == ETH_ALEN) {
>  			ether_addr_copy(mac_addr, addr);
>  		} else {
>  			eth_random_addr(mac_addr);
> -- 
> 2.7.4


Hi,

This is the friendly patch-bot of Greg Kroah-Hartman.  You have sent him
a patch that has triggered this response.  He used to manually respond
to these common problems, but in order to save his sanity (he kept
writing the same thing over and over, yet to different people), I was
created.  Hopefully you will not take offence and will fix the problem
in your patch and resubmit it so that it can be accepted into the Linux
kernel tree.

You are receiving this message because of the following common error(s)
as indicated below:

- You did not write a descriptive Subject: for the patch, allowing Greg,
  and everyone else, to know what this patch is all about.  Please read
  the section entitled "The canonical patch format" in the kernel file,
  Documentation/SubmittingPatches for what a proper Subject: line should
  look like.

- It looks like you did not use your "real" name for the patch on either
  the Signed-off-by: line, or the From: line (both of which have to
  match).  Please read the kernel file, Documentation/SubmittingPatches
  for how to do this correctly.

If you wish to discuss this problem further, or you have questions about
how to resolve this issue, please feel free to respond to this email and
Greg will reply once he has dug out from the pending patches received
from other developers.

thanks,

greg k-h's patch email bot
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

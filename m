Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id F33033404DA
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Mar 2021 12:42:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7CA986F998;
	Thu, 18 Mar 2021 11:42:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tCBfs9wGmNf8; Thu, 18 Mar 2021 11:42:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DDD156F69C;
	Thu, 18 Mar 2021 11:42:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 857A71BF3BC
 for <devel@linuxdriverproject.org>; Thu, 18 Mar 2021 11:42:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7C3E54ED79
 for <devel@linuxdriverproject.org>; Thu, 18 Mar 2021 11:42:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZC1M5Mx5N0fy for <devel@linuxdriverproject.org>;
 Thu, 18 Mar 2021 11:42:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C667C4ED60
 for <devel@driverdev.osuosl.org>; Thu, 18 Mar 2021 11:42:43 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id A7B4764EED;
 Thu, 18 Mar 2021 11:42:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1616067763;
 bh=JdbMm1LEjA2X1g3r/0S0B9vIr+0C0DiN2yJCF4v4p6k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NlYjzAuv0AeF9gjm7NP/okbYWQjX3haFTp0fnjXnnd8D66+cP7FB0ByY43HmtlGCs
 woVCemMAxp44lK65gEvpvlEIrFqnbI2PVxFOwJh7KaCgAGhj4dAle2FJHKNpPkr+6i
 N+nf2CmdIxakZH+B5TtwnP02HwFgfgMioCxPF74I=
Date: Thu, 18 Mar 2021 12:42:40 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Akshith A V <akshith6384@gmail.com>
Subject: Re: [PATCH] rtsx_chip.c:Fix usleep_range is preferred over udelay
Message-ID: <YFM8sAW2KJfPNMNI@kroah.com>
References: <20210318110837.kxzojquwkdp7rgcy@akshith-VirtualBox>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210318110837.kxzojquwkdp7rgcy@akshith-VirtualBox>
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
Cc: , devel@driverdev.osuosl.org, vkor@vkten.in, bmw7804@gmail.com,
 gustavoars@kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Mar 18, 2021 at 04:38:37PM +0530, Akshith A V wrote:
> changed udelay to usleep_range 

Trailing whitespace and odd line wrap :(

> because usleep_range is preferred over udelay by checkpatch.pl
> 
> Signed-off-by: Akshith A V <akshith6384@gmail.com>
> ---
>  drivers/staging/rts5208/rtsx_chip.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/rts5208/rtsx_chip.c b/drivers/staging/rts5208/rtsx_chip.c
> index ee9ddc4eb94d..41ee334a4e6c 100644
> --- a/drivers/staging/rts5208/rtsx_chip.c
> +++ b/drivers/staging/rts5208/rtsx_chip.c
> @@ -1804,7 +1804,7 @@ void rtsx_exit_ss(struct rtsx_chip *chip)
>  
>  	if (chip->power_down_in_ss) {
>  		rtsx_force_power_on(chip, SSC_PDCTL | OC_PDCTL);
> -		udelay(1000);
> +		usleep_range(1000, 1010);

Does this really do anything different?

Did you test this?

>  	}
>  
>  	if (RTSX_TST_DELINK(chip)) {
> -- 
> 2.25.1
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

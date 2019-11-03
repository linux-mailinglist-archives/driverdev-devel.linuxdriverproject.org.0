Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1250AED3C2
	for <lists+driverdev-devel@lfdr.de>; Sun,  3 Nov 2019 16:59:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4E8F38AC13;
	Sun,  3 Nov 2019 15:59:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VTSl1QNKRNpF; Sun,  3 Nov 2019 15:59:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 876618ABA5;
	Sun,  3 Nov 2019 15:59:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0F3871BF20D
 for <devel@linuxdriverproject.org>; Sun,  3 Nov 2019 15:59:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 04CBB20518
 for <devel@linuxdriverproject.org>; Sun,  3 Nov 2019 15:59:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z0xF0S8zoHpE for <devel@linuxdriverproject.org>;
 Sun,  3 Nov 2019 15:59:06 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 443CE20504
 for <devel@driverdev.osuosl.org>; Sun,  3 Nov 2019 15:59:06 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6F1622084D;
 Sun,  3 Nov 2019 15:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572796745;
 bh=5+RnA+X1DFWJPbi3N2EMzBO+gOiVypkHZ165PeIF1Lc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oWG5Nqd/lNyPeJDE1peJeV6xeY3rghE7drSUR/g16egfFAw0YK/yf1i4GHeeoMLm8
 ToFyugguVQ8yxO8Z2497awgAOFbj+1ghNNttrrA7AASM6AFlIVjEbtB0ehZRgc4shc
 W5BD9ihnYN7/kjX1XsciBB63T2KSVADotC5b1CXI=
Date: Sun, 3 Nov 2019 16:59:03 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Rama Kumar <ramakumar.kanasundara@gmail.com>
Subject: Re: [PATCH] FBTFT: Changed delay function.
Message-ID: <20191103155903.GA673124@kroah.com>
References: <20191103154003.2739-1-ramakumar.kanasundara@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191103154003.2739-1-ramakumar.kanasundara@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
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
 nishadkamdar@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Nov 03, 2019 at 09:40:03AM -0600, Rama Kumar wrote:
> 
> Hi,
> 
> Changed udelay() to usleep_range() based on the document in the path, "Documentation/timers/timers-howto.rst". It was suggested to use usleep_range() function for sleeping duration between 10us - 20 ms. original code used udelay() for sleeping 20 us.
>  
> ---
> drivers/staging/fbtft/fb_agm1264k-fl.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/fbtft/fb_agm1264k-fl.c b/drivers/staging/fbtft/fb_agm1264k-fl.c
> index eeeeec97ad27..471a145e3c00 100644
> --- a/drivers/staging/fbtft/fb_agm1264k-fl.c
> +++ b/drivers/staging/fbtft/fb_agm1264k-fl.c
> @@ -85,7 +85,7 @@ static void reset(struct fbtft_par *par)
>  	dev_dbg(par->info->device, "%s()\n", __func__);
>  
>  	gpiod_set_value(par->gpio.reset, 0);
> -	udelay(20);
> +	usleep_range(20,20);
>  	gpiod_set_value(par->gpio.reset, 1);
>  	mdelay(120);
>  }
> -- 
> Signed-off-by: Rama Kumar <ramakumar.kanasundara@gmail.com>

Always run checkptch.pl on patches you send out so you don't get grumpy
maintainers telling you to run checkpatch.pl on your patch :)

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

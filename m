Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41118AD621
	for <lists+driverdev-devel@lfdr.de>; Mon,  9 Sep 2019 11:56:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DB0958757E;
	Mon,  9 Sep 2019 09:56:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R347Xrj3Jjlm; Mon,  9 Sep 2019 09:56:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5F7F886FE7;
	Mon,  9 Sep 2019 09:56:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B4E7D1BF2F6
 for <devel@linuxdriverproject.org>; Mon,  9 Sep 2019 09:56:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B09FD204C7
 for <devel@linuxdriverproject.org>; Mon,  9 Sep 2019 09:56:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L-HKTgBRverS for <devel@linuxdriverproject.org>;
 Mon,  9 Sep 2019 09:56:28 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 49937204BC
 for <devel@driverdev.osuosl.org>; Mon,  9 Sep 2019 09:56:28 +0000 (UTC)
Received: from localhost (110.8.30.213.rev.vodafone.pt [213.30.8.110])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6FFE12086D;
 Mon,  9 Sep 2019 09:56:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568022988;
 bh=gZ0748sBch7IpXH/kLfqLXjMbt6zIXw46guvy3EAtDg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fJBfDih22n1GvUOnHveq2BfLBrerPWSYxwXF3/rHjEIxO+Qs1MJL6JrubcX6uzbcV
 6y2swciZuLTWVPnyuF5ahYPPmm1oCR1YvyW+7aOIw7pyEIoyi4YZGiZKfSj/PMPNzJ
 qBn+WvWXaW1cWPgSrRBzz5yGOsltDF8WKP3VAe8Y=
Date: Mon, 9 Sep 2019 10:56:25 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Sreeram Veluthakkal <srrmvlt@gmail.com>
Subject: Re: [PATCH] FBTFT: fb_agm1264k: usleep_range is preferred over udelay
Message-ID: <20190909095625.GB17624@kroah.com>
References: <20190909012605.15051-1-srrmvlt@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190909012605.15051-1-srrmvlt@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: devel@driverdev.osuosl.org, linux-fbdev@vger.kernel.org,
 nishadkamdar@gmail.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, payal.s.kshirsagar.98@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Sep 08, 2019 at 08:26:05PM -0500, Sreeram Veluthakkal wrote:
> This patch fixes the issue:
> FILE: drivers/staging/fbtft/fb_agm1264k-fl.c:88:
> CHECK: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
> +       udelay(20);
> 
> Signed-off-by: Sreeram Veluthakkal <srrmvlt@gmail.com>
> ---
>  drivers/staging/fbtft/fb_agm1264k-fl.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/fbtft/fb_agm1264k-fl.c b/drivers/staging/fbtft/fb_agm1264k-fl.c
> index eeeeec97ad27..2dece71fd3b5 100644
> --- a/drivers/staging/fbtft/fb_agm1264k-fl.c
> +++ b/drivers/staging/fbtft/fb_agm1264k-fl.c
> @@ -85,7 +85,7 @@ static void reset(struct fbtft_par *par)
>  	dev_dbg(par->info->device, "%s()\n", __func__);
>  
>  	gpiod_set_value(par->gpio.reset, 0);
> -	udelay(20);
> +	usleep_range(20, 40);

Is it "safe" to wait 40?  This kind of change you can only do if you
know this is correct.  Have you tested this with hardware?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

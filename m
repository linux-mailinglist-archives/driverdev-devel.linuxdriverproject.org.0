Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9561BF01E6
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 Nov 2019 16:50:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1245820463;
	Tue,  5 Nov 2019 15:50:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OxDs80IuO9ep; Tue,  5 Nov 2019 15:50:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7BF6D20016;
	Tue,  5 Nov 2019 15:50:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 108FD1BF4E5
 for <devel@linuxdriverproject.org>; Tue,  5 Nov 2019 15:50:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id EA11E8A58D
 for <devel@linuxdriverproject.org>; Tue,  5 Nov 2019 15:50:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rYhXsKV1KZ4Q for <devel@linuxdriverproject.org>;
 Tue,  5 Nov 2019 15:50:32 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 52D368A546
 for <devel@driverdev.osuosl.org>; Tue,  5 Nov 2019 15:50:32 +0000 (UTC)
Received: from localhost (unknown [62.119.166.9])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4423E217F5;
 Tue,  5 Nov 2019 15:50:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572969032;
 bh=0Wqzj5saWGFQPcHScriQ0P5BJ17JeJjwaDDE8C9MBUo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Lw6RcLyVKDqZHREc1LJoj5D99aRFj5tS/8E3bHXUhXcKbtYJGENJOIzd5iZtYohGz
 Dml2XWiVgjGGBUno9CecWRRK6ZlG4hkdovBT2hIWYEBPS4fY9Lrr3vWzKkY0ltWlVU
 v3/rkQc3kviutnrDR1pINh8O9crNybecRgd7Kng4=
Date: Tue, 5 Nov 2019 16:50:24 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Chen Wandun <chenwandun@huawei.com>
Subject: Re: [PATCH v2] hp100: remove set but not used variable val
Message-ID: <20191105155024.GA2677365@kroah.com>
References: <20191105133554.6C01F9A06CB85816F399@huawei.com>
 <1572964619-76671-1-git-send-email-chenwandun@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1572964619-76671-1-git-send-email-chenwandun@huawei.com>
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
Cc: devel@driverdev.osuosl.org, kstewart@linuxfoundation.org,
 linux-kernel@vger.kernel.org, perex@perex.cz, joe@perches.com,
 tglx@linutronix.de, allison@lohutok.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Nov 05, 2019 at 10:36:59PM +0800, Chen Wandun wrote:
> From: Chenwandun <chenwandun@huawei.com>
> 
> Fixes gcc '-Wunused-but-set-variable' warning:
> 
> drivers/staging/hp/hp100.c: In function hp100_start_xmit:
> drivers/staging/hp/hp100.c:1629:10: warning: variable val set but not used [-Wunused-but-set-variable]
> 
> Signed-off-by: Chenwandun <chenwandun@huawei.com>

I need a "full" name here, like the one on your email "From:" line.

> ---
>  drivers/staging/hp/hp100.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/staging/hp/hp100.c b/drivers/staging/hp/hp100.c
> index 6ec78f5..6fc7733 100644
> --- a/drivers/staging/hp/hp100.c
> +++ b/drivers/staging/hp/hp100.c
> @@ -1626,7 +1626,9 @@ static netdev_tx_t hp100_start_xmit(struct sk_buff *skb,
>  	unsigned long flags;
>  	int i, ok_flag;
>  	int ioaddr = dev->base_addr;
> +#ifdef HP100_DEBUG_TX
>  	u_short val;
> +#endif

#ifdefs are not ok in .c code, sorry.

>  	struct hp100_private *lp = netdev_priv(dev);
>  
>  #ifdef HP100_DEBUG_B
> @@ -1695,7 +1697,9 @@ static netdev_tx_t hp100_start_xmit(struct sk_buff *skb,
>  
>  	spin_lock_irqsave(&lp->lock, flags);
>  	hp100_ints_off();
> +#ifdef HP100_DEBUG_TX
>  	val = hp100_inw(IRQ_STATUS);

Are you sure that this doesn't actually change the hardware in some way?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

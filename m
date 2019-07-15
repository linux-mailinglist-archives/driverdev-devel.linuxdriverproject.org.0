Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA01B69B96
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Jul 2019 21:44:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0900887B9B;
	Mon, 15 Jul 2019 19:44:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ouNRs322U3oL; Mon, 15 Jul 2019 19:44:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5CE1087360;
	Mon, 15 Jul 2019 19:44:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 482451BF393
 for <devel@linuxdriverproject.org>; Mon, 15 Jul 2019 19:44:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 45697203F1
 for <devel@linuxdriverproject.org>; Mon, 15 Jul 2019 19:44:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TjzL13HpK+Iw for <devel@linuxdriverproject.org>;
 Mon, 15 Jul 2019 19:44:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id B974220368
 for <devel@driverdev.osuosl.org>; Mon, 15 Jul 2019 19:44:47 +0000 (UTC)
Received: from localhost (unknown [88.128.80.139])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5B1D520659;
 Mon, 15 Jul 2019 19:44:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563219887;
 bh=oQj6Q2Yz9cXpmNLaOyHdKv66gt1/MQq7sOD0zHWZ/W4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hKwDwB7SbQEXh2CssSpDmxo/fQYxnXFtKXqdkf5B5vQKo5TfBSrcwvciknaszoTal
 HAKUOvAQ8yJMFljsBENv6+pwHubByMlh4WtqjFjRoeKlDxR6r9dmaChxOYhzUZN45S
 HmWqKH1zt7Puxk4qZ6s/m2+rfBUd0803N6TRojMI=
Date: Mon, 15 Jul 2019 21:19:33 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Subject: Re: [PATCH 4/7] staging: most: Use spinlock_t instead of struct
 spinlock
Message-ID: <20190715191933.GA10934@kroah.com>
References: <20190704153803.12739-1-bigeasy@linutronix.de>
 <20190704153803.12739-5-bigeasy@linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190704153803.12739-5-bigeasy@linutronix.de>
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
Cc: devel@driverdev.osuosl.org, Peter Zijlstra <peterz@infradead.org>,
 tglx@linutronix.de, linux-kernel@vger.kernel.org,
 Christian Gromm <christian.gromm@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jul 04, 2019 at 05:38:00PM +0200, Sebastian Andrzej Siewior wrote:
> For spinlocks the type spinlock_t should be used instead of "struct
> spinlock".
> 
> Use spinlock_t for spinlock's definition.
> 
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Cc: Christian Gromm <christian.gromm@microchip.com>
> Cc: devel@driverdev.osuosl.org
> Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
> ---
>  drivers/staging/most/net/net.c     | 3 +--
>  drivers/staging/most/video/video.c | 3 +--
>  2 files changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/most/net/net.c b/drivers/staging/most/net/net.c
> index c8a64e2090273..09b604df45e63 100644
> --- a/drivers/staging/most/net/net.c
> +++ b/drivers/staging/most/net/net.c
> @@ -69,7 +69,7 @@ struct net_dev_context {
>  
>  static struct list_head net_devices = LIST_HEAD_INIT(net_devices);
>  static struct mutex probe_disc_mt; /* ch->linked = true, most_nd_open */
> -static struct spinlock list_lock; /* list_head, ch->linked = false, dev_hold */
> +static DEFINE_SPINLOCK(list_lock); /* list_head, ch->linked = false, dev_hold */
>  static struct core_component comp;
>  
>  static int skb_to_mamac(const struct sk_buff *skb, struct mbo *mbo)
> @@ -507,7 +507,6 @@ static struct core_component comp = {
>  
>  static int __init most_net_init(void)
>  {
> -	spin_lock_init(&list_lock);
>  	mutex_init(&probe_disc_mt);
>  	return most_register_component(&comp);
>  }
> diff --git a/drivers/staging/most/video/video.c b/drivers/staging/most/video/video.c
> index adca250062e1b..fcd9e111e8bd0 100644
> --- a/drivers/staging/most/video/video.c
> +++ b/drivers/staging/most/video/video.c
> @@ -54,7 +54,7 @@ struct comp_fh {
>  };
>  
>  static struct list_head video_devices = LIST_HEAD_INIT(video_devices);
> -static struct spinlock list_lock;
> +static DEFINE_SPINLOCK(list_lock);
>  
>  static inline bool data_ready(struct most_video_dev *mdev)
>  {
> @@ -540,7 +540,6 @@ static struct core_component comp = {
>  
>  static int __init comp_init(void)
>  {
> -	spin_lock_init(&list_lock);
>  	return most_register_component(&comp);
>  }
>  

Does not apply on top of Linus's tree right now :(

Can you rebase and resend once 5.3-rc1 is out?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

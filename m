Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0899A2D9D64
	for <lists+driverdev-devel@lfdr.de>; Mon, 14 Dec 2020 18:16:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BA2B4864D0;
	Mon, 14 Dec 2020 17:16:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QNK0Un8Z_h3g; Mon, 14 Dec 2020 17:16:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 67C76864EC;
	Mon, 14 Dec 2020 17:16:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 271DD1BF313
 for <devel@linuxdriverproject.org>; Mon, 14 Dec 2020 17:16:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 20AFD204C7
 for <devel@linuxdriverproject.org>; Mon, 14 Dec 2020 17:16:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oUxwjqa3RCOx for <devel@linuxdriverproject.org>;
 Mon, 14 Dec 2020 17:16:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de
 [85.220.165.71])
 by silver.osuosl.org (Postfix) with ESMTPS id 2621A204BC
 for <devel@driverdev.osuosl.org>; Mon, 14 Dec 2020 17:16:37 +0000 (UTC)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1korSW-0004ht-Dr; Mon, 14 Dec 2020 18:16:28 +0100
Received: from mtr by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1korSV-0004k3-In; Mon, 14 Dec 2020 18:16:27 +0100
Date: Mon, 14 Dec 2020 18:16:27 +0100
From: Michael Tretter <m.tretter@pengutronix.de>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH] media: allegro: Fix use after free on error
Message-ID: <20201214171627.GE1861@pengutronix.de>
Mail-Followup-To: Michael Tretter <m.tretter@pengutronix.de>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Chuhong Yuan <hslester96@gmail.com>, linux-media@vger.kernel.org,
 devel@driverdev.osuosl.org, kernel-janitors@vger.kernel.org
References: <X9dShwq8PrThDpn9@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <X9dShwq8PrThDpn9@mwanda>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 17:36:29 up 12 days,  5:03, 46 users,  load average: 0.08, 0.09, 0.86
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: mtr@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: devel@driverdev.osuosl.org
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
Cc: devel@driverdev.osuosl.org, kernel-janitors@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Chuhong Yuan <hslester96@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, 14 Dec 2020 14:54:47 +0300, Dan Carpenter wrote:
> The "channel" is added to the "dev->channels" but then if
> v4l2_m2m_ctx_init() fails then we free "channel" but it's still on the
> list so it could lead to a use after free.  Let's not add it to the
> list until after v4l2_m2m_ctx_init() succeeds.

Thanks.

The patch conflicts with the series that moves the driver from staging to
mainline [0]. I'm not sure, which patch should go in first.

It is also correct to not change the order of list_del and
v4l2_m2m_ctx_release in allegro_release. The list is used to relate messages
from the VCU to their destination channel and this should be possible until
the context has been released and no further messages are expected for that
channel.

[0] https://lore.kernel.org/linux-media/20201202133040.1954837-1-m.tretter@pengutronix.de/

> 
> Fixes: cc62c74749a3 ("media: allegro: add missed checks in allegro_open()")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>

Reviewed-by: Michael Tretter <m.tretter@pengutronix.de>

> ---
> From static analysis.  Not tested.
> 
>  drivers/staging/media/allegro-dvt/allegro-core.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/media/allegro-dvt/allegro-core.c b/drivers/staging/media/allegro-dvt/allegro-core.c
> index 9f718f43282b..640451134072 100644
> --- a/drivers/staging/media/allegro-dvt/allegro-core.c
> +++ b/drivers/staging/media/allegro-dvt/allegro-core.c
> @@ -2483,8 +2483,6 @@ static int allegro_open(struct file *file)
>  	INIT_LIST_HEAD(&channel->buffers_reference);
>  	INIT_LIST_HEAD(&channel->buffers_intermediate);
>  
> -	list_add(&channel->list, &dev->channels);
> -
>  	channel->fh.m2m_ctx = v4l2_m2m_ctx_init(dev->m2m_dev, channel,
>  						allegro_queue_init);
>  
> @@ -2493,6 +2491,7 @@ static int allegro_open(struct file *file)
>  		goto error;
>  	}
>  
> +	list_add(&channel->list, &dev->channels);
>  	file->private_data = &channel->fh;
>  	v4l2_fh_add(&channel->fh);
>  
> -- 
> 2.29.2
> 
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

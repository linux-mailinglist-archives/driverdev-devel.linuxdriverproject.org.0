Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6794114382B
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 Jan 2020 09:24:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5C168879C5;
	Tue, 21 Jan 2020 08:24:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NWYL0rurI+X4; Tue, 21 Jan 2020 08:24:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3CA6D87933;
	Tue, 21 Jan 2020 08:24:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6F2F11BF37F
 for <devel@linuxdriverproject.org>; Tue, 21 Jan 2020 08:24:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6BA7381E46
 for <devel@linuxdriverproject.org>; Tue, 21 Jan 2020 08:24:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Em9siMJeSw2G for <devel@linuxdriverproject.org>;
 Tue, 21 Jan 2020 08:23:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de
 [85.220.165.71])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 03C0481FA0
 for <devel@driverdev.osuosl.org>; Tue, 21 Jan 2020 08:23:58 +0000 (UTC)
Received: from litschi.hi.pengutronix.de
 ([2001:67c:670:100:feaa:14ff:fe6a:8db5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <m.tretter@pengutronix.de>)
 id 1itopE-0007Mk-S7; Tue, 21 Jan 2020 09:23:52 +0100
Date: Tue, 21 Jan 2020 09:23:50 +0100
From: Michael Tretter <m.tretter@pengutronix.de>
To: Chuhong Yuan <hslester96@gmail.com>
Subject: Re: [PATCH v3] media: allegro: add missed checks in allegro_open()
Message-ID: <20200121092350.466f62a8@litschi.hi.pengutronix.de>
In-Reply-To: <20200113055951.8718-1-hslester96@gmail.com>
References: <20200113055951.8718-1-hslester96@gmail.com>
Organization: Pengutronix
X-Mailer: Claws Mail 3.14.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:feaa:14ff:fe6a:8db5
X-SA-Exim-Mail-From: m.tretter@pengutronix.de
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, 13 Jan 2020 13:59:51 +0800, Chuhong Yuan wrote:
> allegro_open() misses checks for v4l2_m2m_ctx_init() and results of
> v4l2_ctrl_new* calls.
> Add checks and error handlers to fix the problems.
> 
> Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
> ---
> Changes in v3:
>   - Make code cleaner.
>   - Add a check for handler->error.
> 
>  .../staging/media/allegro-dvt/allegro-core.c  | 24 +++++++++++++++----
>  1 file changed, 20 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/media/allegro-dvt/allegro-core.c b/drivers/staging/media/allegro-dvt/allegro-core.c
> index 6f0cd0784786..e86001e42963 100644
> --- a/drivers/staging/media/allegro-dvt/allegro-core.c
> +++ b/drivers/staging/media/allegro-dvt/allegro-core.c
> @@ -2270,15 +2270,12 @@ static int allegro_open(struct file *file)
>  	struct allegro_channel *channel = NULL;
>  	struct v4l2_ctrl_handler *handler;
>  	u64 mask;
> +	int ret;
>  
>  	channel = kzalloc(sizeof(*channel), GFP_KERNEL);
>  	if (!channel)
>  		return -ENOMEM;
>  
> -	v4l2_fh_init(&channel->fh, vdev);
> -	file->private_data = &channel->fh;
> -	v4l2_fh_add(&channel->fh);
> -
>  	init_completion(&channel->completion);
>  
>  	channel->dev = dev;
> @@ -2328,6 +2325,11 @@ static int allegro_open(struct file *file)
>  			V4L2_CID_MIN_BUFFERS_FOR_OUTPUT,
>  			1, 32,
>  			1, 1);
> +	if (handler->error != 0) {
> +		ret = handler->error;
> +		goto error;
> +	}
> +
>  	channel->fh.ctrl_handler = handler;
>  
>  	channel->mcu_channel_id = -1;
> @@ -2341,7 +2343,21 @@ static int allegro_open(struct file *file)
>  	channel->fh.m2m_ctx = v4l2_m2m_ctx_init(dev->m2m_dev, channel,
>  						allegro_queue_init);
>  
> +	if (IS_ERR(channel->fh.m2m_ctx)) {
> +		ret = PTR_ERR(channel->fh.m2m_ctx);
> +		goto error;
> +	}
> +
> +	v4l2_fh_init(&channel->fh, vdev);

This call sets channel->fh.ctrl_handler to vdev->ctrl_handler, which
has previously been overriden by the driver to handler. Therefore, this
patch breaks all controls. I think we should initialize channel->fh
before setting any fields of this struct.

Michael

> +	file->private_data = &channel->fh;
> +	v4l2_fh_add(&channel->fh);
> +
>  	return 0;
> +
> +error:
> +	v4l2_ctrl_handler_free(handler);
> +	kfree(channel);
> +	return ret;
>  }
>  
>  static int allegro_release(struct file *file)
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

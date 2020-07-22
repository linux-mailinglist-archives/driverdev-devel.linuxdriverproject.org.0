Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D810C2298EF
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 Jul 2020 15:04:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A984387C94;
	Wed, 22 Jul 2020 13:04:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qVZCzzPl4n81; Wed, 22 Jul 2020 13:04:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3A35687C56;
	Wed, 22 Jul 2020 13:04:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A81C21BF383
 for <devel@linuxdriverproject.org>; Wed, 22 Jul 2020 13:04:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A49F586A85
 for <devel@linuxdriverproject.org>; Wed, 22 Jul 2020 13:04:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lOjytmmfvhCP for <devel@linuxdriverproject.org>;
 Wed, 22 Jul 2020 13:04:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de
 [85.220.165.71])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 45C00869FD
 for <devel@driverdev.osuosl.org>; Wed, 22 Jul 2020 13:04:17 +0000 (UTC)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1jyEPr-0008VD-Jy; Wed, 22 Jul 2020 15:04:11 +0200
Received: from mtr by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1jyEPr-0004IR-3E; Wed, 22 Jul 2020 15:04:11 +0200
Date: Wed, 22 Jul 2020 15:04:11 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH] media: allegro: fix an error pointer vs NULL check
Message-ID: <20200722130411.GB21264@pengutronix.de>
Mail-Followup-To: Michael Tretter <m.tretter@pengutronix.de>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
 kernel-janitors@vger.kernel.org
References: <20200722123848.GA220681@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200722123848.GA220681@mwanda>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 15:03:07 up 153 days, 20:33, 131 users,  load average: 0.38, 0.36,
 0.20
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
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, 22 Jul 2020 15:38:48 +0300, Dan Carpenter wrote:
> The allegro_mbox_init() function returns error pointers, it never
> returns NULL.
> 
> Fixes: 94dc76560261 ("media: allegro: rework mbox handling")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>

Reviewed-by: Michael Tretter <m.tretter@pengutronix.de>

> ---
>  drivers/staging/media/allegro-dvt/allegro-core.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/allegro-dvt/allegro-core.c b/drivers/staging/media/allegro-dvt/allegro-core.c
> index 61beae1fca36..9f718f43282b 100644
> --- a/drivers/staging/media/allegro-dvt/allegro-core.c
> +++ b/drivers/staging/media/allegro-dvt/allegro-core.c
> @@ -2952,7 +2952,7 @@ static int allegro_mcu_hw_init(struct allegro_dev *dev,
>  					      info->mailbox_size);
>  	dev->mbox_status = allegro_mbox_init(dev, info->mailbox_status,
>  					     info->mailbox_size);
> -	if (!dev->mbox_command || !dev->mbox_status) {
> +	if (IS_ERR(dev->mbox_command) || IS_ERR(dev->mbox_status)) {
>  		v4l2_err(&dev->v4l2_dev,
>  			 "failed to initialize mailboxes\n");
>  		return -EIO;
> -- 
> 2.27.0
> 
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

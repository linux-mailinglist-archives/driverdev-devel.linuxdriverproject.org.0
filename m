Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 72C452298D8
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 Jul 2020 15:00:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id ABFDE227EC;
	Wed, 22 Jul 2020 13:00:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mNVbhI99R5OF; Wed, 22 Jul 2020 13:00:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B42A5204B4;
	Wed, 22 Jul 2020 13:00:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0E42E1BF383
 for <devel@linuxdriverproject.org>; Wed, 22 Jul 2020 13:00:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0A78986B0E
 for <devel@linuxdriverproject.org>; Wed, 22 Jul 2020 13:00:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id neeerKMEpn2C for <devel@linuxdriverproject.org>;
 Wed, 22 Jul 2020 13:00:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de
 [85.220.165.71])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 035A186AAB
 for <devel@driverdev.osuosl.org>; Wed, 22 Jul 2020 13:00:32 +0000 (UTC)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1jyEMF-0007sw-P8; Wed, 22 Jul 2020 15:00:27 +0200
Received: from mtr by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1jyEMD-0002xc-D3; Wed, 22 Jul 2020 15:00:25 +0200
Date: Wed, 22 Jul 2020 15:00:25 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: Colin King <colin.king@canonical.com>
Subject: Re: [PATCH][next] media: allegro: fix potential null dereference on
 header
Message-ID: <20200722130025.GA21264@pengutronix.de>
Mail-Followup-To: Michael Tretter <m.tretter@pengutronix.de>,
 Colin King <colin.king@canonical.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20200720163804.340047-1-colin.king@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200720163804.340047-1-colin.king@canonical.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 14:53:31 up 153 days, 20:24, 131 users,  load average: 0.03, 0.11,
 0.09
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, 20 Jul 2020 17:38:04 +0100, Colin King wrote:
> From: Colin Ian King <colin.king@canonical.com>
> 
> The pointer header is an alias to msg and msg is being null checked.
> However, if msg is null then header is also null and this can lead to
> a null pointer dereference on the assignment type = header->type. Fix
> this by only dereferencing header after the null check on msg.
> 
> Addresses-Coverity: ("Dereference before null check")
> Fixes: 3de16839669f ("media: allegro: add explicit mail encoding and decoding")
> Signed-off-by: Colin Ian King <colin.king@canonical.com>
> ---
>  drivers/staging/media/allegro-dvt/allegro-mail.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/allegro-dvt/allegro-mail.c b/drivers/staging/media/allegro-dvt/allegro-mail.c
> index 4ac65de12463..4496e2a4da5c 100644
> --- a/drivers/staging/media/allegro-dvt/allegro-mail.c
> +++ b/drivers/staging/media/allegro-dvt/allegro-mail.c
> @@ -462,12 +462,14 @@ allegro_dec_encode_frame(struct mcu_msg_encode_frame_response *msg, u32 *src)
>  ssize_t allegro_encode_mail(u32 *dst, void *msg)
>  {
>  	const struct mcu_msg_header *header = msg;
> -	enum mcu_msg_type type = header->type;
> +	enum mcu_msg_type type;
>  	ssize_t size;
>  
>  	if (!msg || !dst)
>  		return -EINVAL;
>  
> +	type = header->type;

type is only used in the switch statement right below the assignment. Thus,
you could remove the local variable and directly use header->type in the
switch.

Michael

> +
>  	switch (type) {
>  	case MCU_MSG_TYPE_INIT:
>  		size = allegro_enc_init(&dst[1], msg);
> -- 
> 2.27.0
> 
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DA5CA52E9
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Sep 2019 11:36:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1397B20768;
	Mon,  2 Sep 2019 09:36:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bLI9C2Z1naM2; Mon,  2 Sep 2019 09:36:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3413320535;
	Mon,  2 Sep 2019 09:36:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 44DD41BF23C
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 09:36:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3FD1085D8F
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 09:36:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qx2AkRItZFX4 for <devel@linuxdriverproject.org>;
 Mon,  2 Sep 2019 09:36:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 869C685D6F
 for <devel@driverdev.osuosl.org>; Mon,  2 Sep 2019 09:36:32 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id c3so13272481wrd.7
 for <devel@driverdev.osuosl.org>; Mon, 02 Sep 2019 02:36:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=7S+vZhVc5zHeiLc/DC6Z2xOOWxBDBUvpp/e3pBI1NHw=;
 b=SdLltcIqfSTbhoDBqB0JMt9oUEV92Oj/pOU/Ob14cQsQPj+tVBpl3Rr/9U2efcxzSw
 G8V7L49e6FUh7X+XY0Pg/NAWU3hPUVh0bflsweMM8+44JIlZC41qyHKccjz9hEOHtKhY
 /QRuBI2cRf2dQ7DB1g4J4239lW7vLw2cgwLL1JxWT7n/w6icES8esjSDU3uL6EVcGoSN
 i+6J3BjMyq3zpw/INszfY/hWVYhfXhS323KJNFt4RJY0spsQRPWWQys/InPvU+ohDXba
 m9DYKI8EqZolY7g8hH/XWLgJB1E0iNyLz/UxqPT+3QFN1mecQQkw6V9VJz79skA3pCjJ
 44IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=7S+vZhVc5zHeiLc/DC6Z2xOOWxBDBUvpp/e3pBI1NHw=;
 b=hjzrdS7cG5BcCOjqeIb++/oHilWkCmn4MjkR8g75Xti2hFDqIQ2TFUPNSpxual75tR
 mVsih89ELDfkOTcFUi69wRKgeK/F7lJboXsTzIqvmM584eBIKSj0M0VZ5y/9ihsql2X/
 7lbJr8o8B6D6+tl6Tkw7RE4XpNsBUs3oQRgGuDyXX1Dfi2GGxtf8Fnb04ISpsAkGUlxT
 hBXUemCDXWOGw0IyyqQ7keiIFknZdgqUmdn34OOWgW4jbSK08jTVjT87SqF9pJksQN+E
 6HMaUs5Y/zYwQnN9Uvb9ruJbT7UCSOrMSPoUsjWSFDB2dIBX6P6aWKyDGBXEWGJCYbdN
 lbKw==
X-Gm-Message-State: APjAAAWwj0gH9jaVYBlvgwq+pX93Flu56Ium9wWKqT6MQIFiAIt9jmCg
 EptUFal7r5Bmcuh+74BEARw=
X-Google-Smtp-Source: APXvYqwnZx3UsFw9tXhL1LKY1pc0SI7+G9To5dGcweMEWFrJ8hdLdd2oaTaKuKhIo7cilHZxWPmycw==
X-Received: by 2002:adf:d187:: with SMTP id v7mr36485204wrc.33.1567416990962; 
 Mon, 02 Sep 2019 02:36:30 -0700 (PDT)
Received: from arch-late (87-196-73-69.net.novis.pt. [87.196.73.69])
 by smtp.gmail.com with ESMTPSA id r6sm14586137wmf.0.2019.09.02.02.36.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Sep 2019 02:36:28 -0700 (PDT)
References: <20190805233505.21167-1-slongerbeam@gmail.com>
 <20190805233505.21167-15-slongerbeam@gmail.com>
User-agent: mu4e 1.2.0; emacs 27.0.50
From: Rui Miguel Silva <rmfrfs@gmail.com>
To: Steve Longerbeam <slongerbeam@gmail.com>
Subject: Re: [PATCH 14/22] media: imx7-mipi-csis: Create media links in bound
 notifier
In-reply-to: <20190805233505.21167-15-slongerbeam@gmail.com>
Date: Mon, 02 Sep 2019 10:36:20 +0100
Message-ID: <m3d0gj59bf.fsf@gmail.com>
MIME-Version: 1.0
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 open list <linux-kernel@vger.kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Steve,
Just to let you know that this series no longer apply clean after
your other series:
media: imx: Fix subdev unregister/register issues

And since you will need to send a new one, some notes...

On Tue 06 Aug 2019 at 00:34, Steve Longerbeam wrote:
> Implement a notifier bound op to register media links from the remote
> sub-device's source pad(s) to the mipi csi-2 receiver sink pad.
>
> Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
> ---
>  drivers/staging/media/imx/imx7-mipi-csis.c | 25 ++++++++++++++++++++++
>  1 file changed, 25 insertions(+)
>
> diff --git a/drivers/staging/media/imx/imx7-mipi-csis.c b/drivers/staging/media/imx/imx7-mipi-csis.c
> index f71d9183cad2..e03b2317a1ac 100644
> --- a/drivers/staging/media/imx/imx7-mipi-csis.c
> +++ b/drivers/staging/media/imx/imx7-mipi-csis.c
> @@ -259,6 +259,12 @@ struct csi_state {
>  	bool sink_linked;
>  };
>
> +static inline struct csi_state *
> +notifier_to_csis_state(struct v4l2_async_notifier *n)
>

instead of adding this between structs declaration can you move it
down near the similar converter:

static struct csi_state *mipi_sd_to_csis_state(struct v4l2_subdev *sdev)

and remove the inline since the compiler should do this and add
namespacing function name like the other functions, something like:

static struct csi_state * mipi_notifier_to_csis_state(struct v4l2_async_notifier *n)

Just to coherency.

Other than this, looks good to me.

Cheers,
   Rui

> +{
> +	return container_of(n, struct csi_state, notifier);
> +}
> +
>  struct csis_pix_format {
>  	unsigned int pix_width_alignment;
>  	u32 code;
> @@ -863,6 +869,23 @@ static int mipi_csis_parse_endpoint(struct device *dev,
>  	return 0;
>  }
>
> +static int mipi_csis_notify_bound(struct v4l2_async_notifier *notifier,
> +				  struct v4l2_subdev *sd,
> +				  struct v4l2_async_subdev *asd)
> +{
> +	struct csi_state *state = notifier_to_csis_state(notifier);
> +	struct media_pad *sink = &state->mipi_sd.entity.pads[CSIS_PAD_SINK];
> +
> +	return media_create_fwnode_pad_links(sink,
> +					     dev_fwnode(state->mipi_sd.dev),
> +					     &sd->entity,
> +					     dev_fwnode(sd->dev), 0);
> +}
> +
> +static const struct v4l2_async_notifier_operations mipi_csis_notify_ops = {
> +	.bound = mipi_csis_notify_bound,
> +};
> +
>  static int mipi_csis_subdev_init(struct v4l2_subdev *mipi_sd,
>  				 struct platform_device *pdev,
>  				 const struct v4l2_subdev_ops *ops)
> @@ -895,6 +918,8 @@ static int mipi_csis_subdev_init(struct v4l2_subdev *mipi_sd,
>
>  	v4l2_async_notifier_init(&state->notifier);
>
> +	state->notifier.ops = &mipi_csis_notify_ops;
> +
>  	ret = v4l2_async_register_fwnode_subdev(mipi_sd, &state->notifier,
>  						sizeof(struct v4l2_async_subdev),
>  						&sink_port, 1,

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EAA710213
	for <lists+driverdev-devel@lfdr.de>; Tue, 30 Apr 2019 23:57:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 74BAF86C34;
	Tue, 30 Apr 2019 21:57:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9D8zytpXsvLb; Tue, 30 Apr 2019 21:57:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 08C9E86BDE;
	Tue, 30 Apr 2019 21:57:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 29C9F1BF357
 for <devel@linuxdriverproject.org>; Tue, 30 Apr 2019 21:57:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 26D70228EC
 for <devel@linuxdriverproject.org>; Tue, 30 Apr 2019 21:57:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fiJUkHMl1EAc for <devel@linuxdriverproject.org>;
 Tue, 30 Apr 2019 21:56:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 322D9228E3
 for <devel@driverdev.osuosl.org>; Tue, 30 Apr 2019 21:56:59 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id t76so1563512wmt.1
 for <devel@driverdev.osuosl.org>; Tue, 30 Apr 2019 14:56:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=Xz72fmZg6inOKuWwSpK0E++ql/+/ETY0fbPA4KvUmzw=;
 b=F0cDC3kDoomsaHmOwQcW3uGdPoUezJOcdQOaSpPkhY0SAa+bcBdawzb2foLSL12f78
 f4S0la8j8TWM3PvenJNSv2OIk7icOrKrpP2hH6wCKdbXXao5wAdfhsp/WPKxMAaWLnti
 4Q33/MUbbBGSYje1hkIjNGYGUtCmu0ELsiZ0fq3eTTG+syjV7mPBp/jtb2iBuuElLokk
 rejc1TXFJwMsP96CjIa8hfLD5YP9gwmVxQsMWPS5KeqVgvamh7+YiXk84GnBYXPBIXHn
 CzJ2mWo9PcdyP94BeRrogAXI9OSKmUFCacqFFOCVyHsRyMTUuns/D5CSvCM1dkN+/vNT
 BKww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=Xz72fmZg6inOKuWwSpK0E++ql/+/ETY0fbPA4KvUmzw=;
 b=Be9NjehHondUuGOOdwQzSx5uealeKjhOn0bJUCN8dQa75ugIVfsgT90D/5jmL8nsHv
 MSsVmnu/79n+4qgHjTU4C1VSnloHDHqhGPyAb5JjOAuUi/TdxnQdEZyK+Eh+7dzRBZHI
 uAK8DsGvkCbDh6s8QxTnLQqQDOv5CHx+zAxs7Wc9lUiMFY5cfE+XwWkO3ZO7ZvQ9bolw
 /GyV9fgRREyo06yBIOtDQ3zGYse2uOyH5lpe+tjIxHqGF+YRPh96PsYs8sOkQ3aMd3DH
 EMgIfAs0EBW0LwZz4KvxsZ97WFwDxL7kp3/IaTGlHGqH6mUbj7dWEzlK7xd6RAUuAymM
 SMLw==
X-Gm-Message-State: APjAAAWkdzgYvuhjOVRPwr+zJFsmAcr7qcCVwsiIZHkVvjMf6KBCBens
 f8/iBXJGOb3FT6yZTKvfSyA=
X-Google-Smtp-Source: APXvYqyvxSMuumvItW4h6XgAluAROE+SNTwE3YNLtVwmFQ0HIvBsa6tPJMtzpER6WIldYR0PB+2jIg==
X-Received: by 2002:a7b:cf18:: with SMTP id l24mr3590479wmg.132.1556661417558; 
 Tue, 30 Apr 2019 14:56:57 -0700 (PDT)
Received: from arch-late (a109-49-46-234.cpe.netcabo.pt. [109.49.46.234])
 by smtp.gmail.com with ESMTPSA id s145sm7700622wme.38.2019.04.30.14.56.55
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 30 Apr 2019 14:56:56 -0700 (PDT)
References: <20190428190916.26567-1-slongerbeam@gmail.com>
 <20190428190916.26567-2-slongerbeam@gmail.com>
User-agent: mu4e 1.2.0; emacs 27.0.50
From: Rui Miguel Silva <rmfrfs@gmail.com>
To: Steve Longerbeam <slongerbeam@gmail.com>
Subject: Re: [PATCH v2 1/8] media: staging/imx: Switch to sync registration
 for IPU subdevs
In-reply-to: <20190428190916.26567-2-slongerbeam@gmail.com>
Date: Tue, 30 Apr 2019 22:56:54 +0100
Message-ID: <m3a7g7nom1.fsf@gmail.com>
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
On Sun 28 Apr 2019 at 20:09, Steve Longerbeam wrote:
> Because the IPU sub-devices VDIC and IC are not present in the
> device-tree, platform devices were created for them instead. This
> allowed these sub-devices to be added to the media device's async
> notifier and registered asynchronously along with the other
> sub-devices that do have a device-tree presence (CSI and devices
> external to the IPU and SoC).
>
> But that approach isn't really necessary. The IPU sub-devices don't
> actually require a backing device (sd->dev is allowed to be NULL).
> And that approach can't get around the fact that the IPU sub-devices
> are not part of a device hierarchy, which makes it awkward to retrieve
> the parent IPU of these devices.
>
> By registering them synchronously, they can be registered from the CSI
> async bound notifier, so the init function for them can be given the CSI
> subdev, who's dev->parent is the IPU. That is a somewhat cleaner way
> to retrieve the parent IPU.
>
> So convert to synchronous registration for the VDIC and IC task
> sub-devices, at the time a CSI sub-device is bound. There is no longer
> a backing device for them (sd->dev is NULL), but that's ok. Also
> set the VDIC/IC sub-device owner as the IPU, so that a reference can
> be taken on the IPU module.
>
> Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>

I am trying to bisect when my capture starts to fail to work with
this series, since they are so many changes and reorg that I got
lost on some of them. But... see below.

> ---
>  drivers/staging/media/imx/imx-ic-common.c     |  70 ++--
>  drivers/staging/media/imx/imx-ic-prp.c        |  34 +-
>  drivers/staging/media/imx/imx-ic-prpencvf.c   |  70 ++--
>  drivers/staging/media/imx/imx-ic.h            |   7 +-
>  drivers/staging/media/imx/imx-media-capture.c |   7 +-
>  drivers/staging/media/imx/imx-media-csi.c     |   2 +-
>  drivers/staging/media/imx/imx-media-dev.c     | 121 +-----
>  .../staging/media/imx/imx-media-internal-sd.c | 356 ++++++++----------
>  drivers/staging/media/imx/imx-media-of.c      |  38 +-
>  drivers/staging/media/imx/imx-media-vdic.c    |  85 ++---
>  drivers/staging/media/imx/imx-media.h         |  67 ++--
>  drivers/staging/media/imx/imx7-media-csi.c    |   3 +-
>  12 files changed, 325 insertions(+), 535 deletions(-)
>
> +	dev_dbg(priv->ipu_dev, "%s: link setup %s -> %s",

<snip>

> +		sd->name, remote->entity->name, local->entity->name);
>  
>  	mutex_lock(&priv->lock);
>  
> @@ -864,9 +856,6 @@ static int vdic_registered(struct v4l2_subdev *sd)
>  	int i, ret;
>  	u32 code;
>  
> -	/* get media device */
> -	priv->md = dev_get_drvdata(sd->v4l2_dev->dev);
> -
>  	for (i = 0; i < VDIC_NUM_PADS; i++) {
>  		priv->pad[i].flags = (i == VDIC_SRC_PAD_DIRECT) ?
>  			MEDIA_PAD_FL_SOURCE : MEDIA_PAD_FL_SINK;
> @@ -938,77 +927,55 @@ static const struct v4l2_subdev_internal_ops vdic_internal_ops = {
>  	.unregistered = vdic_unregistered,
>  };
>  
> -static int imx_vdic_probe(struct platform_device *pdev)
> +struct v4l2_subdev *imx_media_vdic_register(struct imx_media_dev *imxmd,
> +					    struct device *ipu_dev,
> +					    struct ipu_soc *ipu,
> +					    u32 grp_id)
>  {
> -	struct imx_media_ipu_internal_sd_pdata *pdata;
> +	struct v4l2_device *v4l2_dev = &imxmd->v4l2_dev;
>  	struct vdic_priv *priv;
>  	int ret;
>  
> -	priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
> +	priv = devm_kzalloc(ipu_dev, sizeof(*priv), GFP_KERNEL);
>  	if (!priv)
> -		return -ENOMEM;
> +		return ERR_PTR(-ENOMEM);
>  
> -	platform_set_drvdata(pdev, &priv->sd);
> -	priv->dev = &pdev->dev;
> -
> -	pdata = priv->dev->platform_data;
> -	priv->ipu_id = pdata->ipu_id;
> +	priv->ipu_dev = ipu_dev;
> +	priv->ipu = ipu;
> +	priv->md = imxmd;
>  
>  	v4l2_subdev_init(&priv->sd, &vdic_subdev_ops);
>  	v4l2_set_subdevdata(&priv->sd, priv);
>  	priv->sd.internal_ops = &vdic_internal_ops;
>  	priv->sd.entity.ops = &vdic_entity_ops;
>  	priv->sd.entity.function = MEDIA_ENT_F_PROC_VIDEO_PIXEL_FORMATTER;
> -	priv->sd.dev = &pdev->dev;
> -	priv->sd.owner = THIS_MODULE;
> +	priv->sd.owner = ipu_dev->driver->owner;
>  	priv->sd.flags = V4L2_SUBDEV_FL_HAS_DEVNODE;
> -	/* get our group id */
> -	priv->sd.grp_id = pdata->grp_id;
> -	strscpy(priv->sd.name, pdata->sd_name, sizeof(priv->sd.name));
> +	priv->sd.grp_id = grp_id;
> +	imx_media_grp_id_to_sd_name(priv->sd.name, sizeof(priv->sd.name),
> +				    priv->sd.grp_id, ipu_get_num(ipu));
>  
>  	mutex_init(&priv->lock);
>  
> -	ret = v4l2_async_register_subdev(&priv->sd);
> +	ret = v4l2_device_register_subdev(v4l2_dev, &priv->sd);
>  	if (ret)
>  		goto free;
>  
> -	return 0;
> +	return &priv->sd;
>  free:
>  	mutex_destroy(&priv->lock);
> -	return ret;
> +	return ERR_PTR(ret);
>  }
>  
> -static int imx_vdic_remove(struct platform_device *pdev)
> +int imx_media_vdic_unregister(struct v4l2_subdev *sd)
>  {
> -	struct v4l2_subdev *sd = platform_get_drvdata(pdev);
>  	struct vdic_priv *priv = v4l2_get_subdevdata(sd);
>  
>  	v4l2_info(sd, "Removing\n");
>  
> -	v4l2_async_unregister_subdev(sd);
> +	v4l2_device_unregister_subdev(sd);
>  	mutex_destroy(&priv->lock);
>  	media_entity_cleanup(&sd->entity);
>  
>  	return 0;
>  }
> -
> -static const struct platform_device_id imx_vdic_ids[] = {
> -	{ .name = "imx-ipuv3-vdic" },
> -	{ },
> -};
> -MODULE_DEVICE_TABLE(platform, imx_vdic_ids);
> -
> -static struct platform_driver imx_vdic_driver = {
> -	.probe = imx_vdic_probe,
> -	.remove = imx_vdic_remove,
> -	.id_table = imx_vdic_ids,
> -	.driver = {
> -		.name = "imx-ipuv3-vdic",
> -	},
> -};
> -module_platform_driver(imx_vdic_driver);
> -
> -MODULE_DESCRIPTION("i.MX VDIC subdev driver");
> -MODULE_AUTHOR("Steve Longerbeam <steve_longerbeam@mentor.com>");
> -MODULE_LICENSE("GPL");
> -MODULE_ALIAS("platform:imx-ipuv3-vdic");

This breaks compilation until patch 6/8. I think you need to make
some makefile changes also in this patch.

WARNING: modpost: missing MODULE_LICENSE() in drivers/staging/media/imx/imx-media-ic.o
see include/linux/module.h for more information
WARNING: modpost: missing MODULE_LICENSE() in drivers/staging/media/imx/imx-media-vdic.o
see include/linux/module.h for more information
ERROR: "imx_media_ic_register" [drivers/staging/media/imx/imx-media.ko] undefined!
ERROR: "imx_media_vdic_register" [drivers/staging/media/imx/imx-media.ko] undefined!
ERROR: "imx_media_vdic_unregister" [drivers/staging/media/imx/imx-media.ko] undefined!
ERROR: "imx_media_ic_unregister" [drivers/staging/media/imx/imx-media.ko] undefined!
make[2]: *** [scripts/Makefile.modpost:91: __modpost] Error 1
make[1]: *** [/dev/shm/linux-git/Makefile:1263: modules] Error 2
make: *** [Makefile:170: sub-make] Error 2

---
Cheers,
	Rui

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

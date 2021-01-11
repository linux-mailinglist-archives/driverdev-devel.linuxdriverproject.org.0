Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F09C2F1DD9
	for <lists+driverdev-devel@lfdr.de>; Mon, 11 Jan 2021 19:21:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3D12C8680F;
	Mon, 11 Jan 2021 18:21:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G9rTJWAdQBe7; Mon, 11 Jan 2021 18:21:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 736128651C;
	Mon, 11 Jan 2021 18:21:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E18CF1BF3BB
 for <devel@linuxdriverproject.org>; Mon, 11 Jan 2021 18:21:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DD64687005
 for <devel@linuxdriverproject.org>; Mon, 11 Jan 2021 18:21:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jIcWhnEPRaND for <devel@linuxdriverproject.org>;
 Mon, 11 Jan 2021 18:21:33 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com
 [209.85.218.51])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 14CB786F93
 for <devel@driverdev.osuosl.org>; Mon, 11 Jan 2021 18:21:33 +0000 (UTC)
Received: by mail-ej1-f51.google.com with SMTP id w1so953852ejf.11
 for <devel@driverdev.osuosl.org>; Mon, 11 Jan 2021 10:21:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CFJgcUraVYnAcRA/EQl4N4cPutZjWeez3ie/8dOk8uQ=;
 b=gPztFvge6sLDP2oMhZwGOuEQ0X/dCjbBTq3szIS/EPuYNDe580jPSK55z7yN65wf/h
 agTKvULIOqKZSJ41XSZXtCnlye6Toa2ZjZ5JbBu0oVC2ml/8DldDzkGsmheT3FMllKRq
 BXaDr8EVkhoJnf0nJvtVeL7je6zjHeLvL36OU7hr55cvrPVLdmD9QU6lKkW9Q1oS3c11
 BKxBVrs1vs125kKlQpW2AWIMXSGq+1V5N/QvuzxpgfYwYKHetWIzzItEgYEhuiuewWxK
 b0JP814MMhT6jv4vxGLQpDX/REnsImQR7Vi9r+j+TnTTBtA1LXl7ImVA/XzEn/iBaPoJ
 OnfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CFJgcUraVYnAcRA/EQl4N4cPutZjWeez3ie/8dOk8uQ=;
 b=msZSxcbonOH3KfnWhxMzMIlYWA5mBP3d7thaAeYAK9ohhDc59Bw5L5+vjscNLm0QN8
 6XCnnIZ0JJ+DD99ynNmc3+gj+W/4yX0GLSCgoKrBgWCZfAlboIkp6rTUirFTDZuPdpYc
 VP86ju8aDzPHyBrtjJw2sryeMYhPP2IyNEgNWCUt4TEMCIWXYWVXkIAxUMmbj6GiESDd
 piwNHG1sUdKCQkBEIULqq1+iWon5dTlksqWiMeZGQ0n5v15Q7SAkP1aAlzNrCsSSvJ6R
 hnQoFVYlqkGeCFhI/CgiT6doMZzmaJkUHxD9d5GJyIw0AeXAXH3z/r75o7F6u6oM7KIS
 AzLw==
X-Gm-Message-State: AOAM533TLyz7nQkVS14PGhHWYTYqkhHpo7BAPZB/gkOq7V3/kklmBpw0
 9Imlkhtv0DhZiL/h/OnPTasWA2M0UCYiJcbNv7K1HQ==
X-Google-Smtp-Source: ABdhPJwom3REW4DvPvDU76P3UdiKeANy+VtFakYT/UiUi/Jb4v5N0QsFQet4UQhvnePRkm+//d0FlWxlr142J0dAjGo=
X-Received: by 2002:a17:906:8051:: with SMTP id
 x17mr497930ejw.430.1610389291321; 
 Mon, 11 Jan 2021 10:21:31 -0800 (PST)
MIME-Version: 1.0
References: <20201231142948.3241780-1-paul.kocialkowski@bootlin.com>
 <20201231142948.3241780-10-paul.kocialkowski@bootlin.com>
In-Reply-To: <20201231142948.3241780-10-paul.kocialkowski@bootlin.com>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Mon, 11 Jan 2021 15:21:19 -0300
Message-ID: <CAAEAJfAJYCE2z662hPderJ-5Qv3WBA8K5ZQaZ1JuZbZN+KfFig@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH v4 09/15] media: sunxi: Add support for the
 A31 MIPI CSI-2 controller
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
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
Cc: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 linux-doc@vger.kernel.org, linux-sunxi@googlegroups.com,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, kevin.lhopital@hotmail.com,
 devel@driverdev.osuosl.org, Jonathan Corbet <corbet@lwn.net>,
 Kishon Vijay Abraham I <kishon@ti.com>, Chen-Yu Tsai <wens@csie.org>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 linux-media <linux-media@vger.kernel.org>,
 devicetree <devicetree@vger.kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Helen Koike <helen.koike@collabora.com>,
 Rob Herring <robh+dt@kernel.org>, Yong Deng <yong.deng@magewell.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Salut Paul,

Just a minor comment about the v4l2 async API.

On Thu, 31 Dec 2020 at 11:30, Paul Kocialkowski
<paul.kocialkowski@bootlin.com> wrote:
>
> The A31 MIPI CSI-2 controller is a dedicated MIPI CSI-2 bridge
> found on Allwinner SoCs such as the A31 and V3/V3s.
>
> It is a standalone block, connected to the CSI controller on one side
> and to the MIPI D-PHY block on the other. It has a dedicated address
> space, interrupt line and clock.
>
> It is represented as a V4L2 subdev to the CSI controller and takes a
> MIPI CSI-2 sensor as its own subdev, all using the fwnode graph and
> media controller API.
>
> Only 8-bit and 10-bit Bayer formats are currently supported.
> While up to 4 internal channels to the CSI controller exist, only one
> is currently supported by this implementation.
>
> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> ---
>  drivers/media/platform/sunxi/Kconfig          |   1 +
>  drivers/media/platform/sunxi/Makefile         |   1 +
>  .../platform/sunxi/sun6i-mipi-csi2/Kconfig    |  12 +
>  .../platform/sunxi/sun6i-mipi-csi2/Makefile   |   4 +
>  .../sunxi/sun6i-mipi-csi2/sun6i_mipi_csi2.c   | 590 ++++++++++++++++++
>  .../sunxi/sun6i-mipi-csi2/sun6i_mipi_csi2.h   | 117 ++++
>  6 files changed, 725 insertions(+)
>  create mode 100644 drivers/media/platform/sunxi/sun6i-mipi-csi2/Kconfig
>  create mode 100644 drivers/media/platform/sunxi/sun6i-mipi-csi2/Makefile
>  create mode 100644 drivers/media/platform/sunxi/sun6i-mipi-csi2/sun6i_mipi_csi2.c
>  create mode 100644 drivers/media/platform/sunxi/sun6i-mipi-csi2/sun6i_mipi_csi2.h
>
[..]
> +static int sun6i_mipi_csi2_v4l2_setup(struct sun6i_mipi_csi2_dev *cdev)
> +{
> +       struct sun6i_mipi_csi2_video *video = &cdev->video;
> +       struct v4l2_subdev *subdev = &video->subdev;
> +       struct v4l2_async_notifier *notifier = &video->notifier;
> +       struct fwnode_handle *handle;
> +       struct v4l2_fwnode_endpoint *endpoint;
> +       struct v4l2_async_subdev *subdev_async;
> +       int ret;
> +
> +       /* Subdev */
> +
> +       v4l2_subdev_init(subdev, &sun6i_mipi_csi2_subdev_ops);
> +       subdev->dev = cdev->dev;
> +       subdev->flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;
> +       strscpy(subdev->name, MODULE_NAME, sizeof(subdev->name));
> +       v4l2_set_subdevdata(subdev, cdev);
> +
> +       /* Entity */
> +
> +       subdev->entity.function = MEDIA_ENT_F_VID_IF_BRIDGE;
> +       subdev->entity.ops = &sun6i_mipi_csi2_entity_ops;
> +
> +       /* Pads */
> +
> +       video->pads[0].flags = MEDIA_PAD_FL_SINK;
> +       video->pads[1].flags = MEDIA_PAD_FL_SOURCE;
> +
> +       ret = media_entity_pads_init(&subdev->entity, 2, video->pads);
> +       if (ret)
> +               return ret;
> +
> +       /* Endpoint */
> +
> +       handle = fwnode_graph_get_endpoint_by_id(dev_fwnode(cdev->dev), 0, 0,
> +                                                FWNODE_GRAPH_ENDPOINT_NEXT);
> +       if (!handle) {
> +               ret = -ENODEV;
> +               goto error_media_entity;
> +       }
> +
> +       endpoint = &video->endpoint;
> +       endpoint->bus_type = V4L2_MBUS_CSI2_DPHY;
> +
> +       ret = v4l2_fwnode_endpoint_parse(handle, endpoint);
> +       fwnode_handle_put(handle);

I think the _put should be...

> +       if (ret)
> +               goto error_media_entity;
> +
> +       /* Notifier */
> +
> +       v4l2_async_notifier_init(notifier);
> +
> +       subdev_async = &video->subdev_async;
> +       ret = v4l2_async_notifier_add_fwnode_remote_subdev(notifier, handle,
> +                                                          subdev_async);

... here. See for instance drivers/media/platform/rcar-vin/rcar-csi2.c.

(Unless I've missed something, of course).

Cheers,
Ezequiel
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

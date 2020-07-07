Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FD152166F2
	for <lists+driverdev-devel@lfdr.de>; Tue,  7 Jul 2020 09:01:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B8BC78876A;
	Tue,  7 Jul 2020 07:01:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o2ABdyRYf9cq; Tue,  7 Jul 2020 07:01:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 87A408887F;
	Tue,  7 Jul 2020 07:01:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2536C1BF29D
 for <devel@linuxdriverproject.org>; Tue,  7 Jul 2020 07:01:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 217E687AE8
 for <devel@linuxdriverproject.org>; Tue,  7 Jul 2020 07:01:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D6N4ShB4emsm for <devel@linuxdriverproject.org>;
 Tue,  7 Jul 2020 07:01:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-vs1-f65.google.com (mail-vs1-f65.google.com
 [209.85.217.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 55C7B87A55
 for <devel@driverdev.osuosl.org>; Tue,  7 Jul 2020 07:01:37 +0000 (UTC)
Received: by mail-vs1-f65.google.com with SMTP id v1so21956815vsb.10
 for <devel@driverdev.osuosl.org>; Tue, 07 Jul 2020 00:01:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qbsHVyeK2Vstzqb6QmhJv9+M3wOOHcWN7GhZMwhEauo=;
 b=EEyqfv3lnLwactKiE8HZ/CTLLA9oHPzdCHG+biD5AwMuhpZB+6M4SlswZoR/xFBP/T
 7BVPdd4f+5VxTBjYxixYeitZbYSKWgJJKhSWFL5MxXSr7PKGu3zp/5IMUVhFpv3V/Wdt
 CjZU+UXTjLwhhLIQOa+VmBjJNqT/DdPK3ndHY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qbsHVyeK2Vstzqb6QmhJv9+M3wOOHcWN7GhZMwhEauo=;
 b=K4tHVTyIGvamS5KRkChlJkWV3mYGdQyqG9cdGmnKzCwSD1VA/KmwT0mdKJLvkSue69
 c+2u1zI691ghsoKz520VUQhF//Vn9Z6NoSv3M2YBcNxoxda+pX0YPMyG1FGpXCGoNxRl
 50vJz1rUhL7JvkE8ODLRQhi/eNc+BhF2yuupWf2GmU9UCMh6dsEbPLWxd3r3XBdWxvXI
 ripSeK/2YeX+6phN0Ut+UGSerDSJJEpAAtTcvcid952wNweUqHqXbY/G5x+3RbX9EGmD
 ehBx8PezbH4GvN8ofKLkN8igAHuhrtCjXSduCAqb9a0RL6vAVLvyE0rEyFiCNpVoDcoW
 BdJw==
X-Gm-Message-State: AOAM530/wz8zCJjD81LECT2NZ1/az0A2sDWtK21EBxdPd5SAtjbO1U5B
 6+w4goRCMDeUefPo2jjsLy0S2w6W1+AuQGJ0PqLUag==
X-Google-Smtp-Source: ABdhPJwA2s7xYWSfCkrCts/eUUgdQUXG/H9gqkpnvbcbSGwQe1S7omc1CbDKZxVIZgleI9cmUmc7kJ36DVKAqlSmoE0=
X-Received: by 2002:a67:8e49:: with SMTP id q70mr3322116vsd.14.1594105296201; 
 Tue, 07 Jul 2020 00:01:36 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1591345160.git.xji@analogixsemi.com>
 <a18316c118c7b8ac201911b0b96d41c84653a00f.1591345160.git.xji@analogixsemi.com>
In-Reply-To: <a18316c118c7b8ac201911b0b96d41c84653a00f.1591345160.git.xji@analogixsemi.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Tue, 7 Jul 2020 15:01:25 +0800
Message-ID: <CANMq1KDnoLSUxxYr82o=1eGBR7E3PxoYUr8h1sEVTyqYyHCC-Q@mail.gmail.com>
Subject: Re: [PATCH v13 2/2] drm/bridge: anx7625: Add anx7625 MIPI DSI/DPI to
 DP
To: Xin Ji <xji@analogixsemi.com>
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
Cc: devel@driverdev.osuosl.org, Nicolas Boichat <drinkcat@google.com>,
 Jernej Skrabec <jernej.skrabec@siol.net>, Pi-Hsun Shih <pihsun@chromium.org>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Shawn Ku <shawnku@google.com>, Jonas Karlman <jonas@kwiboo.se>,
 lkml <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Hsin-Yi Wang <hsinyi@chromium.org>,
 Sam Ravnborg <sam@ravnborg.org>, Dan Carpenter <dan.carpenter@oracle.com>,
 Sheng Pan <span@analogixsemi.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jun 9, 2020 at 3:20 PM Xin Ji <xji@analogixsemi.com> wrote:
>
> The ANX7625 is an ultra-low power 4K Mobile HD Transmitter designed
> for portable device. It converts MIPI DSI/DPI to DisplayPort 1.3 4K.
>
> Signed-off-by: Xin Ji <xji@analogixsemi.com>
> ---
>  drivers/gpu/drm/bridge/analogix/Kconfig   |    9 +
>  drivers/gpu/drm/bridge/analogix/Makefile  |    1 +
>  drivers/gpu/drm/bridge/analogix/anx7625.c | 1999 +++++++++++++++++++++++++++++
>  drivers/gpu/drm/bridge/analogix/anx7625.h |  397 ++++++
>  4 files changed, 2406 insertions(+)
>  create mode 100644 drivers/gpu/drm/bridge/analogix/anx7625.c
>  create mode 100644 drivers/gpu/drm/bridge/analogix/anx7625.h
>
> [snip]
> +static int anx7625_parse_dt(struct device *dev,
> +                           struct anx7625_platform_data *pdata)
> +{
> +       struct device_node *np = dev->of_node;
> +       struct device_node *panel_node, *out_ep;
> +
> +       pdata->node.mipi_dsi_host_node = of_graph_get_remote_node(np, 0, 0);
> +       if (!pdata->node.mipi_dsi_host_node) {
> +               DRM_DEV_ERROR(dev, "fail to get internal panel.\n");
> +               return -EPROBE_DEFER;

This does not look correct. I don't think of_graph_get_remote_node
will ever return NULL if the device tree is configured properly, and
it's useless to retry later (EPROBE_DEFER). You should just fail (e.g.
return EINVAL).

> +       }
> +
> +       of_node_put(pdata->node.mipi_dsi_host_node);

You are using pdata->node.mipi_dsi_host_node in other places in the
code, so I don't think it's ok to call of_node_put?

> +       DRM_DEV_DEBUG_DRIVER(dev, "found dsi host node.\n");
> +
> +       pdata->node.panel_node = of_graph_get_port_by_id(np, 1);
> +       if (!pdata->node.panel_node) {
> +               DRM_DEV_ERROR(dev, "fail to get panel node.\n");
> +               return -EPROBE_DEFER;

-EINVAL.

> +       }
> +
> +       of_node_put(pdata->node.panel_node);
> +       out_ep = of_get_child_by_name(pdata->node.panel_node,
> +                                     "endpoint");
> +       if (!out_ep) {
> +               DRM_DEV_DEBUG_DRIVER(dev, "cannot get endpoint.\n");

DRM_DEV_ERROR seems more appropriate

> +               return -EPROBE_DEFER;

-EINVAL

> +       }
> +
> +       panel_node = of_graph_get_remote_port_parent(out_ep);
> +       of_node_put(out_ep);
> +       pdata->panel = of_drm_find_panel(panel_node);
> +       DRM_DEV_DEBUG_DRIVER(dev, "get panel node.\n");
> +
> +       of_node_put(panel_node);
> +       if (IS_ERR_OR_NULL(pdata->panel))
> +               return -EPROBE_DEFER;

of_drm_find_panel cannot return NULL, so, do this instead:

if (IS_ERR(pdata->panel))
   return PTR_ERR(pdata->panel);

(which actually _may_ return EPROBE_DEFER)

> +
> +       return 0;
> +}
> [snip]
> +static int anx7625_i2c_probe(struct i2c_client *client,
> +                            const struct i2c_device_id *id)
> +{
> +       struct anx7625_data *platform;
> +       struct anx7625_platform_data *pdata;
> +       int ret = 0;
> +       struct device *dev = &client->dev;
> +
> +       if (!i2c_check_functionality(client->adapter,
> +                                    I2C_FUNC_SMBUS_I2C_BLOCK)) {
> +               DRM_DEV_ERROR(dev, "anx7625's i2c bus doesn't support\n");
> +               return -ENODEV;
> +       }
> +
> +       platform = kzalloc(sizeof(*platform), GFP_KERNEL);
> +       if (!platform) {
> +               DRM_DEV_ERROR(dev, "fail to allocate driver data\n");
> +               return -ENOMEM;
> +       }
> +
> +       pdata = &platform->pdata;
> +
> +       ret = anx7625_parse_dt(dev, pdata);
> +       if (ret) {
> +               DRM_DEV_ERROR(dev, "fail to parse devicetree.\n");

Please do not print this error (or at least not if err == -EPROBE_DEFER).

> +               goto free_platform;
> +       }
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

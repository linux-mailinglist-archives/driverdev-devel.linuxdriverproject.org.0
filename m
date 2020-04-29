Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 269281BD216
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Apr 2020 04:10:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0076F88046;
	Wed, 29 Apr 2020 02:10:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5GTMrt9xo7Il; Wed, 29 Apr 2020 02:10:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0972C88055;
	Wed, 29 Apr 2020 02:10:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 94E201BF399
 for <devel@linuxdriverproject.org>; Wed, 29 Apr 2020 02:10:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9010084E2E
 for <devel@linuxdriverproject.org>; Wed, 29 Apr 2020 02:10:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ijuE5ntAk90X for <devel@linuxdriverproject.org>;
 Wed, 29 Apr 2020 02:10:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ua1-f67.google.com (mail-ua1-f67.google.com
 [209.85.222.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3805484995
 for <devel@driverdev.osuosl.org>; Wed, 29 Apr 2020 02:10:17 +0000 (UTC)
Received: by mail-ua1-f67.google.com with SMTP id u12so326957uau.10
 for <devel@driverdev.osuosl.org>; Tue, 28 Apr 2020 19:10:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EEiz4HMJY+gJLMc0IjkJJcjI52MRJi3WFunE6kev/X8=;
 b=IGr0uPAwPnAUzql39gFbigTf1/E0vT5ToGKW4FnWX3bF56hobtrwxuxfH9C+n1pxjG
 QofHwiZgi8oufhJDlBpByQQ10aVfZRFVIUrtUo5c/LHQFsbqphHkwoHE1q59g2SVB1NC
 nFc904DWiFqRUWaWvjJN/hGRl6aDvY3o4cEiU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EEiz4HMJY+gJLMc0IjkJJcjI52MRJi3WFunE6kev/X8=;
 b=BcSjgHIZw1MpJ8kESAb+fIMFMw4+APBmAWtk9VXJhqO0df1ziOT7ZrudK1SO+KKs/M
 xRGYLmfycUfwxrCHlHu0TFNrsWLGKi69K8ssX/moKBIORaq6T2v4MSXqPRioH5RzurNn
 si1khu8bPLhvOChJS9kuTCRPB5wNteG4hQcE2RAO5kX6UkVtRpLtfapveMebpnXAqKrs
 KNkO7V2ApF8G0QC4laYGuJwaNeNRjwu5x91twUGwTB82Nk+AGV3D1Xm1LZehY2w7vFDj
 1A7lZvY3Lf474qFLK9zm7Z3owCuH3CLjdX7ABD3Jmh0egYTELGOElVH4evK83+9RGjrs
 7GTA==
X-Gm-Message-State: AGi0PuaI8SvHWxiyQXgtLNxQ+FSRsJEPSZgZEihdltpzEDV1DtQ/U63c
 +K/Ipaj/6Q9q43ZR1+YF5oBNwuhZKYljOLdEpzAB4A==
X-Google-Smtp-Source: APiQypItlQAa5e4mGAa1IHYQ7pc+hM+tuChNF99J4Y7tM8loTIXZXHO2lcr4ukwuovUBkRtkL0SxAQLI4QpRoyNBorc=
X-Received: by 2002:ab0:254:: with SMTP id 78mr22456426uas.77.1588126215976;
 Tue, 28 Apr 2020 19:10:15 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1587880280.git.xji@analogixsemi.com>
 <4d14400b6c19f17c28267f6ebdbce9673333c05c.1587880280.git.xji@analogixsemi.com>
In-Reply-To: <4d14400b6c19f17c28267f6ebdbce9673333c05c.1587880280.git.xji@analogixsemi.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Wed, 29 Apr 2020 10:10:05 +0800
Message-ID: <CANMq1KC2EUPMDqTcaU-HLqfFivR4=7wxrmiSk-VzF0bjjLgNHA@mail.gmail.com>
Subject: Re: [PATCH v8 2/2] drm/bridge: anx7625: Add anx7625 MIPI DSI/DPI to
 DP bridge driver
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
 Jonas Karlman <jonas@kwiboo.se>, David Airlie <airlied@linux.ie>,
 Neil Armstrong <narmstrong@baylibre.com>, lkml <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Dan Carpenter <dan.carpenter@oracle.com>,
 Sheng Pan <span@analogixsemi.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Apr 27, 2020 at 2:18 PM Xin Ji <xji@analogixsemi.com> wrote:
>
> The ANX7625 is an ultra-low power 4K Mobile HD Transmitter designed
> for portable device. It converts MIPI DSI/DPI to DisplayPort 1.3 4K.
>
> The ANX7625 can support both USB Type-C PD feature and MIPI DSI/DPI
> to DP feature. This driver only enabled MIPI DSI/DPI to DP feature.
>
> Signed-off-by: Xin Ji <xji@analogixsemi.com>
> ---
>  drivers/gpu/drm/bridge/Makefile           |    2 +-
>  drivers/gpu/drm/bridge/analogix/Kconfig   |    6 +
>  drivers/gpu/drm/bridge/analogix/Makefile  |    1 +
>  drivers/gpu/drm/bridge/analogix/anx7625.c | 2158 +++++++++++++++++++++++++++++
>  drivers/gpu/drm/bridge/analogix/anx7625.h |  410 ++++++
>  5 files changed, 2576 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/gpu/drm/bridge/analogix/anx7625.c
>  create mode 100644 drivers/gpu/drm/bridge/analogix/anx7625.h
>
> diff --git a/drivers/gpu/drm/bridge/Makefile b/drivers/gpu/drm/bridge/Makefile
> index 4934fcf..bcd388a 100644
> --- a/drivers/gpu/drm/bridge/Makefile
> +++ b/drivers/gpu/drm/bridge/Makefile
> @@ -12,8 +12,8 @@ obj-$(CONFIG_DRM_SII9234) += sii9234.o
>  obj-$(CONFIG_DRM_THINE_THC63LVD1024) += thc63lvd1024.o
>  obj-$(CONFIG_DRM_TOSHIBA_TC358764) += tc358764.o
>  obj-$(CONFIG_DRM_TOSHIBA_TC358767) += tc358767.o
> -obj-$(CONFIG_DRM_ANALOGIX_DP) += analogix/
>  obj-$(CONFIG_DRM_I2C_ADV7511) += adv7511/
>  obj-$(CONFIG_DRM_TI_SN65DSI86) += ti-sn65dsi86.o
>  obj-$(CONFIG_DRM_TI_TFP410) += ti-tfp410.o
> +obj-y += analogix/
>  obj-y += synopsys/
> diff --git a/drivers/gpu/drm/bridge/analogix/Kconfig b/drivers/gpu/drm/bridge/analogix/Kconfig
> index e930ff9..b2f127e 100644
> --- a/drivers/gpu/drm/bridge/analogix/Kconfig
> +++ b/drivers/gpu/drm/bridge/analogix/Kconfig
> @@ -2,3 +2,9 @@
>  config DRM_ANALOGIX_DP
>         tristate
>         depends on DRM
> +
> +config ANALOGIX_ANX7625
> +       tristate "Analogix MIPI to DP interface support"
> +       help
> +               ANX7625 is an ultra-low power 4K mobile HD transmitter designed
> +               for portable devices. It converts MIPI/DPI to DisplayPort1.3 4K.
> diff --git a/drivers/gpu/drm/bridge/analogix/Makefile b/drivers/gpu/drm/bridge/analogix/Makefile
> index fdbf3fd..8a52867 100644
> --- a/drivers/gpu/drm/bridge/analogix/Makefile
> +++ b/drivers/gpu/drm/bridge/analogix/Makefile
> @@ -1,3 +1,4 @@
>  # SPDX-License-Identifier: GPL-2.0-only
> +obj-$(CONFIG_ANALOGIX_ANX7625) += anx7625.o
>  analogix_dp-objs := analogix_dp_core.o analogix_dp_reg.o
>  obj-$(CONFIG_DRM_ANALOGIX_DP) += analogix_dp.o
> diff --git a/drivers/gpu/drm/bridge/analogix/anx7625.c b/drivers/gpu/drm/bridge/analogix/anx7625.c
> new file mode 100644
> index 0000000..fff7a49
> [snip]
> +static int anx7625_attach_dsi(struct anx7625_data *ctx)
> +{
> +       struct mipi_dsi_host *host;
> +       struct mipi_dsi_device *dsi;
> +       struct device_node *mipi_host_node;
> +       struct device *dev = &ctx->client->dev;
> +       const struct mipi_dsi_device_info info = {
> +               .type = "anx7625",
> +               .channel = 0,
> +               .node = NULL,
> +       };
> +
> +       DRM_DEV_DEBUG_DRIVER(dev, "attach dsi\n");
> +
> +       if (ctx->pdata.dsi_supported)
> +               mipi_host_node = ctx->pdata.node.mipi_dsi_host_node;
> +       else
> +               mipi_host_node = ctx->pdata.node.mipi_dpi_host_node;
> +
> +       if (!mipi_host_node) {
> +               DRM_ERROR("dsi host is not configured.\n");
> +               return -EINVAL;
> +       }
> +
> +       host = of_find_mipi_dsi_host_by_node(mipi_host_node);

I tried this driver when connected to a dpi interface, and this fails,
as of_find_mipi_dsi_host_by_node is not able to find the dpi interface
from the SoC.

I'm not too familiar with how dpi bridges are supposed to work in the
kernel, but should we even call "anx7625_attach_dsi" for DPI
interface?

> +       if (!host) {
> +               DRM_ERROR("failed to find dsi host.\n");
> +               return -EINVAL;
> +       }
> +
> +       dsi = mipi_dsi_device_register_full(host, &info);
> +       if (IS_ERR(dsi)) {
> +               DRM_ERROR("failed to create dsi device.\n");
> +               return -EINVAL;
> +       }
> +
> +       dsi->lanes = 4;
> +       dsi->format = MIPI_DSI_FMT_RGB888;
> +       dsi->mode_flags = MIPI_DSI_MODE_VIDEO   |
> +               MIPI_DSI_MODE_VIDEO_SYNC_PULSE  |
> +               MIPI_DSI_MODE_EOT_PACKET        |
> +               MIPI_DSI_MODE_VIDEO_HSE;
> +
> +       if (mipi_dsi_attach(dsi) < 0) {
> +               DRM_ERROR("failed to attach dsi to host.\n");
> +               mipi_dsi_device_unregister(dsi);
> +               return -EINVAL;
> +       }
> +
> +       ctx->dsi = dsi;
> +
> +       DRM_DEV_DEBUG_DRIVER(dev, "attach dsi succeeded.\n");
> +
> +       return 0;
> +}
> +
> [snip]
> +static int anx7625_bridge_attach(struct drm_bridge *bridge)
> +{
> +       struct anx7625_data *ctx = bridge_to_anx7625(bridge);
> +       int err;
> +       struct device *dev = &ctx->client->dev;
> +
> +       DRM_DEV_DEBUG_DRIVER(dev, "drm attach\n");
> +       if (!bridge->encoder) {
> +               DRM_ERROR("Parent encoder object not found");
> +               return -ENODEV;
> +       }
> +
> +       err = drm_connector_init(bridge->dev, &ctx->connector,
> +                                &anx7625_connector_funcs,
> +                                ctx->pdata.internal_panel ?
> +                                       DRM_MODE_CONNECTOR_eDP :
> +                                       DRM_MODE_CONNECTOR_DisplayPort);
> +       if (err) {
> +               DRM_ERROR("Failed to initialize connector: %d\n", err);
> +               return err;
> +       }
> +
> +       drm_connector_helper_add(&ctx->connector,
> +                                &anx7625_connector_helper_funcs);
> +
> +       err = drm_connector_register(&ctx->connector);
> +       if (err) {
> +               DRM_ERROR("Failed to register connector: %d\n", err);
> +               return err;
> +       }
> +
> +       ctx->connector.polled = DRM_CONNECTOR_POLL_HPD;
> +
> +       err = drm_connector_attach_encoder(&ctx->connector, bridge->encoder);
> +       if (err) {
> +               DRM_ERROR("Failed to link up connector to encoder: %d\n", err);
> +               drm_connector_unregister(&ctx->connector);
> +               return err;
> +       }
> +
> +       err = anx7625_attach_dsi(ctx);
> +       if (err) {
> +               DRM_ERROR("Failed to attach to dsi : %d\n", err);
> +               drm_connector_unregister(&ctx->connector);
> +               return err;
> +       }
> +
> +       ctx->bridge_attached = 1;
> +
> +       return 0;
> +}
> +
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

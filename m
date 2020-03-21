Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB2D618DD11
	for <lists+driverdev-devel@lfdr.de>; Sat, 21 Mar 2020 02:09:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 15D3A89381;
	Sat, 21 Mar 2020 01:09:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2bjadNdbqo0Q; Sat, 21 Mar 2020 01:09:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 858EF88A89;
	Sat, 21 Mar 2020 01:09:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8399F1BF3AD
 for <devel@linuxdriverproject.org>; Sat, 21 Mar 2020 01:09:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 800E5864D0
 for <devel@linuxdriverproject.org>; Sat, 21 Mar 2020 01:09:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id penvYvS1sV9F for <devel@linuxdriverproject.org>;
 Sat, 21 Mar 2020 01:09:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6223186277
 for <devel@driverdev.osuosl.org>; Sat, 21 Mar 2020 01:09:32 +0000 (UTC)
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 120862072C;
 Sat, 21 Mar 2020 01:09:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584752972;
 bh=1TMSACbNS6snXsOh2chfn6p2kjbS1jSTgaqql6DheHw=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=yeIm/T7/7y1KH1Gbu+UR/1UIDDnUApqSCB7y14Yi+8X2cQl3dY9W9sm2U07WBj0uS
 YZhyyKsgTUn+hlTiw1pI5dvaYofvwEaMovHPdIpHnq6KqA+eB9sN61MicN5adBFcez
 YR7zPDRPAXKXRrhzra4E66H0cDSb5fXLTf7R80S4=
MIME-Version: 1.0
In-Reply-To: <82828e89ccf4173de4e5e52dcecacc4d5168315c.1584720678.git.alexander.riesen@cetitec.com>
References: <cover.1584720678.git.alexander.riesen@cetitec.com>
 <82828e89ccf4173de4e5e52dcecacc4d5168315c.1584720678.git.alexander.riesen@cetitec.com>
Subject: Re: [PATCH v3 05/11] media: adv748x: add support for HDMI audio
From: Stephen Boyd <sboyd@kernel.org>
To: Alex Riesen <alexander.riesen@cetitec.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>
Date: Fri, 20 Mar 2020 18:09:31 -0700
Message-ID: <158475297119.125146.8177273856843293558@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
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
Cc: Mark Rutland <mark.rutland@arm.com>, devel@driverdev.osuosl.org,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Quoting Alex Riesen (2020-03-20 09:12:00)
> diff --git a/drivers/media/i2c/adv748x/adv748x-dai.c b/drivers/media/i2c/adv748x/adv748x-dai.c
> new file mode 100644
> index 000000000000..6fce7d000423
> --- /dev/null
> +++ b/drivers/media/i2c/adv748x/adv748x-dai.c
> @@ -0,0 +1,265 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Driver for Analog Devices ADV748X HDMI receiver with AFE
> + * The implementation of DAI.
> + */
> +
> +#include "adv748x.h"
> +
> +#include <linux/clk.h>

Is this include used? Please try to make a clk provider or a clk
consumer and not both unless necessary.

> +#include <linux/clk-provider.h>
> +#include <sound/pcm_params.h>
> +
> +#define state_of(soc_dai) \
> +       adv748x_dai_to_state(container_of((soc_dai)->driver, \
> +                                         struct adv748x_dai, \
> +                                         drv))
> +
> +static const char ADV748X_DAI_NAME[] = "adv748x-i2s";
> +
[...]
> +       .set_sysclk = adv748x_dai_set_sysclk,
> +       .set_fmt = adv748x_dai_set_fmt,
> +       .startup = adv748x_dai_startup,
> +       .hw_params = adv748x_dai_hw_params,
> +       .mute_stream = adv748x_dai_mute_stream,
> +       .shutdown = adv748x_dai_shutdown,
> +};
> +
> +static int adv748x_of_xlate_dai_name(struct snd_soc_component *component,
> +                                     struct of_phandle_args *args,
> +                                     const char **dai_name)
> +{
> +       if (dai_name)
> +               *dai_name = ADV748X_DAI_NAME;
> +       return 0;
> +}
> +
> +static const struct snd_soc_component_driver adv748x_codec = {
> +       .of_xlate_dai_name = adv748x_of_xlate_dai_name,
> +};
> +
> +int adv748x_dai_init(struct adv748x_dai *dai)
> +{
> +       int ret;
> +       struct adv748x_state *state = adv748x_dai_to_state(dai);
> +
> +       dai->mclk_name = kasprintf(GFP_KERNEL, "%s.%s-i2s-mclk",
> +                                  state->dev->driver->name,
> +                                  dev_name(state->dev));
> +       if (!dai->mclk_name) {
> +               ret = -ENOMEM;
> +               adv_err(state, "No memory for MCLK\n");
> +               goto fail;
> +       }
> +       dai->mclk = clk_register_fixed_rate(state->dev,

Please register with clk_hw_register_fixed_rate() instead.

> +                                           dai->mclk_name,
> +                                           NULL /* parent_name */,
> +                                           0 /* flags */,
> +                                           12288000 /* rate */);

Not sure these comments are useful.

> +       if (IS_ERR_OR_NULL(dai->mclk)) {
> +               ret = PTR_ERR(dai->mclk);
> +               adv_err(state, "Failed to register MCLK (%d)\n", ret);
> +               goto fail;
> +       }
> +       ret = of_clk_add_provider(state->dev->of_node, of_clk_src_simple_get,
> +                                 dai->mclk);
> +       if (ret < 0) {
> +               adv_err(state, "Failed to add MCLK provider (%d)\n", ret);
> +               goto unreg_mclk;
> +       }
> +       dai->drv.name = ADV748X_DAI_NAME;
> +       dai->drv.ops = &adv748x_dai_ops;
> +       dai->drv.capture = (struct snd_soc_pcm_stream){

Can this be const?

> +               .stream_name    = "Capture",
> +               .channels_min   = 8,
> +               .channels_max   = 8,
> +               .rates = SNDRV_PCM_RATE_48000,
> +               .formats = SNDRV_PCM_FMTBIT_S24_LE | SNDRV_PCM_FMTBIT_U24_LE,
> +       };
> +
> +       ret = devm_snd_soc_register_component(state->dev, &adv748x_codec,
> +                                             &dai->drv, 1);
> +       if (ret < 0) {
> +               adv_err(state, "Failed to register the codec (%d)\n", ret);
> +               goto cleanup_mclk;
> +       }
> +       return 0;
> +
> +cleanup_mclk:
> +       of_clk_del_provider(state->dev->of_node);
> +unreg_mclk:
> +       clk_unregister_fixed_rate(dai->mclk);
> +fail:
> +       return ret;
> +}
> +
> +void adv748x_dai_cleanup(struct adv748x_dai *dai)
> +{
> +       struct adv748x_state *state = adv748x_dai_to_state(dai);
> +
> +       of_clk_del_provider(state->dev->of_node);
> +       clk_unregister_fixed_rate(dai->mclk);
> +       kfree(dai->mclk_name);
> +}
> +

Please drop extra newline at end of file.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

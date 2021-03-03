Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A47D332B8AE
	for <lists+driverdev-devel@lfdr.de>; Wed,  3 Mar 2021 15:40:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3639C4013E;
	Wed,  3 Mar 2021 14:39:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yD6AHbIwCgKn; Wed,  3 Mar 2021 14:39:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3ABED400F4;
	Wed,  3 Mar 2021 14:39:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7426E1BF2B3
 for <devel@linuxdriverproject.org>; Wed,  3 Mar 2021 14:39:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6E57D40109
 for <devel@linuxdriverproject.org>; Wed,  3 Mar 2021 14:39:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A7YLCSx8N6Mq for <devel@linuxdriverproject.org>;
 Wed,  3 Mar 2021 14:39:45 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de
 [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B67B6400F5
 for <devel@driverdev.osuosl.org>; Wed,  3 Mar 2021 14:39:45 +0000 (UTC)
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1lHSez-0003rD-RS; Wed, 03 Mar 2021 15:39:33 +0100
Received: from pza by lupine with local (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1lHSey-0000i4-TA; Wed, 03 Mar 2021 15:39:32 +0100
Message-ID: <29bf66f4b531ec701e85c23a411e40e3621b0ff8.camel@pengutronix.de>
Subject: Re: [PATCH v3 4/5] media: hantro: Use reset driver
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, robh+dt@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com, 
 ezequiel@collabora.com, mchehab@kernel.org, gregkh@linuxfoundation.org
Date: Wed, 03 Mar 2021 15:39:32 +0100
In-Reply-To: <20210301151754.104749-5-benjamin.gaignard@collabora.com>
References: <20210301151754.104749-1-benjamin.gaignard@collabora.com>
 <20210301151754.104749-5-benjamin.gaignard@collabora.com>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-imx@nxp.com, kernel@pengutronix.de, kernel@collabora.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, 2021-03-01 at 16:17 +0100, Benjamin Gaignard wrote:
> Rather use a reset like feature inside the driver use the reset
> controller API to get the same result.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
>  drivers/staging/media/hantro/Kconfig        |  1 +
>  drivers/staging/media/hantro/imx8m_vpu_hw.c | 61 ++++-----------------
>  2 files changed, 12 insertions(+), 50 deletions(-)
> 
> diff --git a/drivers/staging/media/hantro/Kconfig b/drivers/staging/media/hantro/Kconfig
> index 5b6cf9f62b1a..dd1d4dde2658 100644
> --- a/drivers/staging/media/hantro/Kconfig
> +++ b/drivers/staging/media/hantro/Kconfig
> @@ -20,6 +20,7 @@ config VIDEO_HANTRO_IMX8M
>  	bool "Hantro VPU i.MX8M support"
>  	depends on VIDEO_HANTRO
>  	depends on ARCH_MXC || COMPILE_TEST
> +	select RESET_VPU_IMX8MQ
>  	default y
>  	help
>  	  Enable support for i.MX8M SoCs.
> diff --git a/drivers/staging/media/hantro/imx8m_vpu_hw.c b/drivers/staging/media/hantro/imx8m_vpu_hw.c
> index c222de075ef4..d5b4312b9391 100644
> --- a/drivers/staging/media/hantro/imx8m_vpu_hw.c
> +++ b/drivers/staging/media/hantro/imx8m_vpu_hw.c
> @@ -7,49 +7,12 @@
>  
>  #include <linux/clk.h>
>  #include <linux/delay.h>
> +#include <linux/reset.h>
>  
>  #include "hantro.h"
>  #include "hantro_jpeg.h"
>  #include "hantro_g1_regs.h"
>  
> -#define CTRL_SOFT_RESET		0x00
> -#define RESET_G1		BIT(1)
> -#define RESET_G2		BIT(0)
> -
> -#define CTRL_CLOCK_ENABLE	0x04
> -#define CLOCK_G1		BIT(1)
> -#define CLOCK_G2		BIT(0)
> -
> -#define CTRL_G1_DEC_FUSE	0x08
> -#define CTRL_G1_PP_FUSE		0x0c
> -#define CTRL_G2_DEC_FUSE	0x10
> -
> -static void imx8m_soft_reset(struct hantro_dev *vpu, u32 reset_bits)
> -{
> -	u32 val;
> -
> -	/* Assert */
> -	val = readl(vpu->ctrl_base + CTRL_SOFT_RESET);
> -	val &= ~reset_bits;
> -	writel(val, vpu->ctrl_base + CTRL_SOFT_RESET);
> -
> -	udelay(2);
> -
> -	/* Release */
> -	val = readl(vpu->ctrl_base + CTRL_SOFT_RESET);
> -	val |= reset_bits;
> -	writel(val, vpu->ctrl_base + CTRL_SOFT_RESET);
> -}
> -
> -static void imx8m_clk_enable(struct hantro_dev *vpu, u32 clock_bits)
> -{
> -	u32 val;
> -
> -	val = readl(vpu->ctrl_base + CTRL_CLOCK_ENABLE);
> -	val |= clock_bits;
> -	writel(val, vpu->ctrl_base + CTRL_CLOCK_ENABLE);

The way it is implemented in the reset driver, the clocks are now
ungated between assert and deassert instead of afterwards. Is this on
purpose?

regards
Philipp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C53734A960
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Mar 2021 15:14:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 25C6460D4C;
	Fri, 26 Mar 2021 14:14:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EKL3opq3UtpK; Fri, 26 Mar 2021 14:14:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 27E9F60C29;
	Fri, 26 Mar 2021 14:14:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 026031BF59E
 for <devel@linuxdriverproject.org>; Fri, 26 Mar 2021 14:14:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F1A9A40390
 for <devel@linuxdriverproject.org>; Fri, 26 Mar 2021 14:14:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PJvHQJlr7sci for <devel@linuxdriverproject.org>;
 Fri, 26 Mar 2021 14:14:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de
 [85.220.165.71])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CC31440388
 for <devel@driverdev.osuosl.org>; Fri, 26 Mar 2021 14:14:11 +0000 (UTC)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <pza@pengutronix.de>)
 id 1lPnDj-0006Hs-Ik; Fri, 26 Mar 2021 15:13:51 +0100
Received: from pza by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <pza@pengutronix.de>)
 id 1lPnDj-0006e9-30; Fri, 26 Mar 2021 15:13:51 +0100
Date: Fri, 26 Mar 2021 15:13:51 +0100
From: Philipp Zabel <pza@pengutronix.de>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: Re: [PATCH v6 03/13] media: hantro: Use syscon instead of 'ctrl'
 register
Message-ID: <20210326141351.GB8441@pengutronix.de>
References: <20210318082046.51546-1-benjamin.gaignard@collabora.com>
 <20210318082046.51546-4-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210318082046.51546-4-benjamin.gaignard@collabora.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 15:12:15 up 36 days, 17:36, 97 users,  load average: 0.14, 0.18, 0.16
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: pza@pengutronix.de
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
Cc: kernel@collabora.com, devel@driverdev.osuosl.org, lee.jones@linaro.org,
 linux-rockchip@lists.infradead.org, wens@csie.org, linux-imx@nxp.com,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 s.hauer@pengutronix.de, mripard@kernel.org, robh+dt@kernel.org,
 mchehab@kernel.org, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org, jernej.skrabec@siol.net,
 gregkh@linuxfoundation.org, emil.l.velikov@gmail.com,
 linux-kernel@vger.kernel.org, paul.kocialkowski@bootlin.com,
 kernel@pengutronix.de, hverkuil-cisco@xs4all.nl, shawnguo@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Mar 18, 2021 at 09:20:36AM +0100, Benjamin Gaignard wrote:
> In order to be able to share the control hardware block between
> VPUs use a syscon instead a ioremap it in the driver.
> To keep the compatibility with older DT if 'nxp,imx8mq-vpu-ctrl'
> phandle is not found look at 'ctrl' reg-name.
> With the method it becomes useless to provide a list of register
> names so remove it.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
> version 5:
>  - use syscon instead of VPU reset driver.
>  - if DT doesn't provide syscon keep backward compatibilty by using
>    'ctrl' reg-name.
> 
>  drivers/staging/media/hantro/hantro.h       |  5 +-
>  drivers/staging/media/hantro/imx8m_vpu_hw.c | 52 ++++++++++++---------
>  2 files changed, 34 insertions(+), 23 deletions(-)
> 
> diff --git a/drivers/staging/media/hantro/hantro.h b/drivers/staging/media/hantro/hantro.h
> index 65f9f7ea7dcf..a99a96b84b5e 100644
> --- a/drivers/staging/media/hantro/hantro.h
> +++ b/drivers/staging/media/hantro/hantro.h
> @@ -13,6 +13,7 @@
>  #define HANTRO_H_
>  
>  #include <linux/platform_device.h>
> +#include <linux/regmap.h>
>  #include <linux/videodev2.h>
>  #include <linux/wait.h>
>  #include <linux/clk.h>
> @@ -167,7 +168,7 @@ hantro_vdev_to_func(struct video_device *vdev)
>   * @reg_bases:		Mapped addresses of VPU registers.
>   * @enc_base:		Mapped address of VPU encoder register for convenience.
>   * @dec_base:		Mapped address of VPU decoder register for convenience.
> - * @ctrl_base:		Mapped address of VPU control block.
> + * @ctrl_base:		Regmap of VPU control block.
>   * @vpu_mutex:		Mutex to synchronize V4L2 calls.
>   * @irqlock:		Spinlock to synchronize access to data structures
>   *			shared with interrupt handlers.
> @@ -186,7 +187,7 @@ struct hantro_dev {
>  	void __iomem **reg_bases;
>  	void __iomem *enc_base;
>  	void __iomem *dec_base;
> -	void __iomem *ctrl_base;
> +	struct regmap *ctrl_base;
>  
>  	struct mutex vpu_mutex;	/* video_device lock */
>  	spinlock_t irqlock;
> diff --git a/drivers/staging/media/hantro/imx8m_vpu_hw.c b/drivers/staging/media/hantro/imx8m_vpu_hw.c
> index c222de075ef4..bd9d135dd440 100644
> --- a/drivers/staging/media/hantro/imx8m_vpu_hw.c
> +++ b/drivers/staging/media/hantro/imx8m_vpu_hw.c
> @@ -7,6 +7,7 @@
>  
>  #include <linux/clk.h>
>  #include <linux/delay.h>
> +#include <linux/mfd/syscon.h>
>  
>  #include "hantro.h"
>  #include "hantro_jpeg.h"
> @@ -24,30 +25,28 @@
>  #define CTRL_G1_PP_FUSE		0x0c
>  #define CTRL_G2_DEC_FUSE	0x10
>  
> +static const struct regmap_config ctrl_regmap_ctrl = {
> +	.reg_bits = 32,
> +	.val_bits = 32,
> +	.reg_stride = 0x14,
> +};
> +
>  static void imx8m_soft_reset(struct hantro_dev *vpu, u32 reset_bits)
>  {
> -	u32 val;
> -
>  	/* Assert */
> -	val = readl(vpu->ctrl_base + CTRL_SOFT_RESET);
> -	val &= ~reset_bits;
> -	writel(val, vpu->ctrl_base + CTRL_SOFT_RESET);
> +	regmap_update_bits(vpu->ctrl_base, CTRL_SOFT_RESET, reset_bits, 0);
>  
>  	udelay(2);
>  
>  	/* Release */
> -	val = readl(vpu->ctrl_base + CTRL_SOFT_RESET);
> -	val |= reset_bits;
> -	writel(val, vpu->ctrl_base + CTRL_SOFT_RESET);
> +	regmap_update_bits(vpu->ctrl_base, CTRL_SOFT_RESET,
> +			   reset_bits, reset_bits);
>  }
>  
>  static void imx8m_clk_enable(struct hantro_dev *vpu, u32 clock_bits)
>  {
> -	u32 val;
> -
> -	val = readl(vpu->ctrl_base + CTRL_CLOCK_ENABLE);
> -	val |= clock_bits;
> -	writel(val, vpu->ctrl_base + CTRL_CLOCK_ENABLE);
> +	regmap_update_bits(vpu->ctrl_base, CTRL_CLOCK_ENABLE,
> +			   clock_bits, clock_bits);
>  }
>  
>  static int imx8mq_runtime_resume(struct hantro_dev *vpu)
> @@ -64,9 +63,9 @@ static int imx8mq_runtime_resume(struct hantro_dev *vpu)
>  	imx8m_clk_enable(vpu, CLOCK_G1 | CLOCK_G2);
>  
>  	/* Set values of the fuse registers */
> -	writel(0xffffffff, vpu->ctrl_base + CTRL_G1_DEC_FUSE);
> -	writel(0xffffffff, vpu->ctrl_base + CTRL_G1_PP_FUSE);
> -	writel(0xffffffff, vpu->ctrl_base + CTRL_G2_DEC_FUSE);
> +	regmap_write(vpu->ctrl_base, CTRL_G1_DEC_FUSE, 0xffffffff);
> +	regmap_write(vpu->ctrl_base, CTRL_G1_PP_FUSE, 0xffffffff);
> +	regmap_write(vpu->ctrl_base, CTRL_G2_DEC_FUSE, 0xffffffff);
>  
>  	clk_bulk_disable_unprepare(vpu->variant->num_clocks, vpu->clocks);
>  
> @@ -150,8 +149,22 @@ static irqreturn_t imx8m_vpu_g1_irq(int irq, void *dev_id)
>  
>  static int imx8mq_vpu_hw_init(struct hantro_dev *vpu)
>  {
> -	vpu->dec_base = vpu->reg_bases[0];
> -	vpu->ctrl_base = vpu->reg_bases[vpu->variant->num_regs - 1];
> +	struct device_node *np = vpu->dev->of_node;
> +
> +	vpu->ctrl_base = syscon_regmap_lookup_by_phandle(np, "nxp,imx8mq-vpu-ctrl");

I think calling this nxp,imx8m-vpu-ctrl would allow to share this with
i.MX8MM later. Otherwise,

Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>

thanks
Philipp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

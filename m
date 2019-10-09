Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C010ED0F7C
	for <lists+driverdev-devel@lfdr.de>; Wed,  9 Oct 2019 15:02:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B361A8832D;
	Wed,  9 Oct 2019 13:02:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N2u8ny-IVQnY; Wed,  9 Oct 2019 13:02:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0A45B87A2E;
	Wed,  9 Oct 2019 13:02:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7A77F1BF2B3
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 13:02:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 771B587A2E
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 13:02:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OfirzjEBK-bY for <devel@linuxdriverproject.org>;
 Wed,  9 Oct 2019 13:02:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from lb1-smtp-cloud7.xs4all.net (lb1-smtp-cloud7.xs4all.net
 [194.109.24.24])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BD7DF87554
 for <devel@driverdev.osuosl.org>; Wed,  9 Oct 2019 13:02:15 +0000 (UTC)
Received: from [IPv6:2001:983:e9a7:1:2801:e038:f2c3:e060]
 ([IPv6:2001:983:e9a7:1:2801:e038:f2c3:e060])
 by smtp-cloud7.xs4all.net with ESMTPA
 id IBbYigmgKjZ8vIBbZiI1pc; Wed, 09 Oct 2019 15:02:13 +0200
Subject: Re: [PATCH] staging: media: Fix alignment to match open parenthesis
To: Amol Grover <frextrite@gmail.com>, Steve Longerbeam <slongerbeam@gmail.com>
References: <20190911165655.GA22041@Debian.gxnx00eri1wudnlrc5f3ppaydc.bx.internal.cloudapp.net>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <27da1d8b-09fc-8d23-5213-f0c352ee615d@xs4all.nl>
Date: Wed, 9 Oct 2019 15:02:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20190911165655.GA22041@Debian.gxnx00eri1wudnlrc5f3ppaydc.bx.internal.cloudapp.net>
Content-Language: en-US
X-CMAE-Envelope: MS4wfD9xGs8YOYZuV2WnHUMHNDzu/rb3+CIh2AtNp5uss+ux5BI/fVCKdjPT2bWBacECXDWhk3Hf31un/fG+RhxxTg16tusrwCrpOJ0ZB00szu2mhkTClY/7
 4f/V7rNk74jiJaH6t5+c8ix9wYWAf6YeUbzUkHV2JnW+cTZPHuPJ3lVFR3i/jv61sKvcaLlKjl/tzm5D9yporFfLKj2nBVr2IrmBak8yeIsFkuhAj9xiCM91
 Z+cRkBjrpP8E2WbB4vAqd75vw430EJLKXor3vg9m3ojfPtWHJ/v2eMboHFtgpWQr0tAGn8xY9Q5cFFsmQqiPkqptDi2B3Y/+PRKEJ0p2ZD/8ycjSPdIyfaQe
 htaGq53QKeHef36+PMxMMCqaowIiuqtRuscWoIXQrw6JYJrNfbXFu6w57kVcLWUJDZG8uPDX8NUJhncy+TLQwnp5XfxTV3uKA1y+PKQb8x9P0yUzbdFnkE9F
 qUEN4JH7dJojP8BJmCY4Fnfu4lhGPkhATd2J2d9LbzXXqW3iQAA7kw2N2wt7BhA6uavtrk6fXcPkokAZ
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
Cc: devel@driverdev.osuosl.org, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Amol,

For future reference: always include the driver name in the subject.

I've added "imx: " to the subject for you, so no need to resend, but
the driver name is important information.

Regards,

	Hans

On 9/11/19 6:56 PM, Amol Grover wrote:
> CHECK: Alignment should match open parenthesis
> 
> Signed-off-by: Amol Grover <frextrite@gmail.com>
> ---
>  drivers/staging/media/imx/imx-media-csi.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/media/imx/imx-media-csi.c b/drivers/staging/media/imx/imx-media-csi.c
> index 367e39f5b382..773b3d6964cf 100644
> --- a/drivers/staging/media/imx/imx-media-csi.c
> +++ b/drivers/staging/media/imx/imx-media-csi.c
> @@ -627,8 +627,8 @@ static int csi_idmac_start(struct csi_priv *priv)
>  	}
>  
>  	priv->nfb4eof_irq = ipu_idmac_channel_irq(priv->ipu,
> -						 priv->idmac_ch,
> -						 IPU_IRQ_NFB4EOF);
> +						  priv->idmac_ch,
> +						  IPU_IRQ_NFB4EOF);
>  	ret = devm_request_irq(priv->dev, priv->nfb4eof_irq,
>  			       csi_idmac_nfb4eof_interrupt, 0,
>  			       "imx-smfc-nfb4eof", priv);
> @@ -1472,7 +1472,7 @@ static void csi_try_fmt(struct csi_priv *priv,
>  			imx_media_enum_mbus_format(&code, 0,
>  						   CS_SEL_ANY, false);
>  			*cc = imx_media_find_mbus_format(code,
> -							CS_SEL_ANY, false);
> +							 CS_SEL_ANY, false);
>  			sdformat->format.code = (*cc)->codes[0];
>  		}
>  
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

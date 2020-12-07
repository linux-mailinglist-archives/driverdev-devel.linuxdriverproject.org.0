Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 56DF22D0AEB
	for <lists+driverdev-devel@lfdr.de>; Mon,  7 Dec 2020 08:01:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9954E86A54;
	Mon,  7 Dec 2020 07:01:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6qqEFxLUgaCv; Mon,  7 Dec 2020 07:01:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4608686933;
	Mon,  7 Dec 2020 07:01:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9D6D11BF4E4
 for <devel@linuxdriverproject.org>; Mon,  7 Dec 2020 07:01:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9601986933
 for <devel@linuxdriverproject.org>; Mon,  7 Dec 2020 07:01:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NtmbrYUAvkL5 for <devel@linuxdriverproject.org>;
 Mon,  7 Dec 2020 07:01:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de
 [85.220.165.71])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 34DBD86932
 for <devel@driverdev.osuosl.org>; Mon,  7 Dec 2020 07:01:45 +0000 (UTC)
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1kmAWf-0000VH-Pl; Mon, 07 Dec 2020 08:01:37 +0100
Received: from pza by lupine with local (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1kmAWc-00026h-TV; Mon, 07 Dec 2020 08:01:34 +0100
Message-ID: <8b01e4a320c9af9e6502e870e0ce44338542b100.camel@pengutronix.de>
Subject: Re: [PATCH] staging:hantro: Fixed "replace comma with semicolon"
 Warning:
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Travis Carter <traviscarter2@gmail.com>, ezequiel@collabora.com, 
 mchehab@kernel.org, gregkh@linuxfoundation.org
Date: Mon, 07 Dec 2020 08:01:34 +0100
In-Reply-To: <20201204235150.GA8626@linuxmint-midtower-pc>
References: <20201204235150.GA8626@linuxmint-midtower-pc>
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
Cc: devel@driverdev.osuosl.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Travis,

On Fri, 2020-12-04 at 17:51 -0600, Travis Carter wrote:
> Corrected the following Warning:
> drivers/staging/media/hantro/hantro_v4l2.c:319: WARNING: Possible comma where semicolon could be used
> 
> Signed-off-by: Travis Carter <traviscarter2@gmail.com>
> ---
>  drivers/staging/media/hantro/hantro_v4l2.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/hantro/hantro_v4l2.c b/drivers/staging/media/hantro/hantro_v4l2.c
> index b668a82d40ad..e1081c16f56a 100644
> --- a/drivers/staging/media/hantro/hantro_v4l2.c
> +++ b/drivers/staging/media/hantro/hantro_v4l2.c
> @@ -316,7 +316,7 @@ hantro_reset_fmt(struct v4l2_pix_format_mplane *fmt,
>  
>  	fmt->pixelformat = vpu_fmt->fourcc;
>  	fmt->field = V4L2_FIELD_NONE;
> -	fmt->colorspace = V4L2_COLORSPACE_JPEG,
> +	fmt->colorspace = V4L2_COLORSPACE_JPEG;
>  	fmt->ycbcr_enc = V4L2_YCBCR_ENC_DEFAULT;
>  	fmt->quantization = V4L2_QUANTIZATION_DEFAULT;
>  	fmt->xfer_func = V4L2_XFER_FUNC_DEFAULT;

Thank you,

Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>

regards
Philipp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A9F22EF011
	for <lists+driverdev-devel@lfdr.de>; Fri,  8 Jan 2021 10:52:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BEFE5872E9;
	Fri,  8 Jan 2021 09:52:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LguXdq7e+nDc; Fri,  8 Jan 2021 09:52:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A4E6087313;
	Fri,  8 Jan 2021 09:52:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DCCFA1BF5A5
 for <devel@linuxdriverproject.org>; Fri,  8 Jan 2021 09:52:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D902B86D48
 for <devel@linuxdriverproject.org>; Fri,  8 Jan 2021 09:52:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id t48pPRwlevc8 for <devel@linuxdriverproject.org>;
 Fri,  8 Jan 2021 09:52:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de
 [85.220.165.71])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5D99286D47
 for <devel@driverdev.osuosl.org>; Fri,  8 Jan 2021 09:52:20 +0000 (UTC)
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1kxoRH-0004kq-Nx; Fri, 08 Jan 2021 10:52:11 +0100
Received: from pza by lupine with local (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1kxoRD-0004Qd-Gi; Fri, 08 Jan 2021 10:52:07 +0100
Message-ID: <a76a6d85f28834762ddb612706d6edc7c5a4b839.camel@pengutronix.de>
Subject: Re: [PATCH v2 -next] media: hantro: convert comma to semicolon
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Zheng Yongjun <zhengyongjun3@huawei.com>, ezequiel@collabora.com, 
 mchehab@kernel.org, linux-media@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, devel@driverdev.osuosl.org, 
 linux-kernel@vger.kernel.org
Date: Fri, 08 Jan 2021 10:52:07 +0100
In-Reply-To: <20210108092230.18782-1-zhengyongjun3@huawei.com>
References: <20210108092230.18782-1-zhengyongjun3@huawei.com>
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
Cc: gregkh@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, 2021-01-08 at 17:22 +0800, Zheng Yongjun wrote:
> Replace a comma between expression statements by a semicolon.
> 
> Signed-off-by: Zheng Yongjun <zhengyongjun3@huawei.com>
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

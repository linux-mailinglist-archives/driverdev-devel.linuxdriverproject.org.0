Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 223742EBF04
	for <lists+driverdev-devel@lfdr.de>; Wed,  6 Jan 2021 14:46:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 51337230FB;
	Wed,  6 Jan 2021 13:45:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zRX-2qzaKs9e; Wed,  6 Jan 2021 13:45:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 49600204C7;
	Wed,  6 Jan 2021 13:45:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 45BF31BF34B
 for <devel@linuxdriverproject.org>; Wed,  6 Jan 2021 13:45:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 42052204C7
 for <devel@linuxdriverproject.org>; Wed,  6 Jan 2021 13:45:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7JKb4tkkPFey for <devel@linuxdriverproject.org>;
 Wed,  6 Jan 2021 13:45:54 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 902241FD43
 for <devel@driverdev.osuosl.org>; Wed,  6 Jan 2021 13:45:54 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id BE4DA2311A;
 Wed,  6 Jan 2021 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1609940754;
 bh=dCoF2O50cFUHjCxcKBfGbJ4M0gpxaJLAvMtc+XoF27U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=saP0e/tkb9fUsADhfZ8zphsUzXLH5nHr03v0X18DRG4nTOOm5iF8uwxftDnxfirRn
 t2AZbtNgRRWmOA7lPQb4FmNpvQVQvirHznbPK80l/iBodfuCjPfsoZtOOdtJOaHleX
 LYGldEnecXvSTNm3P7+lBNC3P5e2HezXgqzfyA5c=
Date: Wed, 6 Jan 2021 14:47:14 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Zheng Yongjun <zhengyongjun3@huawei.com>
Subject: Re: [PATCH -next] media: rkvdec: use resource_size
Message-ID: <X/W/YnBwP5q9sxkI@kroah.com>
References: <20210106131820.32706-1-zhengyongjun3@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210106131820.32706-1-zhengyongjun3@huawei.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, mchehab@kernel.org, ezequiel@collabora.com,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jan 06, 2021 at 09:18:20PM +0800, Zheng Yongjun wrote:
> Use resource_size rather than a verbose computation on
> the end and start fields.
> 
> Signed-off-by: Zheng Yongjun <zhengyongjun3@huawei.com>
> ---
>  drivers/staging/media/rkvdec/rkvdec.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
> index d25c4a37e2af..66572066e7a0 100644
> --- a/drivers/staging/media/rkvdec/rkvdec.c
> +++ b/drivers/staging/media/rkvdec/rkvdec.c
> @@ -130,7 +130,7 @@ static void rkvdec_reset_fmt(struct rkvdec_ctx *ctx, struct v4l2_format *f,
>  	memset(f, 0, sizeof(*f));
>  	f->fmt.pix_mp.pixelformat = fourcc;
>  	f->fmt.pix_mp.field = V4L2_FIELD_NONE;
> -	f->fmt.pix_mp.colorspace = V4L2_COLORSPACE_REC709,
> +	f->fmt.pix_mp.colorspace = V4L2_COLORSPACE_REC709;
>  	f->fmt.pix_mp.ycbcr_enc = V4L2_YCBCR_ENC_DEFAULT;
>  	f->fmt.pix_mp.quantization = V4L2_QUANTIZATION_DEFAULT;
>  	f->fmt.pix_mp.xfer_func = V4L2_XFER_FUNC_DEFAULT;
> -- 
> 2.22.0
> 

That is not what this patch does at all :(
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

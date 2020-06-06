Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 823551F0545
	for <lists+driverdev-devel@lfdr.de>; Sat,  6 Jun 2020 07:40:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 45D9F87897;
	Sat,  6 Jun 2020 05:40:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LAWqtAPj7Uo1; Sat,  6 Jun 2020 05:40:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 222D78776E;
	Sat,  6 Jun 2020 05:40:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DA1131BF573
 for <devel@linuxdriverproject.org>; Sat,  6 Jun 2020 05:40:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D673A876AE
 for <devel@linuxdriverproject.org>; Sat,  6 Jun 2020 05:40:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tN1r0JRJhHJh for <devel@linuxdriverproject.org>;
 Sat,  6 Jun 2020 05:40:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com
 [209.85.208.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A608D8679A
 for <devel@driverdev.osuosl.org>; Sat,  6 Jun 2020 05:40:18 +0000 (UTC)
Received: by mail-ed1-f65.google.com with SMTP id m21so9049770eds.13
 for <devel@driverdev.osuosl.org>; Fri, 05 Jun 2020 22:40:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wMJkhQnWLIK0t2nhWF/2eUs4TMDM1FwvFYEyzsHbS2k=;
 b=oT9c+V5GfGutAJ8014uEjd++MW4JDywDazRZT9HiOfz/byK/B3E3HwW/7Be+dS9xhx
 JF48qTS+1CbxoUufXNEWn/DXWjQmAf0GrTQg9cHMlSeQLe7TeKhvk8BGD7XFv54oVEMq
 lcq4HZCIzNbchMlSci98gWrdFYNwBFSBHDu4KJJ0K8dNIl11lJhMRT80oaQNmpJ0JyaK
 Rsn2CLKZs5i32GWDaDniLn8H4xg0Pi4vVqspYlmQiXwri71Ew/GjLPxCjcAV4Mb7hs2J
 K0hjZ2S35SGjPcMZnqhl5h9/b8Tyl/9Zo87EGdVLFdju3320HRrskjJauYmNuvNZaGbY
 7mDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wMJkhQnWLIK0t2nhWF/2eUs4TMDM1FwvFYEyzsHbS2k=;
 b=WKWuDZaZ1oNHuFFKn8gNRoVZPatxz00o1mcnMKMXA/iLMLpkYUbEuKbVN26vbjZCiA
 C4eZXksBk6rMHhYDZEVmLtSIQ8bYBW+8aYLxOjpWSXR78gv06okZD8UMUZ/fFhZrbS8Q
 fN57JAFIehkz5jsdeIF8SzqGBakumJF5zVt688rAlwy/J7eBUihmXP6OHxfmDjY1lTqd
 pyKscpOVS1NN1yx2EM3C/feQpyn2MRzs/FTFdwD8PpgHpu3wLSI9AWVQUQQkemZvaowH
 9cO/4sLo5bI0h4RJc4mI6HIW9QtvUGEkecob+T9Ua0cuPagNSEu8/krHEWsFsDNeqkvS
 gZYA==
X-Gm-Message-State: AOAM532JojoKBkuOXuIrJNxEBAfr7WMsgrv6i1jinmEZv0Rp0AzYuHht
 LBybuAlB4S9Ebb1VT0qB5XuSfXkQqPe3VdG9y6QieA==
X-Google-Smtp-Source: ABdhPJypPEN+3QTtet+AfbpuEfd0Jqz2YHf3qVsFbXVSBjLFnbM9Sv84m0UmAGLyMZleeanm+YT2sFXqR7xqGXtfFpM=
X-Received: by 2002:aa7:d483:: with SMTP id b3mr5079356edr.71.1591422016776;
 Fri, 05 Jun 2020 22:40:16 -0700 (PDT)
MIME-Version: 1.0
References: <20200520171457.11937-1-jernej.skrabec@siol.net>
In-Reply-To: <20200520171457.11937-1-jernej.skrabec@siol.net>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Sat, 6 Jun 2020 02:40:05 -0300
Message-ID: <CAAEAJfD2MeaZrRqjYU9uD9cbJZE1JZUz0VeMw01YJSL+Vro-Hg@mail.gmail.com>
Subject: Re: [PATCH] media: cedrus: Add support for additional output formats
To: Jernej Skrabec <jernej.skrabec@siol.net>
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
Cc: devel@driverdev.osuosl.org, Greg KH <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello Jernej,

Thanks for the patch.

On Wed, 20 May 2020 at 14:12, Jernej Skrabec <jernej.skrabec@siol.net> wrote:
>
> If VPU supports untiled output, it actually supports several different
> YUV 4:2:0 layouts, namely NV12, NV21, YUV420 and YVU420.
>
> Add support for all of them.
>
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> ---
>  drivers/staging/media/sunxi/cedrus/cedrus_hw.c | 18 +++++++++++++++++-
>  .../staging/media/sunxi/cedrus/cedrus_video.c  | 18 ++++++++++++++++++
>  2 files changed, 35 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_hw.c b/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
> index daf5f244f93b..c119fd8c4b92 100644
> --- a/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
> +++ b/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
> @@ -83,9 +83,25 @@ void cedrus_dst_format_set(struct cedrus_dev *dev,
>
>         switch (fmt->pixelformat) {
>         case V4L2_PIX_FMT_NV12:
> +       case V4L2_PIX_FMT_NV21:
> +       case V4L2_PIX_FMT_YUV420:
> +       case V4L2_PIX_FMT_YVU420:
>                 chroma_size = ALIGN(width, 16) * ALIGN(height, 16) / 2;
>
> -               reg = VE_PRIMARY_OUT_FMT_NV12;
> +               switch (fmt->pixelformat) {
> +               case V4L2_PIX_FMT_NV12:
> +                       reg = VE_PRIMARY_OUT_FMT_NV12;
> +                       break;
> +               case V4L2_PIX_FMT_NV21:
> +                       reg = VE_PRIMARY_OUT_FMT_NV21;
> +                       break;
> +               case V4L2_PIX_FMT_YUV420:
> +                       reg = VE_PRIMARY_OUT_FMT_YU12;
> +                       break;
> +               case V4L2_PIX_FMT_YVU420:
> +                       reg = VE_PRIMARY_OUT_FMT_YV12;
> +                       break;
> +               }
>                 cedrus_write(dev, VE_PRIMARY_OUT_FMT, reg);
>

I think it would result in a cleaner code if you extend
cedrus_format to include the hw_format.

Something along these lines (not a complete patch):

diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
index 15cf1f10221b..618daaa65a82 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
@@ -48,10 +48,12 @@ static struct cedrus_format cedrus_formats[] = {
        },
        {
                .pixelformat    = V4L2_PIX_FMT_SUNXI_TILED_NV12,
+               .hw_format      = VE_PRIMARY_OUT_FMT_TILED_32_NV12,
                .directions     = CEDRUS_DECODE_DST,
        },
        {
                .pixelformat    = V4L2_PIX_FMT_NV12,
+               .hw_format      = VE_PRIMARY_OUT_FMT_NV12,
                .directions     = CEDRUS_DECODE_DST,
                .capabilities   = CEDRUS_CAPABILITY_UNTILED,
        },
@@ -274,6 +276,7 @@ static int cedrus_s_fmt_vid_cap(struct file *file,
void *priv,
 {
        struct cedrus_ctx *ctx = cedrus_file2ctx(file);
        struct cedrus_dev *dev = ctx->dev;
+       struct cedrus_format *fmt;
        struct vb2_queue *vq;
        int ret;

@@ -287,7 +290,10 @@ static int cedrus_s_fmt_vid_cap(struct file
*file, void *priv,

        ctx->dst_fmt = f->fmt.pix;

-       cedrus_dst_format_set(dev, &ctx->dst_fmt);
+       fmt = cedrus_find_format(ctx->dst_fmt.pixelformat,
+                                CEDRUS_DECODE_DST,
+                                dev->capabilities);
+       cedrus_dst_format_set(dev, fmt);

        return 0;
 }

So then in cedrus_dst_format_set() you can just
write VE_PRIMARY_OUT_FMT with fmt->hw_format.

>                 reg = chroma_size / 2;
> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_video.c b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> index 15cf1f10221b..016021d71df2 100644
> --- a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> +++ b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> @@ -55,6 +55,21 @@ static struct cedrus_format cedrus_formats[] = {
>                 .directions     = CEDRUS_DECODE_DST,
>                 .capabilities   = CEDRUS_CAPABILITY_UNTILED,
>         },
> +       {
> +               .pixelformat    = V4L2_PIX_FMT_NV21,
> +               .directions     = CEDRUS_DECODE_DST,
> +               .capabilities   = CEDRUS_CAPABILITY_UNTILED,
> +       },
> +       {
> +               .pixelformat    = V4L2_PIX_FMT_YUV420,
> +               .directions     = CEDRUS_DECODE_DST,
> +               .capabilities   = CEDRUS_CAPABILITY_UNTILED,
> +       },
> +       {
> +               .pixelformat    = V4L2_PIX_FMT_YVU420,
> +               .directions     = CEDRUS_DECODE_DST,
> +               .capabilities   = CEDRUS_CAPABILITY_UNTILED,
> +       },
>  };
>
>  #define CEDRUS_FORMATS_COUNT   ARRAY_SIZE(cedrus_formats)
> @@ -130,6 +145,9 @@ void cedrus_prepare_format(struct v4l2_pix_format *pix_fmt)
>                 break;
>
>         case V4L2_PIX_FMT_NV12:
> +       case V4L2_PIX_FMT_NV21:
> +       case V4L2_PIX_FMT_YUV420:
> +       case V4L2_PIX_FMT_YVU420:
>                 /* 16-aligned stride. */
>                 bytesperline = ALIGN(width, 16);
>
> --
> 2.26.2
>

Thanks,
Ezequiel
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

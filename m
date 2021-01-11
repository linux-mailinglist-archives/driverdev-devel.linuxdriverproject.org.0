Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E56BC2F11F4
	for <lists+driverdev-devel@lfdr.de>; Mon, 11 Jan 2021 12:56:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E183687074;
	Mon, 11 Jan 2021 11:56:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZGjUOHQawces; Mon, 11 Jan 2021 11:56:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 352E787060;
	Mon, 11 Jan 2021 11:56:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 330781BF3E3
 for <devel@linuxdriverproject.org>; Mon, 11 Jan 2021 11:56:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2CE1886769
 for <devel@linuxdriverproject.org>; Mon, 11 Jan 2021 11:56:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JpkZSrsr-uHQ for <devel@linuxdriverproject.org>;
 Mon, 11 Jan 2021 11:56:05 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f171.google.com (mail-il1-f171.google.com
 [209.85.166.171])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 39457866AC
 for <devel@driverdev.osuosl.org>; Mon, 11 Jan 2021 11:56:05 +0000 (UTC)
Received: by mail-il1-f171.google.com with SMTP id y13so10085403ilm.12
 for <devel@driverdev.osuosl.org>; Mon, 11 Jan 2021 03:56:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uA3TKz8uECHG3k4yaFsUscxG5WEGEfU+DDgmBoAkS/o=;
 b=cIvAbCgayxCKoOYNityjL7wT9stWwPvV5eiCz7X38vD43GczvDqDpmuctteU9QyQ+e
 Km9UDE+qcaQ+wrWWNECGFkMSGJXhz5AW0uKH50716CeXLrfWfAe0i4OFHhFv79uQxpSy
 gnOsEH9u8HNzIAWUO1mhanlP45jDlmTwtKBbU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uA3TKz8uECHG3k4yaFsUscxG5WEGEfU+DDgmBoAkS/o=;
 b=ADwyl7tW98SwUsne6N87CiVxG2gLa8u8zG3yc59axMMhSG88x0klvIqMEBzVPMPy7/
 0rVKPLz21JZQ4thro6uOTDWSl36vu1+zBTkAiHrM9xBDT23IrTfcjhVQnv9QzHVR0P+p
 xa3LG4sX5QkAGtQxlyhnCYnZwXGPMKnUodNqQOlmYeR9XFMfFVEfOX/sYGr4vlUIdR3V
 sBlMqf9GjegBsNSr5+OTzbxz4k0oje3UydOsbuGwomL7snSC/C8JjKhYT7N+kX7+j2vo
 fZ4xR/zQb769LggVYjzyVkDd2EUQG0/uxAgSB49ggzTwmMOFotc2pZjwM8Ej9BFFX4MW
 4nTw==
X-Gm-Message-State: AOAM530seJmFhBWsujanMVHulZwJxewyQipUr5orHD4IhEN6ifRgg8VT
 FgF8/nGeeeBiPdZSc3xFP/eHH1lzP62zmw==
X-Google-Smtp-Source: ABdhPJzIn3u8Mjxw2tRhTsyGMmPbNo+OjSFmV9Z9ty6jANtMYDw2PpCI69JPIY0aqhTjx5HlQUhbbA==
X-Received: by 2002:a92:d40a:: with SMTP id q10mr15240009ilm.20.1610366164297; 
 Mon, 11 Jan 2021 03:56:04 -0800 (PST)
Received: from mail-io1-f54.google.com (mail-io1-f54.google.com.
 [209.85.166.54])
 by smtp.gmail.com with ESMTPSA id e1sm10670160iod.17.2021.01.11.03.56.03
 for <devel@driverdev.osuosl.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 11 Jan 2021 03:56:03 -0800 (PST)
Received: by mail-io1-f54.google.com with SMTP id i18so17535104ioa.1
 for <devel@driverdev.osuosl.org>; Mon, 11 Jan 2021 03:56:03 -0800 (PST)
X-Received: by 2002:a02:c042:: with SMTP id u2mr13813149jam.32.1610366162852; 
 Mon, 11 Jan 2021 03:56:02 -0800 (PST)
MIME-Version: 1.0
References: <20210111113529.45488-1-ribalda@chromium.org>
 <ef218bf2bd948961079237686b58a00ca1b125bf.camel@collabora.com>
In-Reply-To: <ef218bf2bd948961079237686b58a00ca1b125bf.camel@collabora.com>
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Mon, 11 Jan 2021 12:55:52 +0100
X-Gmail-Original-Message-ID: <CANiDSCsX3k7xeC7Sr2T2SxHqspay+i054rAuv-NYCQpFRNuGeg@mail.gmail.com>
Message-ID: <CANiDSCsX3k7xeC7Sr2T2SxHqspay+i054rAuv-NYCQpFRNuGeg@mail.gmail.com>
Subject: Re: [PATCH] hantro: Format IOCTLs compliance fixes
To: Ezequiel Garcia <ezequiel@collabora.com>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-rockchip@lists.infradead.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Ezequiel

On Mon, Jan 11, 2021 at 12:48 PM Ezequiel Garcia <ezequiel@collabora.com> wrote:
>
> Hi Ricardo,
>
> On Mon, 2021-01-11 at 12:35 +0100, Ricardo Ribalda wrote:
> > Clear the reserved fields.
> >
> > Fixes:
> >   fail: v4l2-test-formats.cpp(482): pix_mp.plane_fmt[0].reserved not zeroed
> > test VIDIOC_TRY_FMT: FAIL
> >   fail: v4l2-test-formats.cpp(482): pix_mp.plane_fmt[0].reserved not zeroed
> > test VIDIOC_S_FMT: FAIL
> >
> > Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
> > ---
> >  drivers/staging/media/hantro/hantro_v4l2.c | 5 +++++
> >  1 file changed, 5 insertions(+)
> >
> > diff --git a/drivers/staging/media/hantro/hantro_v4l2.c b/drivers/staging/media/hantro/hantro_v4l2.c
> > index b668a82d40ad..9b384fbffc93 100644
> > --- a/drivers/staging/media/hantro/hantro_v4l2.c
> > +++ b/drivers/staging/media/hantro/hantro_v4l2.c
> > @@ -239,6 +239,7 @@ static int hantro_try_fmt(const struct hantro_ctx *ctx,
> >         const struct hantro_fmt *fmt, *vpu_fmt;
> >         bool capture = V4L2_TYPE_IS_CAPTURE(type);
> >         bool coded;
> > +       int i;
> >
> >         coded = capture == ctx->is_encoder;
> >
> > @@ -293,6 +294,10 @@ static int hantro_try_fmt(const struct hantro_ctx *ctx,
> >                         pix_mp->width * pix_mp->height * fmt->max_depth;
> >         }
> >
> > +       for (i = 0; i < pix_mp->num_planes; i++)
> > +               memset(pix_mp->plane_fmt[i].reserved, 0,
> > +                      sizeof(pix_mp->plane_fmt[i].reserved));
> > +
>
> This looks like something that should be handled at the core,
> probably in drivers/media/v4l2-core/v4l2-ioctl.c::v4l_try_fmt().

The core does clear the reserved field from v4l2_pix_format_mplane,
but not the reserved field for every plane. I can try to add it to the
core as well. At least these drivers have code duplication:

git grep reserved | grep memset | grep plane_fmt
drivers/media/pci/intel/ipu3/ipu3-cio2.c:
memset(mpix->plane_fmt[0].reserved, 0,
drivers/media/platform/mtk-mdp/mtk_mdp_m2m.c:
memset(pix_mp->plane_fmt[i].reserved, 0,
drivers/media/platform/mtk-vcodec/mtk_vcodec_dec.c:
memset(&(pix_fmt_mp->plane_fmt[i].reserved[0]), 0x0,
drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c:
memset(&(pix_fmt_mp->plane_fmt[i].reserved[0]), 0x0,
drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c:
memset(&(pix->plane_fmt[i].reserved[0]), 0x0,
drivers/media/platform/rcar_fdp1.c:
memset(pix->plane_fmt[i].reserved, 0,
drivers/media/platform/rcar_fdp1.c:
memset(pix->plane_fmt[2].reserved, 0,
drivers/media/platform/rcar_jpu.c:
memset(pix->plane_fmt[0].reserved, 0,
drivers/media/platform/rcar_jpu.c:
memset(pix->plane_fmt[i].reserved, 0,
drivers/media/platform/sunxi/sun4i-csi/sun4i_v4l2.c:
memset(pix->plane_fmt[i].reserved, 0,
drivers/media/platform/ti-vpe/vpe.c:
memset(plane_fmt->reserved, 0, sizeof(plane_fmt->reserved));
drivers/media/test-drivers/vicodec/vicodec-core.c:
memset(pix_mp->plane_fmt[0].reserved, 0,
drivers/staging/media/hantro/hantro_v4l2.c:
memset(pix_mp->plane_fmt[i].reserved, 0,
drivers/staging/media/ipu3/ipu3-v4l2.c: memset(pixm->plane_fmt[0].reserved, 0,

>
> Thanks,
> Ezequiel
>


-- 
Ricardo Ribalda
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

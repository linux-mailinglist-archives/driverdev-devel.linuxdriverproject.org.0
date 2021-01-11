Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D3BB2F123A
	for <lists+driverdev-devel@lfdr.de>; Mon, 11 Jan 2021 13:22:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5818F87070;
	Mon, 11 Jan 2021 12:22:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M+hi6ClWl25Y; Mon, 11 Jan 2021 12:22:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C394C8702F;
	Mon, 11 Jan 2021 12:22:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 75A381BF289
 for <devel@linuxdriverproject.org>; Mon, 11 Jan 2021 12:22:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 71FDE8650E
 for <devel@linuxdriverproject.org>; Mon, 11 Jan 2021 12:22:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7TM0LTxhOTNt for <devel@linuxdriverproject.org>;
 Mon, 11 Jan 2021 12:22:20 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f181.google.com (mail-il1-f181.google.com
 [209.85.166.181])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4D40F864F5
 for <devel@driverdev.osuosl.org>; Mon, 11 Jan 2021 12:22:20 +0000 (UTC)
Received: by mail-il1-f181.google.com with SMTP id w17so18072710ilj.8
 for <devel@driverdev.osuosl.org>; Mon, 11 Jan 2021 04:22:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=E3TObj0DpnQ+C6+diTMVXIRK8fmCTHUzn1Fp+y0pweE=;
 b=ZGDMj2yXM/sj19/ajRO5Z3wQwVep6XJ3i5tFwpvUIEBz7202mNkOILo5acwjn/Q/On
 p1HhQRcnCM8uvdlT6VFHgeQcnbTfbQATmu+he4Vn4HBQpgZyKHgW6pyoSdH+TdDoeR53
 q2Vf5u0VpfCoo4pE/BEzVZLGebm7L0rtZiGeQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=E3TObj0DpnQ+C6+diTMVXIRK8fmCTHUzn1Fp+y0pweE=;
 b=WrUu976sMFq2TmTX4GzVENgxaJopLvOkxV/pnhPfeQiACRYq0jr+qtjfGIygHmGNE2
 xq2RQqJXmV4GN/khI3IVu37ti5BD+fcqKr2YvxRoVBuihv6/Qyq9EfdjAvhLKckBCjaN
 SryQz6H28NlpICu85aTHVwaKiWfng6Zq/m0oxlNv6xfylzHmi38TrMHBo807IT9R5BQL
 hWU6tHz1X1Wwgk9wfz1YzjZHsC2y5ZF00kQKolUxK1/W+erKsfi6ctFN56W0cdvQ0nW3
 IWcNhtrNEy5rXDv4BvgvkmcYqBwrTjkRaLiCC1kZpRL38Fqisf7dX7Nrz1GOrYycvcBm
 boUw==
X-Gm-Message-State: AOAM530xXfD2BcqkOpHELKbl0RWVLHwP96GViTex1MEE9CYGogxTJ9JS
 I1BAfuIqI2ZNKNRrnMPIvwgd0oXXxWCOl1/X
X-Google-Smtp-Source: ABdhPJzRe6AaKDZWHaOtJcgs3k1cuvjMVVcHJwaKzXZhb62nXSpfd+N1oznEd6jZRguOsRqjGmfiyg==
X-Received: by 2002:a92:c6c3:: with SMTP id v3mr14905185ilm.281.1610367739491; 
 Mon, 11 Jan 2021 04:22:19 -0800 (PST)
Received: from mail-io1-f44.google.com (mail-io1-f44.google.com.
 [209.85.166.44])
 by smtp.gmail.com with ESMTPSA id z10sm10406876ioi.47.2021.01.11.04.22.18
 for <devel@driverdev.osuosl.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 11 Jan 2021 04:22:18 -0800 (PST)
Received: by mail-io1-f44.google.com with SMTP id q1so3154131ion.8
 for <devel@driverdev.osuosl.org>; Mon, 11 Jan 2021 04:22:18 -0800 (PST)
X-Received: by 2002:a6b:c414:: with SMTP id y20mr14242726ioa.150.1610367737624; 
 Mon, 11 Jan 2021 04:22:17 -0800 (PST)
MIME-Version: 1.0
References: <20210111113529.45488-1-ribalda@chromium.org>
 <ef218bf2bd948961079237686b58a00ca1b125bf.camel@collabora.com>
 <CANiDSCsX3k7xeC7Sr2T2SxHqspay+i054rAuv-NYCQpFRNuGeg@mail.gmail.com>
In-Reply-To: <CANiDSCsX3k7xeC7Sr2T2SxHqspay+i054rAuv-NYCQpFRNuGeg@mail.gmail.com>
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Mon, 11 Jan 2021 13:22:06 +0100
X-Gmail-Original-Message-ID: <CANiDSCuy9MPK8qpwEz4CTta54i6S=k3DsempGLYssU2NtFGM3Q@mail.gmail.com>
Message-ID: <CANiDSCuy9MPK8qpwEz4CTta54i6S=k3DsempGLYssU2NtFGM3Q@mail.gmail.com>
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

On Mon, Jan 11, 2021 at 12:55 PM Ricardo Ribalda <ribalda@chromium.org> wrote:
>
> Hi Ezequiel
>
> On Mon, Jan 11, 2021 at 12:48 PM Ezequiel Garcia <ezequiel@collabora.com> wrote:
> >
> > Hi Ricardo,
> >
> > On Mon, 2021-01-11 at 12:35 +0100, Ricardo Ribalda wrote:
> > > Clear the reserved fields.
> > >
> > > Fixes:
> > >   fail: v4l2-test-formats.cpp(482): pix_mp.plane_fmt[0].reserved not zeroed
> > > test VIDIOC_TRY_FMT: FAIL
> > >   fail: v4l2-test-formats.cpp(482): pix_mp.plane_fmt[0].reserved not zeroed
> > > test VIDIOC_S_FMT: FAIL
> > >
> > > Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
> > > ---
> > >  drivers/staging/media/hantro/hantro_v4l2.c | 5 +++++
> > >  1 file changed, 5 insertions(+)
> > >
> > > diff --git a/drivers/staging/media/hantro/hantro_v4l2.c b/drivers/staging/media/hantro/hantro_v4l2.c
> > > index b668a82d40ad..9b384fbffc93 100644
> > > --- a/drivers/staging/media/hantro/hantro_v4l2.c
> > > +++ b/drivers/staging/media/hantro/hantro_v4l2.c
> > > @@ -239,6 +239,7 @@ static int hantro_try_fmt(const struct hantro_ctx *ctx,
> > >         const struct hantro_fmt *fmt, *vpu_fmt;
> > >         bool capture = V4L2_TYPE_IS_CAPTURE(type);
> > >         bool coded;
> > > +       int i;
> > >
> > >         coded = capture == ctx->is_encoder;
> > >
> > > @@ -293,6 +294,10 @@ static int hantro_try_fmt(const struct hantro_ctx *ctx,
> > >                         pix_mp->width * pix_mp->height * fmt->max_depth;
> > >         }
> > >
> > > +       for (i = 0; i < pix_mp->num_planes; i++)
> > > +               memset(pix_mp->plane_fmt[i].reserved, 0,
> > > +                      sizeof(pix_mp->plane_fmt[i].reserved));
> > > +
> >
> > This looks like something that should be handled at the core,
> > probably in drivers/media/v4l2-core/v4l2-ioctl.c::v4l_try_fmt().
>
> The core does clear the reserved field from v4l2_pix_format_mplane,

My bad, It is also clearing the per plane reserved field. I was
testing in an old kernel.

The grep it is still valid though. We can remove all the memsets in the drivers.

> but not the reserved field for every plane. I can try to add it to the
> core as well. At least these drivers have code duplication:



>
> git grep reserved | grep memset | grep plane_fmt
> drivers/media/pci/intel/ipu3/ipu3-cio2.c:
> memset(mpix->plane_fmt[0].reserved, 0,
> drivers/media/platform/mtk-mdp/mtk_mdp_m2m.c:
> memset(pix_mp->plane_fmt[i].reserved, 0,
> drivers/media/platform/mtk-vcodec/mtk_vcodec_dec.c:
> memset(&(pix_fmt_mp->plane_fmt[i].reserved[0]), 0x0,
> drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c:
> memset(&(pix_fmt_mp->plane_fmt[i].reserved[0]), 0x0,
> drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c:
> memset(&(pix->plane_fmt[i].reserved[0]), 0x0,
> drivers/media/platform/rcar_fdp1.c:
> memset(pix->plane_fmt[i].reserved, 0,
> drivers/media/platform/rcar_fdp1.c:
> memset(pix->plane_fmt[2].reserved, 0,
> drivers/media/platform/rcar_jpu.c:
> memset(pix->plane_fmt[0].reserved, 0,
> drivers/media/platform/rcar_jpu.c:
> memset(pix->plane_fmt[i].reserved, 0,
> drivers/media/platform/sunxi/sun4i-csi/sun4i_v4l2.c:
> memset(pix->plane_fmt[i].reserved, 0,
> drivers/media/platform/ti-vpe/vpe.c:
> memset(plane_fmt->reserved, 0, sizeof(plane_fmt->reserved));
> drivers/media/test-drivers/vicodec/vicodec-core.c:
> memset(pix_mp->plane_fmt[0].reserved, 0,
> drivers/staging/media/hantro/hantro_v4l2.c:
> memset(pix_mp->plane_fmt[i].reserved, 0,
> drivers/staging/media/ipu3/ipu3-v4l2.c: memset(pixm->plane_fmt[0].reserved, 0,
>
> >
> > Thanks,
> > Ezequiel
> >
>
>
> --
> Ricardo Ribalda



-- 
Ricardo Ribalda
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B0E933DB64
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Mar 2021 18:50:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 105C7431B3;
	Tue, 16 Mar 2021 17:50:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 24s6gpLeEZ80; Tue, 16 Mar 2021 17:50:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5CAF2414FF;
	Tue, 16 Mar 2021 17:50:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F1B401BF427
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 17:50:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E0BE182883
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 17:50:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=chromium.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uxpeGfCnSDOl for <devel@linuxdriverproject.org>;
 Tue, 16 Mar 2021 17:50:35 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-io1-xd33.google.com (mail-io1-xd33.google.com
 [IPv6:2607:f8b0:4864:20::d33])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 35A5582404
 for <devel@driverdev.osuosl.org>; Tue, 16 Mar 2021 17:50:35 +0000 (UTC)
Received: by mail-io1-xd33.google.com with SMTP id o9so38135568iow.6
 for <devel@driverdev.osuosl.org>; Tue, 16 Mar 2021 10:50:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JtrNAHIlNGqyu7tY2KgHDa90TRR2iABoGQSIvstGdZs=;
 b=kN4jETKpOsMT8ujABTKX/KoA1MUTlDRb+Z9NHUYVnpAh0syYrBtdaNgzA3IIHB602i
 HsTlTbMAjEyLIPblDWQdvaFB6Q6U8xj7Wm6Qa/UJmkrU/ZRuins9KWZSKS1KwDBsxG0K
 uk71bJAwFyqxS1ex5mOipRhoh7DVGXgqio8WQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JtrNAHIlNGqyu7tY2KgHDa90TRR2iABoGQSIvstGdZs=;
 b=cRDFqLaIIH2fV0hW+LTxuhNJFw9KoFD9QHsfv8y/yMlW9c8nr0z4N+5O1IMC3iYX79
 vw1fuPFZUIXOBy1oH1drCG0sripp8jTqr1EvpAbLhalAfi+OoH3ppOam2pmT0gAh9nJ9
 iRWp60vXeaghhhi7nHdW3BATX5sNc3ZMEJu4tNILDivIFTTTM2zJ46DxCtwvjEmJ1PsW
 85FdZmfsFXLpFc8zjso56IXn4eAaFqGlP1jXUoRfOi+vQfeHpRHkr6vp8N2OA6gjt+R1
 C9031Qpzja7xYaDSLA6E9/M2ffleMl3h5y8MWvr2VoUbAl67xjDrnwrJSCYrbocQJWLL
 YfIQ==
X-Gm-Message-State: AOAM5313fL/es5zv2Ho8mXXFOcQwbY74wgTOUfbE15cANRXYC4n4qy2L
 GRTL0fOFQ4+TBmV1JU0u6J7pidid9sH2NQ==
X-Google-Smtp-Source: ABdhPJzCIuueTb3rtXsPvwql1s2KJdUG5Kh/l5BmSKL8yjdDAoTypOyUwjnAiennhk5WtuDejH0GtA==
X-Received: by 2002:a02:ccd9:: with SMTP id k25mr13906223jaq.43.1615917034079; 
 Tue, 16 Mar 2021 10:50:34 -0700 (PDT)
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com.
 [209.85.166.50])
 by smtp.gmail.com with ESMTPSA id j14sm9344103ilu.3.2021.03.16.10.50.32
 for <devel@driverdev.osuosl.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 16 Mar 2021 10:50:33 -0700 (PDT)
Received: by mail-io1-f50.google.com with SMTP id w11so12355442iol.13
 for <devel@driverdev.osuosl.org>; Tue, 16 Mar 2021 10:50:32 -0700 (PDT)
X-Received: by 2002:a02:cb4b:: with SMTP id k11mr15230940jap.144.1615917032400; 
 Tue, 16 Mar 2021 10:50:32 -0700 (PDT)
MIME-Version: 1.0
References: <20210315123406.1523607-1-ribalda@chromium.org>
 <34c90095-bcbf-5530-786a-e709cc493fa9@linux.intel.com>
In-Reply-To: <34c90095-bcbf-5530-786a-e709cc493fa9@linux.intel.com>
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Tue, 16 Mar 2021 18:50:20 +0100
X-Gmail-Original-Message-ID: <CANiDSCvMvYVN0+zN3du2pJfGLPJ_f7Ees2YrfybJgUDmBjq2jQ@mail.gmail.com>
Message-ID: <CANiDSCvMvYVN0+zN3du2pJfGLPJ_f7Ees2YrfybJgUDmBjq2jQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] media: staging/intel-ipu3: Fix memory leak in
 imu_fmt
To: Bingbu Cao <bingbu.cao@linux.intel.com>
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
Cc: devel@driverdev.osuosl.org, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 stable@vger.kernel.org, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Bingbu Cao <bingbu.cao@intel.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Tianshu Qiu <tian.shu.qiu@intel.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Bingbu

Thanks for your review

On Tue, Mar 16, 2021 at 12:29 PM Bingbu Cao <bingbu.cao@linux.intel.com> wrote:
>
> Hi, Ricardo
>
> Thanks for your patch.
> It looks fine for me, do you mind squash 2 patchsets into 1 commit?

Are you sure? There are two different issues that we are solving.

Best regards!

>
> On 3/15/21 8:34 PM, Ricardo Ribalda wrote:
> > We are losing the reference to an allocated memory if try. Change the
> > order of the check to avoid that.
> >
> > Cc: stable@vger.kernel.org
> > Fixes: 6d5f26f2e045 ("media: staging/intel-ipu3-v4l: reduce kernel stack usage")
> > Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
> > ---
> >  drivers/staging/media/ipu3/ipu3-v4l2.c | 11 +++++++----
> >  1 file changed, 7 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/staging/media/ipu3/ipu3-v4l2.c b/drivers/staging/media/ipu3/ipu3-v4l2.c
> > index 60aa02eb7d2a..35a74d99322f 100644
> > --- a/drivers/staging/media/ipu3/ipu3-v4l2.c
> > +++ b/drivers/staging/media/ipu3/ipu3-v4l2.c
> > @@ -693,6 +693,13 @@ static int imgu_fmt(struct imgu_device *imgu, unsigned int pipe, int node,
> >               if (inode == IMGU_NODE_STAT_3A || inode == IMGU_NODE_PARAMS)
> >                       continue;
> >
> > +             /* CSS expects some format on OUT queue */
> > +             if (i != IPU3_CSS_QUEUE_OUT &&
> > +                 !imgu_pipe->nodes[inode].enabled) {
> > +                     fmts[i] = NULL;
> > +                     continue;
> > +             }
> > +
> >               if (try) {
> >                       fmts[i] = kmemdup(&imgu_pipe->nodes[inode].vdev_fmt.fmt.pix_mp,
> >                                         sizeof(struct v4l2_pix_format_mplane),
> > @@ -705,10 +712,6 @@ static int imgu_fmt(struct imgu_device *imgu, unsigned int pipe, int node,
> >                       fmts[i] = &imgu_pipe->nodes[inode].vdev_fmt.fmt.pix_mp;
> >               }
> >
> > -             /* CSS expects some format on OUT queue */
> > -             if (i != IPU3_CSS_QUEUE_OUT &&
> > -                 !imgu_pipe->nodes[inode].enabled)
> > -                     fmts[i] = NULL;
> >       }
> >
> >       if (!try) {
> >
>
> --
> Best regards,
> Bingbu Cao



-- 
Ricardo Ribalda
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

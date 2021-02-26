Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 670BC325B00
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Feb 2021 01:36:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9C9C34EFE9;
	Fri, 26 Feb 2021 00:36:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gdHgX21Q96_D; Fri, 26 Feb 2021 00:36:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2982D4EFEB;
	Fri, 26 Feb 2021 00:36:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7324C1BF2A9
 for <devel@linuxdriverproject.org>; Fri, 26 Feb 2021 00:36:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 61B7984281
 for <devel@linuxdriverproject.org>; Fri, 26 Feb 2021 00:36:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=vanguardiasur-com-ar.20150623.gappssmtp.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0mPXVEdxP7l1 for <devel@linuxdriverproject.org>;
 Fri, 26 Feb 2021 00:36:22 +0000 (UTC)
X-Greylist: delayed 00:29:02 by SQLgrey-1.8.0
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com
 [209.85.208.48])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 251B484277
 for <devel@driverdev.osuosl.org>; Fri, 26 Feb 2021 00:36:21 +0000 (UTC)
Received: by mail-ed1-f48.google.com with SMTP id c23so2581466edr.13
 for <devel@driverdev.osuosl.org>; Thu, 25 Feb 2021 16:36:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0dMNeVGeNEmq1dAI13Mytw4Ljru52gLa+2kqt1mu+Ns=;
 b=METfQ3BbsD7YYDm9ZB2eQh1FLAqtJK/MIpVHTLeVQbpVt9Ux685sNV3kKIidveaJR7
 Pc322TlXOrqsKq6CUOsEkxghMCtAQXXTXW3rv/oO8M4TeXIg6vPy5bsT0LKJC/wenc2e
 z0ATStODbpurtX2KqgKVZ+ZZjg6ROh0h0g9oYtI3X7NszSMrmqMBIoJ94CAuCf8fJFD6
 xYxYDis8HF/y13Wp1l8P+RdzBNRFESddiBSwBP4dYOP1l/kJEA1XkETk7nmZGpY1Kz75
 6h8PpGz0wFn6l/Bxh4BQd0y10iLvR2BhE0lu+14D1yqv3pUsCIAJXJQOObcMXCm6uHbY
 /K5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0dMNeVGeNEmq1dAI13Mytw4Ljru52gLa+2kqt1mu+Ns=;
 b=ER2PUJ5bprYA0KuWm4pFju3Hk0W82ffGAyu7aU7M1ZWsGxqpbRaEI0yds7VjrCnqYs
 /lrzvSVau9M7KeOjyvU1JcAizLokXGa7e9dmmgdBFPJcPDW6blxErOWxFmkuGOEQJWLN
 5JR3vOd/OEhTSFrIBgfeFT/Vr1UGG8Vky2z2Nbhoshe6pznzthVsEBxbtcWNMvthNBwq
 r0DaEeiC9Ie8FN4iWuVnF8O8VzGvluXgNF1qIVQEy3gRZCJdlr7madcSMbk+bNPlVBTJ
 hBBwVCryI934QhDHZT86Uj/GpiQVMC/c7roYO1loUXXruYPISuDow6BnD9e15pW9NyPb
 ixxQ==
X-Gm-Message-State: AOAM532Td57WbX6iR+FW/L6Q+kB5NKu33Q470nRsNEh61aoVZ84N8gve
 ueay4oQX8ff13SZ2dHQQB4/GZHF6nz2oi7gRG2FhMJ6H6qs=
X-Google-Smtp-Source: ABdhPJz3vDnmJKa1/D8y2YKRdHcDVB2YrPbbchrmyz/pA3o6/3+TJEWKTt8v+d+9rqLT6nw3XmAQzPHb1Ft4fkxcspA=
X-Received: by 2002:a05:6402:2ce:: with SMTP id
 b14mr500529edx.13.1614298037635; 
 Thu, 25 Feb 2021 16:07:17 -0800 (PST)
MIME-Version: 1.0
References: <20210225120601.669238-1-enric.balletbo@collabora.com>
In-Reply-To: <20210225120601.669238-1-enric.balletbo@collabora.com>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Thu, 25 Feb 2021 21:07:05 -0300
Message-ID: <CAAEAJfAubBp4t=6N1vVmH6ksuChZK9GnHydGf-v-3wy9Z9GQrg@mail.gmail.com>
Subject: Re: [PATCH] media: hantro: Auto generate the AXI ID to avoid conflicts
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>
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
Cc: devel@driverdev.osuosl.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, fbuergisser@google.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Doug Anderson <dianders@google.com>, tfiga@google.com,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Collabora Kernel ML <kernel@collabora.com>, acourbot@google.com,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Enric,

Thanks a lot for the patch.

On Thu, 25 Feb 2021 at 09:08, Enric Balletbo i Serra
<enric.balletbo@collabora.com> wrote:
>
> The AXI ID is an AXI bus configuration for improve bus performance. If
> read and write operations use different ID the operations can be
> paralleled, whereas when they have the same ID the operations will be
> serialized. Right now, the write ID is fixed to 0 but we can set it to
> 0xff to get auto generated ID to avoid possible conflicts.
>
> This change has no functional changes, but seems reasonable to let the
> hardware to autogenerate the ID instead of hardcoding in software.
>
> Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
> ---
>
>  drivers/staging/media/hantro/hantro_g1_h264_dec.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/media/hantro/hantro_g1_h264_dec.c b/drivers/staging/media/hantro/hantro_g1_h264_dec.c
> index 845bef73d218..090088cd98ea 100644
> --- a/drivers/staging/media/hantro/hantro_g1_h264_dec.c
> +++ b/drivers/staging/media/hantro/hantro_g1_h264_dec.c
> @@ -30,7 +30,7 @@ static void set_params(struct hantro_ctx *ctx)
>         u32 reg;
>
>         /* Decoder control register 0. */
> -       reg = G1_REG_DEC_CTRL0_DEC_AXI_WR_ID(0x0);
> +       reg = G1_REG_DEC_CTRL0_DEC_AXI_WR_ID(0xff);

Can we define a macro to avoid this magic number,
and add some comments explaining what's 0xff for?

Given this is AXI configuration, I'd expect it's CODEC-agnostic.
Maybe we could move CODEC-agnostic path to avoid duplicating the code?

Does this change apply to the rkvdec driver?

Thanks,
Ezequiel
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

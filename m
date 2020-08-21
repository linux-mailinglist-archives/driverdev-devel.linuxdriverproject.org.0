Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8300024E1E6
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Aug 2020 22:12:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5E7F186F1D;
	Fri, 21 Aug 2020 20:12:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Q3woyu7j35Ip; Fri, 21 Aug 2020 20:12:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E184386F0E;
	Fri, 21 Aug 2020 20:12:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id ABBB91BF34C
 for <devel@linuxdriverproject.org>; Fri, 21 Aug 2020 20:12:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 99B7B88302
 for <devel@linuxdriverproject.org>; Fri, 21 Aug 2020 20:12:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wVvKn-pxC7xw for <devel@linuxdriverproject.org>;
 Fri, 21 Aug 2020 20:12:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f195.google.com (mail-oi1-f195.google.com
 [209.85.167.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C58FC87DAA
 for <devel@driverdev.osuosl.org>; Fri, 21 Aug 2020 20:12:19 +0000 (UTC)
Received: by mail-oi1-f195.google.com with SMTP id j7so2562781oij.9
 for <devel@driverdev.osuosl.org>; Fri, 21 Aug 2020 13:12:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/qU809CtNTXkjajhW2wh13M18DwibA6ul0FCeVgUG8A=;
 b=uNZJcPBuLQI6ASFZUw8QkZ9k3ruDXi+NR0Kt7euvSfH4mOkI5/9P8eZwp0n3pWGIA2
 BJ4j8yy0xBhrOtnOZFZLMc7a8rXqPwypZyipI8fq6RvAnmAgwpFzG81/j/WOGXKiGiPo
 8VAAvITRLMHZv00OrfzzKV4vVj3SWkldqmfvMNhMXywEZI2IPy/6TmMblhy2pRgEfzgz
 yFCi2m/o0WvrnQqp8VkEwh/4O4HMWoET8SG+sn0fYfLw24j101w3Sjs9gBVrCR3pZ9Dm
 STC2SEsoODBbxumcSiZ4huToeiteGnz0EWJmsz9eJevZQlzg1H+uKLuUeJotQ86iS3yf
 yOeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/qU809CtNTXkjajhW2wh13M18DwibA6ul0FCeVgUG8A=;
 b=bTp5kUzuxY+AgK5wN1P61iP3jtwymKF03XwI0G3LYvv5ePA6xUr1S6R+xDounZ5d2a
 pq+mUUsz6B/1PeVjAYOQZ9hcDqb6/+quQCRRBIRct0SEqttjfp5QZ6l52tGLnOAkScvC
 jbhmM6xRBlx9BGklnuTekdWrg/gh1/xV1MTokCKLXPTeRVwPR8gXXoYKbkWq/RT2PnA4
 +l8/LizRvFE9wfHSPUI2NIFpG4xnHzcg03TTKIC9i9K5kOtc9gIOwyqhaFXnMQG+9eEg
 TS0LBONtJlazseUY57JEmV+xCXX706tjr7ytPdQ6Y6Enh01ttQ1x2X2qtGmmMPuUIt+n
 dtwQ==
X-Gm-Message-State: AOAM532khzC92xyGwGQCrR72Lo7vn086cJEzpwjM2YSwRhFdJBJrABeh
 qByk9n/fWVsi8X8ny+/rt+nSEi7TOB2fyX361ZViQw==
X-Google-Smtp-Source: ABdhPJxeOwH2KU0W0WI97zQrIKn2g+YzpfFe6sDTwlBDqKWlmQ7wcHROHsB8ml5rNCQ/tdEe6QqSYj9jep2a15MAg8c=
X-Received: by 2002:aca:1c15:: with SMTP id c21mr2982966oic.10.1598040738933; 
 Fri, 21 Aug 2020 13:12:18 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1597833138.git.mchehab+huawei@kernel.org>
 <9fa944021373ec5b82c2c1e118c15d9effe7f964.1597833138.git.mchehab+huawei@kernel.org>
 <CALAqxLV-LaMPKD-ddRM1EehFh+JZfh1eUsKobXgVG9R+q0EF2w@mail.gmail.com>
 <20200820102332.7223d38d@coco.lan>
In-Reply-To: <20200820102332.7223d38d@coco.lan>
From: John Stultz <john.stultz@linaro.org>
Date: Fri, 21 Aug 2020 13:12:06 -0700
Message-ID: <CALAqxLV1vskvo7MFsKdCiS_XcTy76B5hu2ZfWJbY6p2fVpYCVA@mail.gmail.com>
Subject: Re: [PATCH 25/49] staging: hikey9xx/gpu: do some code cleanups
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
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
Cc: driverdevel <devel@driverdev.osuosl.org>, Rob Herring <robh@kernel.org>,
 Liwei Cai <cailiwei@hisilicon.com>, Manivannan Sadhasivam <mani@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linuxarm@huawei.com,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Xiubin Zhang <zhangxiubin1@huawei.com>, Daniel Vetter <daniel@ffwll.ch>,
 Chen Feng <puck.chen@hisilicon.com>, mauro.chehab@huawei.com,
 lkml <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Aug 20, 2020 at 1:23 AM Mauro Carvalho Chehab
<mchehab+huawei@kernel.org> wrote:
>
> (added c/c Rob Herring)
>
> Em Wed, 19 Aug 2020 18:53:06 -0700
> John Stultz <john.stultz@linaro.org> escreveu:
>
> > On Wed, Aug 19, 2020 at 4:46 AM Mauro Carvalho Chehab
> > <mchehab+huawei@kernel.org> wrote:
> > > @@ -376,7 +355,7 @@ static int kirin_drm_platform_resume(struct platform_device *pdev)
> > >  }
> > >
> > >  static const struct of_device_id kirin_drm_dt_ids[] = {
> > > -       { .compatible = "hisilicon,hi3660-dpe",
> > > +       { .compatible = "hisilicon,kirin960-dpe",
> >
> >
> > One issue, elsewhere in your patch stack you still refer to the
> > hisilicon,hi3660-dpe compatible string. This should probably be
> > consistent one way or the other.
>
> Agreed with regards to consistency.
>
> It sounds to me that calling those as Kirin 9xx (and the previous one
> as Kirin 620) is better than using the part number.
>
> Here, googling for "Kirin 970" gave about 6.9 million hits, while "Hi3670"
> gave only 75,5K hits.
>
> Kirin 620 has similar results: 6.85 million hits, against 61,9 hits
> for "Hi3620".

Hi6620 is kirin 620 I believe.

> With "Kirin 960", the numbers are a lot higher: had 21,4 million hits,
> against 423K hits for "Hi3660".
>
> So, my preference is to use "Kirin 620, 960 and 970" for future changes.

I think traditionally the DTS is developed with the hardware
documentation sometimes before the SoC is announced, so they tend to
stick with whatever those documents call it, rather than (later more
google-able) marketing names.

That said, I don't have a preference, as long as it's consistent, and
we don't change compatible strings that are already upstream.

> I would love to make this consistent among the Kernel. However,
> I'm not sure if changing "compatible" would be acceptable
> by DT maintainers.
>

Existing bindings are already ABI. So we can't change those. New
bindings can be set to what makes the most sense.

thanks
-john
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

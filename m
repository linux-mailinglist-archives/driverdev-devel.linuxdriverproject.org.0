Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 52B7D2A7C18
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Nov 2020 11:43:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 704DF85751;
	Thu,  5 Nov 2020 10:42:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TDnDZ0dW4C6d; Thu,  5 Nov 2020 10:42:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D9A6085754;
	Thu,  5 Nov 2020 10:42:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 507341BF575
 for <devel@linuxdriverproject.org>; Thu,  5 Nov 2020 10:42:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4042022DEC
 for <devel@linuxdriverproject.org>; Thu,  5 Nov 2020 10:42:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g2Ej6Aukc+6c for <devel@linuxdriverproject.org>;
 Thu,  5 Nov 2020 10:42:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by silver.osuosl.org (Postfix) with ESMTPS id A66C2228B0
 for <devel@driverdev.osuosl.org>; Thu,  5 Nov 2020 10:42:51 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id i7so1147620pgh.6
 for <devel@driverdev.osuosl.org>; Thu, 05 Nov 2020 02:42:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZdAvLjoOXomWCs8t6TmIL4j/I5mepz3FWTuHztdBTlc=;
 b=BiAiD4e1h7itpTTBhs3DR4K8CfgZymL8qj1e7tZjDyvL22TAbVaJrB6OdCOJ9dCgt8
 uMo1WI+cg7RQpxF0bBlJEyznK83VkivtEouWpjXE0uDzswIn9ngEEIWZkBVtGoJKPI5a
 3gYONlFV9O8ISMzu91uUEboniTdwBNNIgS1GVf+ZVCHpgeExfkJ3HUKHZ4pHVFwQwMtx
 5vGFFB38gJyFP7FBlRczIoGJ/8EUs8e6gc59Rm7O/sKD+Kj4+eFQl2/7R5M52mOjdRQY
 23FqbRx5TWg7iDot8DaIDKVfEKsFUNqqGSEPkpoltdKL/CwkFxGm9pZGSMzsaqx/PW9N
 dskg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZdAvLjoOXomWCs8t6TmIL4j/I5mepz3FWTuHztdBTlc=;
 b=tH1CI1h68smwxqFigbksDbLMMFI9+oz2EVtuiGSp/rt7vuIJBGHko+Rp+7uUPnZcn5
 HpxULe79oxsw9AR7k0poI4Bz4iK0CUh/SDR2NcZrxQnOdoi7YGOEbtXh0PyjfigsV9Fj
 DuMl1q3R7XrESAlM4M/f9gjO0CfoEIF9FDtnln2YyDEHN7TkShdTpE84Aqw50V2IyAMg
 YGZkVjeRrxJ2sZBsaeCOeIcbuomX/PzsA47oNru0eXOP2CGquUBslAWFB2PuFPjechoG
 Ek3KCvgMERaJaF5xP7Bpy7+X7oo4/QzLlDsO6QAsX8irGWWUv+jltBVOmFlThjfE75Sb
 5kGw==
X-Gm-Message-State: AOAM532H+iq+6Q9mqgdj/DpMlI8zBsgfFKWmpNkcanmYao6qXQoLl2Jv
 lZRYiM1EEeauQaDdYjFt9iTOleSH4GXUBhlgpELjb7ZC2nYBUg==
X-Google-Smtp-Source: ABdhPJxVfapO8HtgRahAnJ4wz7s9HOgbHIAKW7gtu7MmcNt2t4MXd/COFLbP0begvsat+FQbNQGgY8Hv6gEHSKm9IGw=
X-Received: by 2002:a67:f417:: with SMTP id p23mr725992vsn.42.1604572502741;
 Thu, 05 Nov 2020 02:35:02 -0800 (PST)
MIME-Version: 1.0
References: <20201104234427.26477-1-digetx@gmail.com>
 <CAPDyKFr7qTU2RPhA_ZrbCayoTTNUEno1zdmvmv+8HBe-Owrfeg@mail.gmail.com>
 <20201105100603.skrirm7uke4s2xyl@vireshk-i7>
In-Reply-To: <20201105100603.skrirm7uke4s2xyl@vireshk-i7>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 5 Nov 2020 11:34:26 +0100
Message-ID: <CAPDyKFoCJt5MBSKBJ8n1OAMdVsWHdwXTx0zFEcZw_F_gQ6Ug0w@mail.gmail.com>
Subject: Re: [PATCH v1 00/30] Introduce core voltage scaling for NVIDIA
 Tegra20/30 SoCs
To: Viresh Kumar <viresh.kumar@linaro.org>
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
Cc: Peter Chen <Peter.Chen@nxp.com>, DTML <devicetree@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Thierry Reding <thierry.reding@gmail.com>, Dmitry Osipenko <digetx@gmail.com>,
 Lee Jones <lee.jones@linaro.org>, Marek Szyprowski <m.szyprowski@samsung.com>,
 driverdevel <devel@driverdev.osuosl.org>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Nicolas Chauvet <kwizart@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, Alan Stern <stern@rowland.harvard.edu>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 linux-pwm@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 linux-tegra <linux-tegra@vger.kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux USB List <linux-usb@vger.kernel.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Peter Geis <pgwipeout@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, 5 Nov 2020 at 11:06, Viresh Kumar <viresh.kumar@linaro.org> wrote:
>
> On 05-11-20, 10:45, Ulf Hansson wrote:
> > + Viresh
>
> Thanks Ulf. I found a bug in OPP core because you cc'd me here :)

Happy to help. :-)

>
> > On Thu, 5 Nov 2020 at 00:44, Dmitry Osipenko <digetx@gmail.com> wrote:
> > I need some more time to review this, but just a quick check found a
> > few potential issues...
> >
> > The "core-supply", that you specify as a regulator for each
> > controller's device node, is not the way we describe power domains.
>
> Maybe I misunderstood your comment here, but there are two ways of
> scaling the voltage of a device depending on if it is a regulator (and
> can be modeled as one in the kernel) or a power domain.

I am not objecting about scaling the voltage through a regulator,
that's fine to me. However, encoding a power domain as a regulator
(even if it may seem like a regulator) isn't. Well, unless Mark Brown
has changed his mind about this.

In this case, it seems like the regulator supply belongs in the
description of the power domain provider.

>
> In case of Qcom earlier (when we added the performance-state stuff),
> the eventual hardware was out of kernel's control and we didn't wanted
> (allowed) to model it as a virtual regulator just to pass the votes to
> the RPM. And so we did what we did.
>
> But if the hardware (where the voltage is required to be changed) is
> indeed a regulator and is modeled as one, then what Dmitry has done
> looks okay. i.e. add a supply in the device's node and microvolt
> property in the DT entries.

I guess I haven't paid enough attention how power domain regulators
are being described then. I was under the impression that the CPUfreq
case was a bit specific - and we had legacy bindings to stick with.

Can you point me to some other existing examples of where power domain
regulators are specified as a regulator in each device's node?

Kind regards
Uffe
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

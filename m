Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AD55B2A7C0A
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Nov 2020 11:40:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4954D8627E;
	Thu,  5 Nov 2020 10:40:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sgohGgwizGP6; Thu,  5 Nov 2020 10:40:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id EC30E86196;
	Thu,  5 Nov 2020 10:40:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C409C1BF575
 for <devel@linuxdriverproject.org>; Thu,  5 Nov 2020 10:40:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 96D5722D22
 for <devel@linuxdriverproject.org>; Thu,  5 Nov 2020 10:40:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IYJpp9H6xx8n for <devel@linuxdriverproject.org>;
 Thu,  5 Nov 2020 10:40:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 1E62322926
 for <devel@driverdev.osuosl.org>; Thu,  5 Nov 2020 10:40:13 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id p4so597736plr.1
 for <devel@driverdev.osuosl.org>; Thu, 05 Nov 2020 02:40:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=WCCTQKcgxT5BgoXvd55cVkeUPDruRceTke7HPT3Hkyo=;
 b=uI5sjdIZnJfMXmb2BmcneLzfiFbBlet9wY7JQZtjHR0GF8UkHMmcqlXwBrkvsqK1WI
 SeinhDQqNDH8/hEaMPpSpgwvj0qAA2DAOlij96dLz+WulydyVF4o3fYzumZUYFXFoH1h
 ZgXb17DvmcshHNZxztv5zRi/aeOa+ymd+joJrRroDAhLo0nx97avxNo1KBPgxXcO+5qD
 SXvk12UVzaw2/5tEF2FemBinKY4gdRZP1KDwgT69Jbp7nnNi1tx0Yci0mKB/TEHxbTdH
 hUsmGHEaNuInutK+0y4SPLiOBIQ+CzV6c4LqpUQ2rUe9GYtY4Vnxx2LLLnO7akoNoqHJ
 X5Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=WCCTQKcgxT5BgoXvd55cVkeUPDruRceTke7HPT3Hkyo=;
 b=IzSp7F/yhGDH4mXDZ12uPxg/3c47AzU3p8sMdL2tUIzSmxwQ9KgmehFIvsUdKbW4Ln
 O0aw+R759XA+86u/LkJqf/rfWimOqZc0Syfk2rQCShEHbj58EAnXSzeovzJb0TxnS4tZ
 GF0RUPpsvLe9GXoj2MdKelk4EVH/QNqRa1mDuBa3UZiXO68Gq1VVgo0o8y6ATxXMYde2
 a8bNZGSbeBKT/2DaTGqcGmw9dkAkU53tKkh5phnRmYCkjCQuR86CtwuwpadNV8lUShhz
 dnTrZQ6S+el5uklPWHIodVp+ARMO2p5+nClqaQII0SDLWoJRrRWVCbEu4/f6jLBdxS/e
 4KxA==
X-Gm-Message-State: AOAM530R8/X2KecjocgqPiQgqcKRQXslJhpx92Z5Hgd/tUJnxAT1RYaj
 hXXOpVrxb6o9n/JQNQ1kB10mNg==
X-Google-Smtp-Source: ABdhPJxaeig/5BttxMih2SwDkKcSP7+kCvVk+Bpsa5+VJfx+t48gt5Hq0JWRUoD/r4V+wRad0uK0Vw==
X-Received: by 2002:a17:902:b601:b029:d3:e6c5:5112 with SMTP id
 b1-20020a170902b601b02900d3e6c55112mr1328833pls.65.1604572812590; 
 Thu, 05 Nov 2020 02:40:12 -0800 (PST)
Received: from localhost ([122.172.12.172])
 by smtp.gmail.com with ESMTPSA id q11sm1908845pgm.79.2020.11.05.02.40.11
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 05 Nov 2020 02:40:11 -0800 (PST)
Date: Thu, 5 Nov 2020 16:10:09 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH v1 00/30] Introduce core voltage scaling for NVIDIA
 Tegra20/30 SoCs
Message-ID: <20201105104009.oo4dc6a2gdcwduhk@vireshk-i7>
References: <20201104234427.26477-1-digetx@gmail.com>
 <CAPDyKFr7qTU2RPhA_ZrbCayoTTNUEno1zdmvmv+8HBe-Owrfeg@mail.gmail.com>
 <20201105100603.skrirm7uke4s2xyl@vireshk-i7>
 <CAPDyKFoCJt5MBSKBJ8n1OAMdVsWHdwXTx0zFEcZw_F_gQ6Ug0w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPDyKFoCJt5MBSKBJ8n1OAMdVsWHdwXTx0zFEcZw_F_gQ6Ug0w@mail.gmail.com>
User-Agent: NeoMutt/20180716-391-311a52
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
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
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

On 05-11-20, 11:34, Ulf Hansson wrote:
> I am not objecting about scaling the voltage through a regulator,
> that's fine to me. However, encoding a power domain as a regulator
> (even if it may seem like a regulator) isn't. Well, unless Mark Brown
> has changed his mind about this.
>
> In this case, it seems like the regulator supply belongs in the
> description of the power domain provider.

Okay, I wasn't sure if it is a power domain or a regulator here. Btw,
how do we identify if it is a power domain or a regulator ?

> > In case of Qcom earlier (when we added the performance-state stuff),
> > the eventual hardware was out of kernel's control and we didn't wanted
> > (allowed) to model it as a virtual regulator just to pass the votes to
> > the RPM. And so we did what we did.
> >
> > But if the hardware (where the voltage is required to be changed) is
> > indeed a regulator and is modeled as one, then what Dmitry has done
> > looks okay. i.e. add a supply in the device's node and microvolt
> > property in the DT entries.
> 
> I guess I haven't paid enough attention how power domain regulators
> are being described then. I was under the impression that the CPUfreq
> case was a bit specific - and we had legacy bindings to stick with.
> 
> Can you point me to some other existing examples of where power domain
> regulators are specified as a regulator in each device's node?

No, I thought it is a regulator here and not a power domain.

-- 
viresh
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

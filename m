Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CBF722A7CB3
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Nov 2020 12:13:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DDD6022FB9;
	Thu,  5 Nov 2020 11:13:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4rxGJUm+g-3B; Thu,  5 Nov 2020 11:13:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 82D022309D;
	Thu,  5 Nov 2020 11:13:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8F5421BF5A3
 for <devel@linuxdriverproject.org>; Thu,  5 Nov 2020 11:13:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8B33F863F1
 for <devel@linuxdriverproject.org>; Thu,  5 Nov 2020 11:13:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hNm-YRj-8V2p for <devel@linuxdriverproject.org>;
 Thu,  5 Nov 2020 11:13:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B6A3386404
 for <devel@driverdev.osuosl.org>; Thu,  5 Nov 2020 11:13:04 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id q10so622533pfn.0
 for <devel@driverdev.osuosl.org>; Thu, 05 Nov 2020 03:13:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=BcYYFtNRltYDE4hy/KAkGjdjtprJ1Trm7OKV+MnN8cU=;
 b=u8YwcS6hVr8BwxXTTAlNESEmEgsS3lF6OTr1XaUbam4I/edC3qndBdjg6Uy8iz2Q4Q
 hYlNAs1/XTw3soHv/si3tXmCczuo3mNDte6nlbwM878k4WF91kDK1iYVRDtibkoROSKj
 yjfCZIqB3MO3ncbEJATqL58LXrnls4IqwABwbbGOdNIV9RGTDrMZptXqbnjj+V1N6WqI
 HBRHng10F8RPuKJ6CJ1uCINPNb6xUgsC8CsubJFIRFcKAf9XUt6Zu0y7tcW3MCJO9JyS
 huRJpus5BnMDQprBpyeMBR2Zh8O7Sqy9/tsu93YAUw3ok0YtILTEkI4ZmB3ZgeuvMkLC
 Ze4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=BcYYFtNRltYDE4hy/KAkGjdjtprJ1Trm7OKV+MnN8cU=;
 b=S0LJfavbLxdO1B0Bo4ehJQr0ImbITgUpmfOFFBW0HvrUQxVWgn6Tlo58PkTNsV4Ydr
 6ijvM+GiJN3Dh3BBiIi+CuD6N1cKQkttBWzbRWJlHgrwFT/TcOjfcW3jCQTwyhOy0+RB
 qVEUJvC2PGLx+QGRfpx8vhYU9gDpcKssX47h3IDsjrJfrD4xFt82/6MHRZ9kICwC2fNh
 T04XwNE71qgga+yab/pe/jkLNkuddKPqaYtuarBwYvNRZ9sfoEHIrH9SvLiaJs7yrt7T
 ttCCUgoxyE9j85OqfUcAqqRGxagWPhK+mczTBItbhUDIozycBWEXxDT/u6aO7UOSP3IY
 5BCg==
X-Gm-Message-State: AOAM530kPW2dwuLd6QNgm9Ffjoq3TRziE0qMB70+xPSgzwpDhxHJnZNz
 z/vR6ZnKt3cHTnk+CRriWPBKRg==
X-Google-Smtp-Source: ABdhPJwnuuk4daHbZCdYn/aCWQKiS7cX8bO0eWv5v6ODss+cRR8E8lvUDPwS9VwogQBWTDgNXP1wow==
X-Received: by 2002:a17:90a:e391:: with SMTP id
 b17mr1925329pjz.209.1604574784247; 
 Thu, 05 Nov 2020 03:13:04 -0800 (PST)
Received: from localhost ([122.172.12.172])
 by smtp.gmail.com with ESMTPSA id f204sm2296698pfa.189.2020.11.05.03.13.02
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 05 Nov 2020 03:13:03 -0800 (PST)
Date: Thu, 5 Nov 2020 16:43:01 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH v1 00/30] Introduce core voltage scaling for NVIDIA
 Tegra20/30 SoCs
Message-ID: <20201105111301.2hxfx2tnmf2saakp@vireshk-i7>
References: <20201104234427.26477-1-digetx@gmail.com>
 <CAPDyKFr7qTU2RPhA_ZrbCayoTTNUEno1zdmvmv+8HBe-Owrfeg@mail.gmail.com>
 <20201105100603.skrirm7uke4s2xyl@vireshk-i7>
 <CAPDyKFoCJt5MBSKBJ8n1OAMdVsWHdwXTx0zFEcZw_F_gQ6Ug0w@mail.gmail.com>
 <20201105104009.oo4dc6a2gdcwduhk@vireshk-i7>
 <CAPDyKFpQG98d6foc1U6fp3YEBdZ1vLqY9cmWxpUwXoKgDn+ojQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPDyKFpQG98d6foc1U6fp3YEBdZ1vLqY9cmWxpUwXoKgDn+ojQ@mail.gmail.com>
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

On 05-11-20, 11:56, Ulf Hansson wrote:
> On Thu, 5 Nov 2020 at 11:40, Viresh Kumar <viresh.kumar@linaro.org> wrote:
> > Btw, how do we identify if it is a power domain or a regulator ?

To be honest, I was a bit afraid and embarrassed to ask this question,
and was hoping people to make fun of me in return :)

> Good question. It's not a crystal clear line in between them, I think.

And I was relieved after reading this :)

> A power domain to me, means that some part of a silicon (a group of
> controllers or just a single piece, for example) needs some kind of
> resource (typically a power rail) to be enabled to be functional, to
> start with.

Isn't this what a part of regulator does as well ? i.e.
enabling/disabling of the regulator or power to a group of
controllers.

Over that the regulator does voltage/current scaling as well, which
normally the power domains don't do (though we did that in
performance-state case).

> If there are operating points involved, that's also a
> clear indication to me, that it's not a regular regulator.

Is there any example of that? I hope by OPP you meant both freq and
voltage here. I am not sure if I know of a case where a power domain
handles both of them.

> Maybe we should try to specify this more exactly in some
> documentation, somewhere.

I think yes, it is very much required. And in absence of that I think,
many (or most) of the platforms that also need to scale the voltage
would have modeled their hardware as a regulator and not a PM domain.

What I always thought was:

- Module that can just enable/disable power to a block of SoC is a
  power domain.

- Module that can enable/disable as well as scale voltage is a
  regulator.

And so I thought that this patchset has done the right thing. This
changed a bit with the qcom stuff where the IP to be configured was in
control of RPM and not Linux and so we couldn't add it as a regulator.
If it was controlled by Linux, it would have been a regulator in
kernel for sure :)

-- 
viresh
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

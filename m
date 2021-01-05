Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 86A152EB115
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 Jan 2021 18:11:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BE32A860C1;
	Tue,  5 Jan 2021 17:11:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sY2suCacOfSG; Tue,  5 Jan 2021 17:11:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4010986151;
	Tue,  5 Jan 2021 17:11:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 230271BF3A1
 for <devel@linuxdriverproject.org>; Tue,  5 Jan 2021 17:11:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1CE2A860FC
 for <devel@linuxdriverproject.org>; Tue,  5 Jan 2021 17:11:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bWw4icRgvbFs for <devel@linuxdriverproject.org>;
 Tue,  5 Jan 2021 17:11:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com
 [209.85.221.46])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4C75D86038
 for <devel@driverdev.osuosl.org>; Tue,  5 Jan 2021 17:11:16 +0000 (UTC)
Received: by mail-wr1-f46.google.com with SMTP id d26so36836920wrb.12
 for <devel@driverdev.osuosl.org>; Tue, 05 Jan 2021 09:11:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=VnFj1rkcJWvtzQFI6dETJ2tJwVrz2a5nNVgi09YeJXc=;
 b=TV8J9r5vk/wwPNqJ3WXITPaPVfucY4Agao6sWPf1vqVsCuDFKz5+befJGmKKthNbG9
 iADtmeb1jb0SN0EKHGKh7aThYEOb6GcwE+/B/VyCNyPFfeEgVp6O2GNoe3gaqCv3bwXd
 PIiVPDg4VarTShOX32YehGbAgfBZf/K1BfuyaTYL1TrPhjmGHaw6IpCIlJ8MQ7CfHgUi
 3Ych6Ay9Rb0pKho6cUn84AiQoYkBZTOR8q3rp8TvDw4W+d3bGL/FiYNW/kibvtbjB/XS
 eb4Me/2sAj6dC9CoYHXpZ+ByoacrOxgRG2OCOVedkHaPjT/MfLeNZ8EVv7v9lbnz9VP/
 b2Ig==
X-Gm-Message-State: AOAM533VjqSRuSFY0raEDKSy0673deYWCtguX/7nzagi2ssq0HVBtAeX
 vfj3BQjveGVBKvW5n16jv9M=
X-Google-Smtp-Source: ABdhPJzS2tnUNQsATQJa8H0cqybMnT7xhuS0Tkf5JkW0sqRFgMdJGyc8820QQRayohYw3nqJBZqzFA==
X-Received: by 2002:adf:94c7:: with SMTP id 65mr492225wrr.423.1609866674773;
 Tue, 05 Jan 2021 09:11:14 -0800 (PST)
Received: from kozik-lap (adsl-84-226-167-205.adslplus.ch. [84.226.167.205])
 by smtp.googlemail.com with ESMTPSA id n12sm632321wrg.76.2021.01.05.09.11.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Jan 2021 09:11:13 -0800 (PST)
Date: Tue, 5 Jan 2021 18:11:11 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH v2 00/48] Introduce core voltage scaling for NVIDIA
 Tegra20/30 SoCs
Message-ID: <20210105171111.GC26301@kozik-lap>
References: <20201217180638.22748-1-digetx@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201217180638.22748-1-digetx@gmail.com>
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 linux-clk@vger.kernel.org, devel@driverdev.osuosl.org,
 Kevin Hilman <khilman@kernel.org>, Nicolas Chauvet <kwizart@gmail.com>,
 Viresh Kumar <vireshk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-tegra@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Peter De Schrijver <pdeschrijver@nvidia.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Peter Geis <pgwipeout@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Dec 17, 2020 at 09:05:50PM +0300, Dmitry Osipenko wrote:
> Introduce core voltage scaling for NVIDIA Tegra20/30 SoCs, which reduces
> power consumption and heating of the Tegra chips. Tegra SoC has multiple
> hardware units which belong to a core power domain of the SoC and share
> the core voltage. The voltage must be selected in accordance to a minimum
> requirement of every core hardware unit.
> 
> The minimum core voltage requirement depends on:
> 
>   1. Clock enable state of a hardware unit.
>   2. Clock frequency.
>   3. Unit's internal idling/active state.
> 
> This series is tested on Acer A500 (T20), AC100 (T20), Nexus 7 (T30),
> Ouya (T30), TK1 (T124) and some others. I also added voltage scaling to
> the Ventana (T20) and Cardhu (T30) boards which are tested by NVIDIA's CI
> farm. Tegra30 is now couple degrees cooler on Nexus 7 and stays cool on
> Ouya (instead of becoming burning hot) while system is idling. It should
> be possible to improve this further by implementing a more advanced power
> management features for the kernel drivers.
> 
> The DVFS support is opt-in for all boards, meaning that older DTBs will
> continue to work like they did it before this series. It should be possible
> to easily add the core voltage scaling support for Tegra114+ SoCs based on
> this grounding work later on, if anyone will want to implement it.

The same comment as for your interconnect work: for sets touching
multiple systems please mention the dependencies between patches in the
cover letter. Not as a reply to such remark like I make here, but as a
separate entry in the cover letter.

Best regards,
Krzysztof
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

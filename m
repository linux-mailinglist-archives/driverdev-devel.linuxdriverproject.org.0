Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B2BBE2E05CE
	for <lists+driverdev-devel@lfdr.de>; Tue, 22 Dec 2020 06:47:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3181E86A24;
	Tue, 22 Dec 2020 05:47:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sAdYAa-BK22c; Tue, 22 Dec 2020 05:47:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1086C86A01;
	Tue, 22 Dec 2020 05:47:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8DD5B1BF3EC
 for <devel@linuxdriverproject.org>; Tue, 22 Dec 2020 05:47:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 874D785FB9
 for <devel@linuxdriverproject.org>; Tue, 22 Dec 2020 05:47:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tFL84nWtcaby for <devel@linuxdriverproject.org>;
 Tue, 22 Dec 2020 05:47:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com
 [209.85.215.179])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6465485FB4
 for <devel@driverdev.osuosl.org>; Tue, 22 Dec 2020 05:47:49 +0000 (UTC)
Received: by mail-pg1-f179.google.com with SMTP id i7so7693863pgc.8
 for <devel@driverdev.osuosl.org>; Mon, 21 Dec 2020 21:47:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=cCGMbIqC4XxP3YzkMZr/q4dVBJexuv/rEbrwR/RfRdY=;
 b=Srk+K+UPjswKkg/1tVgElwXk8iXMo12S4lotAPM6oNqJRfLX4Akb4jCzrEVhJFkNcN
 KwmEReFJdIBHT2WSRvLkd8i7wVFSz7dFKJm/2rVvjMB6ZGvTiX6hGy+DN4X/ZM868V00
 73HzbED5vDA3gtnluSyszbP9FxpDsO4c7ybd4Z2kxt3KPzrU9HDkl0eZjifyL6ThwXeR
 k0KGy+QQ3/ZEWuzY9D28U31GnJbEv+Z2ji2hUUETC1Z5OcgNUbZ9jIW5JLBjioaJAzAK
 jXto8mCy8uH+aG0s1Wrs8f12pwSFRlOMMfPi/A2aGQydtoLszXVJRV7ZUkW2dkIIR5ja
 0K2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=cCGMbIqC4XxP3YzkMZr/q4dVBJexuv/rEbrwR/RfRdY=;
 b=VDIeW3eTMEAyTIC0tjMyqzqYD101w3avVxvY1V+zsFzP6DN7Zfu/LEQJIUrigWA9T7
 GDqKXprRifiRVMya56hBhxl7Zzzg3/GvTd0J9bhzIFSHb0K2AalVFY6qxHNcMYtiAIZ6
 OYGv2EzUOmGadAoEWWR9zRDmf5jMfdkFiRIBFhOnFnS9xZ78BoUDSvFuD1ehdi/NNq2R
 NXoq3moh/ZpvUlZU11EG8Q9MudKR4P6C2r/q5cCo/ouejz++2hjKnBGeHyYJ2Su0rFG3
 a6LyLEASaCM40MZbhRveQOLAaQ5e+oBwAGnSGJFlA9N3nWWscpyRfPrTvQkzrya6jSV3
 tAhQ==
X-Gm-Message-State: AOAM533pjr+vQq/i6S+MTX1DLi2b9v/86Fspg3QQMQUH3W3oApFW1qb+
 exTmWiYIIE47nFy8LWQoAFY9Hg==
X-Google-Smtp-Source: ABdhPJwP8rj+wVobkUZDGozTZvrM4sLI7dbTq8nO4cY0ZzqShz5ME0L2t66M0IEjW5YQ3Z5zCN6kng==
X-Received: by 2002:a62:e30c:0:b029:19d:932b:a1e2 with SMTP id
 g12-20020a62e30c0000b029019d932ba1e2mr18342199pfh.78.1608616068942; 
 Mon, 21 Dec 2020 21:47:48 -0800 (PST)
Received: from localhost ([122.172.20.109])
 by smtp.gmail.com with ESMTPSA id f29sm18854172pfk.32.2020.12.21.21.47.47
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 21 Dec 2020 21:47:47 -0800 (PST)
Date: Tue, 22 Dec 2020 11:17:45 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH v2 43/48] ARM: tegra: Add OPP tables and power domains to
 Tegra20 device-tree
Message-ID: <20201222054745.2am4bcbk5df5aqzj@vireshk-i7>
References: <20201217180638.22748-1-digetx@gmail.com>
 <20201217180638.22748-44-digetx@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201217180638.22748-44-digetx@gmail.com>
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 linux-clk@vger.kernel.org, devel@driverdev.osuosl.org,
 Kevin Hilman <khilman@kernel.org>, Nicolas Chauvet <kwizart@gmail.com>,
 Viresh Kumar <vireshk@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-tegra@vger.kernel.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Peter De Schrijver <pdeschrijver@nvidia.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Peter Geis <pgwipeout@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 17-12-20, 21:06, Dmitry Osipenko wrote:
> diff --git a/arch/arm/boot/dts/tegra20-peripherals-opp.dtsi b/arch/arm/boot/dts/tegra20-peripherals-opp.dtsi
> index b84afecea154..7e015cdfbc55 100644
> --- a/arch/arm/boot/dts/tegra20-peripherals-opp.dtsi
> +++ b/arch/arm/boot/dts/tegra20-peripherals-opp.dtsi
> @@ -1,6 +1,46 @@
>  // SPDX-License-Identifier: GPL-2.0
>  
>  / {
> +	core_opp_table: core-power-domain-opp-table {
> +		compatible = "operating-points-v2";
> +		opp-shared;
> +
> +		core_opp_950: opp@950000 {
> +			opp-microvolt = <950000 950000 1300000>;
> +			opp-level = <950000>;
> +		};

I am not sure I fully understand this, why does it have both microvolt and level
properties ?

-- 
viresh
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

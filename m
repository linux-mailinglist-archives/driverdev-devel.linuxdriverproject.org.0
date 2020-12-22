Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 71AE42E07C6
	for <lists+driverdev-devel@lfdr.de>; Tue, 22 Dec 2020 10:14:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 28524273D3;
	Tue, 22 Dec 2020 09:14:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3ts-MEmL4SZX; Tue, 22 Dec 2020 09:14:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D75FC2721B;
	Tue, 22 Dec 2020 09:14:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 402A91BF27C
 for <devel@linuxdriverproject.org>; Tue, 22 Dec 2020 09:14:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3BF82869D4
 for <devel@linuxdriverproject.org>; Tue, 22 Dec 2020 09:14:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h4pyZDYSqa9b for <devel@linuxdriverproject.org>;
 Tue, 22 Dec 2020 09:14:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com
 [209.85.210.178])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5C39F8687A
 for <devel@driverdev.osuosl.org>; Tue, 22 Dec 2020 09:14:11 +0000 (UTC)
Received: by mail-pf1-f178.google.com with SMTP id t22so8124025pfl.3
 for <devel@driverdev.osuosl.org>; Tue, 22 Dec 2020 01:14:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=MVpnGnCFYtu4ycJzZf+LSk9hEI84NI49MudCxGCR+HM=;
 b=MH/242BQ7qGA/c7ZKFlxo9k35H+BRyW2M9A5zqCbM7dzzv0lHpYdUkBpCj7oEZp13m
 Ffv/YsG7ikpYjSZ/eEGKTEqY8LO+IwgxlNhlguzw31ez4ZqJJXcjZLoVnBXGWPC6ErWp
 C4MMWo1PjKz1dR7jRL3QB8SQVMUTHXfciaZm6EDwN6BotFowAPQcOqN9+kpF0OvIKtTd
 1qrZG5oeRJU/1gmMrD39Gfgd5fELI6zV4kIgaf3rqokdN4f26P7QJMe8AgrauAKTYpgV
 F65EaKqCccbzS16iksFwGpcNQ/HNxaTyiClovDAv6TCiG96SWFf14Mxu2pqAyQ6WpN2l
 eGbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=MVpnGnCFYtu4ycJzZf+LSk9hEI84NI49MudCxGCR+HM=;
 b=hG4KjspgzPhMK6gIurXNM7Zb6WOjhYf8TisEiDozZ8LIlF9eC4NnVgcypEUOU6iXbs
 a0kTLeHQU3DjV2eveJYqqtlOMGBzgzlAjpe2jN7Nc4aBLxj8J7/WCWYY6/f/S5LQ4L2L
 nCr+qHwmFBLFZ2O6cnEugqLTTlNCOf1Uw5ER0FBDN6DrF5bALkNa4Q954Vub4HCP65JI
 NINSfbIvMbVCEe3Ajsp6bV1wpSkbBhO7/Qb0cGVf+ApFpwe6cfWomM4pAecdQhOEr/91
 6XgR//kJ9ZSN1VAvUfTJLMYjVU3389ijOYg7/bglYe68pDCAcLRjtDLuWdFJiHw/wJTS
 09GQ==
X-Gm-Message-State: AOAM53294cy4zQEUxe49MOO14etwLbS9OnlpTUmjrx83JgwrCcKnIdz6
 0NJrhKAWByNaSVW+RsohhlDVsA==
X-Google-Smtp-Source: ABdhPJxR442Its0VhdjNxmES11BozYg6f4jsASsSW6TfWxeI3592psXLb9CuQTRVoVKmE/eJsKTU5A==
X-Received: by 2002:a05:6a00:230d:b029:18b:9cb:dead with SMTP id
 h13-20020a056a00230db029018b09cbdeadmr18667524pfh.24.1608628450994; 
 Tue, 22 Dec 2020 01:14:10 -0800 (PST)
Received: from localhost ([122.172.20.109])
 by smtp.gmail.com with ESMTPSA id t5sm18222978pjr.22.2020.12.22.01.14.09
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 22 Dec 2020 01:14:10 -0800 (PST)
Date: Tue, 22 Dec 2020 14:44:08 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH v2 44/48] ARM: tegra: Add OPP tables and power domains to
 Tegra30 device-tree
Message-ID: <20201222091408.vvputqs27olywdxq@vireshk-i7>
References: <20201217180638.22748-1-digetx@gmail.com>
 <20201217180638.22748-45-digetx@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201217180638.22748-45-digetx@gmail.com>
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
> diff --git a/arch/arm/boot/dts/tegra30-peripherals-opp.dtsi b/arch/arm/boot/dts/tegra30-peripherals-opp.dtsi
> index cbe84d25e726..983db1a06682 100644
> --- a/arch/arm/boot/dts/tegra30-peripherals-opp.dtsi
> +++ b/arch/arm/boot/dts/tegra30-peripherals-opp.dtsi
> @@ -1,6 +1,56 @@
>  // SPDX-License-Identifier: GPL-2.0
>  
>  / {
> +	core_opp_table: core-power-domain-opp-table {
> +		compatible = "operating-points-v2";
> +		opp-shared;
> +
> +		core_opp_950: opp@950000 {
> +			opp-microvolt = <950000 950000 1350000>;
> +			opp-level = <950000>;

Perhaps you don't need to exactly copy the voltage value into the level field.
The level field can just be kept to 0, 1,2, 3, etc..

> +		};
> +
> +		core_opp_1000: opp@1000000 {
> +			opp-microvolt = <1000000 1000000 1350000>;
> +			opp-level = <1000000>;
> +		};
> +
> +		core_opp_1050: opp@1050000 {
> +			opp-microvolt = <1050000 1050000 1350000>;
> +			opp-level = <1050000>;
> +		};
> +
> +		core_opp_1100: opp@1100000 {
> +			opp-microvolt = <1100000 1100000 1350000>;
> +			opp-level = <1100000>;
> +		};
> +
> +		core_opp_1150: opp@1150000 {
> +			opp-microvolt = <1150000 1150000 1350000>;
> +			opp-level = <1150000>;
> +		};
> +
> +		core_opp_1200: opp@1200000 {
> +			opp-microvolt = <1200000 1200000 1350000>;
> +			opp-level = <1200000>;
> +		};
> +
> +		core_opp_1250: opp@1250000 {
> +			opp-microvolt = <1250000 1250000 1350000>;
> +			opp-level = <1250000>;
> +		};
> +
> +		core_opp_1300: opp@1300000 {
> +			opp-microvolt = <1300000 1300000 1350000>;
> +			opp-level = <1300000>;
> +		};
> +
> +		core_opp_1350: opp@1350000 {
> +			opp-microvolt = <1350000 1350000 1350000>;
> +			opp-level = <1350000>;
> +		};
> +	};

-- 
viresh
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

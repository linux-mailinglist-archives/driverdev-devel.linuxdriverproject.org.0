Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 93F172E02A5
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Dec 2020 23:54:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 15D3622E96;
	Mon, 21 Dec 2020 22:54:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H-ALXaiw8wbV; Mon, 21 Dec 2020 22:54:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6874922DDB;
	Mon, 21 Dec 2020 22:54:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 293201BF97A
 for <devel@linuxdriverproject.org>; Mon, 21 Dec 2020 22:54:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1F6A122CB0
 for <devel@linuxdriverproject.org>; Mon, 21 Dec 2020 22:54:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TN+KQYkuUMea for <devel@linuxdriverproject.org>;
 Mon, 21 Dec 2020 22:54:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oo1-f52.google.com (mail-oo1-f52.google.com
 [209.85.161.52])
 by silver.osuosl.org (Postfix) with ESMTPS id 5358E22C51
 for <devel@driverdev.osuosl.org>; Mon, 21 Dec 2020 22:54:13 +0000 (UTC)
Received: by mail-oo1-f52.google.com with SMTP id i18so2584783ooh.5
 for <devel@driverdev.osuosl.org>; Mon, 21 Dec 2020 14:54:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Jw1ndUTD1aoOuURqqx/C6H+0xyb493YdyXMpTfuGNvM=;
 b=i7P33YxeCQDdLMwu+sE7X5ruw3ufqMfCrg98EB/DCQXZT+syJ/qNqfIgHb30bPVxCV
 ZlXjKBOzzeQIWfT+aDqLo81FwFOCvS+eIhBkjY1bvn/iCBvr5O4p8ftKBBdOUTYtHLH/
 UnvlCUPjOz21+JZ4tsYNfHCMhb1wt2CAFSCtWf+KOY18s20JvBwZKCY5W2OzWMLGXDQK
 5pYg161Kkwt91ArdCo8adgQcOFCNlCKmLEWGFVPcR1g1ftdoXRwymg/PzzMp8tyFoQD9
 VZCn8fFbjrIoOI6ndDq6dJ8xNAocWlCW3iQQWgIt+RNIR028ZKd7AYxpltu6LI0qxCk2
 sCCA==
X-Gm-Message-State: AOAM530Ggget0rkx+Wea2eTVuNZdEM1/jMmKpWkwEkEu5uTBnApu12qd
 W9dvRj2dRduUAjLsvXACcg==
X-Google-Smtp-Source: ABdhPJyh7WIlcaY2pi0KoO1t1QH32umrXAGjAjGGPz8NFDz5TkVO7QEgKYygMTJiLlGyoihZfsxu1g==
X-Received: by 2002:a4a:a7c5:: with SMTP id n5mr12984272oom.9.1608591252632;
 Mon, 21 Dec 2020 14:54:12 -0800 (PST)
Received: from robh.at.kernel.org ([64.188.179.253])
 by smtp.gmail.com with ESMTPSA id z14sm4101967otk.70.2020.12.21.14.54.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Dec 2020 14:54:11 -0800 (PST)
Received: (nullmailer pid 724741 invoked by uid 1000);
 Mon, 21 Dec 2020 22:54:05 -0000
Date: Mon, 21 Dec 2020 15:54:05 -0700
From: Rob Herring <robh@kernel.org>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH v2 02/48] dt-bindings: memory: tegra30: emc: Replace core
 regulator with power domain
Message-ID: <20201221225405.GA723611@robh.at.kernel.org>
References: <20201217180638.22748-1-digetx@gmail.com>
 <20201217180638.22748-3-digetx@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201217180638.22748-3-digetx@gmail.com>
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
 devicetree@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 linux-tegra@vger.kernel.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Peter De Schrijver <pdeschrijver@nvidia.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Liam Girdwood <lgirdwood@gmail.com>,
 Peter Geis <pgwipeout@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Dec 17, 2020 at 09:05:52PM +0300, Dmitry Osipenko wrote:
> Power domain fits much better than a voltage regulator in regards to
> a proper hardware description and from a software perspective as well.
> Hence replace the core regulator with the power domain. Note that this
> doesn't affect any existing DTBs because we haven't started to use the
> regulator yet, and thus, it's okay to change it.
> 
> Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
> ---
>  .../bindings/memory-controllers/nvidia,tegra30-emc.yaml     | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/memory-controllers/nvidia,tegra30-emc.yaml b/Documentation/devicetree/bindings/memory-controllers/nvidia,tegra30-emc.yaml
> index 0a2e2c0d0fdd..7b4af9169b0b 100644
> --- a/Documentation/devicetree/bindings/memory-controllers/nvidia,tegra30-emc.yaml
> +++ b/Documentation/devicetree/bindings/memory-controllers/nvidia,tegra30-emc.yaml
> @@ -39,9 +39,9 @@ properties:
>      description:
>        Phandle of the Memory Controller node.
>  
> -  core-supply:
> +  power-domains:
>      description:
> -      Phandle of voltage regulator of the SoC "core" power domain.
> +      Phandle to the SoC "core" power domain.

power-domains needs to define how many (maxItems).

>  
>    operating-points-v2:
>      description:
> @@ -241,7 +241,7 @@ examples:
>  
>          nvidia,memory-controller = <&mc>;
>          operating-points-v2 = <&dvfs_opp_table>;
> -        core-supply = <&vdd_core>;
> +        power-domains = <&domain>;
>  
>          #interconnect-cells = <0>;
>  
> -- 
> 2.29.2
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CC842E0353
	for <lists+driverdev-devel@lfdr.de>; Tue, 22 Dec 2020 01:15:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6921686AC1;
	Tue, 22 Dec 2020 00:15:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hXWy_4PyI9LR; Tue, 22 Dec 2020 00:15:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EB1F286910;
	Tue, 22 Dec 2020 00:15:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1E2FA1BF97C
 for <devel@linuxdriverproject.org>; Tue, 22 Dec 2020 00:15:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1494822F26
 for <devel@linuxdriverproject.org>; Tue, 22 Dec 2020 00:15:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rd4koCjXgprP for <devel@linuxdriverproject.org>;
 Tue, 22 Dec 2020 00:15:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com
 [209.85.210.44])
 by silver.osuosl.org (Postfix) with ESMTPS id 4FBAF2152C
 for <devel@driverdev.osuosl.org>; Tue, 22 Dec 2020 00:15:01 +0000 (UTC)
Received: by mail-ot1-f44.google.com with SMTP id i6so10502035otr.2
 for <devel@driverdev.osuosl.org>; Mon, 21 Dec 2020 16:15:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=CZCTVp7dSrXEn5R6AF0sfezyGRuCo+PRxp9JIcTZ/OQ=;
 b=HNxgsGpKM5MXiJrAcITPAi00iXFNLUMcrOHZaxXU/+zaMOrcyxMjfykWgLeWo6xGFm
 OtukdO53W/MwpppEhs9/hVvKtbgSIybQbfxngqxlOWu7TywjzIBG05Vs2wntm3JdtMZ/
 Y2eVbT8I4dJ0fV0UBrLivxeS9iDU/vt2t78uhiW9wirs3AvFbTE7T3DMdWA+J+U/MFEC
 8910bOXBWaOx6ghUvnr+VwC13CbaAVWabcm+xwYKNXEBu/gRyhYKQHncTDDtZu6Wj8J7
 kI67QXcG6cvUKdpM+X4ZvNjuF6uZ7kytV6PHPKQu0As5XSpZkvS/Ful55dteX/NYd8a/
 ZI2A==
X-Gm-Message-State: AOAM531mBa8YjLNMvemR/XAeowTVjkQVRPvCVwopCghyqsb/N7lKErI0
 V2pVn2Wcb/ixN75ynOKirQ==
X-Google-Smtp-Source: ABdhPJzwI6oFeOVHPaze1aIeGaY36Y4EuT1YpNmyFUot22+xHR7ZIZmRzD/T0REyCMYip94Hk4WIlw==
X-Received: by 2002:a9d:63c6:: with SMTP id e6mr13808424otl.326.1608596100596; 
 Mon, 21 Dec 2020 16:15:00 -0800 (PST)
Received: from robh.at.kernel.org ([64.188.179.253])
 by smtp.gmail.com with ESMTPSA id m7sm971797ool.29.2020.12.21.16.14.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Dec 2020 16:14:59 -0800 (PST)
Received: (nullmailer pid 901351 invoked by uid 1000);
 Tue, 22 Dec 2020 00:14:57 -0000
Date: Mon, 21 Dec 2020 17:14:57 -0700
From: Rob Herring <robh@kernel.org>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH v2 06/48] dt-bindings: clock: tegra: Document clocks
 sub-node
Message-ID: <20201222001457.GA891962@robh.at.kernel.org>
References: <20201217180638.22748-1-digetx@gmail.com>
 <20201217180638.22748-7-digetx@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201217180638.22748-7-digetx@gmail.com>
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

On Thu, Dec 17, 2020 at 09:05:56PM +0300, Dmitry Osipenko wrote:
> Document "clocks" sub-node which describes Tegra SoC clocks that require
> a higher voltage of the core power domain in order to operate properly on
> a higher rates.

Seems like an odd reason to have a bunch of child nodes. It very much 
seems like a problem you'd need to solve after you design the binding 
which should be fixed within the kernel.

This is also above my threshold for 'convert to schema' first...

> 
> Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
> ---
>  .../bindings/clock/nvidia,tegra20-car.txt     | 26 +++++++++++++++++++
>  .../bindings/clock/nvidia,tegra30-car.txt     | 26 +++++++++++++++++++
>  2 files changed, 52 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/clock/nvidia,tegra20-car.txt b/Documentation/devicetree/bindings/clock/nvidia,tegra20-car.txt
> index 6c5901b503d0..353354477785 100644
> --- a/Documentation/devicetree/bindings/clock/nvidia,tegra20-car.txt
> +++ b/Documentation/devicetree/bindings/clock/nvidia,tegra20-car.txt
> @@ -19,6 +19,16 @@ Required properties :
>    In clock consumers, this cell represents the bit number in the CAR's
>    array of CLK_RST_CONTROLLER_RST_DEVICES_* registers.
>  
> +Optional child sub-node "clocks" should contain nodes matching the clocks
> +on the Tegra SoC. Refer to Tegra TRM for mode details on the clock nodes.
> +
> +Required properties :
> +- compatible : Should be "nvidia,tegra20-clock".
> +- operating-points-v2: See ../bindings/opp/opp.txt for details.
> +- clocks : Should contain clock which corresponds to the node.
> +- power-domains: Phandle to a power domain node as described by generic
> +                 PM domain bindings.
> +
>  Example SoC include file:
>  
>  / {
> @@ -27,6 +37,22 @@ Example SoC include file:
>  		reg = <0x60006000 0x1000>;
>  		#clock-cells = <1>;
>  		#reset-cells = <1>;
> +
> +		clocks {
> +			hdmi {
> +				compatible = "nvidia,tegra20-clock";
> +				operating-points-v2 = <&hdmi_opp_table>;
> +				clocks = <&tegra_car TEGRA20_CLK_HDMI>;
> +				power-domains = <&domain>;
> +			};
> +
> +			pll_m {
> +				compatible = "nvidia,tegra20-clock";
> +				operating-points-v2 = <&pll_m_opp_table>;
> +				clocks = <&tegra_car TEGRA20_CLK_PLL_M>;
> +				power-domains = <&domain>;
> +			};
> +		};
>  	};
>  
>  	usb@c5004000 {
> diff --git a/Documentation/devicetree/bindings/clock/nvidia,tegra30-car.txt b/Documentation/devicetree/bindings/clock/nvidia,tegra30-car.txt
> index 63618cde12df..bc7bbdaa9d3f 100644
> --- a/Documentation/devicetree/bindings/clock/nvidia,tegra30-car.txt
> +++ b/Documentation/devicetree/bindings/clock/nvidia,tegra30-car.txt
> @@ -19,6 +19,16 @@ Required properties :
>    In clock consumers, this cell represents the bit number in the CAR's
>    array of CLK_RST_CONTROLLER_RST_DEVICES_* registers.
>  
> +Optional child sub-node "clocks" should contain nodes matching the clocks
> +on the Tegra SoC. Refer to Tegra TRM for mode details on the clock nodes.
> +
> +Required properties :
> +- compatible : Should be "nvidia,tegra30-clock".
> +- operating-points-v2: See ../bindings/opp/opp.txt for details.
> +- clocks : Should contain clock which corresponds to the node.
> +- power-domains: Phandle to a power domain node as described by generic
> +                 PM domain bindings.
> +
>  Example SoC include file:
>  
>  / {
> @@ -31,6 +41,22 @@ Example SoC include file:
>  
>  	usb@c5004000 {
>  		clocks = <&tegra_car TEGRA30_CLK_USB2>;
> +
> +		clocks {
> +			hdmi {
> +				compatible = "nvidia,tegra30-clock";
> +				operating-points-v2 = <&hdmi_opp_table>;
> +				clocks = <&tegra_car TEGRA30_CLK_HDMI>;
> +				power-domains = <&domain>;
> +			};
> +
> +			pll_m {
> +				compatible = "nvidia,tegra30-clock";
> +				operating-points-v2 = <&pll_m_opp_table>;
> +				clocks = <&tegra_car TEGRA30_CLK_PLL_M>;
> +				power-domains = <&domain>;
> +			};
> +		};
>  	};
>  };
>  
> -- 
> 2.29.2
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

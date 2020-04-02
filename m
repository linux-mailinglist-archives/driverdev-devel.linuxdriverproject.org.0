Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AA5CB19C7CD
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Apr 2020 19:20:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5EA6C87567;
	Thu,  2 Apr 2020 17:20:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wfOhl9cyeoO5; Thu,  2 Apr 2020 17:20:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6A30487559;
	Thu,  2 Apr 2020 17:20:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 87CA61BF381
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 17:20:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 80E8F87559
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 17:20:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fvvzRGOuCk12 for <devel@linuxdriverproject.org>;
 Thu,  2 Apr 2020 17:20:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CBC8E87558
 for <devel@driverdev.osuosl.org>; Thu,  2 Apr 2020 17:20:24 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id 31so5190079wrs.3
 for <devel@driverdev.osuosl.org>; Thu, 02 Apr 2020 10:20:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:references:subject:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=UNJ1uaTiNqIRTE+G4swZEf2hRjorhqOonJ08sUIRMO8=;
 b=jEtA31kCYdON/FahHCcg+UBAPDTy+pA+0phOgPakqyDAcWizWXyX2voqe6wOOShhz+
 lad+2Y+Y76Nug9dGKGO4MM6Q2ZQKJ9czz0E/xBDjQE9N7mG0M95Try7/j0B2rbQceGCY
 4QG77bLGCkcn1eVcULRpr8BblLziRJEpSpsEADs3Ej1K29FH53U02Nrmnniz/6ugULeu
 awM1dc0I4KYlvz2i210q6CiLt8W/7umpXeK1yi+U7B2WZJ8JF6mYeWRqD4Ftfi6PtGBw
 JrXmtfnWOWSF88o9sP1cP/5Vxh0+0uzDr2Ku8qDONJcFTLIcEompanRTmp0Engu85CIO
 PG6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:references:subject:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=UNJ1uaTiNqIRTE+G4swZEf2hRjorhqOonJ08sUIRMO8=;
 b=DWuokVWtjPe7MxyBvBBCUdR8EuVATW6uEAoRKxN1Ln4fWugtvZ4bnSiydXSxV0AT/i
 v/jm1m2mxnudQ+hoAT3yL5QPpH6fSILB/SkE5az9+VG/2XzWd8GC5eGsCWk1WPsXudhz
 GevAubdhMQHFATpkHqFg0carBEVzvBQBo2iAOsQpJw7HrhJz7WBVGUyZjh/HSIwLWl7V
 WiKR4gDQretARF/JWNA49dYI+ULWfzFKrioGR9CoK/MsU2JCUNG4gN+7qEb+qqy6fv6h
 3mmb5/bOFODKuY+s7+g2upeRXv+ghNFIyUF0ytzJDSn2i084+cGeck6e69Gef8FH9u04
 Ui9A==
X-Gm-Message-State: AGi0PuY481Yy1nkUDoI7UAaTdYX2K7rgrzLFwcv1y0puJLA2RlUqJ7pi
 ucR8pMeYCfbK3KwGb583TsM=
X-Google-Smtp-Source: APiQypKmwTbIEdvuK9WraXHHv2M4yWUIWm+FRJNIs5z6cWkO9BgGTzdDqqMxZD0Qzr89n/zfC45I+A==
X-Received: by 2002:adf:9168:: with SMTP id j95mr4319844wrj.145.1585848023290; 
 Thu, 02 Apr 2020 10:20:23 -0700 (PDT)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id b199sm8670886wme.23.2020.04.02.10.20.21
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 02 Apr 2020 10:20:22 -0700 (PDT)
To: helen.koike@collabora.com
References: <20200402000234.226466-5-helen.koike@collabora.com>
Subject: Re: [PATCH 4/4] arm64: dts: rockchip: add isp0 node for rk3399
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <1187d28a-6fb9-fd12-a422-8a4220a11e79@gmail.com>
Date: Thu, 2 Apr 2020 19:20:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200402000234.226466-5-helen.koike@collabora.com>
Content-Language: en-US
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 dafna.hirschfeld@collabora.com, heiko@sntech.de, karthik.poduval@gmail.com,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, hverkuil-cisco@xs4all.nl, mark.rutland@arm.com,
 kernel@collabora.com, ezequiel@collabora.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Helen,

> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> index fc0295d2a65a1..815099a0cd0dd 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> @@ -1718,6 +1718,33 @@ vopb_mmu: iommu@ff903f00 {
>  		status = "disabled";
>  	};
>  
> +	isp0: isp0@ff910000 {
> +		compatible = "rockchip,rk3399-cif-isp";
> +		reg = <0x0 0xff910000 0x0 0x4000>;
> +		interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH 0>;
> +		clocks = <&cru SCLK_ISP0>,
> +			 <&cru ACLK_ISP0>, <&cru ACLK_ISP0_WRAPPER>,
> +			 <&cru HCLK_ISP0>, <&cru HCLK_ISP0_WRAPPER>;
> +		clock-names = "clk_isp",
> +			      "aclk_isp", "aclk_isp_wrap",
> +			      "hclk_isp", "hclk_isp_wrap";

> +		power-domains = <&power RK3399_PD_ISP0>;
> +		iommus = <&isp0_mmu>;
> +		phys = <&mipi_dphy_rx0>;
> +		phy-names = "dphy";

Maybe a little sort? But keep rest as it is. Also in example.

		iommus = <&isp0_mmu>;
		phys = <&mipi_dphy_rx0>;
		phy-names = "dphy";
		power-domains = <&power RK3399_PD_ISP0>;

> +
> +		ports {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			port@0 {

> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +				reg = <0>;

Move reg above #address-cells. Change that in example as well.

				reg = <0>;
				#address-cells = <1>;
				#size-cells = <0>;

> +			};
> +		};
> +	};
> +
>  	isp0_mmu: iommu@ff914000 {
>  		compatible = "rockchip,iommu";
>  		reg = <0x0 0xff914000 0x0 0x100>, <0x0 0xff915000 0x0 0x100>;
> -- 
> 2.26.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

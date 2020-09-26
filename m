Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 14DC927994A
	for <lists+driverdev-devel@lfdr.de>; Sat, 26 Sep 2020 15:00:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D519D86ACD;
	Sat, 26 Sep 2020 13:00:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AjL+EKZRh3mD; Sat, 26 Sep 2020 13:00:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9674D86A84;
	Sat, 26 Sep 2020 13:00:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D2CE81BF388
 for <devel@linuxdriverproject.org>; Sat, 26 Sep 2020 13:00:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CEC1087369
 for <devel@linuxdriverproject.org>; Sat, 26 Sep 2020 13:00:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gN4AJ7StzGQJ for <devel@linuxdriverproject.org>;
 Sat, 26 Sep 2020 13:00:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D8AAA8735C
 for <devel@driverdev.osuosl.org>; Sat, 26 Sep 2020 13:00:08 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id j2so6855131wrx.7
 for <devel@driverdev.osuosl.org>; Sat, 26 Sep 2020 06:00:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=4qdU5lafYi+hcVoRAvstZheKhqCYZ5Ckd1gUvUE1rzc=;
 b=a8tHbMaqB+v22Lv/kLM3g3AksGk0fdsVfKBnfPt4UWgrcsqPBoVo4ZT1FsDE/lmAi9
 3jlQWknciPpbAcVrBeSwTGb1NbaKP3b/uqTYcjGSC7r1XEc85wfqNnuoTZUSOK4mer2b
 JzaniKOXgUp4A1mHhPumcaGqDJqTgyG77h7l0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=4qdU5lafYi+hcVoRAvstZheKhqCYZ5Ckd1gUvUE1rzc=;
 b=MmDTMJHATLogeUVmBWQvu5sDiWfUucFKquogxjpMMTbm27irFmVuno3ToaHj4oYLDZ
 RK9jfjAtMO2BHfsFm3Z+qjUNcHFjA2vaQuSG5Dp/z97yWHhwisBFvVbkoGQ0kW8htgZq
 GPk9I9HagCrUX93DwOHWsIGMjYZmnD/OU8yt0ssVKE8al1IpaXSl8iQ9/cXI/IDdOyU/
 D5RZ+3tI2w48OMV/Uf5W9lKSDAd9d/2AVC7ux9wp8ra98Zxi32wN3u0WYaNTFFCO34JJ
 wDYoqcKBxqqhakYCX6p/kysP1puNFmyO0abTc6r6mF0RL7A7S7giEEAhuWgejrP28qTs
 vqSQ==
X-Gm-Message-State: AOAM532FbjdooJUrnLqZU47vNJjSFPmQWPTF4sRrESuGIdI7ZNXUDeb/
 ZwgmtATUwwd3ZnnnuIUYoN3AyA==
X-Google-Smtp-Source: ABdhPJwnQFrsiZDsceVMa/OZGRYeitM4Z0qYBnUmfRNKn4bmhYo6FC4ZmxJTPdc3V0yS8KdYKve8gg==
X-Received: by 2002:adf:f802:: with SMTP id s2mr9115823wrp.328.1601125207121; 
 Sat, 26 Sep 2020 06:00:07 -0700 (PDT)
Received: from chromium.org (216.131.76.34.bc.googleusercontent.com.
 [34.76.131.216])
 by smtp.gmail.com with ESMTPSA id e1sm6740101wrp.49.2020.09.26.06.00.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 26 Sep 2020 06:00:06 -0700 (PDT)
Date: Sat, 26 Sep 2020 13:00:05 +0000
From: Tomasz Figa <tfiga@chromium.org>
To: Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH v5 8/9] arm64: dts: rockchip: add isp0 node for rk3399
Message-ID: <20200926130005.GC3781977@chromium.org>
References: <20200722155533.252844-1-helen.koike@collabora.com>
 <20200722155533.252844-9-helen.koike@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200722155533.252844-9-helen.koike@collabora.com>
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
 eddie.cai.linux@gmail.com, dafna.hirschfeld@collabora.com, heiko@sntech.de,
 zhengsq@rock-chips.com, linux-kernel@vger.kernel.org,
 karthik.poduval@gmail.com, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, hverkuil-cisco@xs4all.nl, robin.murphy@arm.com,
 mark.rutland@arm.com, kernel@collabora.com, ezequiel@collabora.com,
 jbx6244@gmail.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Helen,

On Wed, Jul 22, 2020 at 12:55:32PM -0300, Helen Koike wrote:
> From: Shunqian Zheng <zhengsq@rock-chips.com>
> 
> RK3399 has two ISPs, but only isp0 was tested.
> Add isp0 node in rk3399 dtsi
> 
> Verified with:
> make ARCH=arm64 dtbs_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> 
> Signed-off-by: Shunqian Zheng <zhengsq@rock-chips.com>
> Signed-off-by: Jacob Chen <jacob2.chen@rock-chips.com>
> Signed-off-by: Helen Koike <helen.koike@collabora.com>
> 
> ---
> 
> V4:
> - update clock names
> 
> V3:
> - clean up clocks
> 
> V2:
> - re-order power-domains property
> 
> V1:
> This patch was originally part of this patchset:
> 
>     https://patchwork.kernel.org/patch/10267431/
> 
> The only difference is:
> - add phy properties
> - add ports
> ---
>  arch/arm64/boot/dts/rockchip/rk3399.dtsi | 25 ++++++++++++++++++++++++
>  1 file changed, 25 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> index dba9641947a3a..ed8ba75dbbce8 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> @@ -1721,6 +1721,31 @@ vopb_mmu: iommu@ff903f00 {
>  		status = "disabled";
>  	};
>  
> +	isp0: isp0@ff910000 {
> +		compatible = "rockchip,rk3399-cif-isp";
> +		reg = <0x0 0xff910000 0x0 0x4000>;
> +		interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH 0>;
> +		clocks = <&cru SCLK_ISP0>,
> +			 <&cru ACLK_ISP0_WRAPPER>,
> +			 <&cru HCLK_ISP0_WRAPPER>;
> +		clock-names = "isp", "aclk", "hclk";
> +		iommus = <&isp0_mmu>;
> +		phys = <&mipi_dphy_rx0>;
> +		phy-names = "dphy";
> +		power-domains = <&power RK3399_PD_ISP0>;

Should this have status = "disabled" too? The mipi_dphy_rx0 node is
disabled by default too, so in the default configuration the driver
would always fail to probe.

Best regards,
Tomasz
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

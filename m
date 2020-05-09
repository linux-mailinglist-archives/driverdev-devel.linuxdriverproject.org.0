Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F15A1CC179
	for <lists+driverdev-devel@lfdr.de>; Sat,  9 May 2020 14:54:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 247C925935;
	Sat,  9 May 2020 12:54:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Sg9yv4PXUZHb; Sat,  9 May 2020 12:54:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 717AD22FD5;
	Sat,  9 May 2020 12:54:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 82FC81BF3DD
 for <devel@linuxdriverproject.org>; Sat,  9 May 2020 12:54:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7D3E086FFD
 for <devel@linuxdriverproject.org>; Sat,  9 May 2020 12:54:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cY_YZPFXaMVm for <devel@linuxdriverproject.org>;
 Sat,  9 May 2020 12:54:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3FCDA86F80
 for <devel@driverdev.osuosl.org>; Sat,  9 May 2020 12:54:06 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id CE30B2A2CA6
Message-ID: <9fdceef69a390235225a8fd08f89f67be9c5c920.camel@collabora.com>
Subject: Re: [PATCH v2 8/9] arm64: dts: rockchip: add rx0 mipi-phy for rk3399
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Helen Koike <helen.koike@collabora.com>, devicetree@vger.kernel.org, 
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, Heiko
 Stuebner <heiko@sntech.de>
Date: Sat, 09 May 2020 09:53:53 -0300
In-Reply-To: <20200403161538.1375908-9-helen.koike@collabora.com>
References: <20200403161538.1375908-1-helen.koike@collabora.com>
 <20200403161538.1375908-9-helen.koike@collabora.com>
Organization: Collabora
User-Agent: Evolution 3.36.0-1 
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, mark.rutland@arm.com,
 dafna.hirschfeld@collabora.com, heiko@sntech.de, kishon@ti.com,
 linux-kernel@vger.kernel.org, karthik.poduval@gmail.com, robh+dt@kernel.org,
 hverkuil-cisco@xs4all.nl, jbx6244@gmail.com, kernel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Heiko,

On Fri, 2020-04-03 at 13:15 -0300, Helen Koike wrote:
> From: Shunqian Zheng <zhengsq@rock-chips.com>
> 
> Designware MIPI D-PHY, used for ISP0 in rk3399.
> 
> Verified with:
> make ARCH=arm64 dtbs_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/phy/rockchip-mipi-dphy-rx0.yaml
> 
> Signed-off-by: Shunqian Zheng <zhengsq@rock-chips.com>
> Signed-off-by: Jacob Chen <jacob2.chen@rock-chips.com>
> Signed-off-by: Helen Koike <helen.koike@collabora.com>
> 
> ---
> 
> Changes in v2:
> - fix alignment of clocks
> 
> V1:
> This patchset came from the original ISP series from Rockchip:
> 
>     https://patchwork.kernel.org/patch/10267409/
> 

Can you take the devicetree changes (patches 8 and 9) ?

Thanks,
Ezequiel

> The only difference is:
> - add phy-cells
> - update compatible to "rockchip,rk3399-mipi-dphy-rx0"
> - commit message
> ---
>  arch/arm64/boot/dts/rockchip/rk3399.dtsi | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> index 33cc21fcf4c10..6b3380b10e596 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> @@ -1394,6 +1394,17 @@ io_domains: io-domains {
>  			status = "disabled";
>  		};
>  
> +		mipi_dphy_rx0: mipi-dphy-rx0 {
> +			compatible = "rockchip,rk3399-mipi-dphy-rx0";
> +			clocks = <&cru SCLK_MIPIDPHY_REF>,
> +				 <&cru SCLK_DPHY_RX0_CFG>,
> +				 <&cru PCLK_VIO_GRF>;
> +			clock-names = "dphy-ref", "dphy-cfg", "grf";
> +			power-domains = <&power RK3399_PD_VIO>;
> +			#phy-cells = <0>;
> +			status = "disabled";
> +		};
> +
>  		u2phy0: usb2-phy@e450 {
>  			compatible = "rockchip,rk3399-usb2phy";
>  			reg = <0xe450 0x10>;
> -- 
> 2.26.0
> 
> 


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

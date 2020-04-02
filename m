Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AE48019CA7C
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Apr 2020 21:46:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 663DD268BF;
	Thu,  2 Apr 2020 19:46:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gsJ-mwT2sv+O; Thu,  2 Apr 2020 19:46:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D39A92674B;
	Thu,  2 Apr 2020 19:46:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0197F1BF271
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 19:46:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id F1C1987B8E
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 19:46:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eWZpz7FMYuMW for <devel@linuxdriverproject.org>;
 Thu,  2 Apr 2020 19:46:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C2B2E87B69
 for <devel@driverdev.osuosl.org>; Thu,  2 Apr 2020 19:46:43 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id 0F4DB28A9AD
Subject: Re: [PATCH 4/4] arm64: dts: rockchip: add isp0 node for rk3399
To: Johan Jonker <jbx6244@gmail.com>
References: <20200402000234.226466-5-helen.koike@collabora.com>
 <1187d28a-6fb9-fd12-a422-8a4220a11e79@gmail.com>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <d8b05dd4-1ece-9513-b2ec-0cb58f665c5e@collabora.com>
Date: Thu, 2 Apr 2020 16:46:28 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <1187d28a-6fb9-fd12-a422-8a4220a11e79@gmail.com>
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



On 4/2/20 2:20 PM, Johan Jonker wrote:
> Hi Helen,
> 
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
>> index fc0295d2a65a1..815099a0cd0dd 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
>> @@ -1718,6 +1718,33 @@ vopb_mmu: iommu@ff903f00 {
>>  		status = "disabled";
>>  	};
>>  
>> +	isp0: isp0@ff910000 {
>> +		compatible = "rockchip,rk3399-cif-isp";
>> +		reg = <0x0 0xff910000 0x0 0x4000>;
>> +		interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH 0>;
>> +		clocks = <&cru SCLK_ISP0>,
>> +			 <&cru ACLK_ISP0>, <&cru ACLK_ISP0_WRAPPER>,
>> +			 <&cru HCLK_ISP0>, <&cru HCLK_ISP0_WRAPPER>;
>> +		clock-names = "clk_isp",
>> +			      "aclk_isp", "aclk_isp_wrap",
>> +			      "hclk_isp", "hclk_isp_wrap";
> 
>> +		power-domains = <&power RK3399_PD_ISP0>;
>> +		iommus = <&isp0_mmu>;
>> +		phys = <&mipi_dphy_rx0>;
>> +		phy-names = "dphy";
> 
> Maybe a little sort? But keep rest as it is. Also in example.
> 
> 		iommus = <&isp0_mmu>;
> 		phys = <&mipi_dphy_rx0>;
> 		phy-names = "dphy";
> 		power-domains = <&power RK3399_PD_ISP0>;

Are you proposing only to move power-domains after phy? And keep the rest?
What is the main logic?

Thanks
Helen

> 
>> +
>> +		ports {
>> +			#address-cells = <1>;
>> +			#size-cells = <0>;
>> +
>> +			port@0 {
> 
>> +				#address-cells = <1>;
>> +				#size-cells = <0>;
>> +				reg = <0>;
> 
> Move reg above #address-cells. Change that in example as well.
> 
> 				reg = <0>;
> 				#address-cells = <1>;
> 				#size-cells = <0>;
> 
>> +			};
>> +		};
>> +	};
>> +
>>  	isp0_mmu: iommu@ff914000 {
>>  		compatible = "rockchip,iommu";
>>  		reg = <0x0 0xff914000 0x0 0x100>, <0x0 0xff915000 0x0 0x100>;
>> -- 
>> 2.26.0
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

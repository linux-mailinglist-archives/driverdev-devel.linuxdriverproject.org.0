Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4302328E4AF
	for <lists+driverdev-devel@lfdr.de>; Wed, 14 Oct 2020 18:43:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3F43487B2F;
	Wed, 14 Oct 2020 16:43:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I2NE_PqkqcuJ; Wed, 14 Oct 2020 16:43:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C1C4787AFD;
	Wed, 14 Oct 2020 16:42:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4556E1BF25B
 for <devel@linuxdriverproject.org>; Wed, 14 Oct 2020 16:42:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 41D1487AFD
 for <devel@linuxdriverproject.org>; Wed, 14 Oct 2020 16:42:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4Q1UFwl-MuhK for <devel@linuxdriverproject.org>;
 Wed, 14 Oct 2020 16:42:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 47C2287AF5
 for <devel@driverdev.osuosl.org>; Wed, 14 Oct 2020 16:42:56 +0000 (UTC)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A2DFDD6E;
 Wed, 14 Oct 2020 09:42:55 -0700 (PDT)
Received: from [10.57.48.76] (unknown [10.57.48.76])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 939793F71F;
 Wed, 14 Oct 2020 09:42:52 -0700 (PDT)
Subject: Re: [PATCH v5 8/9] arm64: dts: rockchip: add isp0 node for rk3399
To: Helen Koike <helen.koike@collabora.com>, Tomasz Figa <tfiga@chromium.org>
References: <20200722155533.252844-1-helen.koike@collabora.com>
 <20200722155533.252844-9-helen.koike@collabora.com>
 <20200926130005.GC3781977@chromium.org>
 <905118dd-f108-6bc0-4cf0-9544fab51690@collabora.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <49005dd4-4467-2c93-a294-3760b98a7b92@arm.com>
Date: Wed, 14 Oct 2020 17:42:51 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101
 Thunderbird/78.3.2
MIME-Version: 1.0
In-Reply-To: <905118dd-f108-6bc0-4cf0-9544fab51690@collabora.com>
Content-Language: en-GB
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
 robh+dt@kernel.org, hverkuil-cisco@xs4all.nl, mark.rutland@arm.com,
 kernel@collabora.com, ezequiel@collabora.com, jbx6244@gmail.com,
 linux-media@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 2020-10-14 17:27, Helen Koike wrote:
> Hi Tomasz,
> 
> On 9/26/20 10:00 AM, Tomasz Figa wrote:
>> Hi Helen,
>>
>> On Wed, Jul 22, 2020 at 12:55:32PM -0300, Helen Koike wrote:
>>> From: Shunqian Zheng <zhengsq@rock-chips.com>
>>>
>>> RK3399 has two ISPs, but only isp0 was tested.
>>> Add isp0 node in rk3399 dtsi
>>>
>>> Verified with:
>>> make ARCH=arm64 dtbs_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/media/rockchip-isp1.yaml
>>>
>>> Signed-off-by: Shunqian Zheng <zhengsq@rock-chips.com>
>>> Signed-off-by: Jacob Chen <jacob2.chen@rock-chips.com>
>>> Signed-off-by: Helen Koike <helen.koike@collabora.com>
>>>
>>> ---
>>>
>>> V4:
>>> - update clock names
>>>
>>> V3:
>>> - clean up clocks
>>>
>>> V2:
>>> - re-order power-domains property
>>>
>>> V1:
>>> This patch was originally part of this patchset:
>>>
>>>      https://patchwork.kernel.org/patch/10267431/
>>>
>>> The only difference is:
>>> - add phy properties
>>> - add ports
>>> ---
>>>   arch/arm64/boot/dts/rockchip/rk3399.dtsi | 25 ++++++++++++++++++++++++
>>>   1 file changed, 25 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
>>> index dba9641947a3a..ed8ba75dbbce8 100644
>>> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
>>> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
>>> @@ -1721,6 +1721,31 @@ vopb_mmu: iommu@ff903f00 {
>>>   		status = "disabled";
>>>   	};
>>>   
>>> +	isp0: isp0@ff910000 {
>>> +		compatible = "rockchip,rk3399-cif-isp";
>>> +		reg = <0x0 0xff910000 0x0 0x4000>;
>>> +		interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH 0>;
>>> +		clocks = <&cru SCLK_ISP0>,
>>> +			 <&cru ACLK_ISP0_WRAPPER>,
>>> +			 <&cru HCLK_ISP0_WRAPPER>;
>>> +		clock-names = "isp", "aclk", "hclk";
>>> +		iommus = <&isp0_mmu>;
>>> +		phys = <&mipi_dphy_rx0>;
>>> +		phy-names = "dphy";
>>> +		power-domains = <&power RK3399_PD_ISP0>;
>>
>> Should this have status = "disabled" too? The mipi_dphy_rx0 node is
>> disabled by default too, so in the default configuration the driver
>> would always fail to probe.
> 
> I'm thinking what is the overall guideline here.
> Since isp and mipi_dphy are always present in the rk3399, shouldn't they always be enabled?
> Or since they are only useful if a sensor is present, we should let the dts of the board to
> enable it?

Yes, the usual pattern is that anything which needs additional hardware 
outside the SoC to be useful is disabled by default in the SoC DTSI, and 
enabled in individual board DTSs as appropriate. See USB, HDMI, etc. for 
instance.

There's probably a further debate about how much the board itself should 
enable if it only breaks out a connector for the user to add their own 
camera module, but hey, one step at a time ;)

Robin.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

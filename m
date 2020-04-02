Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D8BFA19C487
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Apr 2020 16:42:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9A1FF26249;
	Thu,  2 Apr 2020 14:42:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4LMXwwjy-xgT; Thu,  2 Apr 2020 14:42:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id EFD00221DC;
	Thu,  2 Apr 2020 14:42:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 840141BF42C
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 14:42:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8071488A89
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 14:42:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kUtElwByffla for <devel@linuxdriverproject.org>;
 Thu,  2 Apr 2020 14:42:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3184588A64
 for <devel@driverdev.osuosl.org>; Thu,  2 Apr 2020 14:42:51 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id B456128CF7C
Subject: Re: [PATCH 2/4] dt-bindings: media: rkisp1: move rockchip-isp1
 bindings out of staging
To: Johan Jonker <jbx6244@gmail.com>
References: <20200402000234.226466-3-helen.koike@collabora.com>
 <7e53ec1e-33bd-3385-40a0-de3fd00ad1a1@gmail.com>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <faacd068-e722-4fa8-efab-c51c723b75c1@collabora.com>
Date: Thu, 2 Apr 2020 11:42:39 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <7e53ec1e-33bd-3385-40a0-de3fd00ad1a1@gmail.com>
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

Hi Johan,

Thanks for your review.

On 4/2/20 8:35 AM, Johan Jonker wrote:
> Hi Helen,
> 
>> # SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>> %YAML 1.2
>> ---
>> $id: http://devicetree.org/schemas/media/rockchip-isp1.yaml#
>> $schema: http://devicetree.org/meta-schemas/core.yaml#
>>
> 
>> title: Rockchip SoC Image Signal Processing unit v1
> 
> Where do we need 'v1' for? Is there a 'v2'?

ISPv1 is the Rockchip's name for the IP block.

> 
>>
>> maintainers:
>>   - Helen Koike <helen.koike@collabora.com>
>>
>> description: |
>>   Rockchip ISP1 is the Camera interface for the Rockchip series of SoCs
>>   which contains image processing, scaling, and compression functions.
>>
>> properties:
>>   compatible:
>>     const: rockchip,rk3399-cif-isp
>>
>>   reg:
>>     maxItems: 1
>>
>>   interrupts:
>>     maxItems: 1
>>
>>   iommus:
>>     maxItems: 1
>>
>>   power-domains:
>>     maxItems: 1
>>
>>   phys:
>>     maxItems: 1
>>     description: phandle for the PHY port
>>
>>   phy-names:
>>     const: dphy
>>
>>   clocks:
>>     items:
>>       - description: ISP clock
>>       - description: ISP AXI clock clock
>>       - description: ISP AXI clock  wrapper clock
>>       - description: ISP AHB clock clock
>>       - description: ISP AHB wrapper clock
>>
>>   clock-names:
>>     items:
>>       - const: clk_isp
>>       - const: aclk_isp
>>       - const: aclk_isp_wrap
>>       - const: hclk_isp
>>       - const: hclk_isp_wrap
>>
>>   # See ./video-interfaces.txt for details
>>   ports:
>>     type: object
>>     additionalProperties: false
>>
>>     properties:
>>       "#address-cells":
>>         const: 1
>>
>>       "#size-cells":
>>         const: 0
>>
>>       port@0:
>>         type: object
>>         description: connection point for sensors at MIPI-DPHY RX0
> 
>>         additionalProperties: false
> 
> Nothing required here?

I was thinking that if there is no endpoint, then nothing is required.
But if there is, then #address-cells, #size-cells and reg are. I guess
I can just add them as required.

I'll add it in the patchseries.

> 
>>
>>         properties:
>>           "#address-cells":
>>             const: 1
>>
>>           "#size-cells":
>>             const: 0
>>
>>           reg:
>>             const: 0
>>
>>         patternProperties:
>>           endpoint:
>>             type: object
>>             additionalProperties: false
>>
>>             properties:
>>               reg:
>>                 maxItems: 1
>>
>>               data-lanes:
>>                 minItems: 1
>>                 maxItems: 4
>>
>>               remote-endpoint: true
>>
>>     required:
> 
>>       - port@0
> 
> The use of '@0' makes "#address-cells" and "#size-cells" also a requirement.
> 
> - "#address-cells"
> - "#size-cells"

Ok, I'll add it.

> 
>>
>> required:
>>   - compatible
> 
> How about 'reg'?
> 
> - reg

ack, I'll add another patch in the series fixing this.

> 
>>   - interrupts
>>   - clocks
>>   - clock-names
>>   - power-domains
>>   - iommus
>>   - phys
>>   - phy-names
>>   - ports
>>
>> additionalProperties: false
>>
>> examples:
>>   - |
>>
>>     #include <dt-bindings/clock/rk3399-cru.h>
>>     #include <dt-bindings/interrupt-controller/arm-gic.h>
>>     #include <dt-bindings/power/rk3399-power.h>
>>
>>     parent0: parent@0 {
>>         #address-cells = <2>;
>>         #size-cells = <2>;
>>
>>         isp0: isp0@ff910000 {
>>             compatible = "rockchip,rk3399-cif-isp";
>>             reg = <0x0 0xff910000 0x0 0x4000>;
>>             interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH 0>;
>>             clocks = <&cru SCLK_ISP0>,
>>                      <&cru ACLK_ISP0>, <&cru ACLK_ISP0_WRAPPER>,
>>                      <&cru HCLK_ISP0>, <&cru HCLK_ISP0_WRAPPER>;
>>             clock-names = "clk_isp",
>>                           "aclk_isp", "aclk_isp_wrap",
>>                           "hclk_isp", "hclk_isp_wrap";
>>             power-domains = <&power RK3399_PD_ISP0>;
>>             iommus = <&isp0_mmu>;
>>             phys = <&dphy>;
>>             phy-names = "dphy";
>>
>>             ports {
>>                 #address-cells = <1>;
>>                 #size-cells = <0>;
>>
>>                 port@0 {
>>                     #address-cells = <1>;
>>                     #size-cells = <0>;
>>                     reg = <0>;
>>
>>                     mipi_in_wcam: endpoint@0 {
>>                         reg = <0>;
>>                         remote-endpoint = <&wcam_out>;
>>                         data-lanes = <1 2>;
>>                     };
>>
>>                     mipi_in_ucam: endpoint@1 {
>>                         reg = <1>;
>>                         remote-endpoint = <&ucam_out>;
>>                         data-lanes = <1>;
>>                     };
>>                 };
>>             };
>>         };
>>
> 
>>         i2c7: i2c@ff160000 {
>>             clock-frequency = <400000>;
>>             #address-cells = <1>;
>>             #size-cells = <0>;
> 
> Incomplete example.
> From i2c-rk3x.yaml:
> 
> required:
>   - compatible
>   - reg
>   - interrupts
>   - clocks
>   - clock-names

The idea was to exemplify how to connect to the sensor nodes below.
But I don't see a problem adding a complete i2c example, I'll add it.

Thanks
Helen

> 
>>
>>             wcam: camera@36 {
>>                 compatible = "ovti,ov5695";
>>                 reg = <0x36>;
>>
>>                 port {
>>                     wcam_out: endpoint {
>>                         remote-endpoint = <&mipi_in_wcam>;
>>                         data-lanes = <1 2>;
>>                     };
>>                 };
>>             };
>>
>>             ucam: camera@3c {
>>                 compatible = "ovti,ov2685";
>>                 reg = <0x3c>;
>>
>>                   port {
>>                       ucam_out: endpoint {
>>                           remote-endpoint = <&mipi_in_ucam>;
>>                           data-lanes = <1>;
>>                       };
>>                   };
>>             };
>>         };
>>     };
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

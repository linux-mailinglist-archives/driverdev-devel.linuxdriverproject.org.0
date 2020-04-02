Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A69F19C489
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Apr 2020 16:43:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3B03F88B6D;
	Thu,  2 Apr 2020 14:43:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LQWcWJMuW2HI; Thu,  2 Apr 2020 14:43:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8E2E888ADB;
	Thu,  2 Apr 2020 14:43:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4A2231BF42C
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 14:43:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 440688720A
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 14:43:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eqPlfcUYj2D3 for <devel@linuxdriverproject.org>;
 Thu,  2 Apr 2020 14:43:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4A48185BCA
 for <devel@driverdev.osuosl.org>; Thu,  2 Apr 2020 14:43:09 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id AB09328CF7C
Subject: Re: [PATCH 1/4] dt-bindings: phy: phy-rockchip-dphy-rx0: move
 rockchip dphy rx0 bindings out of staging
To: Johan Jonker <jbx6244@gmail.com>
References: <20200402000234.226466-2-helen.koike@collabora.com>
 <bfefe00c-5673-ddcb-4e2a-425eb4771002@gmail.com>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <9ed2142a-bd22-fbb6-cd65-7d727751400e@collabora.com>
Date: Thu, 2 Apr 2020 11:42:57 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <bfefe00c-5673-ddcb-4e2a-425eb4771002@gmail.com>
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

On 4/2/20 9:16 AM, Johan Jonker wrote:
> Hi Helen,
> 
>> # SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>> %YAML 1.2
>> ---
>> $id: http://devicetree.org/schemas/phy/rockchip-mipi-dphy-rx0.yaml#
>> $schema: http://devicetree.org/meta-schemas/core.yaml#
>>
>> title: Rockchip SoC MIPI RX0 D-PHY Device Tree Bindings
>>
>> maintainers:
>>   - Helen Koike <helen.koike@collabora.com>
>>   - Ezequiel Garcia <ezequiel@collabora.com>
>>
>> description: |
>>   The Rockchip SoC has a MIPI D-PHY bus with an RX0 entry which connects to
>>   the ISP1 (Image Signal Processing unit v1.0) for CSI cameras.
>>
>> properties:
>>   compatible:
>>     const: rockchip,rk3399-mipi-dphy-rx0
>>
> 
>>   reg:
>>     maxItems: 1
> 
> If 'reg' is not used => remove it.

ok, I'll add a patch removing it.

Thanks,
Helen

> 
>>
>>   clocks:
>>     items:
>>       - description: MIPI D-PHY ref clock
>>       - description: MIPI D-PHY RX0 cfg clock
>>       - description: Video in/out general register file clock
>>
>>   clock-names:
>>     items:
>>       - const: dphy-ref
>>       - const: dphy-cfg
>>       - const: grf
>>
>>   '#phy-cells':
>>     const: 0
>>
>>   power-domains:
>>     description: Video in/out power domain.
>>     maxItems: 1
>>
>> required:
>>   - compatible
>>   - clocks
>>   - clock-names
>>   - '#phy-cells'
>>   - power-domains
>>
>> additionalProperties: false
>>
>> examples:
>>   - |
>>
>>     /*
>>      * MIPI D-PHY RX0 use registers in "general register files", it
>>      * should be a child of the GRF.
>>      *
>>      * grf: syscon@ff770000 {
>>      *  compatible = "rockchip,rk3399-grf", "syscon", "simple-mfd";
>>      *  ...
>>      * };
>>      */
>>
>>     #include <dt-bindings/clock/rk3399-cru.h>
>>     #include <dt-bindings/power/rk3399-power.h>
>>
>>     mipi_dphy_rx0: mipi-dphy-rx0 {
>>         compatible = "rockchip,rk3399-mipi-dphy-rx0";
>>         clocks = <&cru SCLK_MIPIDPHY_REF>,
>>                  <&cru SCLK_DPHY_RX0_CFG>,
>>                  <&cru PCLK_VIO_GRF>;
>>         clock-names = "dphy-ref", "dphy-cfg", "grf";
>>         power-domains = <&power RK3399_PD_VIO>;
>>         #phy-cells = <0>;
>>     };
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 670652242F7
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 Jul 2020 20:14:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E88FB868E1;
	Fri, 17 Jul 2020 18:14:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G5yEbNozIVKg; Fri, 17 Jul 2020 18:14:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5B37D868D0;
	Fri, 17 Jul 2020 18:14:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9515D1BF83A
 for <devel@linuxdriverproject.org>; Fri, 17 Jul 2020 18:14:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8A59C220EF
 for <devel@linuxdriverproject.org>; Fri, 17 Jul 2020 18:14:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EAU1E3bH9hE5 for <devel@linuxdriverproject.org>;
 Fri, 17 Jul 2020 18:14:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by silver.osuosl.org (Postfix) with ESMTPS id A826221513
 for <devel@driverdev.osuosl.org>; Fri, 17 Jul 2020 18:14:41 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id E3F9C2A5DC6
Subject: Re: [PATCH v4 5/9] media: staging: rkisp1: remove unecessary clocks
To: Rob Herring <robh+dt@kernel.org>
References: <20200702191322.2639681-1-helen.koike@collabora.com>
 <20200702191322.2639681-6-helen.koike@collabora.com>
 <CAL_JsqKHG4HgcpWvh_qnHPAkaGCd7Q8APk2ai_QxjUQhvd5APg@mail.gmail.com>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <822de449-8c01-d790-a9f9-e8b513bd7f87@collabora.com>
Date: Fri, 17 Jul 2020 15:14:30 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <CAL_JsqKHG4HgcpWvh_qnHPAkaGCd7Q8APk2ai_QxjUQhvd5APg@mail.gmail.com>
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 devicetree@vger.kernel.org, Eddie Cai <eddie.cai.linux@gmail.com>,
 Tomasz Figa <tfiga@chromium.org>,
 Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 "heiko@sntech.de" <heiko@sntech.de>, Shunqian Zheng <zhengsq@rock-chips.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 karthik.poduval@gmail.com,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Robin Murphy <robin.murphy@arm.com>,
 Mark Rutland <mark.rutland@arm.com>,
 Collabora Kernel ML <kernel@collabora.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, Johan Jonker <jbx6244@gmail.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Rob,

Thanks for your review.

On 7/17/20 2:49 PM, Rob Herring wrote:
> On Thu, Jul 2, 2020 at 1:13 PM Helen Koike <helen.koike@collabora.com> wrote:
>>
>> aclk_isp_wrap is a child of aclk_isp, and hclk_isp_wrap is a child of
>> hclk_isp, thus we can remove parents from the list.
> 
> But it looks like it is the wrap clocks you are removing.

From this binding yes, but the idea is to add in the dt wherever clock
responsible for the full ACLK path for instance.
In the example below, clock aclk_isp is ACLK_ISP0_WRAPPER.
Does this make sense?

> 
>>
>> Also, for the isp0, we only need the ISP clock, ACLK and HCLK.
>> In the future we'll need a pixel clock for RK3288 and RK3399, and a JPEG
>> clock for RK3288.
>>
>> So with the goal to cleanup the dt-bindings and remove it from staging,
>> simplify clock names to isp, aclk and hclk.
>>
>> For reference, this is the isp clock topology on RK3399:
>>
>>  xin24m
>>     pll_npll
>>        npll
>>           clk_isp1
>>           clk_isp0
>>     pll_cpll
>>        cpll
>>           aclk_isp1
>>              aclk_isp1_noc
>>              hclk_isp1
>>                 aclk_isp1_wrapper
>>                 hclk_isp1_noc
>>           aclk_isp0
>>              hclk_isp1_wrapper
>>              aclk_isp0_wrapper
>>              aclk_isp0_noc
>>              hclk_isp0
>>                 hclk_isp0_wrapper
>>                 hclk_isp0_noc
>>  pclkin_isp1_wrapper
>>
>> Signed-off-by: Helen Koike <helen.koike@collabora.com>
>>
>> ---
>>
>> Changes in V4:
>> - update binding according to suggestion by Robin Murphy
>> on https://patchwork.kernel.org/patch/11475007/
>>
>> Changes in V3:
>> - this is a new patch in the series
>> ---
>>  .../bindings/media/rockchip-isp1.yaml         | 30 +++++++++----------
>>  drivers/staging/media/rkisp1/rkisp1-dev.c     |  8 ++---
>>  2 files changed, 17 insertions(+), 21 deletions(-)
>>
>> diff --git a/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml b/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
>> index 4d111ef2e89c7..f10c53d008748 100644
>> --- a/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
>> +++ b/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
>> @@ -24,20 +24,20 @@ properties:
>>      maxItems: 1
>>
>>    clocks:
>> -    items:
>> -      - description: ISP clock
>> -      - description: ISP AXI clock clock
>> -      - description: ISP AXI clock  wrapper clock
>> -      - description: ISP AHB clock clock
>> -      - description: ISP AHB wrapper clock
> 
> This is the correct way to describe multiple clocks.

The idea was to prepare for rk3288 and rk3399 isp1, as suggested here https://patchwork.kernel.org/patch/11475007/#23462085

Or should we do:

clocks:
  oneOf:
    # rk3288 clocks
    - items:
      - description: ISP clock
      - description: ISP AXI clock
      - description: ISP AHB clock
      - description: ISP Pixel clock
      - description: ISP JPEG source clock
    # rk3399 isp0 clocks
    - items:
      - description: ISP clock
      - description: ISP AXI clock
      - description: ISP AHB clock
    # rk3399 isp1 clocks
    - items:
      - description: ISP clock
      - description: ISP AXI clock
      - description: ISP AHB clock
      - description: ISP Pixel clock

?


> 
>> +    maxItems: 5
> 
> Now the 4th and 5th clock are undefined.
> 
>> +    minItems: 3
>> +    description:
>> +      ISP clock
>> +      ISP AXI clock
>> +      ISP AHB clock
>>
>>    clock-names:
>> +    maxItems: 5
> 
> This should not be more than the number of entries in 'items'.
> 

If we follow what I wrote above, should we have:

    clock-names:
      oneOf:
        # rk3288 clocks
        - items:
          - const: clk_isp
          - const: aclk_isp
          - const: hclk_isp
          - const: pclk_isp_in
          - const: sclk_isp_jpe
        # rk3399 isp0 clocks
        - items:
          - const: clk_isp
          - const: aclk_isp
          - const: hclk_isp
        # rk3399 isp1 clocks
        - items:
          - const: clk_isp
          - const: aclk_isp
          - const: hclk_isp
          - const: pclk_isp

?

Thanks
Helen

>> +    minItems: 3
>>      items:
>> -      - const: clk_isp
>> -      - const: aclk_isp
>> -      - const: aclk_isp_wrap
>> -      - const: hclk_isp
>> -      - const: hclk_isp_wrap
>> +      - const: isp
>> +      - const: aclk
>> +      - const: hclk
>>
>>    iommus:
>>      maxItems: 1
>> @@ -135,11 +135,9 @@ examples:
>>              reg = <0x0 0xff910000 0x0 0x4000>;
>>              interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH 0>;
>>              clocks = <&cru SCLK_ISP0>,
>> -                     <&cru ACLK_ISP0>, <&cru ACLK_ISP0_WRAPPER>,
>> -                     <&cru HCLK_ISP0>, <&cru HCLK_ISP0_WRAPPER>;
>> -            clock-names = "clk_isp",
>> -                          "aclk_isp", "aclk_isp_wrap",
>> -                          "hclk_isp", "hclk_isp_wrap";
>> +                     <&cru ACLK_ISP0_WRAPPER>,
>> +                     <&cru HCLK_ISP0_WRAPPER>;
>> +            clock-names = "isp", "aclk", "hclk";
>>              iommus = <&isp0_mmu>;
>>              phys = <&dphy>;
>>              phy-names = "dphy";
>> diff --git a/drivers/staging/media/rkisp1/rkisp1-dev.c b/drivers/staging/media/rkisp1/rkisp1-dev.c
>> index f38801fea10d9..175ac25fe99fa 100644
>> --- a/drivers/staging/media/rkisp1/rkisp1-dev.c
>> +++ b/drivers/staging/media/rkisp1/rkisp1-dev.c
>> @@ -406,11 +406,9 @@ static irqreturn_t rkisp1_isr(int irq, void *ctx)
>>  }
>>
>>  static const char * const rk3399_isp_clks[] = {
>> -       "clk_isp",
>> -       "aclk_isp",
>> -       "hclk_isp",
>> -       "aclk_isp_wrap",
>> -       "hclk_isp_wrap",
>> +       "isp",
>> +       "aclk",
>> +       "hclk",
>>  };
>>
>>  static const struct rkisp1_match_data rk3399_isp_clk_data = {
>> --
>> 2.26.0
>>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

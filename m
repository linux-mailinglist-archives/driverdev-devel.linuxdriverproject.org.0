Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 479AD294E14
	for <lists+driverdev-devel@lfdr.de>; Wed, 21 Oct 2020 15:54:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0F229873F1;
	Wed, 21 Oct 2020 13:54:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A79cUgmQftcg; Wed, 21 Oct 2020 13:54:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2141A873DD;
	Wed, 21 Oct 2020 13:54:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E762B1BF2CD
 for <devel@linuxdriverproject.org>; Wed, 21 Oct 2020 13:54:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E41818511B
 for <devel@linuxdriverproject.org>; Wed, 21 Oct 2020 13:54:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tDyyX-P7ayzk for <devel@linuxdriverproject.org>;
 Wed, 21 Oct 2020 13:54:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8DB4A84A92
 for <devel@driverdev.osuosl.org>; Wed, 21 Oct 2020 13:54:35 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id 454921F459CF
Subject: Re: [PATCH v5 5/9] media: staging: rkisp1: remove unecessary clocks
To: Rob Herring <robh+dt@kernel.org>
References: <20200722155533.252844-1-helen.koike@collabora.com>
 <20200722155533.252844-6-helen.koike@collabora.com>
 <CAL_Jsq+qB=yUtHKKujiUWrsq+W-3ggM3B_SuuDzfYEheczn=8g@mail.gmail.com>
 <2dcdda41-bdb4-55a8-557f-8175983effb5@collabora.com>
 <CAL_Jsq+-8Jyms3LJBjTxABcuTa5GduXtJ1jdOgp7xcPoQzdtGQ@mail.gmail.com>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <c0da2c06-4838-2bb3-004e-799e196cb35c@collabora.com>
Date: Wed, 21 Oct 2020 10:54:23 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.2
MIME-Version: 1.0
In-Reply-To: <CAL_Jsq+-8Jyms3LJBjTxABcuTa5GduXtJ1jdOgp7xcPoQzdtGQ@mail.gmail.com>
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

On 10/20/20 12:14 PM, Rob Herring wrote:
> On Wed, Oct 14, 2020 at 11:46 AM Helen Koike <helen.koike@collabora.com> wrote:
>>
>> Hi Rob,
>>
>> Thnaks for your reply.
>>
>> On 9/22/20 11:24 AM, Rob Herring wrote:
>>> On Wed, Jul 22, 2020 at 9:56 AM Helen Koike <helen.koike@collabora.com> wrote:
>>>>
>>>> aclk_isp_wrap is a child of aclk_isp, and hclk_isp_wrap is a child of
>>>> hclk_isp, thus we can remove parents from the list.
>>>>
>>>> Also, for the isp0, we only need the ISP clock, ACLK and HCLK.
>>>> In the future we'll need a pixel clock for RK3288 and RK3399, and a JPEG
>>>> clock for RK3288.
>>>>
>>>> So with the goal to cleanup the dt-bindings and remove it from staging,
>>>> simplify clock names to isp, aclk and hclk.
>>>>
>>>> Assigned clocks are meant to refer to the full path in the clock tree,
>>>> i.e. the leaf in the tree.
>>>> For instance, in RK3399, the clock responsible for ACLK (ISP AXI CLOCK)
>>>> is aclk_isp0_wrapper.
>>>>
>>>> For reference, this is the isp clock topology on RK3399:
>>>>
>>>>  xin24m
>>>>     pll_npll
>>>>        npll
>>>>           clk_isp1
>>>>           clk_isp0
>>>>     pll_cpll
>>>>        cpll
>>>>           aclk_isp1
>>>>              aclk_isp1_noc
>>>>              hclk_isp1
>>>>                 aclk_isp1_wrapper
>>>>                 hclk_isp1_noc
>>>>           aclk_isp0
>>>>              hclk_isp1_wrapper
>>>>              aclk_isp0_wrapper
>>>>              aclk_isp0_noc
>>>>              hclk_isp0
>>>>                 hclk_isp0_wrapper
>>>>                 hclk_isp0_noc
>>>>  pclkin_isp1_wrapper
>>>>
>>>> Signed-off-by: Helen Koike <helen.koike@collabora.com>
>>>>
>>>> ---
>>>> Changes in V5:
>>>> - Use if/then schema as suggested by Rob Herring on
>>>> https://patchwork.linuxtv.org/project/linux-media/patch/20200702191322.2639681-6-helen.koike@collabora.com/#119729
>>>>
>>>> Changes in V4:
>>>> - update binding according to suggestion by Robin Murphy
>>>> on https://patchwork.kernel.org/patch/11475007/
>>>>
>>>> Changes in V3:
>>>> - this is a new patch in the series
>>>> ---
>>>>  .../bindings/media/rockchip-isp1.yaml         | 50 ++++++++++++-------
>>>>  drivers/staging/media/rkisp1/rkisp1-dev.c     |  8 ++-
>>>>  2 files changed, 36 insertions(+), 22 deletions(-)
>>>>
>>>> diff --git a/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml b/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
>>>> index 62a6b9c959498..23c677d15037a 100644
>>>> --- a/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
>>>> +++ b/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
>>>> @@ -24,20 +24,10 @@ properties:
>>>>      maxItems: 1
>>>>
>>>>    clocks:
>>>> -    items:
>>>> -      - description: ISP clock
>>>> -      - description: ISP AXI clock clock
>>>> -      - description: ISP AXI clock  wrapper clock
>>>> -      - description: ISP AHB clock clock
>>>> -      - description: ISP AHB wrapper clock
>>>> +    minItems: 3
>>>
>>> You need maxItems here too or it will always be 3.
>>>
>>>>
>>>>    clock-names:
>>>> -    items:
>>>> -      - const: clk_isp
>>>> -      - const: aclk_isp
>>>> -      - const: aclk_isp_wrap
>>>> -      - const: hclk_isp
>>>> -      - const: hclk_isp_wrap
>>>> +    minItems: 3
>>>>
>>>>    iommus:
>>>>      maxItems: 1
>>>> @@ -116,6 +106,34 @@ required:
>>>>    - power-domains
>>>>    - ports
>>>>
>>>> +if:
>>>> +  properties:
>>>> +    compatible:
>>>> +      contains:
>>>> +        const: rockchip,rk3399-cif-isp
>>>> +then:
>>>> +  properties:
>>>> +    clocks:
>>>> +      maxItems: 4
>>>> +      minItems: 3
>>>
>>> For a single compatible you shouldn't really have a variable number of clocks.
>>
>> I'm not entirely sure how to make this separation, since isp0 and isp1 (not yet supported)
>> would use the same compatible.
>> Unless if we separate in two compatibles, but maybe this is an overhead just for an extra clock.
>> What do you think?
> 
> In that case, it's fine.
> 
>>
>>>
>>>> +      items:
>>>> +        # isp0 and isp1
>>>> +        - description: ISP clock
>>>> +        - description: ISP AXI clock
>>>> +        - description: ISP AHB clock
>>>> +        # only for isp1
>>>> +        - description: ISP Pixel clock
>>>> +    clock-names:
>>>> +      maxItems: 4
>>>> +      minItems: 3
>>>> +      items:
>>>> +        # isp0 and isp1
>>>> +        - const: isp
>>>> +        - const: aclk
>>>> +        - const: hclk
>>>> +        # only for isp1
>>>> +        - const: pclk_isp
>>>
>>> Don't you need an 'else' clause. For not rockchip,rk3399-cif-isp,
>>> there's no definition of what clocks there are.
>>
>> There is only one compatible defined for now, rk3288 will be added later.
>> The idea to add if/then is to make it easier to add rk3288:
>>
>> https://patchwork.kernel.org/project/linux-media/patch/20200406073017.19462-4-karthik.poduval@gmail.com/
> 
> Hopefully, the clock names will be aligned? Looks like they are the
> same with just 1 additional clock. Ideally, you define them all at the
> top level and the if/then schema just defines how many clocks for each
> compatible.

I submitted another version, where I try to capture what you suggested here,
please check if I got it right this time (or not).
Maybe I misunderstood which kind of alignment you are expecting for the clock names,
should they be each in a different line?

https://patchwork.linuxtv.org/project/linux-media/patch/20201020193850.1460644-6-helen.koike@collabora.com/

Thanks
Helen
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

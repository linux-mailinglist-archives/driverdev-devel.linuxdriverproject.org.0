Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DBDE2A808F
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Nov 2020 15:15:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 96D9422EE6;
	Thu,  5 Nov 2020 14:15:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KxMoyC-N-1Dt; Thu,  5 Nov 2020 14:15:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8A02923018;
	Thu,  5 Nov 2020 14:15:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C54201BF425
 for <devel@linuxdriverproject.org>; Thu,  5 Nov 2020 14:15:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C1CBE85B48
 for <devel@linuxdriverproject.org>; Thu,  5 Nov 2020 14:15:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Tw2Zr+e6dbKJ for <devel@linuxdriverproject.org>;
 Thu,  5 Nov 2020 14:14:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7CAB38630A
 for <devel@driverdev.osuosl.org>; Thu,  5 Nov 2020 14:14:59 +0000 (UTC)
Received: from [IPv6:2804:14c:483:7e3e::1003] (unknown
 [IPv6:2804:14c:483:7e3e::1003])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: koike)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 2E3581F4644C;
 Thu,  5 Nov 2020 14:14:51 +0000 (GMT)
Subject: Re: [PATCH 08/14] media: sunxi: Add support for the A31 MIPI CSI-2
 controller
To: Maxime Ripard <maxime@cerno.tech>
References: <20201023174546.504028-1-paul.kocialkowski@bootlin.com>
 <20201023174546.504028-9-paul.kocialkowski@bootlin.com>
 <1a3a615c-a058-e282-2dbb-c99dfa98be68@collabora.com>
 <20201102092110.ro6a456lvbrktwoz@gilmour.lan>
 <20201104111710.GB287014@aptenodytes>
 <f74e4d59-a391-36ab-74aa-8e02aca1b0bc@collabora.com>
 <20201104184538.f6qagsmjdoijbzmv@gilmour.lan>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <3b99b055-ff53-c873-19b2-fd2ccc86956d@collabora.com>
Date: Thu, 5 Nov 2020 11:14:47 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <20201104184538.f6qagsmjdoijbzmv@gilmour.lan>
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
 Philipp Zabel <p.zabel@pengutronix.de>, Kishon Vijay Abraham I <kishon@ti.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Yong Deng <yong.deng@magewell.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Hans Verkuil <hverkuil@xs4all.nl>,
 kevin.lhopital@hotmail.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On 11/4/20 3:45 PM, Maxime Ripard wrote:
> On Wed, Nov 04, 2020 at 01:38:08PM -0300, Helen Koike wrote:
>>
>>
>> On 11/4/20 8:17 AM, Paul Kocialkowski wrote:
>>> Hi,
>>>
>>> On Mon 02 Nov 20, 10:21, Maxime Ripard wrote:
>>>> On Fri, Oct 30, 2020 at 07:45:18PM -0300, Helen Koike wrote:
>>>>> On 10/23/20 2:45 PM, Paul Kocialkowski wrote:
>>>>>> The A31 MIPI CSI-2 controller is a dedicated MIPI CSI-2 controller
>>>>>> found on Allwinner SoCs such as the A31 and V3/V3s.
>>>>>>
>>>>>> It is a standalone block, connected to the CSI controller on one side
>>>>>> and to the MIPI D-PHY block on the other. It has a dedicated address
>>>>>> space, interrupt line and clock.
>>>>>>
>>>>>> Currently, the MIPI CSI-2 controller is hard-tied to a specific CSI
>>>>>> controller (CSI0) but newer SoCs (such as the V5) may allow switching
>>>>>> MIPI CSI-2 controllers between CSI controllers.
>>>>>>
>>>>>> It is represented as a V4L2 subdev to the CSI controller and takes a
>>>>>> MIPI CSI-2 sensor as its own subdev, all using the fwnode graph and
>>>>>> media controller API.
>>>>>
>>>>> Maybe this is a bad idea, but I was thinking:
>>>>> This driver basically just turn on/off and catch some interrupts for errors,
>>>>> and all the rest of v4l2 config you just forward to the next subdevice
>>>>> on the pipeline.
>>>>>
>>>>> So instead of exposing it as a subdevice, I was wondering if modeling
>>>>> this driver also through the phy subsystem wouldn't be cleaner, so
>>>>> you won't need all the v4l2 subdevice/topology boilerplate code that
>>>>> it seems you are not using (unless you have plans to add controls or
>>>>> some specific configuration on this node later).
>>>>>
>>>>> But this would require changes on the sun6i-csi driver.
>>>>>
>>>>> What do you think?
>>>>
>>>> Eventually we'll need to filter the virtual channels / datatypes I
>>>> guess, so it's definitely valuable to have it in v4l2
>>
>> Which kind of datatypes? 
> 
> MIPI-CSI datatypes. Each packet on the MIPI-CSI bus is assigned a
> virtual channel and data type so that you can multiplex multiple streams
> (like a 3d camera would send for example, through the virtual channels)
> and data types (like frames and metadata) and MIPI-CSI controllers
> usually allow to filter them based on what you want.
> 
>> I ask to know if this shouldn't be configured through the video node
>> instead of subdevice.
> 
> Not really, some setups have a mux that can split the multiple virtual
> channels to multiple video nodes for example.
> 
>> Regarding channels, we had a discussion to implement it through the video
>> node (and not subdevice) [1]. But we discussed about blitters and multi-scalers,
>> so now I'm wondering if we could use the same API for mipi-csi virtual channels
>> in the video entity device, or if it doesn't apply and we need another API
>> for that in a subdevice instead.
>>
>> [1] https://patchwork.linuxtv.org/project/linux-media/cover/20200717115435.2632623-1-helen.koike@collabora.com/
> 
> There's already an API to deal with MIPI-CSI virtual channels:
> https://patchwork.kernel.org/project/linux-renesas-soc/cover/20190328200608.9463-1-jacopo+renesas@jmondi.org/
> 
> Maxime
> 

Thanks for the explanation :)

Helen
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

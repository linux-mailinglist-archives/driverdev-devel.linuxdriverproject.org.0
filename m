Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 17DA424D634
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Aug 2020 15:38:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 061E321514;
	Fri, 21 Aug 2020 13:38:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gzweUXu6e4f0; Fri, 21 Aug 2020 13:38:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 59DBC20460;
	Fri, 21 Aug 2020 13:38:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4F4131BF855
 for <devel@linuxdriverproject.org>; Fri, 21 Aug 2020 13:38:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4953586BB3
 for <devel@linuxdriverproject.org>; Fri, 21 Aug 2020 13:38:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uTj00RHWkRtB for <devel@linuxdriverproject.org>;
 Fri, 21 Aug 2020 13:37:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id AC48386B4E
 for <devel@driverdev.osuosl.org>; Fri, 21 Aug 2020 13:37:59 +0000 (UTC)
Received: from coco.lan (ip5f5ad5bf.dynamic.kabel-deutschland.de
 [95.90.213.191])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8FAEF2075E;
 Fri, 21 Aug 2020 13:37:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1598017079;
 bh=Ll99DIK1T8Lkx3D20DknnJzu5dcs03ue33YMpeTIyUU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=QKWBRvNeIHjsvJmXUSYSgHLegxdwzMcHXG3CQqzPDoRqSjvqfitMTxyInPncgbksc
 ewEiJwcez1JSi0ZzL0lO//cdc1CPnS2j38p1s53qqHd5jMu8h8BpHwH5ueESJ3Y407
 MQszV343fhRhN9y+MYrw7+n6dUHclNFDknk/lK6o=
Date: Fri, 21 Aug 2020 15:37:49 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH 00/49] DRM driver for Hikey 970
Message-ID: <20200821153749.08afec86@coco.lan>
In-Reply-To: <20200819173558.GA3733@ravnborg.org>
References: <cover.1597833138.git.mchehab+huawei@kernel.org>
 <20200819152120.GA106437@ravnborg.org>
 <20200819174027.70b39ee9@coco.lan>
 <20200819173558.GA3733@ravnborg.org>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 Xinliang Liu <xinliang.liu@linaro.org>,
 Wanchun Zheng <zhengwanchun@hisilicon.com>, linuxarm@huawei.com,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 devel@driverdev.osuosl.org, Daniel Borkmann <daniel@iogearbox.net>,
 John Fastabend <john.fastabend@gmail.com>,
 Xiubin Zhang <zhangxiubin1@huawei.com>, Wei Xu <xuwei5@hisilicon.com>,
 David Airlie <airlied@linux.ie>, Xinwei Kong <kong.kongxinwei@hisilicon.com>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Bogdan Togorean <bogdan.togorean@analog.com>, Jakub Kicinski <kuba@kernel.org>,
 Laurentiu Palcu <laurentiu.palcu@nxp.com>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, Liwei Cai <cailiwei@hisilicon.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Chen Feng <puck.chen@hisilicon.com>,
 Alexei Starovoitov <ast@kernel.org>, linaro-mm-sig@lists.linaro.org,
 Rob Herring <robh+dt@kernel.org>, mauro.chehab@huawei.com,
 Rob Clark <robdclark@chromium.org>, linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Liuyao An <anliuyao@huawei.com>, netdev@vger.kernel.org,
 Rongrong Zou <zourongrong@gmail.com>, bpf@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Sam,

Em Wed, 19 Aug 2020 19:35:58 +0200
Sam Ravnborg <sam@ravnborg.org> escreveu:

> > +	ret = drm_bridge_attach(encoder, bridge, NULL, 0);  
> The bridge should be attached with the falg that tell the bridge NOT to
> create a connector.
> 
> The display driver shall created the connector.
> 
> Please see how other drivers do this (but most driver uses the old
> pattern so so look for drm_bridge_attach() with the flag argument.

Not sure if I got what should be done here.

From what I've seen at the DRM code, one of the differences between the 
display engine for the first Hikey board (Kirin 620 based) and 960/970
is with regards to bridges. The first Hikey device doesn't use any
external bridges: both panel and HDMI support are provided by the SoC.

The Hikey 960 and 970 boards may either use an external bridge
or not. They also have two output connectors:

- The first one doesn't use an external bridge. It is used
  only together with an external daughter display panel board. 
  It sounds that one such panels is this one:

	https://www.96boards.org/blog/linksprite-hikey-aosp/

  I don't have any such board. The OOT driver came with one
  panel display, I didn't port such driver. 

- The second one uses an external bridge (adv7535) which is connected
  to the HDMI board's connector.

As there's just one bridge, the driver uses this to find its
OF data:

	struct device_node *bridge_node;

	bridge_node = of_graph_get_remote_port_parent(endpoint);
	dsi->bridge = of_drm_find_bridge(bridge_node);

Basically, it doesn't call drm_bridge_add(), and doesn't
declare any struct drm_bridge_funcs fops, as there's just one
bridge that it is always there.

-

That's said, when I ported the code from Kernel 4.9, I fixed
some broken things at the hotplug logic, trying to use other
drivers with external bridges as examples. Yet, as you noticed,
I ended using some older bridge model.  

The only other driver I found that doesn't use drm_bridge_add()
and doesn't pass 0 as flags is this one:

	drivers/gpu/drm/omapdrm/omap_drv.c

Is it a good example?

What I see different there there is that it calls drm_bridge_attach()
with:

	ret = drm_bridge_attach(pipe->encoder,
				pipe->output->bridge, NULL,
				DRM_BRIDGE_ATTACH_NO_CONNECTOR);

Is adding this enough? Or should I do something else?


Thanks,
Mauro
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id AE2D438217A
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 May 2021 00:41:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5DFC683993;
	Sun, 16 May 2021 22:41:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gyZakD7EISHv; Sun, 16 May 2021 22:41:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B9D4A8398E;
	Sun, 16 May 2021 22:40:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 798E51BF3A9
 for <devel@linuxdriverproject.org>; Sun, 16 May 2021 22:40:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 67CBF608A3
 for <devel@linuxdriverproject.org>; Sun, 16 May 2021 22:40:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PujNgYGUIxux for <devel@linuxdriverproject.org>;
 Sun, 16 May 2021 22:40:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 49719605CF
 for <devel@driverdev.osuosl.org>; Sun, 16 May 2021 22:40:48 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 3BDE51F41CCA
Message-ID: <831a59b052df02e9860b9766e631a7ab6a37c46a.camel@collabora.com>
Subject: Re: [PATCH v9 03/13] media: hantro: Use syscon instead of 'ctrl'
 register
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Lucas Stach <l.stach@pengutronix.de>, Benjamin Gaignard
 <benjamin.gaignard@collabora.com>, p.zabel@pengutronix.de,
 mchehab@kernel.org,  robh+dt@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de,  festevam@gmail.com, lee.jones@linaro.org,
 gregkh@linuxfoundation.org,  mripard@kernel.org,
 paul.kocialkowski@bootlin.com, wens@csie.org,  jernej.skrabec@siol.net,
 hverkuil-cisco@xs4all.nl, emil.l.velikov@gmail.com,  "Peng Fan (OSS)"
 <peng.fan@oss.nxp.com>, Jacky Bai <ping.bai@nxp.com>
Date: Sun, 16 May 2021 19:40:29 -0300
In-Reply-To: <7bcbb787d82f21d42563d8fb7e3c2e7d40123932.camel@pengutronix.de>
References: <20210407073534.376722-1-benjamin.gaignard@collabora.com>
 <20210407073534.376722-4-benjamin.gaignard@collabora.com>
 <7bcbb787d82f21d42563d8fb7e3c2e7d40123932.camel@pengutronix.de>
Organization: Collabora
User-Agent: Evolution 3.38.2-1 
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-imx@nxp.com, kernel@pengutronix.de,
 kernel@collabora.com, cphealy@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Lucas,

On Fri, 2021-04-16 at 12:54 +0200, Lucas Stach wrote:
> Am Mittwoch, dem 07.04.2021 um 09:35 +0200 schrieb Benjamin Gaignard:
> > In order to be able to share the control hardware block between
> > VPUs use a syscon instead a ioremap it in the driver.
> > To keep the compatibility with older DT if 'nxp,imx8mq-vpu-ctrl'
> > phandle is not found look at 'ctrl' reg-name.
> > With the method it becomes useless to provide a list of register
> > names so remove it.
> 
> Sorry for putting a spoke in the wheel after many iterations of the
> series.
> 
> We just discussed a way forward on how to handle the clocks and resets
> provided by the blkctl block on i.MX8MM and later and it seems there is
> a consensus on trying to provide virtual power domains from a blkctl
> driver, controlling clocks and resets for the devices in the power
> domain. I would like to avoid introducing yet another way of handling
> the blkctl and thus would like to align the i.MX8MQ VPU blkctl with
> what we are planning to do on the later chip generations.
> 
> CC'ing Jacky Bai and Peng Fan from NXP, as they were going to give this
> virtual power domain thing a shot.
> 

It seems the i.MX8MM BLK-CTL series are moving forward:

https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=479175

... but I'm unable to wrap my head around how this affects the
devicetree VPU modelling for i.MX8MQ (and also i.MX8MM, i.MX8MP, ...).

Can you clarify that?

Thanks,
Ezequiel

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

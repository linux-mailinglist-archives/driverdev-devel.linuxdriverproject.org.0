Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E255382A46
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 May 2021 12:53:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E6A7B608DC;
	Mon, 17 May 2021 10:53:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YrdQi_QeLGVP; Mon, 17 May 2021 10:53:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 52FBB608C5;
	Mon, 17 May 2021 10:53:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id ECC111BF344
 for <devel@linuxdriverproject.org>; Mon, 17 May 2021 10:53:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E895183A80
 for <devel@linuxdriverproject.org>; Mon, 17 May 2021 10:53:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nZk8j_tezZtG for <devel@linuxdriverproject.org>;
 Mon, 17 May 2021 10:53:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de
 [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5210483A77
 for <devel@driverdev.osuosl.org>; Mon, 17 May 2021 10:53:19 +0000 (UTC)
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1liaru-0007ET-Ma; Mon, 17 May 2021 12:53:02 +0200
Message-ID: <72fef3d9f79194876f2035e996bb83f9f8b12902.camel@pengutronix.de>
Subject: Re: [PATCH v9 03/13] media: hantro: Use syscon instead of 'ctrl'
 register
From: Lucas Stach <l.stach@pengutronix.de>
To: Ezequiel Garcia <ezequiel@collabora.com>, Benjamin Gaignard
 <benjamin.gaignard@collabora.com>, p.zabel@pengutronix.de,
 mchehab@kernel.org,  robh+dt@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de,  festevam@gmail.com, lee.jones@linaro.org,
 gregkh@linuxfoundation.org,  mripard@kernel.org,
 paul.kocialkowski@bootlin.com, wens@csie.org,  jernej.skrabec@siol.net,
 hverkuil-cisco@xs4all.nl, emil.l.velikov@gmail.com,  "Peng Fan (OSS)"
 <peng.fan@oss.nxp.com>, Jacky Bai <ping.bai@nxp.com>
Date: Mon, 17 May 2021 12:52:57 +0200
In-Reply-To: <831a59b052df02e9860b9766e631a7ab6a37c46a.camel@collabora.com>
References: <20210407073534.376722-1-benjamin.gaignard@collabora.com>
 <20210407073534.376722-4-benjamin.gaignard@collabora.com>
 <7bcbb787d82f21d42563d8fb7e3c2e7d40123932.camel@pengutronix.de>
 <831a59b052df02e9860b9766e631a7ab6a37c46a.camel@collabora.com>
User-Agent: Evolution 3.40.1 (3.40.1-1.fc34) 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: devel@driverdev.osuosl.org
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

Hi Ezequiel,

Am Sonntag, dem 16.05.2021 um 19:40 -0300 schrieb Ezequiel Garcia:
> Hi Lucas,
> 
> On Fri, 2021-04-16 at 12:54 +0200, Lucas Stach wrote:
> > Am Mittwoch, dem 07.04.2021 um 09:35 +0200 schrieb Benjamin Gaignard:
> > > In order to be able to share the control hardware block between
> > > VPUs use a syscon instead a ioremap it in the driver.
> > > To keep the compatibility with older DT if 'nxp,imx8mq-vpu-ctrl'
> > > phandle is not found look at 'ctrl' reg-name.
> > > With the method it becomes useless to provide a list of register
> > > names so remove it.
> > 
> > Sorry for putting a spoke in the wheel after many iterations of the
> > series.
> > 
> > We just discussed a way forward on how to handle the clocks and resets
> > provided by the blkctl block on i.MX8MM and later and it seems there is
> > a consensus on trying to provide virtual power domains from a blkctl
> > driver, controlling clocks and resets for the devices in the power
> > domain. I would like to avoid introducing yet another way of handling
> > the blkctl and thus would like to align the i.MX8MQ VPU blkctl with
> > what we are planning to do on the later chip generations.
> > 
> > CC'ing Jacky Bai and Peng Fan from NXP, as they were going to give this
> > virtual power domain thing a shot.
> > 
> 
> It seems the i.MX8MM BLK-CTL series are moving forward:
> 
> https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=479175
> 
> ... but I'm unable to wrap my head around how this affects the
> devicetree VPU modelling for i.MX8MQ (and also i.MX8MM, i.MX8MP, ...).
> 
> 
For the i.MX8MQ we want to have the same virtual power-domains provided
by a BLK-CTRL driver for the VPUs, as on i.MX8MM. This way we should be
able to use the same DT bindings for the VPUs on i.MX8MQ and i.MX8MM,
even though the SoC integration with the blk-ctrl is a little
different.

> Can you clarify that?
> 
I'm planning on sending some patches adding i.MX8MQ VPU support to the
BLK-CTRL driver in the next few days. I guess that should clarify
things. :)

Regards,
Lucas


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

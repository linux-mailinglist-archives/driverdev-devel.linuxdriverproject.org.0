Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F6CD34A96E
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Mar 2021 15:19:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C20AD60D4B;
	Fri, 26 Mar 2021 14:19:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d9oPOGlhep6l; Fri, 26 Mar 2021 14:19:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 28ACE60C19;
	Fri, 26 Mar 2021 14:19:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1C8EB1BF59E
 for <devel@linuxdriverproject.org>; Fri, 26 Mar 2021 14:19:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0B1FA4030F
 for <devel@linuxdriverproject.org>; Fri, 26 Mar 2021 14:19:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MAGXvN7iNdQs for <devel@linuxdriverproject.org>;
 Fri, 26 Mar 2021 14:19:01 +0000 (UTC)
X-Greylist: delayed 00:06:41 by SQLgrey-1.8.0
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de
 [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C027A4030A
 for <devel@driverdev.osuosl.org>; Fri, 26 Mar 2021 14:19:00 +0000 (UTC)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <pza@pengutronix.de>)
 id 1lPnIL-0006oS-Vy; Fri, 26 Mar 2021 15:18:37 +0100
Received: from pza by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <pza@pengutronix.de>)
 id 1lPnIK-0006oK-Fa; Fri, 26 Mar 2021 15:18:36 +0100
Date: Fri, 26 Mar 2021 15:18:36 +0100
From: Philipp Zabel <pza@pengutronix.de>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: Re: [PATCH v6 12/13] media: hantro: IMX8M: add variant for G2/HEVC
 codec
Message-ID: <20210326141836.GC8441@pengutronix.de>
References: <20210318082046.51546-1-benjamin.gaignard@collabora.com>
 <20210318082046.51546-13-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210318082046.51546-13-benjamin.gaignard@collabora.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 15:18:17 up 36 days, 17:42, 97 users,  load average: 0.01, 0.07, 0.11
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: pza@pengutronix.de
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
Cc: kernel@collabora.com, devel@driverdev.osuosl.org, lee.jones@linaro.org,
 linux-rockchip@lists.infradead.org, wens@csie.org, linux-imx@nxp.com,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 s.hauer@pengutronix.de, mripard@kernel.org, robh+dt@kernel.org,
 mchehab@kernel.org, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org, jernej.skrabec@siol.net,
 gregkh@linuxfoundation.org, emil.l.velikov@gmail.com,
 linux-kernel@vger.kernel.org, paul.kocialkowski@bootlin.com,
 kernel@pengutronix.de, hverkuil-cisco@xs4all.nl, shawnguo@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Mar 18, 2021 at 09:20:45AM +0100, Benjamin Gaignard wrote:
> Add variant to IMX8M to enable G2/HEVC codec.
> Define the capabilities for the hardware up to 3840x2160.
> G2 doesn't have postprocessor, use the same clocks and got it
> own interruption.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>

Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>

regards
Philipp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

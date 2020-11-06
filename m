Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B2EBC2A9854
	for <lists+driverdev-devel@lfdr.de>; Fri,  6 Nov 2020 16:14:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 65BC986990;
	Fri,  6 Nov 2020 15:14:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xbsAe8E-8YOq; Fri,  6 Nov 2020 15:14:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 45E3D869B4;
	Fri,  6 Nov 2020 15:14:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 215251BF28D
 for <devel@linuxdriverproject.org>; Fri,  6 Nov 2020 15:14:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1DD9686969
 for <devel@linuxdriverproject.org>; Fri,  6 Nov 2020 15:14:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LoQlqunN6BLX for <devel@linuxdriverproject.org>;
 Fri,  6 Nov 2020 15:14:36 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from new3-smtp.messagingengine.com (new3-smtp.messagingengine.com
 [66.111.4.229])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 237E986968
 for <devel@driverdev.osuosl.org>; Fri,  6 Nov 2020 15:14:17 +0000 (UTC)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailnew.nyi.internal (Postfix) with ESMTP id 14F995806FA;
 Fri,  6 Nov 2020 10:14:16 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Fri, 06 Nov 2020 10:14:16 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:content-type:mime-version
 :content-transfer-encoding; s=fm1; bh=0cSynKWzgk09s6YfF0S84Qn9cx
 77ILObwbSgoXE1y18=; b=lx5ws79bgquU9wuamSzA3x0ZVzVykW22CapFSNlCIP
 yS1ZrlhBd3GWaYkZSFmWYFWKK/lWyPC/NErVWSPpVKPv/0ajAmR4p8WnliZglLFa
 OetzwZDCqF8YOYNtaHCxOpCOpAfift6r/0HKkUIYtFwnqGJnxQLUsm4O6NR2q+Ek
 R5jKnbBzbsWtbA1Di/+qofrlR6ysclj8v40EpwU/L76hPKdC6KqrYofUb9aGCnOU
 eWYRmIXV1ADz5dnMyWAAUihWhVvr2fn2NWc4Sl2GACunSFFq1FXe0EadpIzyxaBk
 jy4VVQSFK3lXOvO+q2mg/NqkeYFVfYzqlLlk2munkPUA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:from:message-id:mime-version:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=0cSynK
 Wzgk09s6YfF0S84Qn9cx77ILObwbSgoXE1y18=; b=SYvhdwg2Lf16TiD5A4Psj5
 csk3uFLKflVVdLUUMay9n51Ia7Q6f9W7MXkY59hKyramJZTA88yYGlbkexFB11W7
 2DkWVtxP9Mx4Ghx3c8qe4Bygs6GeouMGARpI6h/JuP8xuAMHeSMmDi+MRPubt/pv
 muiMPvYbNy2llkeaibWao395HafbfgnZlH1sHoyh+aZ5/LughJfOF73uJwCLf9FB
 fkZVgRNUX2qIT636r2PJkk6ASOCahyQ7IvyDRBMgr6mm2hL9totN6edWtLGu0d6P
 xxTVaz8cTaP3hdh/7uCHQKyaYWsau8SNm91L5Na4v7rl+cvCmXBjXK50kk9lhhWQ
 ==
X-ME-Sender: <xms:RWilX9GyUVTo2jcG2OA309gwwNqnIOxNGNslX-slk93NnDlyMTAJbw>
 <xme:RWilXyUFE6zWW7eO72tkbhMQMRnHv7WbVat-G8_5sRQU69SJxdrVKSe5vIC1obhFW
 LkOYy82KeB0rJRa84M>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedruddtledgjeehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffotggggfesthhqredtredtjeenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
 gvrhhnpeetieekgfffkeegkeeltdehudetteejgfekueevhffhteegudfgkedtueegfffg
 feenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurf
 grrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:RWilX_LGNCYfMJAMHprxRTem7lKkDKMmIu96s3JrPzdUQNAfYA7Cfw>
 <xmx:RWilXzGNMTe52PAvAvxgKDdtvb7i3PKh4X0p_ALiS1tB19vh0bLwbw>
 <xmx:RWilXzXoYuhkHQkYJMxQX98FovLYebYiTAWd8mi83enhIWnZIcjX_g>
 <xmx:SGilX0sORRT82W2kIZPOPlTlfAIshsS4_JGQzUi6Pr_PK46GBzfIag>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id D7D1F328037B;
 Fri,  6 Nov 2020 10:14:12 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Daniel Vetter <daniel.vetter@intel.com>, David Airlie <airlied@linux.ie>,
 Christoph Hellwig <hch@lst.de>
Subject: [PATCH 0/7] sunxi: Remove the calls to dma_direct_set_offset
Date: Fri,  6 Nov 2020 16:14:04 +0100
Message-Id: <20201106151411.321743-1-maxime@cerno.tech>
X-Mailer: git-send-email 2.28.0
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
Cc: devel@driverdev.osuosl.org, Hans Verkuil <hverkuil@xs4all.nl>,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Maxime Ripard <maxime@cerno.tech>, Yong Deng <yong.deng@magewell.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi,

Here's an attempt to removing the dma_direct_set_offset calls we have in
numerous drivers and move all those quirks into a global notifier as suggested
by Robin.

Let me know what you think,
Maxime

Maxime Ripard (7):
  drm/sun4i: backend: Fix probe failure with multiple backends
  soc: sunxi: Deal with the MBUS DMA offsets in a central place
  drm/sun4i: backend: Remove the MBUS quirks
  media: sun4i: Remove the MBUS quirks
  media: sun6i: Remove the MBUS quirks
  media: cedrus: Remove the MBUS quirks
  media: sun8i-di: Remove the call to of_dma_configure

 drivers/gpu/drm/sun4i/sun4i_backend.c         |  13 --
 .../platform/sunxi/sun4i-csi/sun4i_csi.c      |  27 ----
 .../platform/sunxi/sun6i-csi/sun6i_csi.c      |  17 ---
 .../media/platform/sunxi/sun8i-di/sun8i-di.c  |   4 -
 drivers/soc/sunxi/Kconfig                     |   8 ++
 drivers/soc/sunxi/Makefile                    |   1 +
 drivers/soc/sunxi/sunxi_mbus.c                | 132 ++++++++++++++++++
 drivers/staging/media/sunxi/cedrus/cedrus.c   |   1 -
 drivers/staging/media/sunxi/cedrus/cedrus.h   |   3 -
 .../staging/media/sunxi/cedrus/cedrus_hw.c    |  18 ---
 10 files changed, 141 insertions(+), 83 deletions(-)
 create mode 100644 drivers/soc/sunxi/sunxi_mbus.c

-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

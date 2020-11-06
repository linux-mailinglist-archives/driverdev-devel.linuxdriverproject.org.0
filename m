Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 372C22A9856
	for <lists+driverdev-devel@lfdr.de>; Fri,  6 Nov 2020 16:15:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E621284E9A;
	Fri,  6 Nov 2020 15:15:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HXHDwAggDFdw; Fri,  6 Nov 2020 15:14:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 556EB84F24;
	Fri,  6 Nov 2020 15:14:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B31FC1BF28D
 for <devel@linuxdriverproject.org>; Fri,  6 Nov 2020 15:14:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id AFF3A86972
 for <devel@linuxdriverproject.org>; Fri,  6 Nov 2020 15:14:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3ZuTChmrpjsO for <devel@linuxdriverproject.org>;
 Fri,  6 Nov 2020 15:14:36 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from new3-smtp.messagingengine.com (new3-smtp.messagingengine.com
 [66.111.4.229])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3DDE18696D
 for <devel@driverdev.osuosl.org>; Fri,  6 Nov 2020 15:14:24 +0000 (UTC)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailnew.nyi.internal (Postfix) with ESMTP id AC98F580701;
 Fri,  6 Nov 2020 10:14:23 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute6.internal (MEProxy); Fri, 06 Nov 2020 10:14:23 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=SzmJUpEELVvdR
 xE50uIjwGm8zMB0GdoR18I3irVVZQI=; b=RCCAOLFsgkOyCNGZmUO2sVk9uv06J
 qAMp84Mbv5OmnpO/oVhohP81FilXzdgbNTPY5Vey/aaI6uwCVYhNdMj8RAy7WfLF
 cewW8iwlEUaJ/Ht0CTeKievU0XRMTCbvSgErdO/Bc4Crolk3qtQBaPmkMdI+nUpz
 LEoytHBqeIRu4RpQyyeoeJqwSJoBOdClaFeJ2o647tNTEKWZSk48PHbLV4OGLi3T
 5Cvavapc44/EaKa8zp3ePHMUCMpXpHFK7LJal33umIuxukpjS92KSLd60cHRyAm0
 T1aZUyLVd3XIF2Tug8RfKzswxFEKadKJbC7BG+Uw2p5AKil+Yawb+BV7g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=SzmJUpEELVvdRxE50uIjwGm8zMB0GdoR18I3irVVZQI=; b=BytyAt+R
 sMjY8gQbI5HJ5sGPo6QMPPFmnCK6+KDsy1wvSPU0nUAMhn22BnTQ4UsS8vgfAMEZ
 XUSiSKZvoutzCYgQDjaG0E/TgT6iobizThUVMxKZDUkhS8Ewm8RVjboX1gLeecuP
 m6coczlSLFXfEp01WZoxwipYBERIhmEfE6vLVNW0UIAQuNwTNUJKDyyHyVDnFEoX
 m5QFhDNhHb+Cu9rFJzxqKkz3xHMqWs25OxxNccD5E9J1zS9cJZSHI6Jp6c98lYEH
 r2ZnXRfQ4BpNdukZtCgaBD8TtUqv6bycm6ePNgApkjMltKFmyPF4hUMACdxHlSBP
 a2vSkZnYalBYvA==
X-ME-Sender: <xms:T2ilX3wyiOdT9FK4ymEi7mv0oneD9pLoakL_Gd5lN1vmObQvLdgtNQ>
 <xme:T2ilX_QCn0yjaf2aRsn4v-tTfUDa1K5rZW1Rwf8uBi0VqtZIePj81TwvMY94B-y8a
 Io1KDl1fdtptIFVLzw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedruddtledgjeehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepfeenuc
 frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:T2ilXxXSq8RdxYQlQcj5jRxU4aDsgUE7HxME6IVD9t7B3HAwRSUE6A>
 <xmx:T2ilXxi9JkK6tkWO8M4i4vcxe-MJPWxkRqh2e1-AILWKMg9qMyoCNA>
 <xmx:T2ilX5DXxVbPlhA9QFSjBI-d6KI2kuMH83T7uZcFHCXY1EX4eoE6Nw>
 <xmx:T2ilXxZRyNBPR3tXZYSnu_anBhpuggG2k4xdndsixbBfBz07at6CLA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 24297306005B;
 Fri,  6 Nov 2020 10:14:23 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Daniel Vetter <daniel.vetter@intel.com>, David Airlie <airlied@linux.ie>,
 Christoph Hellwig <hch@lst.de>
Subject: [PATCH 7/7] media: sun8i-di: Remove the call to of_dma_configure
Date: Fri,  6 Nov 2020 16:14:11 +0100
Message-Id: <20201106151411.321743-8-maxime@cerno.tech>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201106151411.321743-1-maxime@cerno.tech>
References: <20201106151411.321743-1-maxime@cerno.tech>
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

of_dma_configure is called by the core before probe gets called so this
is redundant.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/media/platform/sunxi/sun8i-di/sun8i-di.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/media/platform/sunxi/sun8i-di/sun8i-di.c b/drivers/media/platform/sunxi/sun8i-di/sun8i-di.c
index ba5d07886607..ed863bf5ea80 100644
--- a/drivers/media/platform/sunxi/sun8i-di/sun8i-di.c
+++ b/drivers/media/platform/sunxi/sun8i-di/sun8i-di.c
@@ -825,10 +825,6 @@ static int deinterlace_probe(struct platform_device *pdev)
 		return ret;
 	}
 
-	ret = of_dma_configure(dev->dev, dev->dev->of_node, true);
-	if (ret)
-		return ret;
-
 	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 	dev->base = devm_ioremap_resource(&pdev->dev, res);
 	if (IS_ERR(dev->base))
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

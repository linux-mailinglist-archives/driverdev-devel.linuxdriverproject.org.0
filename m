Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE59E2A9851
	for <lists+driverdev-devel@lfdr.de>; Fri,  6 Nov 2020 16:14:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2FEA8874F5;
	Fri,  6 Nov 2020 15:14:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wnx6k6C1gMM9; Fri,  6 Nov 2020 15:14:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7076787480;
	Fri,  6 Nov 2020 15:14:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 683791BF9BD
 for <devel@linuxdriverproject.org>; Fri,  6 Nov 2020 15:14:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5B33F867EC
 for <devel@linuxdriverproject.org>; Fri,  6 Nov 2020 15:14:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Rziw15ShXz1w for <devel@linuxdriverproject.org>;
 Fri,  6 Nov 2020 15:14:22 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from new3-smtp.messagingengine.com (new3-smtp.messagingengine.com
 [66.111.4.229])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B7C9A8673C
 for <devel@driverdev.osuosl.org>; Fri,  6 Nov 2020 15:14:22 +0000 (UTC)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailnew.nyi.internal (Postfix) with ESMTP id 35E5A580702;
 Fri,  6 Nov 2020 10:14:22 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute6.internal (MEProxy); Fri, 06 Nov 2020 10:14:22 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=25s9dtBpvKUMB
 jSzbPopd7XcV2NhfxX6EjAEK2lOZXs=; b=urZszon+irSi9Ll/cqP81RPwSn3/G
 nXlAbb2INZXEB77Fnu8gBn6H+h9N3E93bXS3inzybL3oOERkTnxuypx02RthWZ9+
 KBFCmkjvSNMfhMePVtkyLfZV30Am/1Epvl1ZV/SM7xQESXsZFOWUHYNPLAVE8cl1
 rt6UO6OE23iP2ZQKQ4lA4TSysOMuWwtMp7zIs5kDrMYV4Ymb0XHgH6VdAak2CFGQ
 5uGBtGkcIqOuI9Ga8YdqfpQ60F6h1qKrz4wKOyNa7dkW1WxDo8MufHB1EqJhiDZk
 pY81EOHSNfDa6l5D4x6rmBnG5HzAn7piFXcqEeEhzapUFFfT2GiFDQH9Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=25s9dtBpvKUMBjSzbPopd7XcV2NhfxX6EjAEK2lOZXs=; b=emfgznoK
 8pmHYWJ7+ieIugu+xTzTPl8GVqofzW8eHPCC3sWEl3ablBEVRqGvHJsjWeaHhZUN
 HFpdx8cd4XRV/OggDJ9iXTXOpTgj17zYsNfLoQCOLny7ZW90i41TkN7QpWRV/9dm
 XoS0heREVWvKvGpWUQ+fgONgW/wahRAgYyvo7odnDzw7RIIzymHHBNaHb0to59o+
 9Bi4HcNtQX3q1oxjc3VoDpw+MaYYp1F3jr4YfS/yP3fBY/v1oujn3eqLIP9AOvLS
 bvzCmgpvCU8Mk3DjnXJ20Vl6HmhbPmNyksExOM2KcnJOnggADHA9Tnrh9vCDXSu+
 9Basi7/MHuR5Ew==
X-ME-Sender: <xms:TmilXy-QaE2p7SDhuFk1KmHwI0hzf9tPFKwDBQGCmkDZmMp2IZxtUw>
 <xme:TmilXyu6WdxxzZpg81qLDz3HH4aQFu2_CGRZ1H8_6-ba8OwqFjIEeFWhiaZdSlrwK
 V72l7mTTMv1HKqQcio>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedruddtledgjeehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepfeenuc
 frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:TmilX4A-e1BQAcyxcAGzi3x8BudQhUZEctRRp6qPm4VQfuH0hw2rmA>
 <xmx:TmilX6cIhOG-mgeFDf2Dc-XPtCO0JsBmuSjzkdwsIhyBY52eKhpHyQ>
 <xmx:TmilX3N9Na3Epz2RN0UPuFfyRMpmnH9UKNGVqtSRYVQ4_c_eNFu5Bg>
 <xmx:TmilX-n8M5tjv2OWvccIuhCsIyNGKETx3sgQV-3eVrMGt9IVoTG5zg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id B87143060057;
 Fri,  6 Nov 2020 10:14:21 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Daniel Vetter <daniel.vetter@intel.com>, David Airlie <airlied@linux.ie>,
 Christoph Hellwig <hch@lst.de>
Subject: [PATCH 6/7] media: cedrus: Remove the MBUS quirks
Date: Fri,  6 Nov 2020 16:14:10 +0100
Message-Id: <20201106151411.321743-7-maxime@cerno.tech>
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

Now that the MBUS quirks are applied by our global notifier, we can
remove them from Cedrus. Since the only quirk was whether or not we had
to apply that DMA quirk, we can also remove the quirks infrastructure.

Suggested-by: Christoph Hellwig <hch@lst.de>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/staging/media/sunxi/cedrus/cedrus.c    |  1 -
 drivers/staging/media/sunxi/cedrus/cedrus.h    |  3 ---
 drivers/staging/media/sunxi/cedrus/cedrus_hw.c | 18 ------------------
 3 files changed, 22 deletions(-)

diff --git a/drivers/staging/media/sunxi/cedrus/cedrus.c b/drivers/staging/media/sunxi/cedrus/cedrus.c
index e0e35502e34a..d5fca10ea5b4 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus.c
@@ -523,7 +523,6 @@ static const struct cedrus_variant sun50i_h5_cedrus_variant = {
 static const struct cedrus_variant sun50i_h6_cedrus_variant = {
 	.capabilities	= CEDRUS_CAPABILITY_UNTILED |
 			  CEDRUS_CAPABILITY_H265_DEC,
-	.quirks		= CEDRUS_QUIRK_NO_DMA_OFFSET,
 	.mod_rate	= 600000000,
 };
 
diff --git a/drivers/staging/media/sunxi/cedrus/cedrus.h b/drivers/staging/media/sunxi/cedrus/cedrus.h
index 93c843ae14bb..626090a5811c 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus.h
+++ b/drivers/staging/media/sunxi/cedrus/cedrus.h
@@ -29,8 +29,6 @@
 #define CEDRUS_CAPABILITY_UNTILED	BIT(0)
 #define CEDRUS_CAPABILITY_H265_DEC	BIT(1)
 
-#define CEDRUS_QUIRK_NO_DMA_OFFSET	BIT(0)
-
 enum cedrus_codec {
 	CEDRUS_CODEC_MPEG2,
 	CEDRUS_CODEC_H264,
@@ -150,7 +148,6 @@ struct cedrus_dec_ops {
 
 struct cedrus_variant {
 	unsigned int	capabilities;
-	unsigned int	quirks;
 	unsigned int	mod_rate;
 };
 
diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_hw.c b/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
index bcf050a04ffc..286c7fe844c3 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
@@ -222,24 +222,6 @@ int cedrus_hw_probe(struct cedrus_dev *dev)
 		return ret;
 	}
 
-	/*
-	 * The VPU is only able to handle bus addresses so we have to subtract
-	 * the RAM offset to the physcal addresses.
-	 *
-	 * This information will eventually be obtained from device-tree.
-	 *
-	 * XXX(hch): this has no business in a driver and needs to move
-	 * to the device tree.
-	 */
-
-#ifdef PHYS_PFN_OFFSET
-	if (!(variant->quirks & CEDRUS_QUIRK_NO_DMA_OFFSET)) {
-		ret = dma_direct_set_offset(dev->dev, PHYS_OFFSET, 0, SZ_4G);
-		if (ret)
-			return ret;
-	}
-#endif
-
 	ret = of_reserved_mem_device_init(dev->dev);
 	if (ret && ret != -ENODEV) {
 		dev_err(dev->dev, "Failed to reserve memory\n");
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

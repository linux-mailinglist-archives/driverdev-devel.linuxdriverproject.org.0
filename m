Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 273622A9850
	for <lists+driverdev-devel@lfdr.de>; Fri,  6 Nov 2020 16:14:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3B87A869A3;
	Fri,  6 Nov 2020 15:14:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T-3Z-YynE9FM; Fri,  6 Nov 2020 15:14:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C89E38697B;
	Fri,  6 Nov 2020 15:14:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D1CBF1BF9C2
 for <devel@linuxdriverproject.org>; Fri,  6 Nov 2020 15:14:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C6D1687480
 for <devel@linuxdriverproject.org>; Fri,  6 Nov 2020 15:14:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Eiofvq7RiCAH for <devel@linuxdriverproject.org>;
 Fri,  6 Nov 2020 15:14:22 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from new3-smtp.messagingengine.com (new3-smtp.messagingengine.com
 [66.111.4.229])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7F506870BC
 for <devel@driverdev.osuosl.org>; Fri,  6 Nov 2020 15:14:22 +0000 (UTC)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailnew.nyi.internal (Postfix) with ESMTP id D246F5806FF;
 Fri,  6 Nov 2020 10:14:20 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute6.internal (MEProxy); Fri, 06 Nov 2020 10:14:20 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=0bscza8TyZZzk
 bqTYGcH14Vv+/I16f52I3QPa0Ug4Ps=; b=QzJTEYxoh38AyRVtbLaamEXft1Pbz
 yCatY5kvsMJBDj72Qi1/WOI++9d+Xys9P4y65bqFcDuRrj9IeS6H4u5fIFW+6OZM
 73PvyOL23Ks4kKRsmrLwm8cc8O3pTHTfOfOUVLv5OGzN+JdERXMxf4VME2cOpseo
 xPhaGC+FHLPwSeX/2dbYdPITynFc0SBJRI9UMOyw4p8BBx+otQI5YdJ4yCRAasqQ
 dv3ZP9MMnV1A8ftKKZwf+VxggLMntIuVIIWEu/q3osjuI9ooJFE5qi2gtyBqz/9N
 5PTqp11r4k9aRgqURPIvAq4HLgfu8Ze+GT9eEU02IRkd1UYjUW8C4oeUw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=0bscza8TyZZzkbqTYGcH14Vv+/I16f52I3QPa0Ug4Ps=; b=qutC7tx7
 3VKN5jfH0KYzq6lusXZbGlzBaeTrIuISLqSjgwhhe44jstDOJjMilhInsnLfWZzO
 F5sqmATs59kqGj5B+KOAmetSiRx0AgYfpLhT9gnksjwuLiyBc+jXZcnPUqrRMQvQ
 MMHKPAsPKh4yHM8ogTwu/9rIOEkAphulcXM8u4qzNDqR72hHK9dTfCOhOWOtxCk1
 L0zbBRY9o41RYhp1zM/stTEHd3d0Nd7mPujjgs1iCVHPmZuFkX5oKcHbSjLBSOtL
 MIjUfuV//nkDT8QmxnT32wHSz5hzwata742zB8wJ2R5Uq068XoFMQwx5FZdR9j6q
 IkDDn+nWLGv+2A==
X-ME-Sender: <xms:TGilX34QETVryEYZRAaIcrPe3eTOdA5YGpEz9fr2h-i2ZmR0YGDA2A>
 <xme:TGilX85VM61CBKtnMh-ewDM6Ahzc-w8Uja0Lm7hx2G7GXxcGJQ8D10PmDMMlg2VzQ
 xK5n-8mEITnsBQ_gVc>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedruddtledgjeehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepfeenuc
 frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:TGilX-f0OpPCYap-tEXU27VugxEgqsS5pNa3Cqqno8MK9IubeiGOrg>
 <xmx:TGilX4I8-QNiCfloQooIrKXJ1IbAMNfmhnmu7v9lZn9EmReRqM0Bhw>
 <xmx:TGilX7JTl12SuCQu3YFFrbTq_9V0CYU8Ddkvul37D9BulXdIBk-sXw>
 <xmx:TGilX9jBsYtLxR7G6w-g2AsTA3OmfjyhGPAPa4ZpWkMSz6WmvD--9A>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 5927C306005E;
 Fri,  6 Nov 2020 10:14:20 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Daniel Vetter <daniel.vetter@intel.com>, David Airlie <airlied@linux.ie>,
 Christoph Hellwig <hch@lst.de>
Subject: [PATCH 5/7] media: sun6i: Remove the MBUS quirks
Date: Fri,  6 Nov 2020 16:14:09 +0100
Message-Id: <20201106151411.321743-6-maxime@cerno.tech>
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
remove them from our CSI driver for the A31.

Suggested-by: Christoph Hellwig <hch@lst.de>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 .../media/platform/sunxi/sun6i-csi/sun6i_csi.c  | 17 -----------------
 1 file changed, 17 deletions(-)

diff --git a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c
index e69e14379fc6..27935f1e9555 100644
--- a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c
+++ b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c
@@ -881,14 +881,6 @@ static int sun6i_csi_resource_request(struct sun6i_csi_dev *sdev,
 	return 0;
 }
 
-/*
- * PHYS_OFFSET isn't available on all architectures. In order to
- * accommodate for COMPILE_TEST, let's define it to something dumb.
- */
-#if defined(CONFIG_COMPILE_TEST) && !defined(PHYS_OFFSET)
-#define PHYS_OFFSET 0
-#endif
-
 static int sun6i_csi_probe(struct platform_device *pdev)
 {
 	struct sun6i_csi_dev *sdev;
@@ -899,15 +891,6 @@ static int sun6i_csi_probe(struct platform_device *pdev)
 		return -ENOMEM;
 
 	sdev->dev = &pdev->dev;
-	/*
-	 * The DMA bus has the memory mapped at 0.
-	 *
-	 * XXX(hch): this has no business in a driver and needs to move
-	 * to the device tree.
-	 */
-	ret = dma_direct_set_offset(sdev->dev, PHYS_OFFSET, 0, SZ_4G);
-	if (ret)
-		return ret;
 
 	ret = sun6i_csi_resource_request(sdev, pdev);
 	if (ret)
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

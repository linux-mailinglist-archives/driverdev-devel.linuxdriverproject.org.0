Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 332902A9853
	for <lists+driverdev-devel@lfdr.de>; Fri,  6 Nov 2020 16:14:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D5CB48697B;
	Fri,  6 Nov 2020 15:14:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O+-Oj9+7P2JU; Fri,  6 Nov 2020 15:14:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 23BAF86969;
	Fri,  6 Nov 2020 15:14:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BE8791BF28D
 for <devel@linuxdriverproject.org>; Fri,  6 Nov 2020 15:14:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BB5218696D
 for <devel@linuxdriverproject.org>; Fri,  6 Nov 2020 15:14:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rxKBb5yz6cqT for <devel@linuxdriverproject.org>;
 Fri,  6 Nov 2020 15:14:36 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from new3-smtp.messagingengine.com (new3-smtp.messagingengine.com
 [66.111.4.229])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 24E2D86969
 for <devel@driverdev.osuosl.org>; Fri,  6 Nov 2020 15:14:17 +0000 (UTC)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailnew.nyi.internal (Postfix) with ESMTP id 161BF5806FB;
 Fri,  6 Nov 2020 10:14:16 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute6.internal (MEProxy); Fri, 06 Nov 2020 10:14:16 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=ujtkNFeASzsVa
 wZs5/R3AU1Q1s3OP8qB0+DIpPNXq/I=; b=b0YipW4LKStX5rGppsvdjGv/tbP/j
 7rJenmoArkeUF84kqbZMErzZwSCL4VKGUs3pbx7K4JOi2TEAq8QYs5hNb3Avnqf2
 iq1axxXGyT85iQQ7uwBixNT6EK4rwpcGBbUkr8/nQZAI6NeXQ0wCtkSXwZxtIWdS
 FBHAj9w0CkI6pON1vlfRWYk7kZb7eZdXApuVxnM9HNtH7BWLFddYdlrNn2qJTy7C
 OZ41XVt9WfK2qQp+1MO4zFDvhtiZpY8OnQavb3kd5YIRxTwfAGsHMTk9swnvuutE
 JzBua5zc67BUENmxGF1ApdPkcLjOzIe6iKMlqbFkqtVFn1f2vOzNzBNFA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=ujtkNFeASzsVawZs5/R3AU1Q1s3OP8qB0+DIpPNXq/I=; b=bFg/vudt
 x+2nFdPR2ji2ZvOxorD4fA27TG8S7p+7JoharMQCfXRFqlZol2FYp2oGQSSvXzBg
 ZbUdbbN2rsr71hs0rfbJMSEoI+EeANITpUX72tE/LjPMIn5Lc7TotnkhpZxXpIGz
 hCpZJ2afI+tG04OU+edWzUeXA3+iMU+A4pmYXX8L8LAOKnZxfalrvWPATCPaazzq
 R6aMe5f8RWe9FC32c2H7lGKEM/dRz8un5txqQD/tExgajxvKyAsFC8pJpmU6XxCR
 vbc+QaMS+8qD1fgRKQbM2qSHPsE+HzhYX2Rh84pqSAa5eFHcVp/OfCxz6eU+VKmU
 HdnBD+LEP3amfA==
X-ME-Sender: <xms:R2ilX8RurcPc_FDTSmzi_3aJZ1gAP2BwjRxkmgxzsGihsjj9Hb2Z_Q>
 <xme:R2ilX5xdAn-egpftl-DSIAkyzMsDcHkAlvSBCKhqQZXYcwXzW7sCZ9S-FBh1DaQgJ
 fpI16bRNFVIQ0IvOk0>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedruddtledgjeehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenuc
 frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:R2ilX51bTL9JKZqDtAfjc1AH3BJvX3ir3c1gCF8b33w8t4x_Kxkzuw>
 <xmx:R2ilXwB8ce0R9bglOIk7pKx8lGSm1LY-XgchY1_J45JwyxRoTtQ1Tw>
 <xmx:R2ilX1iQ_Zpl9M6k3LWYNo0O54_aRkLyXD6e8KN7x8W0Y-TP4OhNCw>
 <xmx:SGilX16wZ7lNznxw0P0X236P_Z6EEJ3NqlgkrXanHsFW3hw8Lthn7g>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id BB724306005E;
 Fri,  6 Nov 2020 10:14:14 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Daniel Vetter <daniel.vetter@intel.com>, David Airlie <airlied@linux.ie>,
 Christoph Hellwig <hch@lst.de>
Subject: [PATCH 1/7] drm/sun4i: backend: Fix probe failure with multiple
 backends
Date: Fri,  6 Nov 2020 16:14:05 +0100
Message-Id: <20201106151411.321743-2-maxime@cerno.tech>
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

Commit e0d072782c73 ("dma-mapping: introduce DMA range map, supplanting
dma_pfn_offset") introduced a regression in our code since the second
backed to probe will now get -EINVAL back from dma_direct_set_offset and
will prevent the entire DRM device from probing.

Ignore -EINVAL as a temporary measure to get it back working, before
removing that call entirely.

Fixes: e0d072782c73 ("dma-mapping: introduce DMA range map, supplanting dma_pfn_offset")
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/sun4i/sun4i_backend.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/sun4i/sun4i_backend.c b/drivers/gpu/drm/sun4i/sun4i_backend.c
index 77497b45f9a2..55960cbb1019 100644
--- a/drivers/gpu/drm/sun4i/sun4i_backend.c
+++ b/drivers/gpu/drm/sun4i/sun4i_backend.c
@@ -814,9 +814,15 @@ static int sun4i_backend_bind(struct device *dev, struct device *master,
 		 *
 		 * XXX(hch): this has no business in a driver and needs to move
 		 * to the device tree.
+		 *
+		 * If we have two subsequent calls to dma_direct_set_offset
+		 * returns -EINVAL. Unfortunately, this happens when we have two
+		 * backends in the system, and will result in the driver
+		 * reporting an error while it has been setup properly before.
+		 * Ignore EINVAL, but it should really be removed eventually.
 		 */
 		ret = dma_direct_set_offset(drm->dev, PHYS_OFFSET, 0, SZ_4G);
-		if (ret)
+		if (ret && ret != -EINVAL)
 			return ret;
 	}
 
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

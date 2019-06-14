Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 398AE45EF9
	for <lists+driverdev-devel@lfdr.de>; Fri, 14 Jun 2019 15:48:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CBDA987D2F;
	Fri, 14 Jun 2019 13:48:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q-R1x66DR-5m; Fri, 14 Jun 2019 13:48:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2157887CE7;
	Fri, 14 Jun 2019 13:48:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F23B61BF3A9
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 13:48:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id EE0B187D13
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 13:48:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4odx136IK8kN for <devel@linuxdriverproject.org>;
 Fri, 14 Jun 2019 13:48:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 529B187CE7
 for <devel@driverdev.osuosl.org>; Fri, 14 Jun 2019 13:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From
 :Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GC9Gboqptsed7WVs/myU7Q6vnMi9vBxIwQ2uPA5D0pw=; b=UntrdW5G2+b49vgfbJaGUDLN0E
 6yE3PpGKvsuDOwoXcyXIdlGC5PZ5Rx2/rsrnwuL8rTHEvIhh9QW1GU17v1tVNFho0ne9tn/Z4eT54
 OswJKEO4vsr1FvbWuovnG6n4mY8AwbgfvU32igpwJyhrRibTzRGYZ0pS+zdU9gFhrv4TTezoxvPTg
 hlLUh5YHvDGvTCdMXXQ7VhKjApYDYfxlL3VT+nNwtwNQkVPOAXwAW1qubfFu1o+AsbdCjGKbzv2rR
 p+QnqhNY4+X8ZCNtkVbeuJ4T0148xhaiU0PQmlP12f+mNEdx8mMY/AvPPLm2vvkGBNkm80UQVHowq
 4Bj27y3g==;
Received: from 213-225-9-13.nat.highway.a1.net ([213.225.9.13] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hbmYa-0004vN-2H; Fri, 14 Jun 2019 13:47:52 +0000
From: Christoph Hellwig <hch@lst.de>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Ian Abbott <abbotti@mev.co.uk>,
 H Hartley Sweeten <hsweeten@visionengravers.com>
Subject: [PATCH 06/16] drm: don't pass __GFP_COMP to dma_alloc_coherent in
 drm_pci_alloc
Date: Fri, 14 Jun 2019 15:47:16 +0200
Message-Id: <20190614134726.3827-7-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614134726.3827-1-hch@lst.de>
References: <20190614134726.3827-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
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
Cc: devel@driverdev.osuosl.org, linux-s390@vger.kernel.org,
 Intel Linux Wireless <linuxwifi@intel.com>, linux-rdma@vger.kernel.org,
 netdev@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 iommu@lists.linux-foundation.org,
 "moderated list:ARM PORT" <linux-arm-kernel@lists.infradead.org>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The memory returned from dma_alloc_coherent is opaqueue to the user,
thus the exact way of page refcounting shall not matter either.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/gpu/drm/drm_bufs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/drm_bufs.c b/drivers/gpu/drm/drm_bufs.c
index b640437ce90f..7a79a16a055c 100644
--- a/drivers/gpu/drm/drm_bufs.c
+++ b/drivers/gpu/drm/drm_bufs.c
@@ -70,7 +70,7 @@ drm_dma_handle_t *drm_pci_alloc(struct drm_device * dev, size_t size, size_t ali
 	dmah->size = size;
 	dmah->vaddr = dma_alloc_coherent(&dev->pdev->dev, size,
 					 &dmah->busaddr,
-					 GFP_KERNEL | __GFP_COMP);
+					 GFP_KERNEL);
 
 	if (dmah->vaddr == NULL) {
 		kfree(dmah);
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

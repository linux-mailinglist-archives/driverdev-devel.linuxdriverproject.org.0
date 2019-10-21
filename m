Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 12F59DEC34
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Oct 2019 14:29:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A48C585078;
	Mon, 21 Oct 2019 12:29:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jXGmvy8reLDx; Mon, 21 Oct 2019 12:29:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 170DB850AD;
	Mon, 21 Oct 2019 12:29:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B5D7A1BF32C
 for <devel@linuxdriverproject.org>; Mon, 21 Oct 2019 12:29:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B2CB785078
 for <devel@linuxdriverproject.org>; Mon, 21 Oct 2019 12:29:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wnNXQ1wt8hnH for <devel@linuxdriverproject.org>;
 Mon, 21 Oct 2019 12:29:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DA82D84E34
 for <devel@driverdev.osuosl.org>; Mon, 21 Oct 2019 12:29:19 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id l10so13339409wrb.2
 for <devel@driverdev.osuosl.org>; Mon, 21 Oct 2019 05:29:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Nh5sBzVBgqyKBuCJZ6LigmAs7UuZG6Sg46DNMoy2vwE=;
 b=bnz2ANt7G4eqAzZ9DSWygFW0LuRD9p1isUZFFFmTdga4oP8dfZq32yVp4X4xE7Fgc+
 4KByVcrwN1R/Ahk3cp21WQPktzReZRtvevrgHsRfGBkIha7Q7Z8eulSq3sa7N8ABLLmr
 dXpRnAfRhtDtDXcEZ1A9tOzwZ3t+YmCgPeA5O5vKG2wNo+Dl+HSw35UO3XX0/lrQ1ZeB
 vikO6HRgpl2BoBkge/hXDnIYikhxBwhDxy5IqMysJ+1Vl/9QatKWCcslywO2bcHQILey
 lxG97Qgxvvlfs0bJo4rnde5cRx2bm3IbsVUEGu0rNMamcSLZdGykPq9ljlZNweiRg+p4
 MRew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Nh5sBzVBgqyKBuCJZ6LigmAs7UuZG6Sg46DNMoy2vwE=;
 b=bB1L3vhhYDxOgSztTeOVWeIQQmcsYuFXc1Zh8qAzxpzPmJURZC4ZhCQHgAOJNArXFw
 DAwGyobgA9qz7gZLvSxQdCa2AoDp3hBQmy5QOKoPAZwbXyJnIlTShxW3HyHGVMCGhu+5
 DjAh98vZJn6tdF85jFTbC6SstY+jdbgzH37S/dPme1pkT1ewSGh8bp0PbPCzaMp9muNI
 cYbsjNVF1DXnIazvJCvi1WhtLdLVt1Gi55RIWKtzSDWYAEFdzjycfUIpydhB+/Um2Lyk
 8uG4RRmniaZyO63/ALoZwPe5+T4Ncms2RWpUWuQZloFaos88lPjuMm9liJzzXYdWh8Ph
 MKYg==
X-Gm-Message-State: APjAAAVkeRODZFyyiNg0w+peCfIYM6MNW1jnjqRQdXjCHEyayuaI6R+m
 ch0d6dYqtgqm4fHazdFUyg==
X-Google-Smtp-Source: APXvYqyeL0yEa3IYkxUDJrNJmao/lgmGYbBCoz6uvOAMWeFN91Q+hLQJBoZHSTMRhLkIBblo+A3unA==
X-Received: by 2002:adf:ebcb:: with SMTP id v11mr18360619wrn.24.1571660958000; 
 Mon, 21 Oct 2019 05:29:18 -0700 (PDT)
Received: from ninjahub.lan (host-92-23-80-57.as13285.net. [92.23.80.57])
 by smtp.googlemail.com with ESMTPSA id g17sm14254664wrq.58.2019.10.21.05.29.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2019 05:29:17 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: wfx: remove unnecessary void pointer
Date: Mon, 21 Oct 2019 13:28:39 +0100
Message-Id: <20191021122839.19627-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.21.0
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
Cc: devel@driverdev.osuosl.org, Jules Irenge <jbi.octave@gmail.com>,
 gregkh@linuxfoundation.org, julia.lawall@lip6.fr, dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove unnecessary void pointers.
Issue detected and solved by coccinelle tool.
semantic use
@@expression e ;@@
-(void*)(e)
+e

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/wfx/bh.c       | 2 +-
 drivers/staging/wfx/bus_sdio.c | 2 +-
 drivers/staging/wfx/bus_spi.c  | 2 +-
 drivers/staging/wfx/sta.c      | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/wfx/bh.c b/drivers/staging/wfx/bh.c
index 955ed3a1dd73..d7ad9227c9c4 100644
--- a/drivers/staging/wfx/bh.c
+++ b/drivers/staging/wfx/bh.c
@@ -76,7 +76,7 @@ static int rx_helper(struct wfx_dev *wdev, size_t read_len, int *is_cnf)
 	hif = (struct hif_msg *)skb->data;
 	WARN(hif->encrypted & 0x1, "unsupported encryption type");
 	if (hif->encrypted == 0x2) {
-		if (wfx_sl_decode(wdev, (void *)hif)) {
+		if (wfx_sl_decode(wdev, hif)) {
 			dev_kfree_skb(skb);
 			// If frame was a confirmation, expect trouble in next
 			// exchange. However, it is harmless to fail to decode
diff --git a/drivers/staging/wfx/bus_sdio.c b/drivers/staging/wfx/bus_sdio.c
index 375e07d6d9ae..237a19b5fd16 100644
--- a/drivers/staging/wfx/bus_sdio.c
+++ b/drivers/staging/wfx/bus_sdio.c
@@ -66,7 +66,7 @@ static int wfx_sdio_copy_to_io(void *priv, unsigned int reg_id,
 	if (reg_id == WFX_REG_IN_OUT_QUEUE)
 		sdio_addr |= bus->buf_id_tx << 7;
 	// FIXME: discards 'const' qualifier for src
-	ret = sdio_memcpy_toio(bus->func, sdio_addr, (void *)src, count);
+	ret = sdio_memcpy_toio(bus->func, sdio_addr, src, count);
 	if (!ret && reg_id == WFX_REG_IN_OUT_QUEUE)
 		bus->buf_id_tx = (bus->buf_id_tx + 1) % 32;
 
diff --git a/drivers/staging/wfx/bus_spi.c b/drivers/staging/wfx/bus_spi.c
index ab0cda1e124f..bd74801e7461 100644
--- a/drivers/staging/wfx/bus_spi.c
+++ b/drivers/staging/wfx/bus_spi.c
@@ -90,7 +90,7 @@ static int wfx_spi_copy_to_io(void *priv, unsigned int addr,
 	struct wfx_spi_priv *bus = priv;
 	u16 regaddr = (addr << 12) | (count / 2);
 	// FIXME: use a bounce buffer
-	u16 *src16 = (void *)src;
+	u16 *src16 = src;
 	int ret, i;
 	struct spi_message      m;
 	struct spi_transfer     t_addr = {
diff --git a/drivers/staging/wfx/sta.c b/drivers/staging/wfx/sta.c
index 688586e823c0..842158b7e805 100644
--- a/drivers/staging/wfx/sta.c
+++ b/drivers/staging/wfx/sta.c
@@ -896,7 +896,7 @@ static int wfx_upload_beacon(struct wfx_vif *wvif)
 	/* TODO: Distill probe resp; remove TIM and any other beacon-specific
 	 * IEs
 	 */
-	mgmt = (void *)skb->data;
+	mgmt = skb->data;
 	mgmt->frame_control =
 		cpu_to_le16(IEEE80211_FTYPE_MGMT | IEEE80211_STYPE_PROBE_RESP);
 
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

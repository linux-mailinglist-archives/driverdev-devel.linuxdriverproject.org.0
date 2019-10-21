Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A722DEC1F
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Oct 2019 14:25:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 045FD204D0;
	Mon, 21 Oct 2019 12:25:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 34tlFcB2Bo+U; Mon, 21 Oct 2019 12:25:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9177E2049D;
	Mon, 21 Oct 2019 12:25:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 087E31BF32C
 for <devel@linuxdriverproject.org>; Mon, 21 Oct 2019 12:25:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 05AC384E34
 for <devel@linuxdriverproject.org>; Mon, 21 Oct 2019 12:25:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aR-FpGb4EV1N for <devel@linuxdriverproject.org>;
 Mon, 21 Oct 2019 12:25:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1F4B484D7A
 for <devel@driverdev.osuosl.org>; Mon, 21 Oct 2019 12:25:08 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id r141so2995000wme.4
 for <devel@driverdev.osuosl.org>; Mon, 21 Oct 2019 05:25:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Nh5sBzVBgqyKBuCJZ6LigmAs7UuZG6Sg46DNMoy2vwE=;
 b=SkFLoDUS8YE06hJOPyAETAJqLJvTI9G0UOA9I183JtgYYfriY52dnLfRx8pDpqgsWX
 zxEEoGwJtlITUIQZ+DhLrHbL7o3NNhKz2z27+I1ytCYFbBxKw2e9wc2TxERj2190DFL+
 p9v0D1AH7+s7BWWk4KZ+zmWc6303tV+gmPs3NuCv3yqaEXDK9eDChyGUNtLkIyz3ee01
 DbhFJkosejFxL89pih35Nc6cnafiVUQJAg9RadmsMW2Qo6OLr9cxnH6tlglI2HIhwGlY
 7LbaA26UQN7XZfw6UL54+YRD3pSgNzTNOaoYR/xj9fXnTRsZrwOH2mcfX6yMC6T9ozTQ
 1HKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Nh5sBzVBgqyKBuCJZ6LigmAs7UuZG6Sg46DNMoy2vwE=;
 b=BuEqWssa3nWYCkivMrsV2yYZBbxvX3BaPPvUkXL/qs5w/5m1WcvdvL2Vn9ym+aQFay
 yYOFy24ARJD86v/DN1+LC8UJPb3/Y/3HKZmw2R+7ndcdSNAm8NklSMfgWZy20lsG/xei
 RYgDfFqiAuxOlydCAfPnLvz/KHVLJqAwnxxgUhtHGIm97EGa6LuzgW1hGgw8XNSskec8
 LfSqxjjCdIIMkpLOR8sNa3nTET2t8FfUrc+qAwpngTabt/HXlv5pSjkdoAYgUGrs1Day
 RJibDa0y40/o7dAgMdVddwGghhroHyuMEz3WP9P+YN3hFIMQr0eoKLhGJ3zmzKfCHFPO
 C+fQ==
X-Gm-Message-State: APjAAAWBHUw5y8a7q1AejRzs2IXOwrRWqMYa7XyIJgew5nWHQ4U9jrCY
 rMwIbNu/RVHXrtIMg0fDmg==
X-Google-Smtp-Source: APXvYqzTefd3lTR4BxwtOCsD9jrvC3t0VFTKdMuVz/ojOKxfzFQ8R8eFfXKqfxw39+lRx90nM7/RIQ==
X-Received: by 2002:a7b:c8c5:: with SMTP id f5mr18811907wml.170.1571660706405; 
 Mon, 21 Oct 2019 05:25:06 -0700 (PDT)
Received: from ninjahub.lan (host-92-23-80-57.as13285.net. [92.23.80.57])
 by smtp.googlemail.com with ESMTPSA id 200sm4285874wme.32.2019.10.21.05.25.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2019 05:25:05 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: wfx: remove unnecessary void pointer
Date: Mon, 21 Oct 2019 13:24:49 +0100
Message-Id: <20191021122449.19343-1-jbi.octave@gmail.com>
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
Cc: devel@driverdev.osuosl.org, julia.lawall@lip6.fr,
 Jules Irenge <jbi.octave@gmail.com>, jerome.puiller@silabs.com,
 gregkh@linuxfoundation.org
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

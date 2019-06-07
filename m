Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BDD3D383E3
	for <lists+driverdev-devel@lfdr.de>; Fri,  7 Jun 2019 07:52:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DB579204CA;
	Fri,  7 Jun 2019 05:52:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J-pR3LgjHdUi; Fri,  7 Jun 2019 05:52:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E798E2036E;
	Fri,  7 Jun 2019 05:52:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 98E081BF2C1
 for <devel@linuxdriverproject.org>; Fri,  7 Jun 2019 05:52:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 92327861A3
 for <devel@linuxdriverproject.org>; Fri,  7 Jun 2019 05:52:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S2oz7r5g8KOi for <devel@linuxdriverproject.org>;
 Fri,  7 Jun 2019 05:52:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D575C86194
 for <devel@driverdev.osuosl.org>; Fri,  7 Jun 2019 05:52:25 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id a93so386851pla.7
 for <devel@driverdev.osuosl.org>; Thu, 06 Jun 2019 22:52:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0FoiuBjLg1UBbIKZrQJR0cHIwrk4ez4qkdIgo7/m+JI=;
 b=lCAa2tBOhvpvbHKQYVJJK9xdcKBZQ8w0bMYmxLKz9SmQQOYD/UVsVinvz+wuS5OwWy
 0Z/ARsfeteZO1VqgPrbTGBV7MP6cu/SnZkB9WXxlWba5dmXb+npC2d5dwKUlOqF6uY6c
 sWl19LxFkxSWnTpDfAL+ScicQNYwxjuL9jgxEAbKin06N/xYXYxq3+g9DBEvGhGkqCdO
 PaQl+ECh152rUPE9ouoh0G6KeHdKliIWH6oBUuwRLLap4A+Rw+TpN2OlEnj4M7usM67s
 euONSZS/7durJ+8nBsj4fVzC6IxqwSlOJtFY2/PFmpwlJsPp37CEefIGWlqRRSiFbZ6N
 Pdkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0FoiuBjLg1UBbIKZrQJR0cHIwrk4ez4qkdIgo7/m+JI=;
 b=bv+FP8xk45IigoVPuHp4lhRezLagz6gfadkFO0A/hcv/VYJqShfqbRe33pjGvuBx5Z
 9MSkGg6pnThpL5xyGal6OJuM9EF2V709mWrKrQWj1FpYv/+7M0BHauwsJcLG+PeeYvPG
 BYiq/yZLdavSoWEWb1g8NeXozaSn+3N5fvQ3+ClYBvFSCn7VQDf9XZLxeDuzubgJzdoY
 6giyhHrqfi+7mHVCecgZZsCKUBh3X1psGKyBLO/+HgtO3jqZI7kmkNQmrYK6xx4h5RAh
 zswpcAJ4frxGz0wDHYRrIL0Gkn+/e58ec6jAetRBrFd9jenHgC+NcDLZ2wMIOn5275SD
 c8pQ==
X-Gm-Message-State: APjAAAUdbckeCNK9Pnf6KQ3OQLqBjR7fsTdAWJ1si8RDWXjprZptaSVQ
 4d4MQz+sX4UxBb2xskqr/uc=
X-Google-Smtp-Source: APXvYqynylZyHUR6Qr9SPx3GANNBO4MfRAuEkVYeOLLJhjRzqva3Ms99Qt92YE9aw3mRVmTfj6oqLw==
X-Received: by 2002:a17:902:6bcb:: with SMTP id
 m11mr27545267plt.318.1559886745565; 
 Thu, 06 Jun 2019 22:52:25 -0700 (PDT)
Received: from localhost.localdomain ([110.227.95.145])
 by smtp.gmail.com with ESMTPSA id d9sm861740pgl.20.2019.06.06.22.52.22
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 06 Jun 2019 22:52:24 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, straube.linux@gmail.com,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/3] staging: rtl8712: xmit_linux.c: Remove leading p from
 variable names
Date: Fri,  7 Jun 2019 11:22:06 +0530
Message-Id: <20190607055209.20954-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove leading p from the names of the following pointer variables:
- padapter
- pxmitpriv
- pnetdev
- pxmitframe.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/xmit_linux.c | 50 ++++++++++++++--------------
 1 file changed, 25 insertions(+), 25 deletions(-)

diff --git a/drivers/staging/rtl8712/xmit_linux.c b/drivers/staging/rtl8712/xmit_linux.c
index 8bcb0775411f..223a4eba4bf4 100644
--- a/drivers/staging/rtl8712/xmit_linux.c
+++ b/drivers/staging/rtl8712/xmit_linux.c
@@ -93,22 +93,22 @@ void r8712_set_qos(struct pkt_file *ppktfile, struct pkt_attrib *pattrib)
 
 void r8712_SetFilter(struct work_struct *work)
 {
-	struct _adapter *padapter = container_of(work, struct _adapter,
+	struct _adapter *adapter = container_of(work, struct _adapter,
 						wkFilterRxFF0);
 	u8  oldvalue = 0x00, newvalue = 0x00;
 	unsigned long irqL;
 
-	oldvalue = r8712_read8(padapter, 0x117);
+	oldvalue = r8712_read8(adapter, 0x117);
 	newvalue = oldvalue & 0xfe;
-	r8712_write8(padapter, 0x117, newvalue);
+	r8712_write8(adapter, 0x117, newvalue);
 
-	spin_lock_irqsave(&padapter->lockRxFF0Filter, irqL);
-	padapter->blnEnableRxFF0Filter = 1;
-	spin_unlock_irqrestore(&padapter->lockRxFF0Filter, irqL);
+	spin_lock_irqsave(&adapter->lockRxFF0Filter, irqL);
+	adapter->blnEnableRxFF0Filter = 1;
+	spin_unlock_irqrestore(&adapter->lockRxFF0Filter, irqL);
 	do {
 		msleep(100);
-	} while (padapter->blnEnableRxFF0Filter == 1);
-	r8712_write8(padapter, 0x117, oldvalue);
+	} while (adapter->blnEnableRxFF0Filter == 1);
+	r8712_write8(adapter, 0x117, oldvalue);
 }
 
 int r8712_xmit_resource_alloc(struct _adapter *padapter,
@@ -147,36 +147,36 @@ void r8712_xmit_complete(struct _adapter *padapter, struct xmit_frame *pxframe)
 	pxframe->pkt = NULL;
 }
 
-int r8712_xmit_entry(_pkt *pkt, struct  net_device *pnetdev)
+int r8712_xmit_entry(_pkt *pkt, struct  net_device *netdev)
 {
-	struct xmit_frame *pxmitframe = NULL;
-	struct _adapter *padapter = netdev_priv(pnetdev);
-	struct xmit_priv *pxmitpriv = &(padapter->xmitpriv);
+	struct xmit_frame *xmitframe = NULL;
+	struct _adapter *adapter = netdev_priv(netdev);
+	struct xmit_priv *xmitpriv = &(adapter->xmitpriv);
 
-	if (!r8712_if_up(padapter))
+	if (!r8712_if_up(adapter))
 		goto _xmit_entry_drop;
 
-	pxmitframe = r8712_alloc_xmitframe(pxmitpriv);
-	if (!pxmitframe)
+	xmitframe = r8712_alloc_xmitframe(xmitpriv);
+	if (!xmitframe)
 		goto _xmit_entry_drop;
 
-	if ((!r8712_update_attrib(padapter, pkt, &pxmitframe->attrib)))
+	if ((!r8712_update_attrib(adapter, pkt, &xmitframe->attrib)))
 		goto _xmit_entry_drop;
 
-	padapter->ledpriv.LedControlHandler(padapter, LED_CTL_TX);
-	pxmitframe->pkt = pkt;
-	if (r8712_pre_xmit(padapter, pxmitframe)) {
+	adapter->ledpriv.LedControlHandler(adapter, LED_CTL_TX);
+	xmitframe->pkt = pkt;
+	if (r8712_pre_xmit(adapter, xmitframe)) {
 		/*dump xmitframe directly or drop xframe*/
 		dev_kfree_skb_any(pkt);
-		pxmitframe->pkt = NULL;
+		xmitframe->pkt = NULL;
 	}
-	pxmitpriv->tx_pkts++;
-	pxmitpriv->tx_bytes += pxmitframe->attrib.last_txcmdsz;
+	xmitpriv->tx_pkts++;
+	xmitpriv->tx_bytes += xmitframe->attrib.last_txcmdsz;
 	return 0;
 _xmit_entry_drop:
-	if (pxmitframe)
-		r8712_free_xmitframe(pxmitpriv, pxmitframe);
-	pxmitpriv->tx_drop++;
+	if (xmitframe)
+		r8712_free_xmitframe(xmitpriv, xmitframe);
+	xmitpriv->tx_drop++;
 	dev_kfree_skb_any(pkt);
 	return 0;
 }
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

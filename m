Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AF8B41A6924
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Apr 2020 17:50:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 03D4A853FC;
	Mon, 13 Apr 2020 15:50:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WSybOPRWnINE; Mon, 13 Apr 2020 15:50:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CFB2385149;
	Mon, 13 Apr 2020 15:50:26 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 187E21BF318
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 13 Apr 2020 15:50:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1505E203A0
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 13 Apr 2020 15:50:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tt3xeaaZLM+B
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 13 Apr 2020 15:50:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 2A76120458
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 13 Apr 2020 15:50:22 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id k1so3402452wrx.4
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 13 Apr 2020 08:50:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=tX6PpMy/WsZRKlN7MHaQWxtTukro7KqWNVhBxmQnDRo=;
 b=ZfyZPPs+X6DkS5x20mr9M7Rt2H7qSAs75N3AIXhdP7/WkvJhm+DAuwIRytoA+3MzS6
 3AonUPQtDnCJm7LJyuDKMD4zz8EIEQYPI3srvtn/LCqk7ClDzW6u/wSEHkSvR6SW9Ayx
 N2OAErfCGr6Do+sJRjVHt9h1c57oyaDuz75Wto6cFrED/HlmnRBW6292gN6AzjR5f3jc
 eOb6Qxv2R29vGO1cQvhdgVNM1QnCLO8ecm1LK3NVuij0SAQv/SXy3vZjgVvERqaOktyQ
 alVyQgOFEl/XbFcv0cxkxyDWWdGnd0plmyrCUkwLPcb66TeKOqZ6MpHJaA1Ah0kQ4XeY
 a6Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=tX6PpMy/WsZRKlN7MHaQWxtTukro7KqWNVhBxmQnDRo=;
 b=XmHmpGGGogFfMzP7gjHLbOzyH60b6OeEPvpND94l5ePSNymuF9yaYdbOf6z5Z3FvUJ
 gmI5RU/2fm8BBwX9uLJ6ProLpYYgepMzi1oo/jsEdiIKzZIJ3kwmE3oq6VxFNWvOo8o1
 8D+G+RQgOVu4cjhUBYGPyRfjRm27IhU7fbb5frr5XYOqKEES0/01IWGmcHLTu5G6f3Yv
 KxOC2QtE6WUSkyBQe0pw+f8YxjTgZAbEv4BZAcPV1k7sJfX8fpRtZrWuSrwyUr6xFX4M
 ZJsP36FEgfZkRyQ7YcyJB7sSNaioTBsF76baloGKO6n1liBQ3v8LgcR66VuJhimfvGrm
 5KnQ==
X-Gm-Message-State: AGi0PuZP4/+dtoPIdoVOudO7c4mfdL5xyx53P2J2wNAEdSkjLBIyMRQn
 B/Yv1xTH0alX4gLMW1bLTaI=
X-Google-Smtp-Source: APiQypLm9AsdZ7N0mnBtFTgDlABUKyXWtC6pdYtvmdPCuTQwEy43vleRYC09NYEVH1bPPLp1D/T7Vw==
X-Received: by 2002:a5d:5001:: with SMTP id e1mr16795267wrt.27.1586793020453; 
 Mon, 13 Apr 2020 08:50:20 -0700 (PDT)
Received: from localhost.localdomain
 (134.red-83-46-193.dynamicip.rima-tde.net. [83.46.193.134])
 by smtp.gmail.com with ESMTPSA id q9sm15158828wrp.61.2020.04.13.08.50.19
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 Apr 2020 08:50:20 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 1/3] staging: mt7621-pci: rename 'PCIE_P2P_MAX' into
 'PCIE_P2P_CNT'
Date: Mon, 13 Apr 2020 17:50:16 +0200
Message-Id: <20200413155018.31921-1-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
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
Cc: neil@brown.name, driverdev-devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Definition 'PCIE_P2P_MAX' is '3'. The value here is not a MAXimum.
It is a count or a number. It is how many masks there are.
The masks are numbered 0, 1, 2 so the maximum is 2. Hence rename
variable into 'PCIE_P2P_CNT' which is a more accurate name.

Suggested-by: NeilBrown <neil@brown.name>
Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 drivers/staging/mt7621-pci/pci-mt7621.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt7621-pci/pci-mt7621.c
index 36207243a71b..6a9f4b6cdd93 100644
--- a/drivers/staging/mt7621-pci/pci-mt7621.c
+++ b/drivers/staging/mt7621-pci/pci-mt7621.c
@@ -55,7 +55,7 @@
 #define RALINK_PCI_IOBASE		0x002C
 
 /* PCICFG virtual bridges */
-#define PCIE_P2P_MAX			3
+#define PCIE_P2P_CNT			3
 #define PCIE_P2P_BR_DEVNUM_SHIFT(p)	(16 + (p) * 4)
 #define PCIE_P2P_BR_DEVNUM0_SHIFT	PCIE_P2P_BR_DEVNUM_SHIFT(0)
 #define PCIE_P2P_BR_DEVNUM1_SHIFT	PCIE_P2P_BR_DEVNUM_SHIFT(1)
@@ -138,7 +138,7 @@ struct mt7621_pcie {
 	} offset;
 	unsigned long io_map_base;
 	struct list_head ports;
-	int irq_map[PCIE_P2P_MAX];
+	int irq_map[PCIE_P2P_CNT];
 	bool resets_inverted;
 };
 
@@ -607,8 +607,8 @@ static int mt7621_pcie_init_virtual_bridges(struct mt7621_pcie *pcie)
 	u32 pcie_link_status = 0;
 	u32 n;
 	int i = 0;
-	u32 p2p_br_devnum[PCIE_P2P_MAX];
-	int irqs[PCIE_P2P_MAX];
+	u32 p2p_br_devnum[PCIE_P2P_CNT];
+	int irqs[PCIE_P2P_CNT];
 	struct mt7621_pcie_port *port;
 
 	list_for_each_entry(port, &pcie->ports, list) {
@@ -623,11 +623,11 @@ static int mt7621_pcie_init_virtual_bridges(struct mt7621_pcie *pcie)
 		return -1;
 
 	n = 0;
-	for (i = 0; i < PCIE_P2P_MAX; i++)
+	for (i = 0; i < PCIE_P2P_CNT; i++)
 		if (pcie_link_status & BIT(i))
 			p2p_br_devnum[i] = n++;
 
-	for (i = 0; i < PCIE_P2P_MAX; i++)
+	for (i = 0; i < PCIE_P2P_CNT; i++)
 		if ((pcie_link_status & BIT(i)) == 0)
 			p2p_br_devnum[i] = n++;
 
@@ -639,11 +639,11 @@ static int mt7621_pcie_init_virtual_bridges(struct mt7621_pcie *pcie)
 
 	/* Assign IRQs */
 	n = 0;
-	for (i = 0; i < PCIE_P2P_MAX; i++)
+	for (i = 0; i < PCIE_P2P_CNT; i++)
 		if (pcie_link_status & BIT(i))
 			pcie->irq_map[n++] = irqs[i];
 
-	for (i = n; i < PCIE_P2P_MAX; i++)
+	for (i = n; i < PCIE_P2P_CNT; i++)
 		pcie->irq_map[i] = -1;
 
 	return 0;
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

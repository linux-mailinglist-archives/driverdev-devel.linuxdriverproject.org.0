Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C679517D2D7
	for <lists+driverdev-devel@lfdr.de>; Sun,  8 Mar 2020 10:19:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7BACC84EA3;
	Sun,  8 Mar 2020 09:19:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uOaqf1aTCGo8; Sun,  8 Mar 2020 09:19:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 91B4185643;
	Sun,  8 Mar 2020 09:19:35 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C91BA1BF5DA
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  8 Mar 2020 09:19:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C5864884DD
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  8 Mar 2020 09:19:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y9UaEM3J28qU
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  8 Mar 2020 09:19:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CB6F2884B2
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  8 Mar 2020 09:19:31 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id x3so7439426wmj.1
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 08 Mar 2020 01:19:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SAA5Lkw5r1KvetQv91HjKhTCN/tg0skAKaTo7wmCAys=;
 b=djUsCG0qh//1jxxXgr63T7101XdtztuILDLK5IQ6WEXhnSsM+3HcbDqq/QnME7bWBU
 y08IfUgD9c8FzhFfuTUeT50PCHhDf8WyoCMV735fsLE+8mgN7wnb7q9SIZC2MbB+NhA7
 hfCONtxEpdpfJhTE4iajsPh831BPEaNe6N8/jEgSa6anwAb+dJ698R1OFJV/N9F8TLWQ
 uEfG3ZLS79HndGDTfVj6gomFDQmsAyiVZ28gNTC8BC2LUpKOTSeDdcGqzZvMzFNFv0Sx
 S8MVSVzSi8uVVjnniV0slNlleqeaPxiPxt1oRJeDo05u8GWWAxd5iDV0oCu+gNp0LGaz
 Q/Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SAA5Lkw5r1KvetQv91HjKhTCN/tg0skAKaTo7wmCAys=;
 b=q24snjti3oZHZWa9O7oGJvIKMQxWL/yqGWqzt01ZJuMBfELFekTd5FdBGvkjA4hKVZ
 y9j9TRt/lxlq6B+EYQjwmHV+q7XYSvpcUscltkALbAhpwmO6v45wzlLN0zObtYgkl/RS
 OY5PUrBAfaTm3XtiVqxh8Y2kqUsbuFlhniTuH+9VAxEbCjetnclJzDCt8YFRFV+l3pLp
 mDdeI5yC58vVl5XLH6CmrGg3q/pgixvVPxyo5+3C4dHIY0nkxhzzO+n6oP9sX0MqfaY4
 CBxCAwhPrSaLgy4ltN5Zjcg+cg9YDvy8rq1IJo0DDl3lzkE1Rv7YvoMO7KOWGIXF5yHA
 oAKg==
X-Gm-Message-State: ANhLgQ20lkdMxo3r2iONyrIJITifJgw4kwX2rAq+VTGpe/Z0ABrFscaX
 y/tl0NF1XHteuZ/nXMsQCVM=
X-Google-Smtp-Source: ADFU+vtTiKiVQkJSFOVvoH5dppjWg2f8svpq1qr4jMs39c38jppqxh/x9KLJw7oLFL/y2epboR83TA==
X-Received: by 2002:a1c:ab8b:: with SMTP id u133mr14665912wme.50.1583659170153; 
 Sun, 08 Mar 2020 01:19:30 -0800 (PST)
Received: from localhost.localdomain
 (134.red-83-46-193.dynamicip.rima-tde.net. [83.46.193.134])
 by smtp.gmail.com with ESMTPSA id b186sm21397850wmb.40.2020.03.08.01.19.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 08 Mar 2020 01:19:29 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: mt7621-pci: simplify
 'mt7621_pcie_init_virtual_bridges' function
Date: Sun,  8 Mar 2020 10:19:27 +0100
Message-Id: <20200308091928.17177-1-sergio.paracuellos@gmail.com>
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

Function 'mt7621_pcie_init_virtual_bridges' is a bit mess and can be
refactorized properly in a cleaner way. Introduce new 'pcie_rmw' inline
function helper to do clear and set the correct bits this function needs
to work.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
Changes are only compile tested.
 drivers/staging/mt7621-pci/pci-mt7621.c | 85 ++++++++++---------------
 1 file changed, 33 insertions(+), 52 deletions(-)

diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt7621-pci/pci-mt7621.c
index 3633c924848e..1f860c5ef588 100644
--- a/drivers/staging/mt7621-pci/pci-mt7621.c
+++ b/drivers/staging/mt7621-pci/pci-mt7621.c
@@ -57,13 +57,13 @@
 #define RALINK_PCI_IOBASE		0x002C
 
 /* PCICFG virtual bridges */
-#define MT7621_BR0_MASK			GENMASK(19, 16)
-#define MT7621_BR1_MASK			GENMASK(23, 20)
-#define MT7621_BR2_MASK			GENMASK(27, 24)
-#define MT7621_BR_ALL_MASK		GENMASK(27, 16)
-#define MT7621_BR0_SHIFT		16
-#define MT7621_BR1_SHIFT		20
-#define MT7621_BR2_SHIFT		24
+#define PCIE_P2P_MAX			3
+#define PCIE_P2P_BR_DEVNUM_SHIFT(p)	(16 + (p) * 4)
+#define PCIE_P2P_BR_DEVNUM0_SHIFT	PCIE_P2P_BR_DEVNUM_SHIFT(0)
+#define PCIE_P2P_BR_DEVNUM1_SHIFT	PCIE_P2P_BR_DEVNUM_SHIFT(1)
+#define PCIE_P2P_BR_DEVNUM2_SHIFT	PCIE_P2P_BR_DEVNUM_SHIFT(2)
+#define PCIE_P2P_BR_DEVNUM_MASK		0xf
+#define PCIE_P2P_BR_DEVNUM_MASK_FULL	(0xfff << PCIE_P2P_BR_DEVNUM0_SHIFT)
 
 /* PCIe RC control registers */
 #define MT7621_PCIE_OFFSET		0x2000
@@ -154,6 +154,15 @@ static inline void pcie_write(struct mt7621_pcie *pcie, u32 val, u32 reg)
 	writel(val, pcie->base + reg);
 }
 
+static inline void pcie_rmw(struct mt7621_pcie *pcie, u32 reg, u32 clr, u32 set)
+{
+	u32 val = readl(pcie->base + reg);
+
+	val &= ~clr;
+	val |= set;
+	writel(val, pcie->base + reg);
+}
+
 static inline u32 pcie_port_read(struct mt7621_pcie_port *port, u32 reg)
 {
 	return readl(port->base + reg);
@@ -554,7 +563,9 @@ static void mt7621_pcie_enable_ports(struct mt7621_pcie *pcie)
 static int mt7621_pcie_init_virtual_bridges(struct mt7621_pcie *pcie)
 {
 	u32 pcie_link_status = 0;
-	u32 val = 0;
+	u32 n;
+	int i;
+	u32 p2p_br_devnum[PCIE_P2P_MAX];
 	struct mt7621_pcie_port *port;
 
 	list_for_each_entry(port, &pcie->ports, list) {
@@ -567,50 +578,20 @@ static int mt7621_pcie_init_virtual_bridges(struct mt7621_pcie *pcie)
 	if (pcie_link_status == 0)
 		return -1;
 
-	/*
-	 * pcie(2/1/0) link status	pcie2_num	pcie1_num	pcie0_num
-	 * 3'b000			x		x		x
-	 * 3'b001			x		x		0
-	 * 3'b010			x		0		x
-	 * 3'b011			x		1		0
-	 * 3'b100			0		x		x
-	 * 3'b101			1		x		0
-	 * 3'b110			1		0		x
-	 * 3'b111			2		1		0
-	 */
-	switch (pcie_link_status) {
-	case 2:
-		val = pcie_read(pcie, RALINK_PCI_PCICFG_ADDR);
-		val &= ~(MT7621_BR0_MASK | MT7621_BR1_MASK);
-		val |= 0x1 << MT7621_BR0_SHIFT;
-		val |= 0x0 << MT7621_BR1_SHIFT;
-		pcie_write(pcie, val, RALINK_PCI_PCICFG_ADDR);
-		break;
-	case 4:
-		val = pcie_read(pcie, RALINK_PCI_PCICFG_ADDR);
-		val &= ~MT7621_BR_ALL_MASK;
-		val |= 0x1 << MT7621_BR0_SHIFT;
-		val |= 0x2 << MT7621_BR1_SHIFT;
-		val |= 0x0 << MT7621_BR2_SHIFT;
-		pcie_write(pcie, val, RALINK_PCI_PCICFG_ADDR);
-		break;
-	case 5:
-		val = pcie_read(pcie, RALINK_PCI_PCICFG_ADDR);
-		val &= ~MT7621_BR_ALL_MASK;
-		val |= 0x0 << MT7621_BR0_SHIFT;
-		val |= 0x2 << MT7621_BR1_SHIFT;
-		val |= 0x1 << MT7621_BR2_SHIFT;
-		pcie_write(pcie, val, RALINK_PCI_PCICFG_ADDR);
-		break;
-	case 6:
-		val = pcie_read(pcie, RALINK_PCI_PCICFG_ADDR);
-		val &= ~MT7621_BR_ALL_MASK;
-		val |= 0x2 << MT7621_BR0_SHIFT;
-		val |= 0x0 << MT7621_BR1_SHIFT;
-		val |= 0x1 << MT7621_BR2_SHIFT;
-		pcie_write(pcie, val, RALINK_PCI_PCICFG_ADDR);
-		break;
-	}
+	n = 0;
+	for (i = 0; i < PCIE_P2P_MAX; i++)
+		if (pcie_link_status & BIT(i))
+			p2p_br_devnum[i] = n++;
+
+	for (i = 0; i < PCIE_P2P_MAX; i++)
+		if ((pcie_link_status & BIT(i)) == 0)
+			p2p_br_devnum[i] = n++;
+
+	pcie_rmw(pcie, RALINK_PCI_CONFIG_ADDR,
+		 PCIE_P2P_BR_DEVNUM_MASK_FULL,
+		 (p2p_br_devnum[0] << PCIE_P2P_BR_DEVNUM0_SHIFT) |
+		 (p2p_br_devnum[1] << PCIE_P2P_BR_DEVNUM1_SHIFT) |
+		 (p2p_br_devnum[2] << PCIE_P2P_BR_DEVNUM2_SHIFT));
 
 	return 0;
 }
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

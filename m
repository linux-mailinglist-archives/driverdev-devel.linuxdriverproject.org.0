Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 66AD317F65E
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Mar 2020 12:35:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C243E86BA7;
	Tue, 10 Mar 2020 11:35:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YLkdt2PITCNg; Tue, 10 Mar 2020 11:35:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6764286287;
	Tue, 10 Mar 2020 11:35:06 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0C16E1BF5E0
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 10 Mar 2020 11:35:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0808D203A3
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 10 Mar 2020 11:35:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id atvazhOQQG+B
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 10 Mar 2020 11:35:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 1F5F320379
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 10 Mar 2020 11:35:03 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id n8so981378wmc.4
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 10 Mar 2020 04:35:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DGPKeUh183tL9GlsGsBDBwr/zm5FE3uDVHwNpgh6qsQ=;
 b=Zt0PHGYAX9dpA82P3YYY2LjcWLgNsOgcsoB+eXMRuwGLlgTImBh1ZVTxKORUhY+oDi
 gBAUKrJti06MxlAImfEzMPtCl6mqJPrSmPLHtISIh54F/iKvCekCqzCh4Obnou8eeSDx
 EeGGX4hRdSK3C1wkTk6CFmu3znEJb7zt3cnKr2aIJy74N2Bn61FheEuHaWT/KtM4Hl73
 LeieixyanqNfGMRgZ82X5W1UvVOv3tJ14HP7grKtlEFGm/U3RLcqTy6MDxAHXG2PJseG
 SwybkhqYF6GTnz/aSACt9p/88Wf2mgfNTXJOPAjyprCmmAw6jOhdjDDad6Hjw8FqBB/5
 57gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DGPKeUh183tL9GlsGsBDBwr/zm5FE3uDVHwNpgh6qsQ=;
 b=gtkDwZexFUsa8abSjSptzEJuzSsZYJICy2WHhyfqOIvlzDZwbOjJzCbnFaK9xA5s4t
 6UjioSXh9FIPhSfkMZWl7Bnt+8PokPQzqGxaF/5Dp8ZH54v5yeFA6xC2wM0Nz9bsg9dT
 EdCLLXTgl8PKS60I2kkIXq87ywXewS9lwQVYN/6QKFKuEpqSCcWT4U688KHKv/8Sc2wG
 Tf/7rtwjwU2O04pbiCpFcQ2iXnTDlB1wisTme8g2W2Ft8ky2gXl2K5yioj/W97CiA+ZJ
 pyoTQ7OwPgjrAFBX9pmqs7XUJfDOzHkS5Rtxzz7/CFnjD6P5Ahr4CpRaYQmgqfA1qpE7
 Ct7A==
X-Gm-Message-State: ANhLgQ2W3VteJKJg6PCvVQLzh+h0PB2gMal/z8Mj30XJ2JEEGdltY2Op
 +425G7SGYJOwctnusQdYj+M=
X-Google-Smtp-Source: ADFU+vv8i8U7zxJMF/1d/uY3it9/hDW7/0qoys3qP2OEdTjTTgsKFT8RQUzEvPP/6/ReskRGpxwjfw==
X-Received: by 2002:a1c:bcd4:: with SMTP id m203mr1729201wmf.35.1583840101583; 
 Tue, 10 Mar 2020 04:35:01 -0700 (PDT)
Received: from localhost.localdomain
 (134.red-83-46-193.dynamicip.rima-tde.net. [83.46.193.134])
 by smtp.gmail.com with ESMTPSA id e20sm4669113wrc.97.2020.03.10.04.35.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 10 Mar 2020 04:35:01 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: mt7621-pci: enable clock bit for each port
Date: Tue, 10 Mar 2020 12:34:59 +0100
Message-Id: <20200310113459.30539-1-sergio.paracuellos@gmail.com>
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

The clock related code concerns me from the very beginning because
there are some set ups got from legacy driver that are not documented
anywhere. According to the programming guide 0x7c is 'CPE_ROSC_SEL1'
register and 0x80 is 'CPU_CPE_CN'. I do think this set up is not needed
at all and the proper thing to do is just enable the clock bit for each
pcie port. Hence remove useless code and do the right thing which is
setting up the clock bit for each port enabled.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
Changes are only compile-tested.

 drivers/staging/mt7621-pci/pci-mt7621.c | 17 ++++++-----------
 1 file changed, 6 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt7621-pci/pci-mt7621.c
index 1f860c5ef588..770dabd3a70d 100644
--- a/drivers/staging/mt7621-pci/pci-mt7621.c
+++ b/drivers/staging/mt7621-pci/pci-mt7621.c
@@ -45,8 +45,6 @@
 
 /* rt_sysc_membase relative registers */
 #define RALINK_CLKCFG1			0x30
-#define RALINK_PCIE_CLK_GEN		0x7c
-#define RALINK_PCIE_CLK_GEN1		0x80
 
 /* Host-PCI bridge registers */
 #define RALINK_PCI_PCICFG_ADDR		0x0000
@@ -85,10 +83,6 @@
 #define PCIE_PORT_CLK_EN(x)		BIT(24 + (x))
 #define PCIE_PORT_LINKUP		BIT(0)
 
-#define PCIE_CLK_GEN_EN			BIT(31)
-#define PCIE_CLK_GEN_DIS		0
-#define PCIE_CLK_GEN1_DIS		GENMASK(30, 24)
-#define PCIE_CLK_GEN1_EN		(BIT(27) | BIT(25))
 #define MEMORY_BASE			0x0
 #define PERST_MODE_MASK			GENMASK(11, 10)
 #define PERST_MODE_GPIO			BIT(10)
@@ -233,6 +227,11 @@ static inline bool mt7621_pcie_port_is_linkup(struct mt7621_pcie_port *port)
 	return (pcie_port_read(port, RALINK_PCI_STATUS) & PCIE_PORT_LINKUP) != 0;
 }
 
+static inline void mt7621_pcie_port_clk_enable(struct mt7621_pcie_port *port)
+{
+	rt_sysc_m32(0, PCIE_PORT_CLK_EN(port->slot), RALINK_CLKCFG1);
+}
+
 static inline void mt7621_pcie_port_clk_disable(struct mt7621_pcie_port *port)
 {
 	rt_sysc_m32(PCIE_PORT_CLK_EN(port->slot), 0, RALINK_CLKCFG1);
@@ -501,11 +500,6 @@ static void mt7621_pcie_init_ports(struct mt7621_pcie *pcie)
 		}
 	}
 
-	rt_sysc_m32(0x30, 2 << 4, SYSC_REG_SYSTEM_CONFIG1);
-	rt_sysc_m32(PCIE_CLK_GEN_EN, PCIE_CLK_GEN_DIS, RALINK_PCIE_CLK_GEN);
-	rt_sysc_m32(PCIE_CLK_GEN1_DIS, PCIE_CLK_GEN1_EN, RALINK_PCIE_CLK_GEN1);
-	rt_sysc_m32(PCIE_CLK_GEN_DIS, PCIE_CLK_GEN_EN, RALINK_PCIE_CLK_GEN);
-	msleep(50);
 	reset_control_deassert(pcie->rst);
 }
 
@@ -542,6 +536,7 @@ static void mt7621_pcie_enable_ports(struct mt7621_pcie *pcie)
 
 	list_for_each_entry(port, &pcie->ports, list) {
 		if (port->enabled) {
+			mt7621_pcie_port_clk_enable(port);
 			mt7621_pcie_enable_port(port);
 			dev_info(dev, "PCIE%d enabled\n", num_slots_enabled);
 			num_slots_enabled++;
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

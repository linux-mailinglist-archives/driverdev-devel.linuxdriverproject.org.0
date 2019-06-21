Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 624404E071
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Jun 2019 08:15:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BE96122128;
	Fri, 21 Jun 2019 06:15:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2RFQv48OdtPX; Fri, 21 Jun 2019 06:15:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B28D0204A1;
	Fri, 21 Jun 2019 06:15:26 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2E30C1BF2C8
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 21 Jun 2019 06:15:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 280DF86B0B
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 21 Jun 2019 06:15:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OBg5+kgL9uc0
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 21 Jun 2019 06:15:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A8CAA86AF2
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 21 Jun 2019 06:15:21 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id f9so5260362wre.12
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 20 Jun 2019 23:15:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hoVpDXkrp1343ofTXfLWW2JIzbkGj0hj4Zd81N9Xer8=;
 b=oWAFdzXKpMFAFo0JIVez94b5MAx1g9ikslY8cv6u9piuzmK6IE3IUk4peiZLDGlzza
 JhOKEdtfE8DoAtsz2wQrPysZ0sy5g3Mqt0gQzJqnfMyPVDoyg8JWl3J2L1+8Xt/uhuDm
 P2dNqtC998MQ5nGsDULTz003SK3LQOltUU4AwBSBQ7ZnUPAtv+KvQiUvYX1n7hwPObR8
 469M6IZVrRpU83fjbA4UlWfQEA6ui2WUp8CU27Fn20K2gKGLXVM/poUYzBV5TswzK+9W
 3rQYkjF0Zq9i4MnKablbr8QKeQFpzeZnhGisT2nhTK74ua58MUHUYeiqGbdNBSti64vt
 n6hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hoVpDXkrp1343ofTXfLWW2JIzbkGj0hj4Zd81N9Xer8=;
 b=U+0aw1uGod8WLzrPehHoKHg4u+gsr7HU8642O2isS7p78WKK/6LGxGANQYbBeqq8KF
 jGuHI1PXanXqWPnmANS0yuwxdE3LdYGeboUTXVNWTfOzEummpyuHRj0WZ7smRSycLoxz
 3IM+uZWnxp71cw47bAzrhUZJvdxQXoph26koK5avQw7RR3Qg40mbGr+ryLAhP+J8JT+w
 totrSZOFwPCU/ugF5FjEy8QOXzJLGK9gOSQKQHMt4wgLnCnNer9dPpzX0kV1C9CI/MpS
 bffiJ+CTPMpqt3jvlHyKGL0MY1ZoMATAS7C7VNF//N31q2fPthTSlzZ+gHXLWBSHWn3I
 bLnQ==
X-Gm-Message-State: APjAAAVcj38bF+AQR3/QRfyz1lgYuaSCr717QIDSOk1ZYrkIgteUiDp1
 to8AwlCFs4Gh5ZXrKelXojA=
X-Google-Smtp-Source: APXvYqzU0uIF4suAIdecHMtP/evuevoOuBETkuzdaWkcWeDY8EN0BWM2Frw4GxE32kPu20s/vmT8Ow==
X-Received: by 2002:adf:9cd0:: with SMTP id h16mr299840wre.211.1561097720317; 
 Thu, 20 Jun 2019 23:15:20 -0700 (PDT)
Received: from localhost.localdomain (34.red-88-0-78.dynamicip.rima-tde.net.
 [88.0.78.34])
 by smtp.gmail.com with ESMTPSA id a2sm2155519wmj.9.2019.06.20.23.15.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 20 Jun 2019 23:15:19 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 1/4] staging: mt7621-pci: disable pcie port clock if there is
 no pcie link
Date: Fri, 21 Jun 2019 08:15:14 +0200
Message-Id: <20190621061517.24089-2-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190621061517.24089-1-sergio.paracuellos@gmail.com>
References: <20190621061517.24089-1-sergio.paracuellos@gmail.com>
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
Cc: neil@brown.name, driverdev-devel@linuxdriverproject.org, gerg@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

When there is no pcie link detected we have to properly disable the
port pcie clock.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 drivers/staging/mt7621-pci/pci-mt7621.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt7621-pci/pci-mt7621.c
index de09bda0b4cd..f6b91b29fb9c 100644
--- a/drivers/staging/mt7621-pci/pci-mt7621.c
+++ b/drivers/staging/mt7621-pci/pci-mt7621.c
@@ -45,6 +45,7 @@
 #define PCIE_FTS_NUM_L0(x)		((x) & 0xff << 8)
 
 /* rt_sysc_membase relative registers */
+#define RALINK_CLKCFG1			0x30
 #define RALINK_PCIE_CLK_GEN		0x7c
 #define RALINK_PCIE_CLK_GEN1		0x80
 
@@ -221,6 +222,11 @@ static inline bool mt7621_pcie_port_is_linkup(struct mt7621_pcie_port *port)
 	return (pcie_port_read(port, RALINK_PCI_STATUS) & PCIE_PORT_LINKUP) != 0;
 }
 
+static inline void mt7621_pcie_port_clk_disable(struct mt7621_pcie_port *port)
+{
+	rt_sysc_m32(PCIE_PORT_CLK_EN(port->slot), 0, RALINK_CLKCFG1);
+}
+
 static inline void mt7621_control_assert(struct mt7621_pcie_port *port)
 {
 	u32 chip_rev_id = rt_sysc_r32(MT7621_CHIP_REV_ID);
@@ -475,6 +481,7 @@ static void mt7621_pcie_init_ports(struct mt7621_pcie *pcie)
 				slot);
 			phy_power_off(port->phy);
 			mt7621_control_assert(port);
+			mt7621_pcie_port_clk_disable(port);
 			port->enabled = false;
 		}
 	}
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 152632C0256
	for <lists+driverdev-devel@lfdr.de>; Mon, 23 Nov 2020 10:36:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8A525870C1;
	Mon, 23 Nov 2020 09:36:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fCvewYovWWCp; Mon, 23 Nov 2020 09:36:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id F068087051;
	Mon, 23 Nov 2020 09:36:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 76ADE1BF2BC
 for <devel@linuxdriverproject.org>; Mon, 23 Nov 2020 09:36:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 73715855A1
 for <devel@linuxdriverproject.org>; Mon, 23 Nov 2020 09:36:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O8KzFfw30a-k for <devel@linuxdriverproject.org>;
 Mon, 23 Nov 2020 09:36:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com
 [209.85.221.52])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B786E855CF
 for <devel@driverdev.osuosl.org>; Mon, 23 Nov 2020 09:36:48 +0000 (UTC)
Received: by mail-wr1-f52.google.com with SMTP id 23so17856829wrc.8
 for <devel@driverdev.osuosl.org>; Mon, 23 Nov 2020 01:36:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=RNedSGKNC3f2BFpH82uLx/hREcbBSGI5BO2FexUA2OY=;
 b=EPW3VDMo++DzRqLIWLBVZCSGzehMhMzl3IcnODaUmOGLrOs1dXBGBF7Tz+K7UNxZ4L
 vBBxfWJ4j+Z4i4GHxOafByrV4c6BVBcdjPQgx5ft07X4ia7e3GONIDl6eCfxfX2IkFAi
 sSLZcRh1eY509nTWTc/vVUlKc7QyajrpI2fMj+vR8U7cuwGFqS8zEHtUSiMeiFFv7fYu
 q0ssZ1QH+Lkcgt3ivIizA47cGGhoQk9Il8RzBLFfjpDarRVt4q0EwwVq4M5SU2FuHPnv
 f7D8opwONbm2nYzWTA0mfoaN4hrC4J5YqvlBwXF/8aO7MiVC253yFq8VWkbNi1DHNsLn
 ja3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RNedSGKNC3f2BFpH82uLx/hREcbBSGI5BO2FexUA2OY=;
 b=KxQatoNUXw8TEF31wXSFXle0xdGFzdmQt05DdbGy8hCIu1b/cOYXWElDKF7Gc/1sXb
 /2Q6qaFxxTYGIenTv/SH+WJ0fs3avhAVk9dvAKgxm91owTxUd7r3DsQXZ74ionKnK2iG
 tBb7jFMTloqBFVTnsXA1SNJUSVcsmth8+q1Bhn2/zLCKXvSMK3fRXl7E4TFL/oq8RJdV
 OvBLlZu4vXHkUXQ3qNDtDIz5/CMlV9uc36rrS6zdMdV+zPudDORJN3wQfMkLda0KHyAV
 72dsiGDtyrLL49ddcz0mLEO9g0HfN68j085oK6GSAivlVEk/DRDV6nUjhwfJ9HeY//mH
 8dXg==
X-Gm-Message-State: AOAM532mMEMK5rxfFEUj8iQLHWjzkOxigzEEtFsz+78dF2atvmqaMY3V
 nYmqXVZkblvl3IVUmgYNNGA=
X-Google-Smtp-Source: ABdhPJyqlmgoVsr5ZgkeO5GIG/YQWhhMU4/7Dq13AejHrL0mvyQ0wQp4XbAUFLzjdujV1cpFFEjJ3A==
X-Received: by 2002:adf:fd0d:: with SMTP id e13mr28769668wrr.85.1606124207114; 
 Mon, 23 Nov 2020 01:36:47 -0800 (PST)
Received: from localhost.localdomain (188.red-81-44-87.dynamicip.rima-tde.net.
 [81.44.87.188])
 by smtp.gmail.com with ESMTPSA id s202sm16073807wme.39.2020.11.23.01.36.46
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 23 Nov 2020 01:36:46 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 7/7] staging: mt7621-pci: remove 'RALINK_PCI_IMBASEBAR0_ADDR'
 register
Date: Mon, 23 Nov 2020 10:36:37 +0100
Message-Id: <20201123093637.8300-8-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201123093637.8300-1-sergio.paracuellos@gmail.com>
References: <20201123093637.8300-1-sergio.paracuellos@gmail.com>
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
Cc: devel@driverdev.osuosl.org, neil@brown.name
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Register 'RALINK_PCI_IMBASEBAR0_ADDR' contains internal memory
base address for BAR0. We don't really need to write anything
there at all since its initial value contains always a desired
valid value. Hence remove register definition and related code.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 drivers/staging/mt7621-pci/pci-mt7621.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt7621-pci/pci-mt7621.c
index 4cdaccbcc97c..c3532bc138fb 100644
--- a/drivers/staging/mt7621-pci/pci-mt7621.c
+++ b/drivers/staging/mt7621-pci/pci-mt7621.c
@@ -68,7 +68,6 @@
 #define MT7621_NEXT_PORT		0x1000
 
 #define RALINK_PCI_BAR0SETUP_ADDR	0x0010
-#define RALINK_PCI_IMBASEBAR0_ADDR	0x0018
 #define RALINK_PCI_ID			0x0030
 #define RALINK_PCI_CLASS		0x0034
 #define RALINK_PCI_SUBID		0x0038
@@ -83,7 +82,6 @@
 #define PCIE_PORT_CLK_EN(x)		BIT(24 + (x))
 #define PCIE_PORT_LINKUP		BIT(0)
 
-#define MEMORY_BASE			0x0
 #define PERST_MODE_MASK			GENMASK(11, 10)
 #define PERST_MODE_GPIO			BIT(10)
 #define PERST_DELAY_MS			100
@@ -543,8 +541,6 @@ static void mt7621_pcie_enable_port(struct mt7621_pcie_port *port)
 	/* map 2G DDR region */
 	pcie_write(pcie, PCIE_BAR_MAP_MAX | PCIE_BAR_ENABLE,
 		   offset + RALINK_PCI_BAR0SETUP_ADDR);
-	pcie_write(pcie, MEMORY_BASE,
-		   offset + RALINK_PCI_IMBASEBAR0_ADDR);
 
 	/* configure class code and revision ID */
 	pcie_write(pcie, PCIE_CLASS_CODE | PCIE_REVISION_ID,
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

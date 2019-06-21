Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 51A624E073
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Jun 2019 08:15:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 79D8C221AB;
	Fri, 21 Jun 2019 06:15:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wteIfqnftyHv; Fri, 21 Jun 2019 06:15:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0F5FB22053;
	Fri, 21 Jun 2019 06:15:29 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EFB331BF2C8
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 21 Jun 2019 06:15:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E64EE86AF2
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 21 Jun 2019 06:15:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o2b8kUhIBPxu
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 21 Jun 2019 06:15:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4E97F86AEE
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 21 Jun 2019 06:15:23 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id f9so5260420wre.12
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 20 Jun 2019 23:15:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Dq6XT/hSafkpu4lhpiM/dSEiYp4JChZAM1KkhH6cFJI=;
 b=le3WSNl3P/RzxrrN8nNGdHwcBcvLFtKGawV+XD0n/qCNd7K+68HgArMXUpIWowu29b
 ahU49EzAxb47t/ZmbV0MCTmJuC7ff4yjpCUdwr7xBLhIFx2yxavuhrftwy1q0fm8IAaj
 qUgzwkWC1HZfA2B3vZm0jvhUw0Kgs+bXWsPnYueoLQItPqlz4iUejnWf7xAutQLzfNHW
 zuakjQLXcw87kVXF7PL5dUqpEnPszvKKkHX5BZT6G0AHP7HkXREUTn6u0KTpobadAtQI
 CgnhXr2jq9m6Zy3EXnxEXt64p9bbvMbzbbc/EDkvhWSJwcqYzkdnVrcD3pFm5gRYTCeE
 frow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Dq6XT/hSafkpu4lhpiM/dSEiYp4JChZAM1KkhH6cFJI=;
 b=TJpOj1uuoNzKKyxaNMc/hAFkoW16pIwx++sgayH9KHIAJV6rm6O6CWTFok3+XgFtOt
 Ar+Kszj2gkEh02i1JvC06x1FuQya+sSQPqteoKOuJpADpr0lxijsDe3dpGAV3f8OujWo
 IlSFkCeenIQp22Nq1Qmcp4t0vp5gI2JtEHN5nutotYogcb3cDCQ7dGpablHoQyqS8Fdv
 +GupEOUHBXI9vzhG22tS7K1yNBmFiRpSbDC39zoWoyg2l+707EqWV1j7UVxNAjw6Luxu
 u0U1TUH2dLrkBJoP+3XVk4HAPzAbq3jKOHG5z7KnSjjn4grXNzSw6LUGhx/OGwe5bGAj
 SKXA==
X-Gm-Message-State: APjAAAXJ7dzEeLQpVz2UODSDQ5XqinO0cwHvOH1aXItLgLz7HTOcwMrF
 c3RwYdeXjsOh+RE1W74u3d0=
X-Google-Smtp-Source: APXvYqz1s7sz0N8ryo58YaPqZmmcTecTm/h9yFkG/kYwkGlYxyywixhLNvMbHY0+TJwMQTmNO0lMKQ==
X-Received: by 2002:a5d:4a8d:: with SMTP id o13mr19226011wrq.350.1561097721995; 
 Thu, 20 Jun 2019 23:15:21 -0700 (PDT)
Received: from localhost.localdomain (34.red-88-0-78.dynamicip.rima-tde.net.
 [88.0.78.34])
 by smtp.gmail.com with ESMTPSA id a2sm2155519wmj.9.2019.06.20.23.15.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 20 Jun 2019 23:15:21 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 3/4] staging: mt7621-pci-phy: remove disable clock from the
 phy exit function
Date: Fri, 21 Jun 2019 08:15:16 +0200
Message-Id: <20190621061517.24089-4-sergio.paracuellos@gmail.com>
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

The clock which has been used here is not about the phy but the pcie port.
It has been properly handled into host pcie driver code. Hence, remove it
from here which is the correct thing to do.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 drivers/staging/mt7621-pci-phy/pci-mt7621-phy.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/drivers/staging/mt7621-pci-phy/pci-mt7621-phy.c b/drivers/staging/mt7621-pci-phy/pci-mt7621-phy.c
index 2576f179e30a..d2a07f145143 100644
--- a/drivers/staging/mt7621-pci-phy/pci-mt7621-phy.c
+++ b/drivers/staging/mt7621-pci-phy/pci-mt7621-phy.c
@@ -16,10 +16,6 @@
 #include <mt7621.h>
 #include <ralink_regs.h>
 
-#define RALINK_CLKCFG1				0x30
-
-#define PCIE_PORT_CLK_EN(x)			BIT(24 + (x))
-
 #define RG_PE1_PIPE_REG				0x02c
 #define RG_PE1_PIPE_RST				BIT(12)
 #define RG_PE1_PIPE_CMD_FRC			BIT(4)
@@ -286,10 +282,6 @@ static int mt7621_pci_phy_power_off(struct phy *phy)
 
 static int mt7621_pci_phy_exit(struct phy *phy)
 {
-	struct mt7621_pci_phy_instance *instance = phy_get_drvdata(phy);
-
-	rt_sysc_m32(PCIE_PORT_CLK_EN(instance->index), 0, RALINK_CLKCFG1);
-
 	return 0;
 }
 
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

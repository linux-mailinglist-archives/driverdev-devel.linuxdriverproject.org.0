Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3231718B0A6
	for <lists+driverdev-devel@lfdr.de>; Thu, 19 Mar 2020 10:57:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1590F88349;
	Thu, 19 Mar 2020 09:57:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nq2XVUSZmAZJ; Thu, 19 Mar 2020 09:57:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7F85288324;
	Thu, 19 Mar 2020 09:57:40 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E8CC81BF33A
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 19 Mar 2020 09:57:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E26642153F
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 19 Mar 2020 09:57:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CMjKrUTevcfO
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 19 Mar 2020 09:57:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 0ADED2153B
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 19 Mar 2020 09:57:38 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id h9so1944341wrc.8
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 19 Mar 2020 02:57:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1/qg2i7zxfGhKYbrqT3gk/FTB06sAvlSnzXtz6GsgP8=;
 b=eSQjNCuTdlVz7791F8ag8wJyxg+Zls2wV7ju8bxQpsdBbFS+xqtW1w1jBiVSB7PQO1
 Il1xxIlEz5vGB2D8s4Bm9MWUTZ5UkbBbEPYOQiGUkOVPtWVIncYOQOe2NcHZhDB8GvUq
 C3adOxzkjmTfCAg9E4Ed33v4Rp/HoCwo7zBqvH7T73MGV/1qJVbnTYbj/RxnrxZCM/YN
 KxWMQfwvJWHAsXXNRw6QJujNh+BUtW34NJUSRSC90ApBzD3TBPN20Uf4X0DBGhS/r+kA
 L6yUvs6ZZSHRvhR5MNRKddyyt6+7VY2Rz7eAcb8zf8B5v6amEp0cWwews6dbpmVb11SA
 5aSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1/qg2i7zxfGhKYbrqT3gk/FTB06sAvlSnzXtz6GsgP8=;
 b=HtADJvyilYmZY+hhSq35MVs45UpI/vpH9N0ihvBdMwDRSQpa3nGJ7Ybnmy+1DNIgMj
 hYPXA4wlRkyxCsaZobDHeqPTwvKJxgP5qpJNvWirJcsk4FMzt+7NIgL/EDx1iC2Hdu0/
 xLoVb2CvA1fm5UWBUlCU6+hF8h8mFOe5980d9mV6BxX/1JGOqIFlgLcV8ipv63T9tNdo
 ff8FBLG+4fW3dbWcYklQIbafgmC/wAMfBPvFj3lJ09Ykqrz39kMp5tSQXVNXiowAs/Tc
 PWz3AfoYD90SltCqRB1Aw/CCoALT6g1vf7AXxtBHQX12+R/CPtzN8yIfRwMx/xnsYFf5
 hK+A==
X-Gm-Message-State: ANhLgQ1M2ozzV6gRuSIrHwk0K+1FHEPxUb0bhPCBYPYn02zaX7pjF3KU
 saE2oQgKMdwdDyEP942i6jM=
X-Google-Smtp-Source: ADFU+vsteL3ehMqiiddlJBLzSqWh33o91ED+KdVf4Hvqu45t2ZW5KsvXO4u86KaVqsNn9/VKwRcBpg==
X-Received: by 2002:a5d:6a4a:: with SMTP id t10mr3228755wrw.356.1584611856331; 
 Thu, 19 Mar 2020 02:57:36 -0700 (PDT)
Received: from localhost.localdomain
 (134.red-83-46-193.dynamicip.rima-tde.net. [83.46.193.134])
 by smtp.gmail.com with ESMTPSA id t81sm2476697wmb.15.2020.03.19.02.57.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 19 Mar 2020 02:57:35 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: mt7621-pci: fix register to set up virtual bridges
Date: Thu, 19 Mar 2020 10:57:33 +0100
Message-Id: <20200319095733.1557-1-sergio.paracuellos@gmail.com>
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

Instead of being using PCI Configuration and Status Register to
set up virtual bridges we are using CONFIG_ADDR Register which is
wrong. Hence, set the correct value.

Fixes: 9a5e71a68d20 ("staging: mt7621-pci: simplify 'mt7621_pcie_init_virtual_bridges' function")
Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 drivers/staging/mt7621-pci/pci-mt7621.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt7621-pci/pci-mt7621.c
index 7ef2099b01c5..2a01645162a5 100644
--- a/drivers/staging/mt7621-pci/pci-mt7621.c
+++ b/drivers/staging/mt7621-pci/pci-mt7621.c
@@ -603,7 +603,7 @@ static int mt7621_pcie_init_virtual_bridges(struct mt7621_pcie *pcie)
 		if ((pcie_link_status & BIT(i)) == 0)
 			p2p_br_devnum[i] = n++;
 
-	pcie_rmw(pcie, RALINK_PCI_CONFIG_ADDR,
+	pcie_rmw(pcie, RALINK_PCI_PCICFG_ADDR,
 		 PCIE_P2P_BR_DEVNUM_MASK_FULL,
 		 (p2p_br_devnum[0] << PCIE_P2P_BR_DEVNUM0_SHIFT) |
 		 (p2p_br_devnum[1] << PCIE_P2P_BR_DEVNUM1_SHIFT) |
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

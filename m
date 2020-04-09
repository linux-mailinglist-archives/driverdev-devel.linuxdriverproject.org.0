Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B2A321A330D
	for <lists+driverdev-devel@lfdr.de>; Thu,  9 Apr 2020 13:17:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5C30687A87;
	Thu,  9 Apr 2020 11:17:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s7LGlvzBzdQx; Thu,  9 Apr 2020 11:17:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2EA038781C;
	Thu,  9 Apr 2020 11:16:59 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 040B21BF3BC
 for <driverdev-devel@linuxdriverproject.org>;
 Thu,  9 Apr 2020 11:16:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id EF63087568
 for <driverdev-devel@linuxdriverproject.org>;
 Thu,  9 Apr 2020 11:16:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NKF2XgrK91EQ
 for <driverdev-devel@linuxdriverproject.org>;
 Thu,  9 Apr 2020 11:16:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 19BC78710D
 for <driverdev-devel@linuxdriverproject.org>;
 Thu,  9 Apr 2020 11:16:56 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id h2so3486327wmb.4
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 09 Apr 2020 04:16:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vhQ2Pfznn3C1oqtuIXZCwUFBXYKoOtCTzcWGjTNpqrU=;
 b=uDmVKdt3Cc9d6RN1nqT8qyte4oNvBVq95dt9scuElDhoo+VEwmvkNwHsHJfvme8xFt
 sqkM40TOzrQQlGhpl1f1BN8x1197BeQoTbJ7SYNzad4p6eY+AowRyVGeBOC4E90msQ9P
 NEQpHhH3Clw+Y1vXPG4703dPc/hA0zs7yZzJFhtBr3I2yNT50l+lSY/MJ4PChx2vi5/9
 7/D8NAQRmZXKU6ZyCaW1b6sJpYEZjVdvDU2TIKzOldi5ri4nlzdtrwalC7hMoUYZ2HVQ
 od6WvipCSMe+KwP0cWguECTtDprfzUL6j0yYuzmNK8GtTTXbpymoc//rGAcuoNruO4mm
 BP6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vhQ2Pfznn3C1oqtuIXZCwUFBXYKoOtCTzcWGjTNpqrU=;
 b=iqsTF8bv0dJejrhCXJ4+eYltTAdkUnT65Ry12dxs54++z7VRzdyInfsmMDQ3TJ3PvP
 GRz2uz5rbLvlhe9TV5cPwq5a6M9yHMpR9W8Zg5tDCxZ3KC48lAodaX2whiQQywl34E6q
 oOel4ivfCG8paudiRL5/lYqsMqU3X2s+PnTU917Vheev7y+hqcqSmKRHWTRkfq7b6IPS
 HG9LWVtc7Ym0aDKEMD/yKfX54qM2fkuKngmYvuVAmc4A5NrIovefn+lCCqOM0S/Rix0P
 Kwr4swzezY8NRwwvcQgZzwyq4nL1Vs7LNNU3yiaSXFPhVCX7FIfWWYKEXlyPI7cQMZ6n
 AliQ==
X-Gm-Message-State: AGi0Pub2ZZ+3/TGa1IeD6eWlDeQBy0XwKEnmmHY5A4D9JgtVEziCj22w
 pRKDzW0a4nJVdIKBCHXM6MA=
X-Google-Smtp-Source: APiQypI+TJ5Xf+pg3fhOdnlLFnDixbBJJvpqb6LRTO1kBMx85hNYh80lg41z801KWizuyTS8/mKhiA==
X-Received: by 2002:a05:600c:c5:: with SMTP id u5mr2402527wmm.98.1586431014425; 
 Thu, 09 Apr 2020 04:16:54 -0700 (PDT)
Received: from localhost.localdomain
 (134.red-83-46-193.dynamicip.rima-tde.net. [83.46.193.134])
 by smtp.gmail.com with ESMTPSA id c4sm3480448wmb.5.2020.04.09.04.16.53
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 09 Apr 2020 04:16:53 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: mt7621-pci: properly power off dual-ported pcie phy
Date: Thu,  9 Apr 2020 13:16:52 +0200
Message-Id: <20200409111652.30964-1-sergio.paracuellos@gmail.com>
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

Pcie phy for pcie0 and pcie1 is shared using a dual ported
one. Current code was assuming that if nothing is connected
in pcie0 it won't be also nothing connected in pcie1. This
assumtion is wrong for some devices such us 'Mikrotik rbm33g'
and 'ZyXEL LTE3301-PLUS' where only connecting a card to the
second bus on the phy is possible. For such devices kernel
hangs in the same point because of the wrong poweroff of the
phy getting the following trace:

mt7621-pci-phy 1e149000.pcie-phy: PHY for 0xbe149000 (dual port = 1)
mt7621-pci-phy 1e14a000.pcie-phy: PHY for 0xbe14a000 (dual port = 0)
mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
mt7621-pci-phy 1e14a000.pcie-phy: Xtal is 40MHz
mt7621-pci 1e140000.pcie: pcie0 no card, disable it (RST & CLK)
[hangs]

The wrong assumption is located in the 'mt7621_pcie_init_ports'
function where we are just making a power off of the phy for
slots 0 and 2 if nothing is connected in them. Hence, only
poweroff the phy if nothing is connected in both slot 0 and
slot 1 avoiding the kernel to hang.

Fixes: 5737cfe87a9c ("staging: mt7621-pci: avoid to poweroff the phy for slot one")
Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 drivers/staging/mt7621-pci/pci-mt7621.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt7621-pci/pci-mt7621.c
index f58e3a51fc71..b9d460a9c041 100644
--- a/drivers/staging/mt7621-pci/pci-mt7621.c
+++ b/drivers/staging/mt7621-pci/pci-mt7621.c
@@ -502,17 +502,25 @@ static void mt7621_pcie_init_ports(struct mt7621_pcie *pcie)
 
 	mt7621_pcie_reset_ep_deassert(pcie);
 
+	tmp = NULL;
 	list_for_each_entry(port, &pcie->ports, list) {
 		u32 slot = port->slot;
 
 		if (!mt7621_pcie_port_is_linkup(port)) {
 			dev_err(dev, "pcie%d no card, disable it (RST & CLK)\n",
 				slot);
-			if (slot != 1)
-				phy_power_off(port->phy);
 			mt7621_control_assert(port);
 			mt7621_pcie_port_clk_disable(port);
 			port->enabled = false;
+
+			if (slot == 0) {
+				tmp = port;
+				continue;
+			}
+
+			if (slot == 1 && tmp && !tmp->enabled)
+				phy_power_off(tmp->phy);
+
 		}
 	}
 }
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

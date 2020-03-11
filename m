Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 64A3A18215B
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Mar 2020 19:58:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7DF6E86427;
	Wed, 11 Mar 2020 18:58:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z3bIa3ENxHwE; Wed, 11 Mar 2020 18:58:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4A772862AC;
	Wed, 11 Mar 2020 18:58:22 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3298D1BF400
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 18:58:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2FF01862AC
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 18:58:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PK9tRBDM01iy
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 18:58:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8DD0486268
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 18:58:19 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id a141so3339745wme.2
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 11:58:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8wh4nE9bCVn8Cqz0dv66qLtY8AelRLg/mHHNq+40Mfg=;
 b=tzwnb1DgJgtJCVZKSZrnp2uqM8Tjpralbu2jF5CEtvSVrV6uJvqtB25s8Ud422iC6V
 5EtBuKOhgSbJIVBnf0ZtDYh6IL6uz7qZgcp0EUKfu9wj0ybf7rK+xLWQo/0exbZ6nl5j
 HsZRK7fou7gj2mCocmEPnxj9vUoioTEHTVUKuX2dFYIcvBP+H21GHjx1pOFVEF+iIs7+
 +msHr3OfOFK7Ft4nKTeKB0mg/4l+YGExt0zJOEt5NZswX20NA5D8a4UmTOMGYGNMnIRb
 ckQbX9k5jX9VHdgzIgiYZozdrlTRKCwIN7+83OQUpONW63D9vA0vvqf7xUiAHyuWP0h5
 uZDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8wh4nE9bCVn8Cqz0dv66qLtY8AelRLg/mHHNq+40Mfg=;
 b=pgSquVVl2UUgBOf3VHJeUc2ueMRmrxTQBW0TQ7hmwn0XJ2CyGYdyGSoj/SxKvy+MAS
 r5xXsoTA2NKP5VwtVzaU7euiX+bjsbji+K+qNutk2bLN4nralXZPHN0z240QtOK2DcU9
 VFIefPND50Sp9BqbwlxpiWFSDxcmgal7bZKD/ZfR2Ur55K9pjcO18h3spDmVlWWWslzX
 b3NMq4b+IWJBwtg5wd396iYoniOqFPSNF6CJR/o4PN0OWK+DrPlVNcJ16CCio2DxH0RS
 C0oVFzKlmJPcR6qmL/lDeXgACzyG3Fd1pIqeXs/h2fXl7PMxwg20LWhx/BwHPYDnjqAg
 ONRQ==
X-Gm-Message-State: ANhLgQ0VvadGMByQlOs13o/bTk0YG9AA27af3yEgy+SP8vJiugVZRcPP
 pqD0AsDvuMFz3sQr6v2s8OMbmgSm
X-Google-Smtp-Source: ADFU+vuxb9XEQkqUWk5+WckgRxeBPegGUGwQwawbss8AQZ4dVnYiXJ29jaEAFexWfqgAYoc9zsux7g==
X-Received: by 2002:a1c:bcd4:: with SMTP id m203mr150176wmf.35.1583953098001; 
 Wed, 11 Mar 2020 11:58:18 -0700 (PDT)
Received: from localhost.localdomain
 (134.red-83-46-193.dynamicip.rima-tde.net. [83.46.193.134])
 by smtp.gmail.com with ESMTPSA id n11sm38457120wrw.11.2020.03.11.11.58.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 11 Mar 2020 11:58:17 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 5/5] staging: mt7621-pci: release gpios after pci
 initialization
Date: Wed, 11 Mar 2020 19:58:08 +0100
Message-Id: <20200311185808.29166-6-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200311185808.29166-1-sergio.paracuellos@gmail.com>
References: <20200311185808.29166-1-sergio.paracuellos@gmail.com>
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
Cc: ryder.lee@mediatek.com, driverdev-devel@linuxdriverproject.org,
 weijie.gao@mediatek.com, gerg@kernel.org, neil@brown.name
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

R3G's LEDs fail to initialize because one of them uses GPIO8
Hence, release the GPIO resources after PCIe initialization.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 drivers/staging/mt7621-pci/pci-mt7621.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt7621-pci/pci-mt7621.c
index 0880a21f2620..8399e4629e38 100644
--- a/drivers/staging/mt7621-pci/pci-mt7621.c
+++ b/drivers/staging/mt7621-pci/pci-mt7621.c
@@ -482,6 +482,14 @@ static void mt7621_pcie_reset_ep_deassert(struct mt7621_pcie *pcie)
 	mdelay(PERST_DELAY_US);
 }
 
+static void mt7621_pcie_release_gpios(struct mt7621_pcie *pcie)
+{
+	struct mt7621_pcie_port *port;
+
+	list_for_each_entry(port, &pcie->ports, list)
+		gpiod_put(port->gpio_rst);
+}
+
 static void mt7621_pcie_init_ports(struct mt7621_pcie *pcie)
 {
 	struct device *dev = pcie->dev;
@@ -706,6 +714,8 @@ static int mt7621_pci_probe(struct platform_device *pdev)
 		return err;
 	}
 
+	mt7621_pcie_release_gpios(pcie);
+
 	return 0;
 }
 
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

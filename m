Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C5B96A203
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Jul 2019 08:00:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4819E85FC6;
	Tue, 16 Jul 2019 06:00:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id okYbmpLVeQ4d; Tue, 16 Jul 2019 06:00:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B94FC85F3A;
	Tue, 16 Jul 2019 06:00:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CFC081BF20D
 for <devel@linuxdriverproject.org>; Tue, 16 Jul 2019 05:59:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CCEEC2042C
 for <devel@linuxdriverproject.org>; Tue, 16 Jul 2019 05:59:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kf+QqX1vxgIx for <devel@linuxdriverproject.org>;
 Tue, 16 Jul 2019 05:59:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 16973203A6
 for <devel@driverdev.osuosl.org>; Tue, 16 Jul 2019 05:59:56 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id t16so8534508pfe.11
 for <devel@driverdev.osuosl.org>; Mon, 15 Jul 2019 22:59:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9ivc6od8L6GPBsgJw/8JaZqQBLdmXOUxA5+liRugWa0=;
 b=fI4bHT3317Rtp+aKT5/k2gKQB3L6a4JNnKR/DjjEmsP0K3XKagE/bN1tibma9pMliR
 dbt0cQ96jOYjd4tJR1trjSF0cJhMWquOBIKB9GFetViNcyldI3gv0Aqh2kcdoNC8RIHd
 cyEUkv2JqmMXklnHPYJqacCd6xj3g9foz4ITuESUz9nR28Rmhmiu62YJxmV5WwVAeRUl
 x1Hq5pvY2d0/txgG+jMvRhX1x9quNZSLPgKcgqLWBINiSSb7OGT3CYUQiHG9qXSC4yyX
 cCZ6hcITQ9aqwTKjRATr3m9TeBLz1WbzThZcywl7lbbcHHFyzVuwRAG1BXBV7O0JFAcl
 rtPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9ivc6od8L6GPBsgJw/8JaZqQBLdmXOUxA5+liRugWa0=;
 b=nbjh22Ch2YK0viCrPKHRLFVoyPU7IR4B7IPQf2Ssuy6kXbWV8mdKHLIp4xwwJBf28U
 Zo67MGF74moY9dDsr/jbbko+LveNhrn2zzHJ2P+2ESoO7S5luRt0i2aDquYQ47jNQLXU
 h39I7IS++C40iC5XqVeh88wouf6WlvJH7BLXORoelKU0hgxkc0NDDCtyHl5+hoghfG5h
 a4RZG4ft98Rx9DRJktfPVYxXKGyXUD1IMyNenLw2BCFv4Eo654U3eHLGa8HRPw9vQeu+
 E59iPaXr+K9VCPaEbOzEbtoj9Rb8u3J4cqRP+pcKHtBWPIuJmkJkWdc//Q6XAl44/7tJ
 mmkQ==
X-Gm-Message-State: APjAAAX8DvqwSM3Xelv1qCnod0FNYuW8ljHSHuwUV/GjEAeTqh7Rz0h5
 buBs/LsfNonsclqX3TkOCi0=
X-Google-Smtp-Source: APXvYqz4dVd2k8L42iep3Zx8Gmj+7Yp3InAeif4HZktkMvbnTxNhWpLrKi4GwQ6osBcNn5usI3zYEQ==
X-Received: by 2002:a63:20a:: with SMTP id 10mr31109140pgc.226.1563256795658; 
 Mon, 15 Jul 2019 22:59:55 -0700 (PDT)
Received: from localhost.localdomain ([110.227.64.207])
 by smtp.gmail.com with ESMTPSA id i3sm20864172pfo.138.2019.07.15.22.59.52
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 15 Jul 2019 22:59:55 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org, matthias.bgg@gmail.com,
 devel@driverdev.osuosl.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org
Subject: [PATCH] staging: mt7621-pci: Add of_node_put() before return
Date: Tue, 16 Jul 2019 11:29:44 +0530
Message-Id: <20190716055944.3237-1-nishkadg.linux@gmail.com>
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

Each iteration of for_each_available_child_of_node puts the previous
node, but in the case of a return from the middle of the loop, there is
no put, thus causing a memory leak. Hence add an of_node_put before the
return in two places.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/mt7621-pci/pci-mt7621.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt7621-pci/pci-mt7621.c
index 89fa813142ab..2e37fd136ab8 100644
--- a/drivers/staging/mt7621-pci/pci-mt7621.c
+++ b/drivers/staging/mt7621-pci/pci-mt7621.c
@@ -400,6 +400,7 @@ static int mt7621_pcie_parse_dt(struct mt7621_pcie *pcie)
 
 		err = of_pci_get_devfn(child);
 		if (err < 0) {
+			of_node_put(child);
 			dev_err(dev, "failed to parse devfn: %d\n", err);
 			return err;
 		}
@@ -407,8 +408,10 @@ static int mt7621_pcie_parse_dt(struct mt7621_pcie *pcie)
 		slot = PCI_SLOT(err);
 
 		err = mt7621_pcie_parse_port(pcie, child, slot);
-		if (err)
+		if (err) {
+			of_node_put(child);
 			return err;
+		}
 	}
 
 	return 0;
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

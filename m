Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 66A4B2C0254
	for <lists+driverdev-devel@lfdr.de>; Mon, 23 Nov 2020 10:36:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5B0862049A;
	Mon, 23 Nov 2020 09:36:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eGjm75zJNJym; Mon, 23 Nov 2020 09:36:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 54A042047F;
	Mon, 23 Nov 2020 09:36:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A0C361BF2BC
 for <devel@linuxdriverproject.org>; Mon, 23 Nov 2020 09:36:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9AC7A86030
 for <devel@linuxdriverproject.org>; Mon, 23 Nov 2020 09:36:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MaG1GfmfyAhi for <devel@linuxdriverproject.org>;
 Mon, 23 Nov 2020 09:36:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 77C5586018
 for <devel@driverdev.osuosl.org>; Mon, 23 Nov 2020 09:36:43 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id z7so2068846wrn.3
 for <devel@driverdev.osuosl.org>; Mon, 23 Nov 2020 01:36:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=r0d7i/w2AKaRQ2w9VEIfgbNZ4evuXnx5xSZaIrTmJeI=;
 b=HcX0OcIl2aN5kCdn0cZjs9Qv8Vjl07hE2sBPIVWByT7pIIFd5P8Cv4nPNLjArilUWu
 Jhb+9ZqdxwAx8UKpCwOyc8HNffhatY/ylMo/ffeVmnCJYmNlcKjlFAagldJniKS0LoyZ
 +k67OEEq6V3mraIunsi0JXJjD7016oubBI8zqwKXFkyo8ZH3cKIRep9+LUOEPP2skIzv
 FWwjJNN/u5ObCX2txhhPgkxwi8njN04KFQjGERnZC5chdmkUsDdfJhaZ851FhVo8Qfx/
 GNXQmyJXxm0R/1tAI/2ZomhNY39cGL2TbUSE3CjJOA8QK4g6tIbZFxqNR1Ff+fMHBtCF
 MRuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=r0d7i/w2AKaRQ2w9VEIfgbNZ4evuXnx5xSZaIrTmJeI=;
 b=cnm3nzNvHdh0/gtpfSh758WtBW/c8PEkMvGu+wuS4fiCaiD0mrgVN6/KNhLVdkOAah
 nijdCSxTvMOrV6duGXya7j+TVVPRJJf7iOnXJja021wTrqwt7A0b7vdRLqrzP4SDU91V
 Gk/Wu5NDe6z7KGaEBVvWAI7Otapu/ADrmAkXHiFAepVnMd3fsdEba5ZQFwJ7mnIQ8kJU
 Mhj6yiKVtgIYVeZnp1PCIV8uvck5H/eeG7PA64ZCIp1yccY86nqU3mLVIjPPYuG6dBeT
 PiUf7pgaDFS+ugrBf1OtTCGyhGddQf7clZBQ00/8tqBaN5BQrBBd5VYtZRuOpiUDBTO4
 iwng==
X-Gm-Message-State: AOAM530t2STIHuoUoMyuMdNccyZLGQJ4zu5Dj6fMoU1uxn+1acQDIykm
 eGyxo8cfzEvyzTT5IRGKjRY=
X-Google-Smtp-Source: ABdhPJxoCZNfPVFN0yxlQMY45JBWv2UIb729NzDi36N8jOXq2oJm+4jjtcN9PAfYa4tsDIofryYCUA==
X-Received: by 2002:adf:c452:: with SMTP id a18mr30533772wrg.189.1606124201943; 
 Mon, 23 Nov 2020 01:36:41 -0800 (PST)
Received: from localhost.localdomain (188.red-81-44-87.dynamicip.rima-tde.net.
 [81.44.87.188])
 by smtp.gmail.com with ESMTPSA id s202sm16073807wme.39.2020.11.23.01.36.41
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 23 Nov 2020 01:36:41 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 2/7] staging: mt7621-pci: remove 'offset' with mem and io
 resource sizes
Date: Mon, 23 Nov 2020 10:36:32 +0100
Message-Id: <20201123093637.8300-3-sergio.paracuellos@gmail.com>
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

Offset contains resources size for both io and memory resources.
Those fields are directly initialized to zero and set up using
'pci_add_resource_offset' function. Instead of doing that remove
them and use directly function 'pci_add_resource' where zero is
passed directly to its internal call to 'pci_add_resource_offset'.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 drivers/staging/mt7621-pci/pci-mt7621.c | 11 ++---------
 1 file changed, 2 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt7621-pci/pci-mt7621.c
index 3e8dddf5ec79..219b35937285 100644
--- a/drivers/staging/mt7621-pci/pci-mt7621.c
+++ b/drivers/staging/mt7621-pci/pci-mt7621.c
@@ -117,7 +117,6 @@ struct mt7621_pcie_port {
  * @base: IO Mapped Register Base
  * @io: IO resource
  * @mem: non-prefetchable memory resource
- * @offset: IO / Memory offset
  * @dev: Pointer to PCIe device
  * @io_map_base: virtual memory base address for io
  * @ports: pointer to PCIe port information
@@ -130,10 +129,6 @@ struct mt7621_pcie {
 	struct device *dev;
 	struct resource io;
 	struct resource mem;
-	struct {
-		resource_size_t mem;
-		resource_size_t io;
-	} offset;
 	unsigned long io_map_base;
 	struct list_head ports;
 	int irq_map[PCIE_P2P_CNT];
@@ -312,11 +307,9 @@ static int mt7621_pci_parse_request_of_pci_ranges(struct mt7621_pcie *pcie)
 			of_pci_range_to_resource(&range, node, &pcie->io);
 			pcie->io.start = range.cpu_addr;
 			pcie->io.end = range.cpu_addr + range.size - 1;
-			pcie->offset.io = 0x00000000UL;
 			break;
 		case IORESOURCE_MEM:
 			of_pci_range_to_resource(&range, node, &pcie->mem);
-			pcie->offset.mem = 0x00000000UL;
 			break;
 		}
 	}
@@ -644,8 +637,8 @@ static int mt7621_pcie_init_virtual_bridges(struct mt7621_pcie *pcie)
 static void mt7621_pcie_add_resources(struct mt7621_pcie *pcie,
 				      struct list_head *res)
 {
-	pci_add_resource_offset(res, &pcie->io, pcie->offset.io);
-	pci_add_resource_offset(res, &pcie->mem, pcie->offset.mem);
+	pci_add_resource(res, &pcie->io);
+	pci_add_resource(res, &pcie->mem);
 }
 
 static int mt7621_pcie_register_host(struct pci_host_bridge *host,
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

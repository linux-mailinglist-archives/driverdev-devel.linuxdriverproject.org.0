Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 89E3C2904A3
	for <lists+driverdev-devel@lfdr.de>; Fri, 16 Oct 2020 14:03:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 48F898892E;
	Fri, 16 Oct 2020 12:03:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mhtC2HCGV2I2; Fri, 16 Oct 2020 12:03:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 338C488935;
	Fri, 16 Oct 2020 12:03:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 534861BF867
 for <devel@linuxdriverproject.org>; Fri, 16 Oct 2020 12:03:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 474E42050B
 for <devel@linuxdriverproject.org>; Fri, 16 Oct 2020 12:03:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fpvGjzdWe3Sc for <devel@linuxdriverproject.org>;
 Fri, 16 Oct 2020 12:03:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by silver.osuosl.org (Postfix) with ESMTPS id AEE7820506
 for <devel@driverdev.osuosl.org>; Fri, 16 Oct 2020 12:03:14 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id e7so1363592pfn.12
 for <devel@driverdev.osuosl.org>; Fri, 16 Oct 2020 05:03:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=x2GKJTo2qYsyHZMoxqFD1/J59i+y20zftI8/n7N//F0=;
 b=RmbZ2QKUprB3PBmJAZOZZfwjhQKeTGd75WF4P2jdtkzSHB7UJ59b249sN1RJsdxssq
 h6TL/AotkWcLakctndRkGIQpjdwfMBaKqusNShq0vKl4DAqPUaP/E98tpiHF55+pXzlA
 YwkQrr7OkDTRfow21Lyv/ZwllhlaDf/lCaLQ9WV95aHZC1f3rV7nt36fPRzY7mSFYf2/
 ivIN9mExJmCJGAiW3CpdHfGHimRV2xzfE323b8tIaTXSrQ0PYTlOsUT8YjLeMfOjlKky
 iZG7weTLGewxRhSUxela9k63qYFAMK2Medu5y1ZMGSQTj1aAmEAkKU8fRh2/AreRXIMf
 rcBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=x2GKJTo2qYsyHZMoxqFD1/J59i+y20zftI8/n7N//F0=;
 b=FQ2STDEqvWk9TGZrt4DCJjl6X4qqSTcvxAVHIkxnSZ2S07YtW6WibbungoncGEqTqy
 aLlMlDUkg+xUWJIpzPCqRmLHXtfpqU97EHeFLPblXH4n4/Q8QpJUPP5KHklWbzx40gUf
 ayR8sSBwkafwpRgnSnoIlTiJmZLA7RuPaRQUOGLvs+Qs5kxtihgZrzAWIJXdaRSVr4ut
 YID02LUVGRZAuEO7Bwl4QUk38i0rNSP17DgNKjSLAcodZhnaLuxpzD0pjx0vg+OlxlW3
 1lxP0WSfUCl9DznwqVPkr3pLiUeb2fHOo/5Q+Z9BkaNotN7F2ZDb89oSYkG4Ng+mb3cC
 q5Kg==
X-Gm-Message-State: AOAM5302XPvvQbAaK6tBLxedraHuVdeydG8m7FYbzYd2yO05ZjTZ4qR4
 hqqo2DrvwE8e2PE07NeVRCHkDENwMOmMoyz/
X-Google-Smtp-Source: ABdhPJwXAsxYVZ5Efyh6fsHCFxax3jlgu8lAuipqYii9srQrDlSAxoFyU7g5bQ3W2of2q+2us7y/dA==
X-Received: by 2002:a63:5405:: with SMTP id i5mr2720197pgb.438.1602849793915; 
 Fri, 16 Oct 2020 05:03:13 -0700 (PDT)
Received: from localhost ([160.16.113.140])
 by smtp.gmail.com with ESMTPSA id js21sm2850802pjb.14.2020.10.16.05.03.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 16 Oct 2020 05:03:13 -0700 (PDT)
From: Coiby Xu <coiby.xu@gmail.com>
To: devel@driverdev.osuosl.org
Subject: [PATCH v3 3/8] staging: qlge: re-write qlge_init_device
Date: Fri, 16 Oct 2020 19:54:02 +0800
Message-Id: <20201016115407.170821-4-coiby.xu@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201016115407.170821-1-coiby.xu@gmail.com>
References: <20201016115407.170821-1-coiby.xu@gmail.com>
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
Cc: Willem de Bruijn <willemdebruijn.kernel@gmail.com>,
 "supporter:QLOGIC QLGE 10Gb ETHERNET DRIVER"
 <GR-Linux-NIC-Dev@marvell.com>, Manish Chopra <manishc@marvell.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Shung-Hsi Yu <shung-hsi.yu@suse.com>, open list <linux-kernel@vger.kernel.org>,
 Benjamin Poirier <benjamin.poirier@gmail.com>,
 "open list:QLOGIC QLGE 10Gb ETHERNET DRIVER" <netdev@vger.kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Stop calling ql_release_all in qlge_init_device and free things one step
at a time.

Link: https://lore.kernel.org/patchwork/patch/1321092/#1516928
Suggested-by: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: Coiby Xu <coiby.xu@gmail.com>
---
 drivers/staging/qlge/qlge_main.c | 32 ++++++++++++++++++++------------
 1 file changed, 20 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
index 888179fbf98c..c081aa1bb43d 100644
--- a/drivers/staging/qlge/qlge_main.c
+++ b/drivers/staging/qlge/qlge_main.c
@@ -4403,13 +4403,13 @@ static int qlge_init_device(struct pci_dev *pdev, struct qlge_adapter *qdev,
 	err = pcie_set_readrq(pdev, 4096);
 	if (err) {
 		dev_err(&pdev->dev, "Set readrq failed.\n");
-		goto err_out1;
+		goto err_disable_pci;
 	}
 
 	err = pci_request_regions(pdev, DRV_NAME);
 	if (err) {
 		dev_err(&pdev->dev, "PCI region request failed.\n");
-		return err;
+		goto err_disable_pci;
 	}
 
 	pci_set_master(pdev);
@@ -4425,7 +4425,7 @@ static int qlge_init_device(struct pci_dev *pdev, struct qlge_adapter *qdev,
 
 	if (err) {
 		dev_err(&pdev->dev, "No usable DMA configuration.\n");
-		goto err_out2;
+		goto err_release_pci;
 	}
 
 	/* Set PCIe reset type for EEH to fundamental. */
@@ -4436,7 +4436,7 @@ static int qlge_init_device(struct pci_dev *pdev, struct qlge_adapter *qdev,
 	if (!qdev->reg_base) {
 		dev_err(&pdev->dev, "Register mapping failed.\n");
 		err = -ENOMEM;
-		goto err_out2;
+		goto err_release_pci;
 	}
 
 	qdev->doorbell_area_size = pci_resource_len(pdev, 3);
@@ -4445,14 +4445,14 @@ static int qlge_init_device(struct pci_dev *pdev, struct qlge_adapter *qdev,
 	if (!qdev->doorbell_area) {
 		dev_err(&pdev->dev, "Doorbell register mapping failed.\n");
 		err = -ENOMEM;
-		goto err_out2;
+		goto err_iounmap_base;
 	}
 
 	err = qlge_get_board_info(qdev);
 	if (err) {
 		dev_err(&pdev->dev, "Register access failed.\n");
 		err = -EIO;
-		goto err_out2;
+		goto err_iounmap_doorbell;
 	}
 	qdev->msg_enable = netif_msg_init(debug, default_msg);
 	spin_lock_init(&qdev->stats_lock);
@@ -4462,7 +4462,7 @@ static int qlge_init_device(struct pci_dev *pdev, struct qlge_adapter *qdev,
 			vmalloc(sizeof(struct qlge_mpi_coredump));
 		if (!qdev->mpi_coredump) {
 			err = -ENOMEM;
-			goto err_out2;
+			goto err_iounmap_doorbell;
 		}
 		if (qlge_force_coredump)
 			set_bit(QL_FRC_COREDUMP, &qdev->flags);
@@ -4471,7 +4471,7 @@ static int qlge_init_device(struct pci_dev *pdev, struct qlge_adapter *qdev,
 	err = qdev->nic_ops->get_flash(qdev);
 	if (err) {
 		dev_err(&pdev->dev, "Invalid FLASH.\n");
-		goto err_out2;
+		goto err_free_mpi_coredump;
 	}
 
 	/* Keep local copy of current mac address. */
@@ -4494,7 +4494,7 @@ static int qlge_init_device(struct pci_dev *pdev, struct qlge_adapter *qdev,
 						  ndev->name);
 	if (!qdev->workqueue) {
 		err = -ENOMEM;
-		goto err_out2;
+		goto err_free_mpi_coredump;
 	}
 
 	INIT_DELAYED_WORK(&qdev->asic_reset_work, qlge_asic_reset_work);
@@ -4512,10 +4512,18 @@ static int qlge_init_device(struct pci_dev *pdev, struct qlge_adapter *qdev,
 			 DRV_NAME, DRV_VERSION);
 	}
 	return 0;
-err_out2:
-	qlge_release_all(pdev);
-err_out1:
+
+err_free_mpi_coredump:
+	vfree(qdev->mpi_coredump);
+err_iounmap_doorbell:
+	iounmap(qdev->doorbell_area);
+err_iounmap_base:
+	iounmap(qdev->reg_base);
+err_release_pci:
+	pci_release_regions(pdev);
+err_disable_pci:
 	pci_disable_device(pdev);
+
 	return err;
 }
 
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

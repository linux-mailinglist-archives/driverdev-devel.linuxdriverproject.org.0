Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6285C30149A
	for <lists+driverdev-devel@lfdr.de>; Sat, 23 Jan 2021 11:46:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9EC22873B8;
	Sat, 23 Jan 2021 10:46:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WoZ02GAcT+e3; Sat, 23 Jan 2021 10:46:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4FF1D873AA;
	Sat, 23 Jan 2021 10:46:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 50F221BF3BE
 for <devel@linuxdriverproject.org>; Sat, 23 Jan 2021 10:46:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4DBA886B7A
 for <devel@linuxdriverproject.org>; Sat, 23 Jan 2021 10:46:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LshumFiP60_p for <devel@linuxdriverproject.org>;
 Sat, 23 Jan 2021 10:46:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com
 [209.85.210.177])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A7BA586B67
 for <devel@driverdev.osuosl.org>; Sat, 23 Jan 2021 10:46:52 +0000 (UTC)
Received: by mail-pf1-f177.google.com with SMTP id 11so5495253pfu.4
 for <devel@driverdev.osuosl.org>; Sat, 23 Jan 2021 02:46:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0woXL6TwKFZY+vCAgGomrBVuZafUkKOhiqwosyN4SZ4=;
 b=cxC08BrGmoZ8aFnlXu0TBeV2ZS6Ir/h35fWhhU54Cgm8BZC4yVf/E+upEB8IgQBIpp
 VooLSLEE5MKpTRMjUgzkMFHxniwbMgKcZKeEJ9uDIs466YhqY9dX/fVZdIOEJI/QvWdx
 lRiWVraO36tDjd0k6T+EYA5ZUHOvYes4Ov0k9jNJlFM2ABuExCGKcqyG8tjWkeXuTmgO
 C0iN53oA3CH4BKqoy0IHZEAeUSJkMVqwOF3hpXMN5l06/uSs9juItRgU6dgUYULfkVSX
 RfiUZbDpAOsjzhviYcSloP4scjjjCDmTp3xaaUwkAno7U38qQ/aX/IHu2hD0RIJmwe4a
 BNRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0woXL6TwKFZY+vCAgGomrBVuZafUkKOhiqwosyN4SZ4=;
 b=Y3Kady4N5aVYka4iesuBSUGZye8cZdWw9qANrBnH5PIrsSFRMy5S7ompmWixhP/KSO
 rCxNzjMydsXrDy9ngyCFIZgNiozM+LlDwx0KfS5Nf+UBMdIB6q14cO2lmwSgSH8I3K+U
 o+2uv+2eZbJu+NQ5szQ0p7tH5WCHBlT4+d1s08CKPT9IB0aGRLA7Wz6tzZdDkscE5qXJ
 hI5GwysoisIs+8R21bQBgJYPHHYIF15uqQq/x+VHa2pwJcSgrMteyVkXaJ4zgf1e0dZX
 itb2UdZn6Ggn5Ibhrznt3Zw63NegKyKGbuLYb/acB5AO4BzPYxCsS6AsPzfjOhVx/1Na
 Xgxg==
X-Gm-Message-State: AOAM531vZzvLwFjr+PvBgqMeR7EXBPsJw7p47qikCz33z7FeLYK3Srwm
 cYAuzpU8mFkPn8ORgx7qoNIuB9LdyugvP6oh
X-Google-Smtp-Source: ABdhPJyeBiA/tH3PsHxnd66GIXunI9Egu/wbdZ3xMhy8DUUVhKMAukw25FvveJobdPlnw/xA2rYXEg==
X-Received: by 2002:aa7:8c12:0:b029:1b6:e47f:7458 with SMTP id
 c18-20020aa78c120000b02901b6e47f7458mr9543190pfd.67.1611398812052; 
 Sat, 23 Jan 2021 02:46:52 -0800 (PST)
Received: from localhost ([2001:e42:102:1532:160:16:113:140])
 by smtp.gmail.com with ESMTPSA id 81sm11025209pfa.188.2021.01.23.02.46.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 23 Jan 2021 02:46:51 -0800 (PST)
From: Coiby Xu <coiby.xu@gmail.com>
To: devel@driverdev.osuosl.org
Subject: [PATCH v4 3/8] staging: qlge: re-write qlge_init_device
Date: Sat, 23 Jan 2021 18:46:08 +0800
Message-Id: <20210123104613.38359-4-coiby.xu@gmail.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210123104613.38359-1-coiby.xu@gmail.com>
References: <20210123104613.38359-1-coiby.xu@gmail.com>
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
 GR-Linux-NIC-Dev@marvell.com, Manish Chopra <manishc@marvell.com>,
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

struct qlge_adapter *qdev is now a private structure of struct devlink
and memset is not necessary.

Link: https://lore.kernel.org/patchwork/patch/1321092/#1516928
Suggested-by: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: Coiby Xu <coiby.xu@gmail.com>
---
 drivers/staging/qlge/qlge_main.c | 32 ++++++++++++++++++++------------
 1 file changed, 20 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
index bb9fc590d97b..2ec688d3d946 100644
--- a/drivers/staging/qlge/qlge_main.c
+++ b/drivers/staging/qlge/qlge_main.c
@@ -4394,13 +4394,13 @@ static int qlge_init_device(struct pci_dev *pdev, struct qlge_adapter *qdev,
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
@@ -4416,7 +4416,7 @@ static int qlge_init_device(struct pci_dev *pdev, struct qlge_adapter *qdev,
 
 	if (err) {
 		dev_err(&pdev->dev, "No usable DMA configuration.\n");
-		goto err_out2;
+		goto err_release_pci;
 	}
 
 	/* Set PCIe reset type for EEH to fundamental. */
@@ -4427,7 +4427,7 @@ static int qlge_init_device(struct pci_dev *pdev, struct qlge_adapter *qdev,
 	if (!qdev->reg_base) {
 		dev_err(&pdev->dev, "Register mapping failed.\n");
 		err = -ENOMEM;
-		goto err_out2;
+		goto err_release_pci;
 	}
 
 	qdev->doorbell_area_size = pci_resource_len(pdev, 3);
@@ -4436,14 +4436,14 @@ static int qlge_init_device(struct pci_dev *pdev, struct qlge_adapter *qdev,
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
@@ -4453,7 +4453,7 @@ static int qlge_init_device(struct pci_dev *pdev, struct qlge_adapter *qdev,
 			vmalloc(sizeof(struct qlge_mpi_coredump));
 		if (!qdev->mpi_coredump) {
 			err = -ENOMEM;
-			goto err_out2;
+			goto err_iounmap_doorbell;
 		}
 		if (qlge_force_coredump)
 			set_bit(QL_FRC_COREDUMP, &qdev->flags);
@@ -4462,7 +4462,7 @@ static int qlge_init_device(struct pci_dev *pdev, struct qlge_adapter *qdev,
 	err = qdev->nic_ops->get_flash(qdev);
 	if (err) {
 		dev_err(&pdev->dev, "Invalid FLASH.\n");
-		goto err_out2;
+		goto err_free_mpi_coredump;
 	}
 
 	/* Keep local copy of current mac address. */
@@ -4485,7 +4485,7 @@ static int qlge_init_device(struct pci_dev *pdev, struct qlge_adapter *qdev,
 						  ndev->name);
 	if (!qdev->workqueue) {
 		err = -ENOMEM;
-		goto err_out2;
+		goto err_free_mpi_coredump;
 	}
 
 	INIT_DELAYED_WORK(&qdev->asic_reset_work, qlge_asic_reset_work);
@@ -4503,10 +4503,18 @@ static int qlge_init_device(struct pci_dev *pdev, struct qlge_adapter *qdev,
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
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

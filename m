Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CE002608E8
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Sep 2020 05:09:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 78DCE863E2;
	Tue,  8 Sep 2020 03:09:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2cOJq1QgI6I3; Tue,  8 Sep 2020 03:09:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2C6578626B;
	Tue,  8 Sep 2020 03:09:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 835E01BF276
 for <devel@linuxdriverproject.org>; Tue,  8 Sep 2020 03:09:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7CBBB204BC
 for <devel@linuxdriverproject.org>; Tue,  8 Sep 2020 03:09:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rRgjS6mKwj3r for <devel@linuxdriverproject.org>;
 Tue,  8 Sep 2020 03:09:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com
 [209.85.166.65])
 by silver.osuosl.org (Postfix) with ESMTPS id B4ED62049A
 for <devel@driverdev.osuosl.org>; Tue,  8 Sep 2020 03:09:09 +0000 (UTC)
Received: by mail-io1-f65.google.com with SMTP id z13so11503710iom.8
 for <devel@driverdev.osuosl.org>; Mon, 07 Sep 2020 20:09:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rBq6L8j6VXoV9kBXKeeyWs5lIar9dvrGK6LriY/bemU=;
 b=dgcbDcv5+Wc8PKQMo1siPE6CbXStP0BwfrR3dBoESevR1ySVkrfGJvRsAK6WxudbMs
 tJrDc9XJUj+U2fFKE0uveTXwu9LvvdlYUTY9g3WDwcwxrEnRCthG2lDvCJ+gEs1fVrfi
 zaFY0JUHbduPQ42Yo01YyL0Na6laN6swR3y+O/lsZBuuTfdMXD+78rZFEtBLWx1bgqF5
 zPwhQH1DIT/mv1vKN/2o/h2U5QSDUzEEjI6kgMkzvDqsxtzNB3p9Xkk+36/Kt4D8wvxa
 qSyD34CaT04MW9CjnwvqqZl1iBPmV6s+dEI8kr4KF5roOQu4Wf0Koe718rpIYHPlq0Hd
 EAnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rBq6L8j6VXoV9kBXKeeyWs5lIar9dvrGK6LriY/bemU=;
 b=HJOx/bAJupTHraODxu9xs0LzM2gJd+IMq8jwywF7O9c6VY0YsEcrzVkwvpiVLRa3yc
 ze8hLjDxHBvVniuXS+kawlGgIllOlLhp/yhhXCa5Y6Z5lvkL5Va5ZwKz3GqGlIzCsHVv
 l4oMBFg1I7zS3+3Z8dMWRA1JQoD8I6DEu9gA/zcNj553RWaWgx6wnl0agVET5bACHZ95
 YEndRbtggUZYEx+wX099yHeFMBcYlLxOdnjxu/VjsxTogKnDEkTZzIZVklGn3zQWpfX7
 pf89VblLsSUoJz64x0pJe1oA4Qd5NU+I5MatV3GYITKkbGfDiavAfzSFtFQNIQ7haXFj
 eMyQ==
X-Gm-Message-State: AOAM530bAV+H7Zn3VFCnE4wh5KGPt13FZoO580RPc7hUMd3b13DtM1Wd
 th2UYK+ki9kO+DFU4dP4ruk=
X-Google-Smtp-Source: ABdhPJzCd21arCbtl6Ci687epIwl9O9Ql/OkCtD7cuxgSfMkxemjdGkFrNnMRt7Oito4GFPrl3DorQ==
X-Received: by 2002:a02:8791:: with SMTP id t17mr21129203jai.89.1599534549063; 
 Mon, 07 Sep 2020 20:09:09 -0700 (PDT)
Received: from localhost.localdomain (c-73-242-81-227.hsd1.mn.comcast.net.
 [73.242.81.227])
 by smtp.gmail.com with ESMTPSA id b8sm7923367ioa.33.2020.09.07.20.09.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Sep 2020 20:09:08 -0700 (PDT)
From: Ross Schmidt <ross.schm.dev@gmail.com>
To: manishc@marvell.com, GR-Linux-NIC-Dev@marvell.com,
 gregkh@linuxfoundation.org
Subject: [PATCH] staging: qlge: fix quoted string split across lines
Date: Mon,  7 Sep 2020 22:07:57 -0500
Message-Id: <20200908030757.101278-1-ross.schm.dev@gmail.com>
X-Mailer: git-send-email 2.26.2
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Ross Schmidt <ross.schm.dev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixed a coding style issue by merging split quoted strings in qlge_main.c
to fix checkpatch warnings.

Signed-off-by: Ross Schmidt <ross.schm.dev@gmail.com>
---
 drivers/staging/qlge/qlge_main.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
index 2028458bea6f..e4c9f5d3bfdd 100644
--- a/drivers/staging/qlge/qlge_main.c
+++ b/drivers/staging/qlge/qlge_main.c
@@ -2079,9 +2079,9 @@ static void ql_process_chip_ae_intr(struct ql_adapter *qdev,
 		break;
 
 	case PCI_ERR_ANON_BUF_RD:
-		netdev_err(qdev->ndev, "PCI error occurred when reading "
-					"anonymous buffers from rx_ring %d.\n",
-					ib_ae_rsp->q_id);
+		netdev_err(qdev->ndev,
+			   "PCI error occurred when reading anonymous buffers from rx_ring %d.\n",
+			   ib_ae_rsp->q_id);
 		ql_queue_asic_error(qdev);
 		break;
 
@@ -2415,8 +2415,7 @@ static irqreturn_t qlge_isr(int irq, void *dev_id)
 		ql_queue_asic_error(qdev);
 		netdev_err(qdev->ndev, "Got fatal error, STS = %x.\n", var);
 		var = ql_read32(qdev, ERR_STS);
-		netdev_err(qdev->ndev, "Resetting chip. "
-					"Error Status Register = 0x%x\n", var);
+		netdev_err(qdev->ndev, "Resetting chip. Error Status Register = 0x%x\n", var);
 		return IRQ_HANDLED;
 	}
 
@@ -3739,8 +3738,7 @@ static void ql_display_dev_info(struct net_device *ndev)
 	struct ql_adapter *qdev = netdev_priv(ndev);
 
 	netif_info(qdev, probe, qdev->ndev,
-		   "Function #%d, Port %d, NIC Roll %d, NIC Rev = %d, "
-		   "XG Roll = %d, XG Rev = %d.\n",
+		   "Function #%d, Port %d, NIC Roll %d, NIC Rev = %d, XG Roll = %d, XG Rev = %d.\n",
 		   qdev->func,
 		   qdev->port,
 		   qdev->chip_rev_id & 0x0000000f,
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

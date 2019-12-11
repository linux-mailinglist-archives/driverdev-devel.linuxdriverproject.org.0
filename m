Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9860411BB47
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Dec 2019 19:15:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4884C87EF8;
	Wed, 11 Dec 2019 18:15:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qEX7J8hWTRI3; Wed, 11 Dec 2019 18:15:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5D1DF87F39;
	Wed, 11 Dec 2019 18:15:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B14E91BF473
 for <devel@linuxdriverproject.org>; Wed, 11 Dec 2019 18:15:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8F18A8860D
 for <devel@linuxdriverproject.org>; Wed, 11 Dec 2019 18:15:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q+57U51AMpLf for <devel@linuxdriverproject.org>;
 Wed, 11 Dec 2019 18:15:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-yb1-f194.google.com (mail-yb1-f194.google.com
 [209.85.219.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CA23C885A3
 for <devel@driverdev.osuosl.org>; Wed, 11 Dec 2019 18:15:15 +0000 (UTC)
Received: by mail-yb1-f194.google.com with SMTP id v15so9365413ybp.13
 for <devel@driverdev.osuosl.org>; Wed, 11 Dec 2019 10:15:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3ggr+AKX5engezExfhdC8ySYECM4dPUTKeu6ngH19AQ=;
 b=SYSEnQSHkXFv2CrX2qUTpmmHJzxW/Dx4QYpxBbxNTRF0K3PxkVr/4r1nMWIpUv1plZ
 fQbKZMY8i37JD2A+SgjyHodZg/twL/N9nQNrrUxV8JnrHa3eEfQREgXKCqu1CxkpDErY
 tI2AkDEmYJNJKnz7xRUMHfAk+VIWCPDB7VsLjJe8SdOBdPKuk3N0gzH1SbVNFvNPxp5c
 AsaIx6wsCOPXlzrUq4wWCbCzGZwh9/YtWy6K2+9PLb7XKbqJcsc9wHTR4MYvbFZ5X2Pz
 sm8vnWvaFyzuqKdmCHnKs2MiiTb1vPUSb4BgUDybs2spDIN1RB/8YfTN5fKfpJbHP5xC
 sjiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3ggr+AKX5engezExfhdC8ySYECM4dPUTKeu6ngH19AQ=;
 b=cNVylXtXmbBfoqM1LMcchBZA7kDKK/hyFvl5DUZbfW0DMfFfCankIyMwxTrELuD2lh
 w6F+mJYMJ9R5/0aTUT7QoP51DEf94MP12g2Zli/iSAGGB15HmELXEv8cFVxO9D3IKFNY
 JJVmE0runDriX7xW6qnkIPhgx/vPogg0fWBmFqdfV9RWD7+ZZ7V/jXEM4Q5LOPJMnlxY
 6zxLo5iKhv9stKYnObNVMvDo9TDuA9wd4xtnRXsqj1QT/LY3RLKggkzLgD4bJXHiCBvy
 Bs8zwwdFaCih1B2JNnt5zljutK4I6IMojn+ocw+zqdIMLZ6PCka/qG42DCIna0lzt7tH
 18vA==
X-Gm-Message-State: APjAAAW0SS22s/jeSnYqp2Do0vHU+bkmG8z0CdfS4kMHMS7lBO2xgNxN
 2FBcwOpA6poYnHypoZigKjQ=
X-Google-Smtp-Source: APXvYqw/v53mnh/ks839I6SYLP366QTd8fXU7JQmPj1HGsXw45yrN1RegI6j8aV7uG/iGeKakaiJrA==
X-Received: by 2002:a25:db47:: with SMTP id g68mr1024543ybf.224.1576088114636; 
 Wed, 11 Dec 2019 10:15:14 -0800 (PST)
Received: from karen ([2604:2d80:d68a:cf00:a4bc:8e08:1748:387f])
 by smtp.gmail.com with ESMTPSA id d9sm1372449ywh.55.2019.12.11.10.15.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 10:15:14 -0800 (PST)
From: Scott Schafer <schaferjscott@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 07/23] staging: qlge: Fix WARNING: quoted string split
 across lines
Date: Wed, 11 Dec 2019 12:12:36 -0600
Message-Id: <0e1f9c5182a909bfe534f7f2d6f93c3e65862d48.1576086080.git.schaferjscott@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1576086080.git.schaferjscott@gmail.com>
References: <cover.1576086080.git.schaferjscott@gmail.com>
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
Cc: devel@driverdev.osuosl.org, GR-Linux-NIC-Dev@marvell.com,
 Manish Chopra <manishc@marvell.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Scott Schafer <schaferjscott@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix WARNING: quoted string split across lines in the following files:

qlge_dbg.c
qlge_main.c

Signed-off-by: Scott Schafer <schaferjscott@gmail.com>
---
 drivers/staging/qlge/qlge_dbg.c  | 19 +++++++++----------
 drivers/staging/qlge/qlge_main.c | 13 ++++++-------
 2 files changed, 15 insertions(+), 17 deletions(-)

diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
index 6b740a712943..1d4de39a2a70 100644
--- a/drivers/staging/qlge/qlge_dbg.c
+++ b/drivers/staging/qlge/qlge_dbg.c
@@ -1331,16 +1331,15 @@ void ql_mpi_core_to_log(struct work_struct *work)
 		     "Core is dumping to log file!\n");
 
 	for (i = 0; i < count; i += 8) {
-		pr_err("%.08x: %.08x %.08x %.08x %.08x %.08x "
-			"%.08x %.08x %.08x\n", i,
-			tmp[i + 0],
-			tmp[i + 1],
-			tmp[i + 2],
-			tmp[i + 3],
-			tmp[i + 4],
-			tmp[i + 5],
-			tmp[i + 6],
-			tmp[i + 7]);
+		pr_err("%.08x: %.08x %.08x %.08x %.08x %.08x %.08x %.08x %.08x\n", i,
+		       tmp[i + 0],
+		       tmp[i + 1],
+		       tmp[i + 2],
+		       tmp[i + 3],
+		       tmp[i + 4],
+		       tmp[i + 5],
+		       tmp[i + 6],
+		       tmp[i + 7]);
 		msleep(5);
 	}
 }
diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
index f5cc235e9854..a103d491bbb1 100644
--- a/drivers/staging/qlge/qlge_main.c
+++ b/drivers/staging/qlge/qlge_main.c
@@ -2095,9 +2095,9 @@ static void ql_process_chip_ae_intr(struct ql_adapter *qdev,
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
 
@@ -2428,8 +2428,8 @@ static irqreturn_t qlge_isr(int irq, void *dev_id)
 		ql_queue_asic_error(qdev);
 		netdev_err(qdev->ndev, "Got fatal error, STS = %x.\n", var);
 		var = ql_read32(qdev, ERR_STS);
-		netdev_err(qdev->ndev, "Resetting chip. "
-					"Error Status Register = 0x%x\n", var);
+		netdev_err(qdev->ndev, "Resetting chip. Error Status Register = 0x%x\n",
+			   var);
 		return IRQ_HANDLED;
 	}
 
@@ -3749,8 +3749,7 @@ static void ql_display_dev_info(struct net_device *ndev)
 	struct ql_adapter *qdev = netdev_priv(ndev);
 
 	netif_info(qdev, probe, qdev->ndev,
-		   "Function #%d, Port %d, NIC Roll %d, NIC Rev = %d, "
-		   "XG Roll = %d, XG Rev = %d.\n",
+		   "Function #%d, Port %d, NIC Roll %d, NIC Rev = %d, XG Roll = %d, XG Rev = %d.\n",
 		   qdev->func,
 		   qdev->port,
 		   qdev->chip_rev_id & 0x0000000f,
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

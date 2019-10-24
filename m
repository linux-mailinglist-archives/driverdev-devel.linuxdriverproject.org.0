Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E4365E3E34
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Oct 2019 23:31:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 90C552155F;
	Thu, 24 Oct 2019 21:31:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id teRE830CDVI9; Thu, 24 Oct 2019 21:31:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 842BA20381;
	Thu, 24 Oct 2019 21:31:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 721B91BF39D
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 21:31:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6E0C58777F
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 21:31:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LS2giuuzoCno for <devel@linuxdriverproject.org>;
 Thu, 24 Oct 2019 21:31:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
 [209.85.208.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 683B487476
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 21:31:35 +0000 (UTC)
Received: by mail-lj1-f196.google.com with SMTP id n14so235152ljj.10
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 14:31:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=p39xTv4sKo80Xm3DLceSvp617U2UIbahdj33O5TXl5I=;
 b=iA3S+3Xtp65LsLubFrkEuvCT6eaxOKOQgpIwDp2Fx6qnB32bsh5uP4jFQXJf3lv9rt
 tVK8hK9J4fiPiBnEojSwTKJyf3ycYIj/OSUIix8efVHvsKjAqu/mxnaZ+5j14xX88CZ7
 bhTUa3eco9M70KhiaUK6t9pFquOtBSsS/M5H+yElgQ7AKJ+Vv2ja4xM/lzV73A1/ceDM
 bGnihJzxaDTHnKpri0nqbsoeIkxDcSxC2QlfZCJIIdewyeCGgZbhLTZMgFNj+SsX4IGn
 ni7K4rbW/y9GdOeR5099E6VJj7Hd7BESRY0OpFtR1W5yC5G05IEZhn/vMItqavFxzqZG
 Tziw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=p39xTv4sKo80Xm3DLceSvp617U2UIbahdj33O5TXl5I=;
 b=P3AZX5oEtiRMYSUF0JETEWUPQFy0gKBi5JIC5/EVtFLCK2n0ekWTLnsVqyXAeqgOsT
 b29iZxanGP0eREOgLtceRWHS0SkYnO8lALhpMSS2/xBBoInJVZVIEKdQ4Ro3FyuH6Dgs
 47A6H+ek1VhelOZJhypCbUkyRmOes3zyC418uEYWdIyRiGjhl48gVCW0RtmVIagbgKEH
 orX1GnptkqsRT2G9ZNqXb+oYLBkigx5JGRxmuue3ng6Aal39FqSlHX18/C15Z/gTyC0W
 7zz4S2ADNUSN1tT2T2WIIpMUGG0dC54Z5AdXKFzb8CNHrA2sAbtIP9LpmEjNeZvqDL+3
 Pbcg==
X-Gm-Message-State: APjAAAUuemVOceDZ4xY+A7ieEbwO+4dh1fxDzfHiRzAsSa/s3Bt7EgfE
 MU8MJaU1F6r4M371jl8p5kg=
X-Google-Smtp-Source: APXvYqxYgcU3NnCkgfM+uvyW+kgAv24qmOqR8Xo77ROFiV7qnSHrzqFgY3kEgvvlnpIdUBr5Vr10/A==
X-Received: by 2002:a2e:8856:: with SMTP id z22mr7964407ljj.78.1571952693460; 
 Thu, 24 Oct 2019 14:31:33 -0700 (PDT)
Received: from localhost.localdomain ([93.152.168.243])
 by smtp.gmail.com with ESMTPSA id t8sm20228336ljd.18.2019.10.24.14.31.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 14:31:32 -0700 (PDT)
From: Samuil Ivanov <samuil.ivanovbg@gmail.com>
To: gregkh@linuxfoundation.org, manishc@marvell.com,
 GR-Linux-NIC-Dev@marvell.com
Subject: [PATCH 1/3] Staging: qlge: Rename prefix of a function to qlge
Date: Fri, 25 Oct 2019 00:29:39 +0300
Message-Id: <20191024212941.28149-2-samuil.ivanovbg@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191024212941.28149-1-samuil.ivanovbg@gmail.com>
References: <20191024212941.28149-1-samuil.ivanovbg@gmail.com>
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
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This is from the TODO list:
In terms of namespace, the driver uses either qlge_, ql_ (used by
other qlogic drivers, with clashes, ex: ql_sem_spinlock) or nothing (with
clashes, ex: struct ob_mac_iocb_req). Rename everything to use the "qlge_"
prefix

Function ql_soft_reset_mpi_risc renamed to
qlge_soft_reset_mpi_risc and it's clients updated.

Signed-off-by: Samuil Ivanov <samuil.ivanovbg@gmail.com>
---
 drivers/staging/qlge/qlge.h     | 2 +-
 drivers/staging/qlge/qlge_dbg.c | 2 +-
 drivers/staging/qlge/qlge_mpi.c | 5 +++--
 3 files changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/qlge/qlge.h b/drivers/staging/qlge/qlge.h
index 6ec7e3ce3863..e9f1363c5bf2 100644
--- a/drivers/staging/qlge/qlge.h
+++ b/drivers/staging/qlge/qlge.h
@@ -2262,7 +2262,7 @@ int ql_write_mpi_reg(struct ql_adapter *qdev, u32 reg, u32 data);
 int ql_unpause_mpi_risc(struct ql_adapter *qdev);
 int ql_pause_mpi_risc(struct ql_adapter *qdev);
 int ql_hard_reset_mpi_risc(struct ql_adapter *qdev);
-int ql_soft_reset_mpi_risc(struct ql_adapter *qdev);
+int qlge_soft_reset_mpi_risc(struct ql_adapter *qdev);
 int ql_dump_risc_ram_area(struct ql_adapter *qdev, void *buf, u32 ram_addr,
 			  int word_count);
 int ql_core_dump(struct ql_adapter *qdev, struct ql_mpi_coredump *mpi_coredump);
diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
index 019b7e6a1b7a..df5344e113ca 100644
--- a/drivers/staging/qlge/qlge_dbg.c
+++ b/drivers/staging/qlge/qlge_dbg.c
@@ -1312,7 +1312,7 @@ void ql_get_dump(struct ql_adapter *qdev, void *buff)
 
 	if (!test_bit(QL_FRC_COREDUMP, &qdev->flags)) {
 		if (!ql_core_dump(qdev, buff))
-			ql_soft_reset_mpi_risc(qdev);
+			qlge_soft_reset_mpi_risc(qdev);
 		else
 			netif_err(qdev, drv, qdev->ndev, "coredump failed!\n");
 	} else {
diff --git a/drivers/staging/qlge/qlge_mpi.c b/drivers/staging/qlge/qlge_mpi.c
index 9e422bbbb6ab..efe893935929 100644
--- a/drivers/staging/qlge/qlge_mpi.c
+++ b/drivers/staging/qlge/qlge_mpi.c
@@ -88,9 +88,10 @@ int ql_write_mpi_reg(struct ql_adapter *qdev, u32 reg, u32 data)
 	return status;
 }
 
-int ql_soft_reset_mpi_risc(struct ql_adapter *qdev)
+int qlge_soft_reset_mpi_risc(struct ql_adapter *qdev)
 {
 	int status;
+
 	status = ql_write_mpi_reg(qdev, 0x00001010, 1);
 	return status;
 }
@@ -1280,5 +1281,5 @@ void ql_mpi_reset_work(struct work_struct *work)
 		queue_delayed_work(qdev->workqueue,
 			&qdev->mpi_core_to_log, 5 * HZ);
 	}
-	ql_soft_reset_mpi_risc(qdev);
+	qlge_soft_reset_mpi_risc(qdev);
 }
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

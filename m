Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCA4111BB60
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Dec 2019 19:16:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 461B28861A;
	Wed, 11 Dec 2019 18:16:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 90xN3U8r9-Dh; Wed, 11 Dec 2019 18:16:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7C28888619;
	Wed, 11 Dec 2019 18:16:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1989B1BF473
 for <devel@linuxdriverproject.org>; Wed, 11 Dec 2019 18:15:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0EB0C88619
 for <devel@linuxdriverproject.org>; Wed, 11 Dec 2019 18:15:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7CsnNjv4xETV for <devel@linuxdriverproject.org>;
 Wed, 11 Dec 2019 18:15:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-yw1-f66.google.com (mail-yw1-f66.google.com
 [209.85.161.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6D0028860D
 for <devel@driverdev.osuosl.org>; Wed, 11 Dec 2019 18:15:39 +0000 (UTC)
Received: by mail-yw1-f66.google.com with SMTP id 10so9308124ywv.5
 for <devel@driverdev.osuosl.org>; Wed, 11 Dec 2019 10:15:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+x/b256hi/BiDL31JHY2PQmq0IAPIM+EJHKCtlj8/GQ=;
 b=fX6sP+zsfo7QiNbgczb4g4RwNHoCbsE1Qdyiv+e78chsM5SpDb4VEhKpowEc//NJoF
 FjK35PxJAduy/TX/48sMOL3RShtFhvUhNwsxT+kqQaC0P0K8epI0Z9BONFqdXhvqaS+Z
 JdChIJ1NIBh4GYo0JeyRRonR7dGvME5szcK+5dxOzjyME0JL+5hqPSLt0c3rVPZ/CA/k
 TPT3c9y4uC/H5pA25FeD5hZNcBfMikGd+GN2ODylL4gQzHbNIveYNbU3TCBOyxk7Oodl
 3ncupRw6DqkxFFMCl21ApGz5DExaUQ+K3+3oorm/IcwlBs/ngNQvTk+jo09qZUQCAVn2
 CgQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+x/b256hi/BiDL31JHY2PQmq0IAPIM+EJHKCtlj8/GQ=;
 b=qFIHI3p6ZKZkzy9kWX/o0BLf/sv392xJa6H1601ao67eTzKzy6iJxnxt9vvYYvuF8J
 CVlONN0BeFph8mZuYXvSs006qtVFmMtDut62pLhkGRxePZXqYxOzZejPl6flMrfwyUpH
 sU3K5MVU1bwQNwPHMa9jGHH488BrB0of9vnvSK0wC4StUWIavigcSyQgiY3w9jaHqT6O
 94Xcxhb5AqPB7Q3qdFEwFB2GQwAQlFflbA91A4cxrDkAFkPq/+cYT6mc5wcNa386yU6e
 dA+WtA3XcsbBWerWhJM2cPET7ueZK/+BlSN4Bv/IL9seKtfkfzu+ZNEXJzpCAb+LlDf3
 /Jsw==
X-Gm-Message-State: APjAAAXqXmiMZZtYSCTW58/TjPtG0P7vyG9tAsS6Yde1UXP7M72mUsXc
 Cbc4PuHg4P46pYb7dQRcsFo=
X-Google-Smtp-Source: APXvYqy+8SSiMyc2gSAf5nlC+pArO37lD4CnuaJdfKdo8miRp32JKEQHg5OHDfOWK1+LzEnk0ZTCWg==
X-Received: by 2002:a81:ad1a:: with SMTP id l26mr852793ywh.481.1576088138380; 
 Wed, 11 Dec 2019 10:15:38 -0800 (PST)
Received: from karen ([2604:2d80:d68a:cf00:a4bc:8e08:1748:387f])
 by smtp.gmail.com with ESMTPSA id i84sm1341120ywc.43.2019.12.11.10.15.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 10:15:37 -0800 (PST)
From: Scott Schafer <schaferjscott@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 22/23] staging: qlge: Fix CHECK: Unbalanced braces around
 else statement
Date: Wed, 11 Dec 2019 12:12:51 -0600
Message-Id: <943bad431329fc77f515158444c6d06fbeeb66fe.1576086080.git.schaferjscott@gmail.com>
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

Fix CHECK: Unbalanced braces around else statement in file qlge_mpi.c

Signed-off-by: Scott Schafer <schaferjscott@gmail.com>
---
 drivers/staging/qlge/qlge_mpi.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/qlge/qlge_mpi.c b/drivers/staging/qlge/qlge_mpi.c
index ba8ce3506a59..c9d45c8feabe 100644
--- a/drivers/staging/qlge/qlge_mpi.c
+++ b/drivers/staging/qlge/qlge_mpi.c
@@ -244,12 +244,12 @@ static int ql_idc_cmplt_aen(struct ql_adapter *qdev)
 		netif_err(qdev, drv, qdev->ndev,
 			  "Could not read MPI, resetting RISC!\n");
 		ql_queue_fw_error(qdev);
-	} else
+	} else {
 		/* Wake up the sleeping mpi_idc_work thread that is
 		 * waiting for this event.
 		 */
 		complete(&qdev->ide_completion);
-
+	}
 	return status;
 }
 
@@ -353,8 +353,7 @@ static int ql_aen_lost(struct ql_adapter *qdev, struct mbox_params *mbcp)
 	status = ql_get_mb_sts(qdev, mbcp);
 	if (status) {
 		netif_err(qdev, drv, qdev->ndev, "Lost AEN broken!\n");
-	}
-	else {
+	} else {
 		int i;
 
 		netif_err(qdev, drv, qdev->ndev, "Lost AEN detected.\n");
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

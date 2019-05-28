Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 763DB2C0A5
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 May 2019 09:54:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0ABDC2E4C6;
	Tue, 28 May 2019 07:54:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o8-dX31AiWmm; Tue, 28 May 2019 07:54:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BFAC82E298;
	Tue, 28 May 2019 07:54:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 618381BF387
 for <devel@linuxdriverproject.org>; Tue, 28 May 2019 07:54:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5C26486A4D
 for <devel@linuxdriverproject.org>; Tue, 28 May 2019 07:54:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XJIthhywz4LZ for <devel@linuxdriverproject.org>;
 Tue, 28 May 2019 07:54:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 14F4C86AE3
 for <devel@driverdev.osuosl.org>; Tue, 28 May 2019 07:54:04 +0000 (UTC)
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 1F21FD6DC32BF474A829;
 Tue, 28 May 2019 15:54:01 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS407-HUB.china.huawei.com (10.3.19.207) with Microsoft SMTP Server id
 14.3.439.0; Tue, 28 May 2019 15:53:51 +0800
From: Mao Wenan <maowenan@huawei.com>
To: <gregkh@linuxfoundation.org>, <jeremy@azazel.net>
Subject: [PATCH -next v3 1/2] staging: kpc2000: report error status to spi core
Date: Tue, 28 May 2019 16:02:13 +0800
Message-ID: <20190528080214.18382-2-maowenan@huawei.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190528080214.18382-1-maowenan@huawei.com>
References: <20190525081321.121294-1-maowenan@huawei.com>
 <20190528080214.18382-1-maowenan@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
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
Cc: devel@driverdev.osuosl.org, thesven73@gmail.com,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 Mao Wenan <maowenan@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

There is an error condition that's not reported to
the spi core in kp_spi_transfer_one_message().
It should restore status value to m->status, and
return it in error path.

Signed-off-by: Mao Wenan <maowenan@huawei.com>
---
 drivers/staging/kpc2000/kpc2000_spi.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000_spi.c b/drivers/staging/kpc2000/kpc2000_spi.c
index 075ae4fafa7d..628a447642ad 100644
--- a/drivers/staging/kpc2000/kpc2000_spi.c
+++ b/drivers/staging/kpc2000/kpc2000_spi.c
@@ -374,7 +374,7 @@ kp_spi_transfer_one_message(struct spi_master *master, struct spi_message *m)
     list_for_each_entry(transfer, &m->transfers, transfer_list) {
         if (transfer->tx_buf == NULL && transfer->rx_buf == NULL && transfer->len) {
             status = -EINVAL;
-            break;
+            goto error;
         }
         
         /* transfer */
@@ -412,7 +412,7 @@ kp_spi_transfer_one_message(struct spi_master *master, struct spi_message *m)
             
             if (count != transfer->len) {
                 status = -EIO;
-                break;
+                goto error;
             }
         }
         
@@ -430,6 +430,10 @@ kp_spi_transfer_one_message(struct spi_master *master, struct spi_message *m)
     /* done work */
     spi_finalize_current_message(master);
     return 0;
+
+ error:
+    m->status = status;
+    return status;
 }
 
 static void
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

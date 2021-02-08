Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 02165312916
	for <lists+driverdev-devel@lfdr.de>; Mon,  8 Feb 2021 03:55:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D1B458681C;
	Mon,  8 Feb 2021 02:55:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p5XVmOBX5bOP; Mon,  8 Feb 2021 02:55:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 50EE98681A;
	Mon,  8 Feb 2021 02:55:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2B39B1BF350
 for <devel@linuxdriverproject.org>; Mon,  8 Feb 2021 02:55:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 27AF385683
 for <devel@linuxdriverproject.org>; Mon,  8 Feb 2021 02:55:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AIZzujiY51Fk for <devel@linuxdriverproject.org>;
 Mon,  8 Feb 2021 02:55:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com
 [209.85.210.178])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 75F8285424
 for <devel@driverdev.osuosl.org>; Mon,  8 Feb 2021 02:55:35 +0000 (UTC)
Received: by mail-pf1-f178.google.com with SMTP id x136so2214391pfc.2
 for <devel@driverdev.osuosl.org>; Sun, 07 Feb 2021 18:55:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=cRQhiF2GEiPjRDo8n2Y99tRPesoEHMgxfbNm4llEXVw=;
 b=YvzighEBZPgRI0+B7YbURV5Uei8SR77KtaA/mEz3JnyIBexL5pWA/HLsYS8WPNrn+1
 CSipSRXJueQVKSi1n0XJOZ4PoT7vRsE2/RsWCJ3EyEjvL9G/437TCXNc1VKwnvpfTylp
 ETH7oezyngV3YIS2XZS340OmzVvSLAZN+lXU/sQSY4jEDzr/xHst7yebuT569oxO5gPP
 LiRDroRXK2sgmKQM1xKeK6xhpvmUahg3aX4UZyYl2Rvr6a5MZfu5afnmHfVvhdkwAtpE
 ASiepLulkJpcz74/ivCaR74dkalFhpMCBJtKSROvrCU6JHh8zBCZZ4Rmxzj1yN0n6YLD
 nDTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=cRQhiF2GEiPjRDo8n2Y99tRPesoEHMgxfbNm4llEXVw=;
 b=g9OYvzS4+YQNPBTgVrzP1ukFaEO++cIh32qrWQ76HZc25/irxKavW96JJFqaOFmJOG
 Yt3UXwDEtAcc4T2vVLdnaRY6i2GlHZNrGLOEKJOvb62usA/Xqje2r3cwd8Lqf+IsWGvQ
 2/MRP1oMaPj5yU36vtzkZS3wlTSruMV+NSBbUOQ12pIDGcqofFNgYFm6w6YUB2I6AK6/
 UJFxKLEwhOlEjabMKFimulFFkJWDgmBOj9VvH+HLzQE+X1SSoLHvhEFIy0lzbv5GCtCs
 plLNmCse4IhxNaVzjr/A7ccGiZVg6NL/m4GffjotKQnu0mCGrve6m4b49UFM+exN2XVb
 jxnQ==
X-Gm-Message-State: AOAM530lbQRwfxpoDv181TJU3Lo00TNAGtSA+1Fd8FRCr11QhmgVTFis
 MkrqGWirzr5KoI7F7Fjc2UE=
X-Google-Smtp-Source: ABdhPJxlyrOhirfCn4YYSv0rzIFzBuoTySDyB8uyOX7zJBXiw4W9hm42DYdBV+Uwg7TuLHRfa4iDAA==
X-Received: by 2002:a63:70f:: with SMTP id 15mr14818934pgh.250.1612752934934; 
 Sun, 07 Feb 2021 18:55:34 -0800 (PST)
Received: from mahak-Inspiron-7570 ([103.153.208.42])
 by smtp.gmail.com with ESMTPSA id w13sm16759704pfc.7.2021.02.07.18.55.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 07 Feb 2021 18:55:34 -0800 (PST)
From: Mahak Gupta <gmahak1@gmail.com>
To: linux-kernel@vger.kernel.org, devel@driverdev.osuosl.org,
 gregkh@linuxfoundation.org, rcy@google.com, benchan@chromium.org,
 toddpoynor@google.com, rspringer@google.com
Subject: [PATCH] staging: gasket: fix indentation and lines ending with open
 parenthesis
Date: Mon,  8 Feb 2021 08:25:08 +0530
Message-Id: <20210208025508.25714-1-gmahak1@gmail.com>
X-Mailer: git-send-email 2.17.1
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
Cc: Mahak Gupta <gmahak1@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fixes warnings of 'checkpatch.pl'. According to
Linux coding guidelines, code should be aligned properly to
match with open parenthesis and lines should not end with
open parenthesis.

Signed-off-by: Mahak Gupta <gmahak1@gmail.com>
---
Changes since v1:
 - Use temporary variables to shorten long lines. This variable was used multiple times.
---
 drivers/staging/gasket/gasket_ioctl.c | 42 ++++++++++++++-------------
 1 file changed, 22 insertions(+), 20 deletions(-)

diff --git a/drivers/staging/gasket/gasket_ioctl.c b/drivers/staging/gasket/gasket_ioctl.c
index e3047d36d8db..aa65f4fbf860 100644
--- a/drivers/staging/gasket/gasket_ioctl.c
+++ b/drivers/staging/gasket/gasket_ioctl.c
@@ -40,10 +40,11 @@ static int gasket_set_event_fd(struct gasket_dev *gasket_dev,
 
 /* Read the size of the page table. */
 static int gasket_read_page_table_size(struct gasket_dev *gasket_dev,
-	struct gasket_page_table_ioctl __user *argp)
+				       struct gasket_page_table_ioctl __user *argp)
 {
 	int ret = 0;
 	struct gasket_page_table_ioctl ibuf;
+	struct gasket_page_table *table;
 
 	if (copy_from_user(&ibuf, argp, sizeof(struct gasket_page_table_ioctl)))
 		return -EFAULT;
@@ -51,8 +52,8 @@ static int gasket_read_page_table_size(struct gasket_dev *gasket_dev,
 	if (ibuf.page_table_index >= gasket_dev->num_page_tables)
 		return -EFAULT;
 
-	ibuf.size = gasket_page_table_num_entries(
-		gasket_dev->page_table[ibuf.page_table_index]);
+	table = gasket_dev->page_table[ibuf.page_table_index];
+	ibuf.size = gasket_page_table_num_entries(table);
 
 	trace_gasket_ioctl_page_table_data(ibuf.page_table_index, ibuf.size,
 					   ibuf.host_address,
@@ -66,10 +67,11 @@ static int gasket_read_page_table_size(struct gasket_dev *gasket_dev,
 
 /* Read the size of the simple page table. */
 static int gasket_read_simple_page_table_size(struct gasket_dev *gasket_dev,
-	struct gasket_page_table_ioctl __user *argp)
+					      struct gasket_page_table_ioctl __user *argp)
 {
 	int ret = 0;
 	struct gasket_page_table_ioctl ibuf;
+	struct gasket_page_table *table;
 
 	if (copy_from_user(&ibuf, argp, sizeof(struct gasket_page_table_ioctl)))
 		return -EFAULT;
@@ -77,8 +79,8 @@ static int gasket_read_simple_page_table_size(struct gasket_dev *gasket_dev,
 	if (ibuf.page_table_index >= gasket_dev->num_page_tables)
 		return -EFAULT;
 
-	ibuf.size =
-		gasket_page_table_num_simple_entries(gasket_dev->page_table[ibuf.page_table_index]);
+	table = gasket_dev->page_table[ibuf.page_table_index];
+	ibuf.size = gasket_page_table_num_simple_entries(table);
 
 	trace_gasket_ioctl_page_table_data(ibuf.page_table_index, ibuf.size,
 					   ibuf.host_address,
@@ -92,11 +94,12 @@ static int gasket_read_simple_page_table_size(struct gasket_dev *gasket_dev,
 
 /* Set the boundary between the simple and extended page tables. */
 static int gasket_partition_page_table(struct gasket_dev *gasket_dev,
-	struct gasket_page_table_ioctl __user *argp)
+				       struct gasket_page_table_ioctl __user *argp)
 {
 	int ret;
 	struct gasket_page_table_ioctl ibuf;
 	uint max_page_table_size;
+	struct gasket_page_table *table;
 
 	if (copy_from_user(&ibuf, argp, sizeof(struct gasket_page_table_ioctl)))
 		return -EFAULT;
@@ -107,8 +110,8 @@ static int gasket_partition_page_table(struct gasket_dev *gasket_dev,
 
 	if (ibuf.page_table_index >= gasket_dev->num_page_tables)
 		return -EFAULT;
-	max_page_table_size = gasket_page_table_max_size(
-		gasket_dev->page_table[ibuf.page_table_index]);
+	table = gasket_dev->page_table[ibuf.page_table_index];
+	max_page_table_size = gasket_page_table_max_size(table);
 
 	if (ibuf.size > max_page_table_size) {
 		dev_dbg(gasket_dev->dev,
@@ -119,8 +122,7 @@ static int gasket_partition_page_table(struct gasket_dev *gasket_dev,
 
 	mutex_lock(&gasket_dev->mutex);
 
-	ret = gasket_page_table_partition(
-		gasket_dev->page_table[ibuf.page_table_index], ibuf.size);
+	ret = gasket_page_table_partition(table, ibuf.size);
 	mutex_unlock(&gasket_dev->mutex);
 
 	return ret;
@@ -131,6 +133,7 @@ static int gasket_map_buffers(struct gasket_dev *gasket_dev,
 			      struct gasket_page_table_ioctl __user *argp)
 {
 	struct gasket_page_table_ioctl ibuf;
+	struct gasket_page_table *table;
 
 	if (copy_from_user(&ibuf, argp, sizeof(struct gasket_page_table_ioctl)))
 		return -EFAULT;
@@ -142,13 +145,12 @@ static int gasket_map_buffers(struct gasket_dev *gasket_dev,
 	if (ibuf.page_table_index >= gasket_dev->num_page_tables)
 		return -EFAULT;
 
-	if (gasket_page_table_are_addrs_bad(gasket_dev->page_table[ibuf.page_table_index],
-					    ibuf.host_address,
+	table = gasket_dev->page_table[ibuf.page_table_index];
+	if (gasket_page_table_are_addrs_bad(table, ibuf.host_address,
 					    ibuf.device_address, ibuf.size))
 		return -EINVAL;
 
-	return gasket_page_table_map(gasket_dev->page_table[ibuf.page_table_index],
-				     ibuf.host_address, ibuf.device_address,
+	return gasket_page_table_map(table, ibuf.host_address, ibuf.device_address,
 				     ibuf.size / PAGE_SIZE);
 }
 
@@ -157,6 +159,7 @@ static int gasket_unmap_buffers(struct gasket_dev *gasket_dev,
 				struct gasket_page_table_ioctl __user *argp)
 {
 	struct gasket_page_table_ioctl ibuf;
+	struct gasket_page_table *table;
 
 	if (copy_from_user(&ibuf, argp, sizeof(struct gasket_page_table_ioctl)))
 		return -EFAULT;
@@ -168,12 +171,11 @@ static int gasket_unmap_buffers(struct gasket_dev *gasket_dev,
 	if (ibuf.page_table_index >= gasket_dev->num_page_tables)
 		return -EFAULT;
 
-	if (gasket_page_table_is_dev_addr_bad(gasket_dev->page_table[ibuf.page_table_index],
-					      ibuf.device_address, ibuf.size))
+	table = gasket_dev->page_table[ibuf.page_table_index];
+	if (gasket_page_table_is_dev_addr_bad(table, ibuf.device_address, ibuf.size))
 		return -EINVAL;
 
-	gasket_page_table_unmap(gasket_dev->page_table[ibuf.page_table_index],
-				ibuf.device_address, ibuf.size / PAGE_SIZE);
+	gasket_page_table_unmap(table, ibuf.device_address, ibuf.size / PAGE_SIZE);
 
 	return 0;
 }
@@ -183,7 +185,7 @@ static int gasket_unmap_buffers(struct gasket_dev *gasket_dev,
  * corresponding memory.
  */
 static int gasket_config_coherent_allocator(struct gasket_dev *gasket_dev,
-	struct gasket_coherent_alloc_config_ioctl __user *argp)
+					    struct gasket_coherent_alloc_config_ioctl __user *argp)
 {
 	int ret;
 	struct gasket_coherent_alloc_config_ioctl ibuf;
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

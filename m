Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6088931291F
	for <lists+driverdev-devel@lfdr.de>; Mon,  8 Feb 2021 03:59:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A77D1867FC;
	Mon,  8 Feb 2021 02:59:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6muOoT4VPyll; Mon,  8 Feb 2021 02:59:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3356C867F3;
	Mon,  8 Feb 2021 02:59:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7E61A1BF296
 for <devel@linuxdriverproject.org>; Mon,  8 Feb 2021 02:59:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 74BD886FAA
 for <devel@linuxdriverproject.org>; Mon,  8 Feb 2021 02:59:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 17AuQJCf-Hhg for <devel@linuxdriverproject.org>;
 Mon,  8 Feb 2021 02:59:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com
 [209.85.215.175])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7E1FD86F9F
 for <devel@driverdev.osuosl.org>; Mon,  8 Feb 2021 02:59:18 +0000 (UTC)
Received: by mail-pg1-f175.google.com with SMTP id j5so475551pgb.11
 for <devel@driverdev.osuosl.org>; Sun, 07 Feb 2021 18:59:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=cRQhiF2GEiPjRDo8n2Y99tRPesoEHMgxfbNm4llEXVw=;
 b=ZBxi0jfUIhrsQXwB+yZwsKCq0/6iEdKrbrqkHslqKUDwz4/m10VgN3iVG1Au07HaAp
 VTC7v3N6uU3kpYq0mUdNFOlLxGCua1nntBZ12IV5IV5HLzhHSKeHELfjBESZw5EU70k5
 nB1pOXIZ1wcFLYkI1Bvqc/1xq2xZ70Xlid4vXSAj4scoVuP39twAi+V0O3YVFjNXKYSL
 f/U/kOWNbRmLD6HYTBILIqXaEFGnJKX/NvsTWqM7LY1q++g9t98ktW8pOGhIk8qb4W5q
 LQ+myPID6th6Mf5wCW258ua8MV06aFFVEIxsw3r/0m1vtpa8RCVa0KTbMgCzdevv8g+i
 4aiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=cRQhiF2GEiPjRDo8n2Y99tRPesoEHMgxfbNm4llEXVw=;
 b=ks28MrQ2awThkBxHvjw9LDpRG542yofDre4MZ/sjtBsr+kLnO+xpP74oCG89P9JsiN
 h80Z6fnKnTBz/RMsJATGHEkZJ+Q4o1ETnI6AwzpQExUaFa7Jh9RuORbnCkTe/3/Pofno
 LVDH5Eu1AQ4mnCLkV2zeBRoolGtJC3eEPNmk8LYgfTQUuRyORonWM3s3C6MkyCHZzBKb
 E28zi3DwGIqs+pKEB1B4f2ruETZlN+jGbLYPfUO101lMgNDdQsRO6BCojz5P10/WMh2G
 wEYf3xzUcDFhwes6XZRx0LXsZ73ry5WJKq6vLFLeeMLfQl4XaXG7xPJ1Aa+0tWKs75mH
 j8gg==
X-Gm-Message-State: AOAM530TZpusqlan5BqVLZtBe5iNcWV/g/y5YmV+IzTT6lzGDpvE5QdT
 aEvsr42lDwivGgdCg3+GFb4=
X-Google-Smtp-Source: ABdhPJyrDYjBkjTNMd70wDRpdhsIwHFFGtWhjpLo2ind8f7JKNWyosISjnIKosY0HPto1BKdirpH2w==
X-Received: by 2002:a63:d446:: with SMTP id i6mr15123872pgj.446.1612753158006; 
 Sun, 07 Feb 2021 18:59:18 -0800 (PST)
Received: from mahak-Inspiron-7570 ([103.153.208.42])
 by smtp.gmail.com with ESMTPSA id v19sm13875984pjh.37.2021.02.07.18.59.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 07 Feb 2021 18:59:17 -0800 (PST)
From: Mahak Gupta <gmahak1@gmail.com>
To: linux-kernel@vger.kernel.org, devel@driverdev.osuosl.org,
 gregkh@linuxfoundation.org, rcy@google.com, benchan@chromium.org,
 toddpoynor@google.com, rspringer@google.com
Subject: [PATCH v2] staging: gasket: fix indentation and lines ending with
 open parenthesis
Date: Mon,  8 Feb 2021 08:29:04 +0530
Message-Id: <20210208025904.25928-1-gmahak1@gmail.com>
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

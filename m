Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D152B312496
	for <lists+driverdev-devel@lfdr.de>; Sun,  7 Feb 2021 15:10:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4346585B12;
	Sun,  7 Feb 2021 14:10:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AWsbvquq5bHX; Sun,  7 Feb 2021 14:10:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C5DE1841E9;
	Sun,  7 Feb 2021 14:10:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CDF781BF3F4
 for <devel@linuxdriverproject.org>; Sun,  7 Feb 2021 14:09:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C6DCE868F0
 for <devel@linuxdriverproject.org>; Sun,  7 Feb 2021 14:09:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kdxN4fB-uRd1 for <devel@linuxdriverproject.org>;
 Sun,  7 Feb 2021 14:09:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
 [209.85.221.50])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E47538672E
 for <devel@driverdev.osuosl.org>; Sun,  7 Feb 2021 14:09:46 +0000 (UTC)
Received: by mail-wr1-f50.google.com with SMTP id n6so1173936wrv.8
 for <devel@driverdev.osuosl.org>; Sun, 07 Feb 2021 06:09:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=OG1Z720HiLI9TnXhLnBUmjf5XIxwOfpZr3RRpPSXgXQ=;
 b=GfsaJtmnGDEpBhuLitsDTYUsTz64nplZRyNBtdJpb486s9lXKCtHilA3fpiApDplH3
 4CDoarxDiA934iORYhlKJWX1+PAAtdYLb98tzM+WJ/upRbmnKKWUR/hreMXjZNY4Cxa/
 pSLmUGvN10759ojMa98twMbNDyyyT75Hh4GQ94IuSO+JpmXyDCpqs7lbzNqTPO54C0AV
 7ZY/IdamEpZ7mPIKuwi3a1FLz/NKpy7Y9QsSRgf+9CfZONvXYBwThW4nrI4rbaD0LgVy
 a410LPmAp0V8TEc1F7YCnqFbxF8F2ryrdfmWgcMvMfhnyK0x++XWwDsPpKE+tkISIYXa
 GZPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=OG1Z720HiLI9TnXhLnBUmjf5XIxwOfpZr3RRpPSXgXQ=;
 b=Fj5Rzq0TaCDIf9pyU39fqyhAXIhJ5n7q0sqRGO1izJBtAPF9bcqMqGuWimCmZbPR5p
 Vx6Myl5oN5lXO+xjQDlMLYO3KyPjvTDmfpPqp0YNRv9HgZv64OZuoWS7QtAcYgHb/VRA
 4yvcIPkIaJQJWtlavydFKYR7zd6PnNBe7zSLdlg29H2qCkv4xrNOoJUwCV1IpkUWzGDL
 KjdLtrzIcPUYUef8+5ogNpnKCYh85MjqSYxBKIWDAz3A2RauwM/Qchx446H3UF4SDndB
 cwrNvEmff73eKt0n9lZZ5QhYgD0f7rf7rCyoM3j7QC5M8BcR6+UyO71srgdP5zgaxjfw
 Ru3A==
X-Gm-Message-State: AOAM533o703W5Wxj7zwigDEd9nAHWYF1Id+A4RD9fPNGgtehHtOrmwiY
 PGu+xkt5VYlSf1RY2mvwxP0=
X-Google-Smtp-Source: ABdhPJzoppnoztlFXc9Mnu2L51Ulp5+l73hpF4TySI7ZzlwTO/JM1danrGQ+bgtcI06kEfUN4YW+WQ==
X-Received: by 2002:adf:cd01:: with SMTP id w1mr15008526wrm.316.1612706985388; 
 Sun, 07 Feb 2021 06:09:45 -0800 (PST)
Received: from mahak-Inspiron-7570 ([103.153.208.42])
 by smtp.gmail.com with ESMTPSA id v5sm2049044wro.71.2021.02.07.06.09.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 07 Feb 2021 06:09:44 -0800 (PST)
From: Mahak Gupta <gmahak1@gmail.com>
To: linux-kernel@vger.kernel.org, devel@driverdev.osuosl.org,
 gregkh@linuxfoundation.org, rcy@google.com, benchan@chromium.org,
 toddpoynor@google.com, rspringer@google.com
Subject: [PATCH] staging: gasket: fix indentation and lines ending with open
 parenthesis
Date: Sun,  7 Feb 2021 19:39:28 +0530
Message-Id: <20210207140928.11029-1-gmahak1@gmail.com>
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
 drivers/staging/gasket/gasket_ioctl.c | 18 ++++++++----------
 1 file changed, 8 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/gasket/gasket_ioctl.c b/drivers/staging/gasket/gasket_ioctl.c
index e3047d36d8db..a966231bad42 100644
--- a/drivers/staging/gasket/gasket_ioctl.c
+++ b/drivers/staging/gasket/gasket_ioctl.c
@@ -40,7 +40,7 @@ static int gasket_set_event_fd(struct gasket_dev *gasket_dev,
 
 /* Read the size of the page table. */
 static int gasket_read_page_table_size(struct gasket_dev *gasket_dev,
-	struct gasket_page_table_ioctl __user *argp)
+				       struct gasket_page_table_ioctl __user *argp)
 {
 	int ret = 0;
 	struct gasket_page_table_ioctl ibuf;
@@ -51,8 +51,7 @@ static int gasket_read_page_table_size(struct gasket_dev *gasket_dev,
 	if (ibuf.page_table_index >= gasket_dev->num_page_tables)
 		return -EFAULT;
 
-	ibuf.size = gasket_page_table_num_entries(
-		gasket_dev->page_table[ibuf.page_table_index]);
+	ibuf.size = gasket_page_table_num_entries(gasket_dev->page_table[ibuf.page_table_index]);
 
 	trace_gasket_ioctl_page_table_data(ibuf.page_table_index, ibuf.size,
 					   ibuf.host_address,
@@ -66,7 +65,7 @@ static int gasket_read_page_table_size(struct gasket_dev *gasket_dev,
 
 /* Read the size of the simple page table. */
 static int gasket_read_simple_page_table_size(struct gasket_dev *gasket_dev,
-	struct gasket_page_table_ioctl __user *argp)
+					      struct gasket_page_table_ioctl __user *argp)
 {
 	int ret = 0;
 	struct gasket_page_table_ioctl ibuf;
@@ -92,7 +91,7 @@ static int gasket_read_simple_page_table_size(struct gasket_dev *gasket_dev,
 
 /* Set the boundary between the simple and extended page tables. */
 static int gasket_partition_page_table(struct gasket_dev *gasket_dev,
-	struct gasket_page_table_ioctl __user *argp)
+				       struct gasket_page_table_ioctl __user *argp)
 {
 	int ret;
 	struct gasket_page_table_ioctl ibuf;
@@ -107,8 +106,8 @@ static int gasket_partition_page_table(struct gasket_dev *gasket_dev,
 
 	if (ibuf.page_table_index >= gasket_dev->num_page_tables)
 		return -EFAULT;
-	max_page_table_size = gasket_page_table_max_size(
-		gasket_dev->page_table[ibuf.page_table_index]);
+	max_page_table_size = gasket_page_table_max_size
+		(gasket_dev->page_table[ibuf.page_table_index]);
 
 	if (ibuf.size > max_page_table_size) {
 		dev_dbg(gasket_dev->dev,
@@ -119,8 +118,7 @@ static int gasket_partition_page_table(struct gasket_dev *gasket_dev,
 
 	mutex_lock(&gasket_dev->mutex);
 
-	ret = gasket_page_table_partition(
-		gasket_dev->page_table[ibuf.page_table_index], ibuf.size);
+	ret = gasket_page_table_partition(gasket_dev->page_table[ibuf.page_table_index], ibuf.size);
 	mutex_unlock(&gasket_dev->mutex);
 
 	return ret;
@@ -183,7 +181,7 @@ static int gasket_unmap_buffers(struct gasket_dev *gasket_dev,
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

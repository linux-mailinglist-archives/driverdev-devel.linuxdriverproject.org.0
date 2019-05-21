Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 33D4A25119
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 May 2019 15:50:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BDAFA86AB6;
	Tue, 21 May 2019 13:50:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3Rwy4N8eXQ59; Tue, 21 May 2019 13:50:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 49ECC86A40;
	Tue, 21 May 2019 13:50:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5436E1BF2BE
 for <devel@linuxdriverproject.org>; Tue, 21 May 2019 13:50:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4DB4887A15
 for <devel@linuxdriverproject.org>; Tue, 21 May 2019 13:50:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CsnZLxnLSfxP for <devel@linuxdriverproject.org>;
 Tue, 21 May 2019 13:50:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 79FD885B3C
 for <devel@driverdev.osuosl.org>; Tue, 21 May 2019 13:50:17 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id j187so2987137wmj.1
 for <devel@driverdev.osuosl.org>; Tue, 21 May 2019 06:50:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=xWUTmh+WZTqntJFjf70zBsFQNnHLTqlLA8TC+YaA8qc=;
 b=mFHy2QYLg2zPmzuL5FmMSN0vPoR3imQocKrfkxKDqc5v5D7V8Bla1zt+CUb5sHGsJa
 gN9fm6RM9WH8oe74g7GimRRPvMWkn1qbf58Eaql/OZ/yT4G/fFN1QQhpStQEnWPuOTLK
 guZdYcaFMhL6oJKXt0foBdlmMfy92wxvs8lMueq4vb7Ynxd3V01VIYutayj8nu8lR1Wg
 9s9RZcdSACFXMM4wHEYNorGaV/miAueCUh5jcZ2Kj4oG5PxYx/K8+MDoU194OsdXxp6G
 OvNvRgeX++Z6qE+fE8v6SPbV31SyWFsJA3Awp+AvWhTSdrvfW9KSndGBub/lDFOYpy5Z
 6LVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=xWUTmh+WZTqntJFjf70zBsFQNnHLTqlLA8TC+YaA8qc=;
 b=TI1FUhC5WSvRePqmONBt/rjcyLgt+T7lmRoEcgMZJ+MxyFSfBx10v+5mjQrWMQuSZP
 qqyS3yB4qTsAH66I/7/drOM4X5jsu20sj2Rma2j6mRL09FAP7TdEUdvV1uU2a9Hms4e3
 PaYD0MKn43cJGvrc3Aau2o40uRyRoAfNMCjOVngBonEracTHHjcWnHX8SwJnNIjCh5fa
 wEJmdsXgF8u0XE2bHJlN1+dFK6fVFVvz/3rbZYhE2yMF6z1vITZZ2Y6fG0F0r5QgmmeD
 56KIvU+zihv84NCIvZRhlb+J39c4YEQPAtqUUchj6pUXALMbTmxjl7jRIaBRdtysbMy0
 deWQ==
X-Gm-Message-State: APjAAAWTh1cP/CuQeiu81hKHG8Cw3LyivgDP5MhkpSjG43HFRylA1WaV
 wxtdRXhbuADOKfkY/VxDJOo=
X-Google-Smtp-Source: APXvYqxABuxlU4i/2wB0qz/CCSgeFtpP9gq0iy0IkjJxeN98/j2ZamWNngHuZDzd8nwyX3TZivTwDg==
X-Received: by 2002:a7b:cb85:: with SMTP id m5mr3592959wmi.85.1558446616051;
 Tue, 21 May 2019 06:50:16 -0700 (PDT)
Received: from localhost.localdomain (ip83.173.mip.uni-hannover.de.
 [130.75.173.83])
 by smtp.gmail.com with ESMTPSA id n63sm3541471wmn.38.2019.05.21.06.50.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 21 May 2019 06:50:15 -0700 (PDT)
From: Tianzheng Li <ltz0302@gmail.com>
To: rspringer@google.com
Subject: [PATCH] staging/gasket: Fix string split
Date: Tue, 21 May 2019 15:50:12 +0200
Message-Id: <20190521135012.24887-1-ltz0302@gmail.com>
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
Cc: devel@driverdev.osuosl.org, zhangjie.cnde@gmail.com,
 linux-kernel@i4.cs.fau.de, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, toddpoynor@google.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch removes unnecessary quoted string splits.
Signed-off-by: Tianzheng Li <ltz0302@gmail.com>
Signed-off-by: Jie Zhang <zhangjie.cnde@gmail.com>
---
 drivers/staging/gasket/gasket_core.c       |  6 ++----
 drivers/staging/gasket/gasket_ioctl.c      |  3 +--
 drivers/staging/gasket/gasket_page_table.c | 14 ++++++--------
 3 files changed, 9 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/gasket/gasket_core.c b/drivers/staging/gasket/gasket_core.c
index a445d58fb399..13179f063a61 100644
--- a/drivers/staging/gasket/gasket_core.c
+++ b/drivers/staging/gasket/gasket_core.c
@@ -702,8 +702,7 @@ static bool gasket_mmap_has_permissions(struct gasket_dev *gasket_dev,
 	if ((vma->vm_flags & VM_WRITE) &&
 	    !gasket_owned_by_current_tgid(&gasket_dev->dev_info)) {
 		dev_dbg(gasket_dev->dev,
-			"Attempting to mmap a region for write without owning "
-			"device.\n");
+			"Attempting to mmap a region for write without owning device.\n");
 		return false;
 	}
 
@@ -1054,8 +1053,7 @@ static int gasket_mmap(struct file *filp, struct vm_area_struct *vma)
 	}
 	if (bar_index > 0 && is_coherent_region) {
 		dev_err(gasket_dev->dev,
-			"double matching bar and coherent buffers for address "
-			"0x%lx\n",
+			"double matching bar and coherent buffers for address 0x%lx\n",
 			raw_offset);
 		trace_gasket_mmap_exit(bar_index);
 		return -EINVAL;
diff --git a/drivers/staging/gasket/gasket_ioctl.c b/drivers/staging/gasket/gasket_ioctl.c
index 0ca48e688818..7ecfba4f2b06 100644
--- a/drivers/staging/gasket/gasket_ioctl.c
+++ b/drivers/staging/gasket/gasket_ioctl.c
@@ -353,8 +353,7 @@ long gasket_handle_ioctl(struct file *filp, uint cmd, void __user *argp)
 		 */
 		trace_gasket_ioctl_integer_data(arg);
 		dev_dbg(gasket_dev->dev,
-			"Unknown ioctl cmd=0x%x not caught by "
-			"gasket_is_supported_ioctl\n",
+			"Unknown ioctl cmd=0x%x not caught by gasket_is_supported_ioctl\n",
 			cmd);
 		retval = -EINVAL;
 		break;
diff --git a/drivers/staging/gasket/gasket_page_table.c b/drivers/staging/gasket/gasket_page_table.c
index d35c4fb19e28..f6d715787da8 100644
--- a/drivers/staging/gasket/gasket_page_table.c
+++ b/drivers/staging/gasket/gasket_page_table.c
@@ -237,8 +237,8 @@ int gasket_page_table_init(struct gasket_page_table **ppg_tbl,
 	 * hardware register that contains the page table size.
 	 */
 	if (total_entries == ULONG_MAX) {
-		dev_dbg(device, "Error reading page table size. "
-			"Initializing page table with size 0\n");
+		dev_dbg(device,
+			"Error reading page table size. Initializing page table with size 0\n");
 		total_entries = 0;
 	}
 
@@ -491,8 +491,7 @@ static int gasket_perform_mapping(struct gasket_page_table *pg_tbl,
 
 			if (ret <= 0) {
 				dev_err(pg_tbl->device,
-					"get user pages failed for addr=0x%lx, "
-					"offset=0x%lx [ret=%d]\n",
+					"get user pages failed for addr=0x%lx, offset=0x%lx [ret=%d]\n",
 					page_addr, offset, ret);
 				return ret ? ret : -ENOMEM;
 			}
@@ -779,8 +778,8 @@ static bool gasket_is_extended_dev_addr_bad(struct gasket_page_table *pg_tbl,
 
 	if (page_lvl0_idx >= pg_tbl->num_extended_entries) {
 		dev_err(pg_tbl->device,
-			"starting level 0 slot at %lu is too large, max is < "
-			"%u\n", page_lvl0_idx, pg_tbl->num_extended_entries);
+			"starting level 0 slot at %lu is too large, max is < %u\n",
+			page_lvl0_idx, pg_tbl->num_extended_entries);
 		return true;
 	}
 
@@ -965,8 +964,7 @@ static int gasket_map_extended_pages(struct gasket_page_table *pg_tbl,
 	if (ret) {
 		dev_addr_end = dev_addr + (num_pages / PAGE_SIZE) - 1;
 		dev_err(pg_tbl->device,
-			"page table slots (%lu,%lu) (@ 0x%lx) to (%lu,%lu) are "
-			"not available\n",
+			"page table slots (%lu,%lu) (@ 0x%lx) to (%lu,%lu) are not available\n",
 			gasket_extended_lvl0_page_idx(pg_tbl, dev_addr),
 			dev_addr,
 			gasket_extended_lvl1_page_idx(pg_tbl, dev_addr),
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 248BF29732
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 May 2019 13:31:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 45DAA87FEE;
	Fri, 24 May 2019 11:31:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y9-Yceeibt+t; Fri, 24 May 2019 11:31:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4ACE187FA6;
	Fri, 24 May 2019 11:31:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id ADA9F1BF35A
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 11:31:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A8D2387171
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 11:31:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RiYbIn7neOK6 for <devel@linuxdriverproject.org>;
 Fri, 24 May 2019 11:31:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5709187167
 for <devel@driverdev.osuosl.org>; Fri, 24 May 2019 11:31:10 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id 15so8838189wmg.5
 for <devel@driverdev.osuosl.org>; Fri, 24 May 2019 04:31:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=oE1itLvC5WmhyWwJeZjZP8ObQQwm+ffDCAe7rkEgIdQ=;
 b=tSZFDW/ZJoMDRl1sZZeqHVKa6/weNm5U1di6MrU1az4pPQwgUw0RkeMcmsHygvOCdw
 utZe3BElKz+rSVvgTQIquBovDD8XwVAXhU/jPtgGPjeapn65hhom2pFvlH+qv8Sjq9p5
 u1AE1Wc4A81MAWHmkUg0MyABSCuZNGQHhaA7tpjVR4zMYtv9pVi9Cca9abbmpM4QVdtB
 CmNXnjpWupzXIOGzspVoNdkl3to63ZVkqBvXxlHSiasvgN0yQOaTaTXBoqCRkk9ZQISS
 HKZvK0zZaLRthqZalXrXSKi63F02PkZNiYgV/r3HxssQYaZlPFNS43eIXtZmTO5s3NPW
 kaLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=oE1itLvC5WmhyWwJeZjZP8ObQQwm+ffDCAe7rkEgIdQ=;
 b=gL69f0DybfPRpvfFPN3DUDcQv9QjaO81NzXPZAs7ZaIjknQNOoadWvWRH/4ci9DPRT
 Hp98/SP1fsfmeaId8sq0Qm7YQXfrd4gaxY4Cul8Ix6Amsz2cxTibFX3vYXvhWvGCGSI3
 1R7VlKK0VHGReuUxALbG8PLhAAwE1OSOV5YOftJwZJrZG5t/UzenLH7KQdgszZeft5Ja
 2aiP4w+pmjJQjFxUJqBqu2PtyWKFQba2+qHSDXsK34l/QuKi1p1F2GEfDAg7JATkkg0q
 /biqIn0f7ngqRPIpHiPmCUN55ULEbXyPWU9MqWR/CQHHTYjGUwiq2VdmRcAgCGIB9IGI
 PLrA==
X-Gm-Message-State: APjAAAVBDugyN3opi3XGmvRR7KWnJVwuq/071gjA33aVXAylvSWibdW6
 NQi80pVaoDMQDTCQKXk3ksw=
X-Google-Smtp-Source: APXvYqzKK1p+x26eZqbINv0WX65scN403Y5WgVOOOVY/7IARiFVHP9vbYUglOAq4HXtG/EeqFLWl4g==
X-Received: by 2002:a1c:cc02:: with SMTP id h2mr15553133wmb.13.1558697468915; 
 Fri, 24 May 2019 04:31:08 -0700 (PDT)
Received: from localhost.localdomain (ip229.173.mip.uni-hannover.de.
 [130.75.173.229])
 by smtp.gmail.com with ESMTPSA id r128sm1550142wmf.12.2019.05.24.04.31.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 04:31:08 -0700 (PDT)
From: Tianzheng Li <ltz0302@gmail.com>
To: rspringer@google.com
Subject: [PATCH v2] staging/gasket: Fix string split
Date: Fri, 24 May 2019 13:31:05 +0200
Message-Id: <20190524113105.44580-1-ltz0302@gmail.com>
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

Co-developed-by: Jie Zhang <zhangjie.cnde@gmail.com>
Signed-off-by: Jie Zhang <zhangjie.cnde@gmail.com>
Signed-off-by: Tianzheng Li <ltz0302@gmail.com>
---
Changes in v2:
  - Add Co-developed-by: Jie Zhang <zhangjie.cnde@gmail.com>

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

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82BDD25385
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 May 2019 17:07:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E929087A00;
	Tue, 21 May 2019 15:07:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WX0K8aTZrEDK; Tue, 21 May 2019 15:07:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 702E58613A;
	Tue, 21 May 2019 15:07:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8DABB1BF2EA
 for <devel@linuxdriverproject.org>; Tue, 21 May 2019 15:07:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 89B1723735
 for <devel@linuxdriverproject.org>; Tue, 21 May 2019 15:07:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kkqQ1cdG-Nvl for <devel@linuxdriverproject.org>;
 Tue, 21 May 2019 15:07:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by silver.osuosl.org (Postfix) with ESMTPS id C469C2014B
 for <devel@driverdev.osuosl.org>; Tue, 21 May 2019 15:07:45 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id 198so3362005wme.3
 for <devel@driverdev.osuosl.org>; Tue, 21 May 2019 08:07:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=xW3NTsczgih5h5jOq9JBzpApEgnkf4EsVSIC2Sl+bb8=;
 b=OWzXshpD66HZNTSJ+nPTmCS7NW8XW6pBYFO8eVBZklc+XXcv6cUBi1MrJFtNf1ak/p
 FMBm64fq8ivogk32hmxpMmaHOKCOZCQ+QQ38+ctAczOzP9kZgZptdad/3tTaqzzIjrS9
 cIlqy6JQlePFeOxudBMfZA+HIg2jL0hp8q9gPneqS9LdWCZXZeiV7SHvVLAKs003lAbb
 vjQBknOyMEHpw8GcGcpO1HnQehMzWVtNVeYnc62rmqAnFXBqERbnfU0Ihy7jxzVH3CJX
 0IThlOpsB1EDfjedV/Jv23NRT7nIKbkq+avuKMfjtGUyDwvZf3WSdsVEO1LkoLA2bVpi
 KhNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=xW3NTsczgih5h5jOq9JBzpApEgnkf4EsVSIC2Sl+bb8=;
 b=HvggULP+MCW+E5ujrm8hfsbZdG3Berv1MLOnh7441ZmQQneq7297bNrUyp2JsEp2It
 oZQuI8gDU6Uz4/4ifXSnODtS94qS7Bvs9oDMNa+NG+pqaG/BQBZlhIhlNAQXQh0keaQF
 WqNnn6A+/2gjJ4j841ydogUMMVEOco9ejQp64DgqwMLD97tx7JBlgmZ91FYM8jrygmM3
 VQx11xK5gS9fwW4A4k+VWxwGg7tlVW7G9DsQNwdYDN0HTuqVkPs8H8yotvjIX8GN72fy
 Pc93NdAMeIYvvxTD9glZRKUl9nC9h2smW3B1hxHKxlaVzWW5R/PcIwl6MQkDzPo7DWq+
 muqw==
X-Gm-Message-State: APjAAAUPhHDBGkh7zTBzxzRnD04oGCJ0CceJRHEzSPpGglMAjsNp+4i4
 UEiyeD7k9/pycO1gWZGdC60=
X-Google-Smtp-Source: APXvYqyfzyrneNtZwdopu3igH/ZDJAw81OSEEH+Jm+kOX7ayIuQtDxtpMZPgB5s8d2GjRWBLk5ywMQ==
X-Received: by 2002:a1c:254:: with SMTP id 81mr3717119wmc.151.1558451264183;
 Tue, 21 May 2019 08:07:44 -0700 (PDT)
Received: from localhost.localdomain (ip179248.wh.uni-hannover.de.
 [130.75.179.248])
 by smtp.gmail.com with ESMTPSA id v5sm43046172wra.83.2019.05.21.08.07.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 21 May 2019 08:07:43 -0700 (PDT)
From: Tianzheng Li <ltz0302@gmail.com>
To: rspringer@google.com
Subject: [PATCH] staging/gasket: Fix string split
Date: Tue, 21 May 2019 17:07:28 +0200
Message-Id: <20190521150728.25501-1-ltz0302@gmail.com>
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

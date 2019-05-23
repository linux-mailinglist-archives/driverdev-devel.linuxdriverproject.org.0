Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C27A72818E
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 May 2019 17:46:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1C48488A82;
	Thu, 23 May 2019 15:46:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bGQdeg4xld7Q; Thu, 23 May 2019 15:46:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A2CF2889C9;
	Thu, 23 May 2019 15:46:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 42EE41BF964
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 15:46:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3F6BE889CA
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 15:46:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xwTd52hn+V5e for <devel@linuxdriverproject.org>;
 Thu, 23 May 2019 15:46:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8364E889C9
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 15:46:44 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id w9so184158wmi.0
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 08:46:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=qrctY6UlwvZSSLcwbTDwUkuDUQQP9VVX4afFKiNDkdU=;
 b=fM7UM775yCnBpiE36t4mQ/gBip8zhKjyW6Bl4brF2h29R1JQ3m+d6ayYXyikxA+MwJ
 fATJrUEV2FQSoG5aTWL5d0/gENV11wXp62Dqju9rtBfB7NoC44FVNjnyR4sUTA6wJI3o
 csnczgz71NfheQOf3VC5ZawaX4lt5s1PU5LGu8AJRzGURItCr75IF03aqRWogxVX/rmL
 xUDwJi2YHLThm922Q2NVKpX+Ic5Wv//H4Xv9LD6lfTXmKxuwMG8AfCkzmCNIWBq1v9pl
 bkOUdboMj0gieOEP7Qpd4Y6Y97ojDeQUZtrQQJ5fm5JtPqDH6704MwmVNwV5koqITzI+
 0meQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=qrctY6UlwvZSSLcwbTDwUkuDUQQP9VVX4afFKiNDkdU=;
 b=GnjSSP36b7q4JH/EXgCrsCpjRsYFEJjSisKzGTpUNnMtUkQUPdn4qYSvzYYAtnkFJt
 nrtZ/AZ4exH6X/Mtv2TlQgR2bguv06LHb5o+tGRalzcbxjYkbZ1C9K3a+zv2VQVx5d+U
 Ait2di1mLG2EpY3L93rqfA923P6GDQQOoA8qcwrUqwdPFLJDYgsiIk33cvX2JjONwS1B
 Etj/6eLgiuG2WpNaCP9OINhsKLgOag5QaRAPQj6yf8fXBAbEyh9hxhdjxNwXTjJvM/TR
 cu6ZK6Vq/J5dU7DoCb1sLG0ZDlVJCvLkvbJR29xaLGeWijuB2J6g+oFlseKehfv7lz7/
 U3Gw==
X-Gm-Message-State: APjAAAX11/nJB8QmQKm2xErXoVWPtd2PE9eKCU3Y20BcZHGmTRUs+KQc
 c+oyn4V2qeLPdkk0CkyArk0=
X-Google-Smtp-Source: APXvYqxTS5Y9Fz7TCCgQvfJCP/+OOFfJh4/vV2wtZP2PgsPS+oDrxHOD1OPV/Dj3IfMRgvDUxnC0UQ==
X-Received: by 2002:a1c:ce:: with SMTP id 197mr12457924wma.48.1558626402813;
 Thu, 23 May 2019 08:46:42 -0700 (PDT)
Received: from localhost.localdomain (ip28.173.mip.uni-hannover.de.
 [130.75.173.28])
 by smtp.gmail.com with ESMTPSA id q16sm10211415wmj.17.2019.05.23.08.46.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 08:46:42 -0700 (PDT)
From: Tianzheng Li <ltz0302@gmail.com>
To: rspringer@google.com
Subject: [PATCH] staging/gasket: Fix string split
Date: Thu, 23 May 2019 17:46:39 +0200
Message-Id: <20190523154639.42662-1-ltz0302@gmail.com>
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

Reported-by: Jie Zhang <zhangjie.cnde@gmail.com>
Signed-off-by: Tianzheng Li <ltz0302@gmail.com>
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

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C4B39BD0D
	for <lists+driverdev-devel@lfdr.de>; Sat, 24 Aug 2019 12:37:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id F390F20449;
	Sat, 24 Aug 2019 10:37:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LsIoG+nZVBYh; Sat, 24 Aug 2019 10:37:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 695BE20434;
	Sat, 24 Aug 2019 10:37:18 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BD9021BF377
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 24 Aug 2019 10:37:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BA79F87B62
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 24 Aug 2019 10:37:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2mKaxrPAXrdt
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 24 Aug 2019 10:37:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E50138757D
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 24 Aug 2019 10:37:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Aug 2019 03:37:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,424,1559545200"; d="scan'208";a="181949561"
Received: from alexey-ws.iil.intel.com ([10.189.205.150])
 by orsmga003.jf.intel.com with ESMTP; 24 Aug 2019 03:37:13 -0700
From: Alexey Skidanov <alexey.skidanov@intel.com>
To: driverdev-devel@linuxdriverproject.org,
	labbott@redhat.com
Subject: [PATCH] staging: android: ion: cma heap: Limit size of allocated
 buffer
Date: Fri, 23 Aug 2019 22:28:03 -0400
Message-Id: <1566613683-1872-1-git-send-email-alexey.skidanov@intel.com>
X-Mailer: git-send-email 2.7.4
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
Cc: Alexey Skidanov <alexey.skidanov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

In ion_cma_heap, the allocated buffer is represented by a single
struct scatterlist instance. The length field of this struct is
32 bit, hence the maximal size of requested buffer should be
less than 4GB.

The len paramer of the allocation function is 64 bit (on 64 bit systems).
Hence the requested size might be greater than 4GB and in this case
the field length of the struct scatterlist is initialized incorrectly.

To fix this, we check that requested size may fit into
the field length of the struct scatterlist

Signed-off-by: Alexey Skidanov <alexey.skidanov@intel.com>
---
 drivers/staging/android/ion/ion.h          | 5 +++++
 drivers/staging/android/ion/ion_cma_heap.c | 3 +++
 2 files changed, 8 insertions(+)

diff --git a/drivers/staging/android/ion/ion.h b/drivers/staging/android/ion/ion.h
index e291299..9dd7e20 100644
--- a/drivers/staging/android/ion/ion.h
+++ b/drivers/staging/android/ion/ion.h
@@ -21,6 +21,11 @@
 
 #include "../uapi/ion.h"
 
+#define MAX_SCATTERLIST_LEN ({\
+		typeof(((struct scatterlist *)0)->length) v;\
+		v = -1;\
+	})
+
 /**
  * struct ion_buffer - metadata for a particular buffer
  * @node:		node in the ion_device buffers tree
diff --git a/drivers/staging/android/ion/ion_cma_heap.c b/drivers/staging/android/ion/ion_cma_heap.c
index bf65e67..d069719 100644
--- a/drivers/staging/android/ion/ion_cma_heap.c
+++ b/drivers/staging/android/ion/ion_cma_heap.c
@@ -36,6 +36,9 @@ static int ion_cma_allocate(struct ion_heap *heap, struct ion_buffer *buffer,
 	unsigned long align = get_order(size);
 	int ret;
 
+	if (size > MAX_SCATTERLIST_LEN)
+		return -EINVAL;
+
 	if (align > CONFIG_CMA_ALIGNMENT)
 		align = CONFIG_CMA_ALIGNMENT;
 
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

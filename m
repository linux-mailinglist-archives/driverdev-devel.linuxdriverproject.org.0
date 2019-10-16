Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A882FD9574
	for <lists+driverdev-devel@lfdr.de>; Wed, 16 Oct 2019 17:24:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CD00488390;
	Wed, 16 Oct 2019 15:24:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mC9KbMHeq+bd; Wed, 16 Oct 2019 15:24:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B5EA588367;
	Wed, 16 Oct 2019 15:24:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1EF4E1BF38B
 for <devel@linuxdriverproject.org>; Wed, 16 Oct 2019 15:24:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1B54B203A9
 for <devel@linuxdriverproject.org>; Wed, 16 Oct 2019 15:24:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9o9enq8etqlP for <devel@linuxdriverproject.org>;
 Wed, 16 Oct 2019 15:24:39 +0000 (UTC)
X-Greylist: delayed 00:23:06 by SQLgrey-1.7.6
Received: from mail-wm1-f74.google.com (mail-wm1-f74.google.com
 [209.85.128.74])
 by silver.osuosl.org (Postfix) with ESMTPS id 08ED620381
 for <devel@driverdev.osuosl.org>; Wed, 16 Oct 2019 15:24:39 +0000 (UTC)
Received: by mail-wm1-f74.google.com with SMTP id n3so1361744wmf.3
 for <devel@driverdev.osuosl.org>; Wed, 16 Oct 2019 08:24:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=J/niWMSCWOkU3FiiC/BCaEkIRU5HgEsVvmugtdWHpiU=;
 b=AWleaYVzPfogOuND6XsrqmkQdiZxuNLN56ZJsxj5/YScOsRzNhfiI52GlFsNTIeKf1
 HXE7HyK7Mb706yj8/QV5fTJSvjJ3tcLta9yoVpe0v7vyAQz4cMHkMmI3+S9qeBGLx159
 ODEOad5Jjfz42lo7SCw2SOEL1lWINyDaY/+N6nVkmpJtGkm5w4Kj0EK/j25tF2XJcqmg
 u69o7MyCqHqD6FEWT1QmlGMiSgYNUuIClgTGo77gpSg+0CPCzkUlteCMJIariG5J3puf
 VgpK2PJeYV4L/J5SDF9ChR/8GoffM+K8+E4Yw/BGT6imoMWf11rxXD0Bcvx9QMFzjiT0
 xK+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=J/niWMSCWOkU3FiiC/BCaEkIRU5HgEsVvmugtdWHpiU=;
 b=Y8ma5wAot0NTPRhUXq6czogd52CbrT+B9e8ujWNJjfw0kuNPnhu+yAUxw6MeVKYuB4
 zShPcX1A4QjXDnSB1yHZp28ervsTZ8Blqa0/32+r0NMjt9nBYljG2a0OmxgZ/keXmYO4
 EZdSAL2p5K7gmI6zsMXOM/2qd/m9qLI1zpFQ42OXJGhU19Q/Not5g+2PM7JDwxjKnvBw
 o6qSLO2OpVKeH5MOemP9oQ5gK2wVEBRaLL3pxk0Chx9gUEBJzqXn2V7py4pEPrJswLkd
 tgXo3InCemxeg4H7o7tmC421XXKI5XBgNQ/RV3Yg4J4dfAwBDTRoykiD0uDifezlA8pD
 w4wQ==
X-Gm-Message-State: APjAAAViiRfN5hyzwDAkoU2ZdTN+SSLfERyCAIg5sepvbvk5FgJFmgs/
 PfErT1/jxXHjwNuNnu5yoxoihftLXQ==
X-Google-Smtp-Source: APXvYqyocMgs+6OGpViQxfVV1xDmH8jmVPfAkkza78APbcuoCqa4HN6Jil/nm0+Zajjc7bM8J/ma2uxh+g==
X-Received: by 2002:a5d:56ca:: with SMTP id m10mr3056203wrw.369.1571238090230; 
 Wed, 16 Oct 2019 08:01:30 -0700 (PDT)
Date: Wed, 16 Oct 2019 17:01:18 +0200
Message-Id: <20191016150119.154756-1-jannh@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.23.0.700.g56cf767bdb-goog
Subject: [PATCH 1/2] binder: Don't modify VMA bounds in ->mmap handler
From: Jann Horn <jannh@google.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 "=?UTF-8?q?Arve=20Hj=C3=B8nnev=C3=A5g?=" <arve@android.com>,
 Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>, 
 Joel Fernandes <joel@joelfernandes.org>,
 Christian Brauner <christian@brauner.io>, jannh@google.com
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

binder_mmap() tries to prevent the creation of overly big binder mappings
by silently truncating the size of the VMA to 4MiB. However, this violates
the API contract of mmap(). If userspace attempts to create a large binder
VMA, and later attempts to unmap that VMA, it will call munmap() on a range
beyond the end of the VMA, which may have been allocated to another VMA in
the meantime. This can lead to userspace memory corruption.

The following sequence of calls leads to a segfault without this commit:

int main(void) {
  int binder_fd = open("/dev/binder", O_RDWR);
  if (binder_fd == -1) err(1, "open binder");
  void *binder_mapping = mmap(NULL, 0x800000UL, PROT_READ, MAP_SHARED,
                              binder_fd, 0);
  if (binder_mapping == MAP_FAILED) err(1, "mmap binder");
  void *data_mapping = mmap(NULL, 0x400000UL, PROT_READ|PROT_WRITE,
                            MAP_PRIVATE|MAP_ANONYMOUS, -1, 0);
  if (data_mapping == MAP_FAILED) err(1, "mmap data");
  munmap(binder_mapping, 0x800000UL);
  *(char*)data_mapping = 1;
  return 0;
}

Cc: stable@vger.kernel.org
Signed-off-by: Jann Horn <jannh@google.com>
---
 drivers/android/binder.c       | 7 -------
 drivers/android/binder_alloc.c | 6 ++++--
 2 files changed, 4 insertions(+), 9 deletions(-)

diff --git a/drivers/android/binder.c b/drivers/android/binder.c
index 5b9ac2122e89..265d9dd46a5e 100644
--- a/drivers/android/binder.c
+++ b/drivers/android/binder.c
@@ -97,10 +97,6 @@ DEFINE_SHOW_ATTRIBUTE(proc);
 #define SZ_1K                               0x400
 #endif
 
-#ifndef SZ_4M
-#define SZ_4M                               0x400000
-#endif
-
 #define FORBIDDEN_MMAP_FLAGS                (VM_WRITE)
 
 enum {
@@ -5177,9 +5173,6 @@ static int binder_mmap(struct file *filp, struct vm_area_struct *vma)
 	if (proc->tsk != current->group_leader)
 		return -EINVAL;
 
-	if ((vma->vm_end - vma->vm_start) > SZ_4M)
-		vma->vm_end = vma->vm_start + SZ_4M;
-
 	binder_debug(BINDER_DEBUG_OPEN_CLOSE,
 		     "%s: %d %lx-%lx (%ld K) vma %lx pagep %lx\n",
 		     __func__, proc->pid, vma->vm_start, vma->vm_end,
diff --git a/drivers/android/binder_alloc.c b/drivers/android/binder_alloc.c
index d42a8b2f636a..eb76a823fbb2 100644
--- a/drivers/android/binder_alloc.c
+++ b/drivers/android/binder_alloc.c
@@ -22,6 +22,7 @@
 #include <asm/cacheflush.h>
 #include <linux/uaccess.h>
 #include <linux/highmem.h>
+#include <linux/sizes.h>
 #include "binder_alloc.h"
 #include "binder_trace.h"
 
@@ -689,7 +690,9 @@ int binder_alloc_mmap_handler(struct binder_alloc *alloc,
 	alloc->buffer = (void __user *)vma->vm_start;
 	mutex_unlock(&binder_alloc_mmap_lock);
 
-	alloc->pages = kcalloc((vma->vm_end - vma->vm_start) / PAGE_SIZE,
+	alloc->buffer_size = min_t(unsigned long, vma->vm_end - vma->vm_start,
+				   SZ_4M);
+	alloc->pages = kcalloc(alloc->buffer_size / PAGE_SIZE,
 			       sizeof(alloc->pages[0]),
 			       GFP_KERNEL);
 	if (alloc->pages == NULL) {
@@ -697,7 +700,6 @@ int binder_alloc_mmap_handler(struct binder_alloc *alloc,
 		failure_string = "alloc page array";
 		goto err_alloc_pages_failed;
 	}
-	alloc->buffer_size = vma->vm_end - vma->vm_start;
 
 	buffer = kzalloc(sizeof(*buffer), GFP_KERNEL);
 	if (!buffer) {
-- 
2.23.0.700.g56cf767bdb-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E43CA66960
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Jul 2019 10:53:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1FC17863D9;
	Fri, 12 Jul 2019 08:53:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U6nzoipqG8Md; Fri, 12 Jul 2019 08:53:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 015BD86403;
	Fri, 12 Jul 2019 08:53:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 934A11BF3DA
 for <devel@linuxdriverproject.org>; Fri, 12 Jul 2019 08:53:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8C22A2274B
 for <devel@linuxdriverproject.org>; Fri, 12 Jul 2019 08:53:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AmJJPcOubtid for <devel@linuxdriverproject.org>;
 Fri, 12 Jul 2019 08:53:06 +0000 (UTC)
X-Greylist: delayed 00:05:02 by SQLgrey-1.7.6
Received: from mailgw01.mediatek.com (unknown [210.61.82.183])
 by silver.osuosl.org (Postfix) with ESMTPS id F10DE204D7
 for <devel@driverdev.osuosl.org>; Fri, 12 Jul 2019 08:53:05 +0000 (UTC)
X-UUID: a6087602278f4ecba3588607e09d4a2c-20190712
X-UUID: a6087602278f4ecba3588607e09d4a2c-20190712
Received: from mtkcas06.mediatek.inc [(172.21.101.30)] by mailgw01.mediatek.com
 (envelope-from <lecopzer.chen@mediatek.com>)
 (mhqrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1209527918; Fri, 12 Jul 2019 16:47:48 +0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 12 Jul 2019 16:47:46 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 12 Jul 2019 16:47:47 +0800
From: Lecopzer Chen <lecopzer.chen@mediatek.com>
To: <linux-kernel@vger.kernel.org>
Subject: [PATCH] staging: android: ion: Remove unused rbtree for ion_buffer
Date: Fri, 12 Jul 2019 16:47:17 +0800
Message-ID: <20190712084717.12441-1-lecopzer.chen@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-TM-SNTS-SMTP: 92F56628C2D35BF0FDAA2809FBCCFE1AB61FCD8B124717D9CCEB10392A8CBEA92000:8
X-MTK: N
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
Cc: devel@driverdev.osuosl.org, Lecopzer Chen <lecopzer.chen@mediatek.com>,
 gregkh@linuxfoundation.org, YJ Chiang <yj.chiang@mediatek.com>,
 riandrews@android.com, dri-devel@lists.freedesktop.org, arve@android.com,
 sumit.semwal@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

ion_buffer_add() insert ion_buffer into rbtree every time creating
an ion_buffer but never use it after ION reworking.
Also, buffer_lock protects only rbtree operation, remove it together.

Signed-off-by: Lecopzer Chen <lecopzer.chen@mediatek.com>
Cc: YJ Chiang <yj.chiang@mediatek.com>
Cc: Lecopzer Chen <lecopzer.chen@mediatek.com>
---
 drivers/staging/android/ion/ion.c | 36 -------------------------------
 drivers/staging/android/ion/ion.h | 10 +--------
 2 files changed, 1 insertion(+), 45 deletions(-)

diff --git a/drivers/staging/android/ion/ion.c b/drivers/staging/android/ion/ion.c
index 92c2914239e3..e6b1ca141b93 100644
--- a/drivers/staging/android/ion/ion.c
+++ b/drivers/staging/android/ion/ion.c
@@ -29,32 +29,6 @@
 static struct ion_device *internal_dev;
 static int heap_id;
 
-/* this function should only be called while dev->lock is held */
-static void ion_buffer_add(struct ion_device *dev,
-			   struct ion_buffer *buffer)
-{
-	struct rb_node **p = &dev->buffers.rb_node;
-	struct rb_node *parent = NULL;
-	struct ion_buffer *entry;
-
-	while (*p) {
-		parent = *p;
-		entry = rb_entry(parent, struct ion_buffer, node);
-
-		if (buffer < entry) {
-			p = &(*p)->rb_left;
-		} else if (buffer > entry) {
-			p = &(*p)->rb_right;
-		} else {
-			pr_err("%s: buffer already found.", __func__);
-			BUG();
-		}
-	}
-
-	rb_link_node(&buffer->node, parent, p);
-	rb_insert_color(&buffer->node, &dev->buffers);
-}
-
 /* this function should only be called while dev->lock is held */
 static struct ion_buffer *ion_buffer_create(struct ion_heap *heap,
 					    struct ion_device *dev,
@@ -100,9 +74,6 @@ static struct ion_buffer *ion_buffer_create(struct ion_heap *heap,
 
 	INIT_LIST_HEAD(&buffer->attachments);
 	mutex_init(&buffer->lock);
-	mutex_lock(&dev->buffer_lock);
-	ion_buffer_add(dev, buffer);
-	mutex_unlock(&dev->buffer_lock);
 	return buffer;
 
 err1:
@@ -131,11 +102,6 @@ void ion_buffer_destroy(struct ion_buffer *buffer)
 static void _ion_buffer_destroy(struct ion_buffer *buffer)
 {
 	struct ion_heap *heap = buffer->heap;
-	struct ion_device *dev = buffer->dev;
-
-	mutex_lock(&dev->buffer_lock);
-	rb_erase(&buffer->node, &dev->buffers);
-	mutex_unlock(&dev->buffer_lock);
 
 	if (heap->flags & ION_HEAP_FLAG_DEFER_FREE)
 		ion_heap_freelist_add(heap, buffer);
@@ -694,8 +660,6 @@ static int ion_device_create(void)
 	}
 
 	idev->debug_root = debugfs_create_dir("ion", NULL);
-	idev->buffers = RB_ROOT;
-	mutex_init(&idev->buffer_lock);
 	init_rwsem(&idev->lock);
 	plist_head_init(&idev->heaps);
 	internal_dev = idev;
diff --git a/drivers/staging/android/ion/ion.h b/drivers/staging/android/ion/ion.h
index e291299fd35f..74914a266e25 100644
--- a/drivers/staging/android/ion/ion.h
+++ b/drivers/staging/android/ion/ion.h
@@ -23,7 +23,6 @@
 
 /**
  * struct ion_buffer - metadata for a particular buffer
- * @node:		node in the ion_device buffers tree
  * @list:		element in list of deferred freeable buffers
  * @dev:		back pointer to the ion_device
  * @heap:		back pointer to the heap the buffer came from
@@ -39,10 +38,7 @@
  * @attachments:	list of devices attached to this buffer
  */
 struct ion_buffer {
-	union {
-		struct rb_node node;
-		struct list_head list;
-	};
+	struct list_head list;
 	struct ion_device *dev;
 	struct ion_heap *heap;
 	unsigned long flags;
@@ -61,14 +57,10 @@ void ion_buffer_destroy(struct ion_buffer *buffer);
 /**
  * struct ion_device - the metadata of the ion device node
  * @dev:		the actual misc device
- * @buffers:		an rb tree of all the existing buffers
- * @buffer_lock:	lock protecting the tree of buffers
  * @lock:		rwsem protecting the tree of heaps and clients
  */
 struct ion_device {
 	struct miscdevice dev;
-	struct rb_root buffers;
-	struct mutex buffer_lock;
 	struct rw_semaphore lock;
 	struct plist_head heaps;
 	struct dentry *debug_root;
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

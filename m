Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46C4F27225A
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Sep 2020 13:25:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id F0F9E871EE;
	Mon, 21 Sep 2020 11:25:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Bmw1rungKZmq; Mon, 21 Sep 2020 11:25:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6097A871D8;
	Mon, 21 Sep 2020 11:25:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 166B71BF3EF
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 11:25:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 104C186812
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 11:25:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id niHbCGx1KJz4 for <devel@linuxdriverproject.org>;
 Mon, 21 Sep 2020 11:25:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BFE55867DA
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 11:25:20 +0000 (UTC)
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 3FAAD3016D65BB5E18EA;
 Mon, 21 Sep 2020 19:25:18 +0800 (CST)
Received: from huawei.com (10.175.113.32) by DGGEMS410-HUB.china.huawei.com
 (10.3.19.210) with Microsoft SMTP Server id 14.3.487.0; Mon, 21 Sep 2020
 19:25:10 +0800
From: Liu Shixin <liushixin2@huawei.com>
To: Christian Brauner <christian@brauner.io>
Subject: [PATCH -next] binder: simplify the return expression of binder_mmap
Date: Mon, 21 Sep 2020 19:47:34 +0800
Message-ID: <20200921114734.3272769-1-liushixin2@huawei.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200921080830.vrki7dcm64l46ppb@wittgenstein>
References: <20200921080830.vrki7dcm64l46ppb@wittgenstein>
MIME-Version: 1.0
X-Originating-IP: [10.175.113.32]
X-CFilter-Loop: Reflected
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
Cc: devel@driverdev.osuosl.org, Liu Shixin <liushixin2@huawei.com>,
 Todd Kjos <tkjos@android.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Suren
 Baghdasaryan <surenb@google.com>, Hridya Valsaraju <hridya@google.com>,
 =?UTF-8?q?Arve=20Hj=C3=B8nnev=C3=A5g?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>, Martijn Coenen <maco@android.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Simplify the return expression.

Signed-off-by: Liu Shixin <liushixin2@huawei.com>
---
 drivers/android/binder.c | 18 ++++--------------
 1 file changed, 4 insertions(+), 14 deletions(-)

diff --git a/drivers/android/binder.c b/drivers/android/binder.c
index 37a505c41dec..49c0700816a5 100644
--- a/drivers/android/binder.c
+++ b/drivers/android/binder.c
@@ -5180,9 +5180,7 @@ static const struct vm_operations_struct binder_vm_ops = {
 
 static int binder_mmap(struct file *filp, struct vm_area_struct *vma)
 {
-	int ret;
 	struct binder_proc *proc = filp->private_data;
-	const char *failure_string;
 
 	if (proc->tsk != current->group_leader)
 		return -EINVAL;
@@ -5194,9 +5192,9 @@ static int binder_mmap(struct file *filp, struct vm_area_struct *vma)
 		     (unsigned long)pgprot_val(vma->vm_page_prot));
 
 	if (vma->vm_flags & FORBIDDEN_MMAP_FLAGS) {
-		ret = -EPERM;
-		failure_string = "bad vm_flags";
-		goto err_bad_arg;
+		pr_err("%s: %d %lx-%lx %s failed %d\n", __func__,
+		       proc->pid, vma->vm_start, vma->vm_end, "bad vm_flags", -EPERM);
+		return -EPERM;
 	}
 	vma->vm_flags |= VM_DONTCOPY | VM_MIXEDMAP;
 	vma->vm_flags &= ~VM_MAYWRITE;
@@ -5204,15 +5202,7 @@ static int binder_mmap(struct file *filp, struct vm_area_struct *vma)
 	vma->vm_ops = &binder_vm_ops;
 	vma->vm_private_data = proc;
 
-	ret = binder_alloc_mmap_handler(&proc->alloc, vma);
-	if (ret)
-		return ret;
-	return 0;
-
-err_bad_arg:
-	pr_err("%s: %d %lx-%lx %s failed %d\n", __func__,
-	       proc->pid, vma->vm_start, vma->vm_end, failure_string, ret);
-	return ret;
+	return binder_alloc_mmap_handler(&proc->alloc, vma);
 }
 
 static int binder_open(struct inode *nodp, struct file *filp)
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

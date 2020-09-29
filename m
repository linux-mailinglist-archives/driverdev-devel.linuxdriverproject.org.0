Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D2CF27B963
	for <lists+driverdev-devel@lfdr.de>; Tue, 29 Sep 2020 03:30:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9269C87096;
	Tue, 29 Sep 2020 01:30:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nMlsQODrDYEf; Tue, 29 Sep 2020 01:30:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id AA2FD87084;
	Tue, 29 Sep 2020 01:30:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A4F7D1BF981
 for <devel@linuxdriverproject.org>; Tue, 29 Sep 2020 01:30:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A172D87084
 for <devel@linuxdriverproject.org>; Tue, 29 Sep 2020 01:30:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c+QHDld-9u9t for <devel@linuxdriverproject.org>;
 Tue, 29 Sep 2020 01:30:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4ED128707A
 for <devel@driverdev.osuosl.org>; Tue, 29 Sep 2020 01:30:22 +0000 (UTC)
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 0550174F066577A8B0FD;
 Tue, 29 Sep 2020 09:30:18 +0800 (CST)
Received: from huawei.com (10.175.113.32) by DGGEMS413-HUB.china.huawei.com
 (10.3.19.213) with Microsoft SMTP Server id 14.3.487.0; Tue, 29 Sep 2020
 09:30:09 +0800
From: Liu Shixin <liushixin2@huawei.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3 -next] binder: simplify the return expression of binder_mmap
Date: Tue, 29 Sep 2020 09:52:16 +0800
Message-ID: <20200929015216.1829946-1-liushixin2@huawei.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200927123538.GA292831@kroah.com>
References: <20200927123538.GA292831@kroah.com>
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
Cc: devel@driverdev.osuosl.org, Todd Kjos <tkjos@android.com>, Suren
 Baghdasaryan <surenb@google.com>, linux-kernel@vger.kernel.org,
 Liu Shixin <liushixin2@huawei.com>, Hridya Valsaraju <hridya@google.com>,
 =?UTF-8?q?Arve=20Hj=C3=B8nnev=C3=A5g?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>, Martijn Coenen <maco@android.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Simplify the return expression.

Signed-off-by: Liu Shixin <liushixin2@huawei.com>
---
v3: Add the change description.
v2: Get rid of the "ret" and "failure string" variables.
v1: Simplify the return expression.
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

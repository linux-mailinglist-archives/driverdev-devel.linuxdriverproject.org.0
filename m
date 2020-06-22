Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 016A3204142
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Jun 2020 22:13:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6FF0F8747D;
	Mon, 22 Jun 2020 20:12:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jt6Gg3Qm8Ieh; Mon, 22 Jun 2020 20:12:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1EA1C86F8F;
	Mon, 22 Jun 2020 20:12:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9E1401BF3CE
 for <devel@linuxdriverproject.org>; Mon, 22 Jun 2020 20:12:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9ABA988D5B
 for <devel@linuxdriverproject.org>; Mon, 22 Jun 2020 20:12:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fcQO+alEunDy for <devel@linuxdriverproject.org>;
 Mon, 22 Jun 2020 20:12:54 +0000 (UTC)
X-Greylist: delayed 00:05:29 by SQLgrey-1.7.6
Received: from mail-yb1-f201.google.com (mail-yb1-f201.google.com
 [209.85.219.201])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 514C7886EA
 for <devel@driverdev.osuosl.org>; Mon, 22 Jun 2020 20:12:54 +0000 (UTC)
Received: by mail-yb1-f201.google.com with SMTP id s90so21436698ybi.6
 for <devel@driverdev.osuosl.org>; Mon, 22 Jun 2020 13:12:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=It7WCF6NWrKCb1o5ESqK7iLOhdQgrtGmLe61alVmR2g=;
 b=UEb5/483PkOmcAISuyZiEKoIS2sTKiWdGS7v5XwnZPqL+4W/mlTtQ5dsTdsAyVnSqc
 iFYEyb8WoZeCD+2dF9umxv6lEs8j5/CMBNv8eFU2+67hQo90DV0H4s8MA2OaqoD/7KQA
 P7h/4EI0h7HaVREHrSPnj89Wvg9ONYLnKDlW3FFoAXVwEihCRnfqLic9KngVzI51Mp/7
 iz0ijx0jhB2GYI0T2yLdZR/orC2MKjj7MT+PdnyK83DfbOpiNVVrsl7204IHfyK22VZP
 sU3Cb//VqPvn/7GKibIY8vB23nWl5eKmVvB7sFFwlcUYyRi6niFGWMfvl9hgS3HldNOS
 JejA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=It7WCF6NWrKCb1o5ESqK7iLOhdQgrtGmLe61alVmR2g=;
 b=X2sGyFIWNRWLm+a2wrL0qg/PIhv5iA+u53P27dSiRu4d+hzdqsyWMIuROz29K/65C/
 3mrqRxSsEg/2MuUWTAz0zz2dZ6dpMK+lcCURzomcf0ohBG1czKBeWCRYBg0dUj9D59xT
 pNPaJwHOEIrx5esUhcH9a3ZNXwVpyE6mD4Gr48fgAAJfB1Wvuk2nCcehwv3cyUno7TVX
 ytGUzySXg/01ulTQ8IrhVR8zQC41tl0O83bAKtfjW4sU1RkT1vfuPERDLngIt4pttavw
 /DYvlBDHPrNJgZ6VN6Q3ckoG0C5rcDhvvMmimcPXJ5BZggPzV5sP8NQycJN/l2BY+btD
 V6RQ==
X-Gm-Message-State: AOAM532+luhGcLmtNB0BlaNNR1rQ6xWEqVuRjUR2X/jbPltracKhyn2i
 VGda3EiQ1NKxbGM318SNN25htj6O+A==
X-Google-Smtp-Source: ABdhPJx6ELeChahDdZ0u3OPPvd1qphCT9C4jSsP2Sv6Z0wKlHq8A1zfdhi/DqKl6nOvrNIZ8kLh9lOODXQ==
X-Received: by 2002:a25:400e:: with SMTP id n14mr27690222yba.424.1592856444249; 
 Mon, 22 Jun 2020 13:07:24 -0700 (PDT)
Date: Mon, 22 Jun 2020 13:07:15 -0700
Message-Id: <20200622200715.114382-1-tkjos@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.27.0.111.gc72c7da667-goog
Subject: [PATCH] binder: fix null deref of proc->context
From: Todd Kjos <tkjos@google.com>
To: tkjos@google.com, gregkh@linuxfoundation.org, christian@brauner.io, 
 arve@android.com, devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
 maco@google.com
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
Cc: joel@joelfernandes.org, kernel-team@android.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The binder driver makes the assumption proc->context pointer is invariant after
initialization (as documented in the kerneldoc header for struct proc).
However, in commit f0fe2c0f050d ("binder: prevent UAF for binderfs devices II")
proc->context is set to NULL during binder_deferred_release().

Another proc was in the middle of setting up a transaction to the dying
process and crashed on a NULL pointer deref on "context" which is a local
set to &proc->context:

    new_ref->data.desc = (node == context->binder_context_mgr_node) ? 0 : 1;

Here's the stack:

[ 5237.855435] Call trace:
[ 5237.855441] binder_get_ref_for_node_olocked+0x100/0x2ec
[ 5237.855446] binder_inc_ref_for_node+0x140/0x280
[ 5237.855451] binder_translate_binder+0x1d0/0x388
[ 5237.855456] binder_transaction+0x2228/0x3730
[ 5237.855461] binder_thread_write+0x640/0x25bc
[ 5237.855466] binder_ioctl_write_read+0xb0/0x464
[ 5237.855471] binder_ioctl+0x30c/0x96c
[ 5237.855477] do_vfs_ioctl+0x3e0/0x700
[ 5237.855482] __arm64_sys_ioctl+0x78/0xa4
[ 5237.855488] el0_svc_common+0xb4/0x194
[ 5237.855493] el0_svc_handler+0x74/0x98
[ 5237.855497] el0_svc+0x8/0xc

The fix is to move the kfree of the binder_device to binder_free_proc()
so the binder_device is freed when we know there are no references
remaining on the binder_proc.

Fixes: f0fe2c0f050d ("binder: prevent UAF for binderfs devices II")
Signed-off-by: Todd Kjos <tkjos@google.com>
---
 drivers/android/binder.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/android/binder.c b/drivers/android/binder.c
index e47c8a4c83db..f50c5f182bb5 100644
--- a/drivers/android/binder.c
+++ b/drivers/android/binder.c
@@ -4686,8 +4686,15 @@ static struct binder_thread *binder_get_thread(struct binder_proc *proc)
 
 static void binder_free_proc(struct binder_proc *proc)
 {
+	struct binder_device *device;
+
 	BUG_ON(!list_empty(&proc->todo));
 	BUG_ON(!list_empty(&proc->delivered_death));
+	device = container_of(proc->context, struct binder_device, context);
+	if (refcount_dec_and_test(&device->ref)) {
+		kfree(proc->context->name);
+		kfree(device);
+	}
 	binder_alloc_deferred_release(&proc->alloc);
 	put_task_struct(proc->tsk);
 	binder_stats_deleted(BINDER_STAT_PROC);
@@ -5406,7 +5413,6 @@ static int binder_node_release(struct binder_node *node, int refs)
 static void binder_deferred_release(struct binder_proc *proc)
 {
 	struct binder_context *context = proc->context;
-	struct binder_device *device;
 	struct rb_node *n;
 	int threads, nodes, incoming_refs, outgoing_refs, active_transactions;
 
@@ -5423,12 +5429,6 @@ static void binder_deferred_release(struct binder_proc *proc)
 		context->binder_context_mgr_node = NULL;
 	}
 	mutex_unlock(&context->context_mgr_node_lock);
-	device = container_of(proc->context, struct binder_device, context);
-	if (refcount_dec_and_test(&device->ref)) {
-		kfree(context->name);
-		kfree(device);
-	}
-	proc->context = NULL;
 	binder_inner_proc_lock(proc);
 	/*
 	 * Make sure proc stays alive after we
-- 
2.27.0.111.gc72c7da667-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

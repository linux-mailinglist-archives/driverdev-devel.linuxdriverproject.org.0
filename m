Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E989644F2B9
	for <lists+driverdev-devel@lfdr.de>; Sat, 13 Nov 2021 12:23:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DB307401B5;
	Sat, 13 Nov 2021 11:23:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LRpC9JVCndGG; Sat, 13 Nov 2021 11:23:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0E532401B8;
	Sat, 13 Nov 2021 11:23:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 87E511BF358
 for <devel@linuxdriverproject.org>; Sat, 13 Nov 2021 11:23:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7213F60685
 for <devel@linuxdriverproject.org>; Sat, 13 Nov 2021 11:23:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tP_UHQ-zGrh2 for <devel@linuxdriverproject.org>;
 Sat, 13 Nov 2021 11:23:02 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9FEEA60683
 for <devel@driverdev.osuosl.org>; Sat, 13 Nov 2021 11:23:02 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id B7E3060FE7;
 Sat, 13 Nov 2021 11:23:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1636802582;
 bh=1Id5pw+H8/siKBLZ/qDnuEReYbPHdoJddZAXXxF0TcU=;
 h=Subject:To:Cc:From:Date:In-Reply-To:From;
 b=BeNCy7xZYLUWdEcEodoDAikSniyQ5houVX7PKwg5BflWydmJRkG6g8KnK5lnPEbbh
 MGKZXQITkv3xKDcTw3zAtZzvX2anAEKX0EETlD1q9uXTQel5CAgyY21hOjI3SAhgOg
 /aJ4dAVwVEX8Mr7M/4DPUAMHYVTAKUoyy3sO1rIU=
Subject: Patch "binder: use cred instead of task for getsecid" has been added
 to the 5.4-stable tree
To: arve@android.com, casey@schaufler-ca.com, christian@brauner.io,
 devel@driverdev.osuosl.org, eparis@parisplace.org, gregkh@linuxfoundation.org,
 jannh@google.com, jeffv@google.com, jmorris@namei.org, joel@joelfernandes.org,
 keescook@chromium.org, kernel-team@android.com, lkp@intel.com,
 maco@android.com, paul@paul-moore.com, serge@hallyn.com,
 stephen.smalley.work@gmail.com, tkjos@android.com, tkjos@google.com,
 zohar@linux.ibm.com
From: <gregkh@linuxfoundation.org>
Date: Sat, 13 Nov 2021 12:22:59 +0100
In-Reply-To: <20211110230025.3272776-3-tkjos@google.com>
Message-ID: <1636802579183219@kroah.com>
MIME-Version: 1.0
X-stable: commit
X-Patchwork-Hint: ignore 
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
Cc: stable-commits@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


This is a note to let you know that I've just added the patch titled

    binder: use cred instead of task for getsecid

to the 5.4-stable tree which can be found at:
    http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;a=summary

The filename of the patch is:
     binder-use-cred-instead-of-task-for-getsecid.patch
and it can be found in the queue-5.4 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From foo@baz Sat Nov 13 12:18:28 PM CET 2021
From: Todd Kjos <tkjos@google.com>
Date: Wed, 10 Nov 2021 15:00:25 -0800
Subject: binder: use cred instead of task for getsecid
To: stable@vger.kernel.org, gregkh@linuxfoundation.org, arve@android.com, tkjos@android.com, maco@android.com, christian@brauner.io, jmorris@namei.org, serge@hallyn.com, paul@paul-moore.com, stephen.smalley.work@gmail.com, eparis@parisplace.org, keescook@chromium.org, jannh@google.com, jeffv@google.com, zohar@linux.ibm.com, linux-security-module@vger.kernel.org, selinux@vger.kernel.org, devel@driverdev.osuosl.org
Cc: joel@joelfernandes.org, kernel-team@android.com, Todd Kjos <tkjos@google.com>, kernel test robot <lkp@intel.com>, Casey Schaufler <casey@schaufler-ca.com>
Message-ID: <20211110230025.3272776-3-tkjos@google.com>

From: Todd Kjos <tkjos@google.com>

commit 4d5b5539742d2554591751b4248b0204d20dcc9d upstream.

Use the 'struct cred' saved at binder_open() to lookup
the security ID via security_cred_getsecid(). This
ensures that the security context that opened binder
is the one used to generate the secctx.

Cc: stable@vger.kernel.org # 5.4+
Fixes: ec74136ded79 ("binder: create node flag to request sender's security context")
Signed-off-by: Todd Kjos <tkjos@google.com>
Suggested-by: Stephen Smalley <stephen.smalley.work@gmail.com>
Reported-by: kernel test robot <lkp@intel.com>
Acked-by: Casey Schaufler <casey@schaufler-ca.com>
Signed-off-by: Paul Moore <paul@paul-moore.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/android/binder.c |    2 +-
 include/linux/security.h |    5 +++++
 2 files changed, 6 insertions(+), 1 deletion(-)

--- a/drivers/android/binder.c
+++ b/drivers/android/binder.c
@@ -3106,7 +3106,7 @@ static void binder_transaction(struct bi
 		u32 secid;
 		size_t added_size;
 
-		security_task_getsecid(proc->tsk, &secid);
+		security_cred_getsecid(proc->cred, &secid);
 		ret = security_secid_to_secctx(secid, &secctx, &secctx_sz);
 		if (ret) {
 			return_error = BR_FAILED_REPLY;
--- a/include/linux/security.h
+++ b/include/linux/security.h
@@ -985,6 +985,11 @@ static inline void security_transfer_cre
 {
 }
 
+static inline void security_cred_getsecid(const struct cred *c, u32 *secid)
+{
+	*secid = 0;
+}
+
 static inline int security_kernel_act_as(struct cred *cred, u32 secid)
 {
 	return 0;


Patches currently in stable-queue which might be from tkjos@google.com are

queue-5.4/binder-use-cred-instead-of-task-for-selinux-checks.patch
queue-5.4/binder-use-cred-instead-of-task-for-getsecid.patch
queue-5.4/binder-use-euid-from-cred-instead-of-using-task.patch
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

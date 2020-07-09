Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B92E121AB65
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 Jul 2020 01:20:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4118987659;
	Thu,  9 Jul 2020 23:19:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wJUPwhtyqFer; Thu,  9 Jul 2020 23:19:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 02BB2868F4;
	Thu,  9 Jul 2020 23:19:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E28CA1BF332
 for <devel@linuxdriverproject.org>; Thu,  9 Jul 2020 23:19:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9F76220523
 for <devel@linuxdriverproject.org>; Thu,  9 Jul 2020 23:19:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RcnhARMAhjH1 for <devel@linuxdriverproject.org>;
 Thu,  9 Jul 2020 23:19:03 +0000 (UTC)
X-Greylist: delayed 00:51:06 by SQLgrey-1.7.6
Received: from mail-ua1-f74.google.com (mail-ua1-f74.google.com
 [209.85.222.74])
 by silver.osuosl.org (Postfix) with ESMTPS id EFA932051D
 for <devel@driverdev.osuosl.org>; Thu,  9 Jul 2020 23:19:02 +0000 (UTC)
Received: by mail-ua1-f74.google.com with SMTP id l2so1615231uae.19
 for <devel@driverdev.osuosl.org>; Thu, 09 Jul 2020 16:19:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=2svhTGYNhQQ8BWxXI3AnEyv5dIC/Hq4WcCfakt2aRJU=;
 b=K4qmWbnW5rK68XlaFbVP02DpqD4f/WEbbEqkLgaA8QI8VgYgOXma8kzKbPGbWWz+dB
 00lppXgxz17OyY7myqNDKHtxhQ4FZo7I9zWm4gHXLfjA9kd/WMwH99m/WBV8q+/191oV
 fv0yRCfznpyxjQc0mnrCbN5yicazbOO9/6MD5Rhw/dIXAbH8W42VJEpIlsN8AFn54BIn
 vz/Ge98K1cbtNOoekqwGwYHa3RHjHaN9liiCttFd4n7RKzqYtcvrts+3qTXvEReVp5LC
 DONvzQGYL8VF9IF5S0Dv5ytXNs5rOWCh6fWvejJYI97IRaZ1ggxW1Rir673PXmN1ScOM
 NPKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=2svhTGYNhQQ8BWxXI3AnEyv5dIC/Hq4WcCfakt2aRJU=;
 b=o1qK1QMKJhp7bDeM3fcCFzULVStRH3zdaCLzNccof739x+3AXVW5nNww+Vt1wsfCoU
 OwfvupVhEXGQADO+x+ucu60MXKUg+QN0ixINuNSiIGPWMipb1nF+s2Dk/JWNfMun3GNV
 MxBGpS7MYZX/+nyhUyzVU2hNChEyS1l3ULfpxoGMD3oEyrkOesdbm7tmlLRkKDK60tcl
 HXLnyIN4AcMZ/sjDX4kY+CiSx0td5LqY9gWDeRARpsE7CKzdo23oZReTkvkf9gR6yvqD
 p43M7gPPHinP2uklfIprutgiKCd5mngy/1ItiMNo7f90a59pvquqhqjF7MqdNjOzRXc6
 bwgA==
X-Gm-Message-State: AOAM533aJrp2UmVSIkTiQAMDEOmd2zXyoCnCtZPlZEXY0dpvqch56/uQ
 O+rMR32+zqPmzVgSpGu7Hd/gJuo6KQ==
X-Google-Smtp-Source: ABdhPJxXlHBpfRejU4uBBSsn6+3vhIguR3D6zEnD5lxPp1LrcRbuh7pn+DNLUcGFAc8MEcy0eO6d9AIq0w==
X-Received: by 2002:ad4:458a:: with SMTP id x10mr64593955qvu.223.1594333675267; 
 Thu, 09 Jul 2020 15:27:55 -0700 (PDT)
Date: Fri, 10 Jul 2020 00:27:43 +0200
Message-Id: <20200709222743.1047973-1-jannh@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.27.0.389.gc38d7665816-goog
Subject: [PATCH] binder: Prevent context manager from incrementing ref 0
From: Jann Horn <jannh@google.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 "=?UTF-8?q?Arve=20Hj=C3=B8nnev=C3=A5g?=" <arve@android.com>,
 Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>, 
 Joel Fernandes <joel@joelfernandes.org>,
 Christian Brauner <christian@brauner.io>
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
Cc: devel@driverdev.osuosl.org, Mattias Nissler <mnissler@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Binder is designed such that a binder_proc never has references to
itself. If this rule is violated, memory corruption can occur when a
process sends a transaction to itself; see e.g.
<https://syzkaller.appspot.com/bug?extid=09e05aba06723a94d43d>.

There is a remaining edgecase through which such a transaction-to-self
can still occur from the context of a task with BINDER_SET_CONTEXT_MGR
access:

 - task A opens /dev/binder twice, creating binder_proc instances P1
   and P2
 - P1 becomes context manager
 - P2 calls ACQUIRE on the magic handle 0, allocating index 0 in its
   handle table
 - P1 dies (by closing the /dev/binder fd and waiting a bit)
 - P2 becomes context manager
 - P2 calls ACQUIRE on the magic handle 0, allocating index 1 in its
   handle table
   [this triggers a warning: "binder: 1974:1974 tried to acquire
   reference to desc 0, got 1 instead"]
 - task B opens /dev/binder once, creating binder_proc instance P3
 - P3 calls P2 (via magic handle 0) with (void*)1 as argument (two-way
   transaction)
 - P2 receives the handle and uses it to call P3 (two-way transaction)
 - P3 calls P2 (via magic handle 0) (two-way transaction)
 - P2 calls P2 (via handle 1) (two-way transaction)

And then, if P2 does *NOT* accept the incoming transaction work, but
instead closes the binder fd, we get a crash.

Solve it by preventing the context manager from using ACQUIRE on ref 0.
There shouldn't be any legitimate reason for the context manager to do
that.

Additionally, print a warning if someone manages to find another way to
trigger a transaction-to-self bug in the future.

Cc: stable@vger.kernel.org
Fixes: 457b9a6f09f0 ("Staging: android: add binder driver")
Signed-off-by: Jann Horn <jannh@google.com>
---
 drivers/android/binder.c | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/drivers/android/binder.c b/drivers/android/binder.c
index f50c5f182bb5..cac65ff3a257 100644
--- a/drivers/android/binder.c
+++ b/drivers/android/binder.c
@@ -2982,6 +2982,12 @@ static void binder_transaction(struct binder_proc *proc,
 			goto err_dead_binder;
 		}
 		e->to_node = target_node->debug_id;
+		if (WARN_ON(proc == target_proc)) {
+			return_error = BR_FAILED_REPLY;
+			return_error_param = -EINVAL;
+			return_error_line = __LINE__;
+			goto err_invalid_target_handle;
+		}
 		if (security_binder_transaction(proc->tsk,
 						target_proc->tsk) < 0) {
 			return_error = BR_FAILED_REPLY;
@@ -3635,10 +3641,16 @@ static int binder_thread_write(struct binder_proc *proc,
 				struct binder_node *ctx_mgr_node;
 				mutex_lock(&context->context_mgr_node_lock);
 				ctx_mgr_node = context->binder_context_mgr_node;
-				if (ctx_mgr_node)
+				if (ctx_mgr_node) {
+					if (ctx_mgr_node->proc == proc) {
+						binder_user_error("%d:%d context manager tried to acquire desc 0\n");
+						mutex_unlock(&context->context_mgr_node_lock);
+						return -EINVAL;
+					}
 					ret = binder_inc_ref_for_node(
 							proc, ctx_mgr_node,
 							strong, NULL, &rdata);
+				}
 				mutex_unlock(&context->context_mgr_node_lock);
 			}
 			if (ret)

base-commit: 2a89b99f580371b86ae9bafd6cbeccd3bfab524a
-- 
2.27.0.389.gc38d7665816-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

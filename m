Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40A0C21ABBE
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 Jul 2020 01:39:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 43CF589BBF;
	Thu,  9 Jul 2020 23:39:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XCznny05bM3d; Thu,  9 Jul 2020 23:39:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C297489BBB;
	Thu,  9 Jul 2020 23:39:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BBF811BF332
 for <devel@linuxdriverproject.org>; Thu,  9 Jul 2020 23:39:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B7E7789BBB
 for <devel@linuxdriverproject.org>; Thu,  9 Jul 2020 23:39:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id urH01ryKkGb0 for <devel@linuxdriverproject.org>;
 Thu,  9 Jul 2020 23:39:32 +0000 (UTC)
X-Greylist: delayed 00:30:33 by SQLgrey-1.7.6
Received: from mail-lj1-f202.google.com (mail-lj1-f202.google.com
 [209.85.208.202])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BE39889BB1
 for <devel@driverdev.osuosl.org>; Thu,  9 Jul 2020 23:39:31 +0000 (UTC)
Received: by mail-lj1-f202.google.com with SMTP id e3so2747228ljp.14
 for <devel@driverdev.osuosl.org>; Thu, 09 Jul 2020 16:39:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=iqosYcn7kQPjocZvyi+NfPVq5PvGqtnjSCLp5/oKQXs=;
 b=RavDLxpZJLKohKgWzL6HD55f+hMB3P+QQOus0wp2wrm4kjDav0qJeK3m9hcaCT18yu
 Hv4gzTPyp79k4xoYh9DrZ/tikObbYHo7i01guwW7nYM0fGhuR2TGRiXcRUd5dLqUwiDp
 WYRU0DbPe0chjytzjudEN4s1tZvCVVQaAjol4GX+jD0q9X4qLqRrzPnB/NSYDrzCJ8Ht
 zkG7/CZTplxCkk19echChOtumQe6CWncIyFj0CObyLO8bXqKl6qYlpC+qzeFo/dacHvV
 edQADHrxMeOUOXch9kqvdPFx15QbuQ0yHqmdOSVoXDIs6XK3aaS/wsTjcgxxBymtBkI4
 yhMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=iqosYcn7kQPjocZvyi+NfPVq5PvGqtnjSCLp5/oKQXs=;
 b=c3j+5rZ9e1cBJc6de/fIPPvF76qMNBDJdvMeQy3u1vWsmWVBiNouColKLDaD1Sxnev
 T4jqTa/5Y24th2rJxzFNWhcsDpisS+Yd51GXN3PidcyErfpi2307WbiehHkS4zOu+i6Z
 I2oI3bfJl3HA8EXLoFCKnTaA9KXwKqT2NXW5DhAWi9dV2OT2SzkE5yzpdaDrfjrr1Ezp
 f4Mb/0tl41R5lKAKPaIwRYbDsbjfKmIPS0bOBgWBa+sAqwpHHzgR2DEd1ew9VG+gS5gr
 XG6CJHjnq9HZavSiKNL0ISuFmLk9K+zgjN7BMfRLH1mg1x6wY7ishoI0YEw/1AhTdiLy
 P4Qw==
X-Gm-Message-State: AOAM533m9wTi/9wtCTEh4Tb2z39eZrzhSUbQODBwvWYeGYj95pNCTi22
 deuZvOmLxAiUe0xuX3eP8L0V3v8SgQ==
X-Google-Smtp-Source: ABdhPJx7YKdcI+dRFIHHz7zvtqV/mFv+19PzycpPNaLcc/1csUi0EEyliqdHL9qrUiIPnuZFFldHqQa2+w==
X-Received: by 2002:a17:906:a055:: with SMTP id
 bg21mr54361093ejb.516.1594334402107; 
 Thu, 09 Jul 2020 15:40:02 -0700 (PDT)
Date: Fri, 10 Jul 2020 00:39:48 +0200
Message-Id: <20200709223948.1051613-1-jannh@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.27.0.389.gc38d7665816-goog
Subject: [PATCH resend] binder: Prevent context manager from incrementing ref 0
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
Cc: devel@driverdev.osuosl.org, Mattias Nissler <mnissler@google.com>,
 linux-kernel@vger.kernel.org
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
sending again because I forgot to CC LKML the first time... sorry about
the spam.

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

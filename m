Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F74722EC3C
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Jul 2020 14:32:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6FD8685EBE;
	Mon, 27 Jul 2020 12:32:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Vo6au8cYcyCz; Mon, 27 Jul 2020 12:32:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D803085EA4;
	Mon, 27 Jul 2020 12:32:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 966BE1BF3E1
 for <devel@linuxdriverproject.org>; Mon, 27 Jul 2020 12:32:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9281987C69
 for <devel@linuxdriverproject.org>; Mon, 27 Jul 2020 12:32:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a-BWVjKHCzn5 for <devel@linuxdriverproject.org>;
 Mon, 27 Jul 2020 12:32:39 +0000 (UTC)
X-Greylist: delayed 00:20:32 by SQLgrey-1.7.6
Received: from mail-wr1-f74.google.com (mail-wr1-f74.google.com
 [209.85.221.74])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B45E387C3F
 for <devel@driverdev.osuosl.org>; Mon, 27 Jul 2020 12:32:38 +0000 (UTC)
Received: by mail-wr1-f74.google.com with SMTP id f7so3878028wrs.8
 for <devel@driverdev.osuosl.org>; Mon, 27 Jul 2020 05:32:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=3aunXEclUEnw9zzoqAt4B/Xd758KEGTBYGAew0JhOfI=;
 b=lBKpYkHXL9cr1MK5UhiU+WFNjkuT1DDsRrEWm/IjXB3rn7019pFX5OJ/MrKrZn293A
 lRpSS+pEpvHVYQW55rkeFnjRllBkf4WDcIyDNaPqLB2g/OrqGRwxBR/lLKm4/yl50jL6
 2hV1wL3ijYQMq/E1wK46J2bsmvKeZHkqMNYNEmda8UV4UzlHb3UrPhXkktNHfxZJBiKC
 6UYj4hI4vYvAbJ4D1El5WLNm+XGXsm1Jk1Z7TFb+/1uoTggHxQ+Nt7/gNhZTBFzZybCx
 n0lPdfmhHLEkMP1C5reJQKbRIhIWkIw2AN7RYW1KOEz3wvucSg8CxXUz4J91XgxCOKKr
 vwhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=3aunXEclUEnw9zzoqAt4B/Xd758KEGTBYGAew0JhOfI=;
 b=Na8DHPCbdo4joENVvkIF6mp5yBiH2LZrpjqZQbY6kvK829PCVBiIj6NRdD6TmUnYR1
 1x4voWJHEKfHPAJEldZV3LvTMI9wLbzyjwSAZCPf9ZKGAHTz+NmgUIM2iZ+/beYmyTV5
 UwoG1R2IBWBmo+aXnS1tiQNHFJWFMe8+KGXO69qBN1MYefxN/f/GbHjH4TtCmPLxZE6h
 7nA/yhaAD5nLtrkrUd0o1DBLPicISi2VT0dskA5m8Flo/cc1yw5cCQ4y8nKBzy9R8WUV
 b0xTEYY19yP08iavz6vfEoJxJB8dkjaD1nhrKmocgMKSC35t0J8mDkTz1LxB751iFeEF
 nk7g==
X-Gm-Message-State: AOAM530NDTMrYbFeS3zXC+pJbQDg4O/07h7013BFhYqJce3qR9qhiWa6
 9K3XHkCJfhfXSlu6u1I4JAHqQKzR/Q==
X-Google-Smtp-Source: ABdhPJxrpqCKrJECkR7sfWmBqjKOzGM9Av+BVYwV5eq55kxVIULvn4Ac35Kxre6lCbi6EpmQr7IR2bJqKg==
X-Received: by 2002:a17:907:7204:: with SMTP id
 dr4mr5894350ejc.258.1595851478002; 
 Mon, 27 Jul 2020 05:04:38 -0700 (PDT)
Date: Mon, 27 Jul 2020 14:04:24 +0200
Message-Id: <20200727120424.1627555-1-jannh@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.28.0.rc0.142.g3c755180ce-goog
Subject: [PATCH v2] binder: Prevent context manager from incrementing ref 0
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
Acked-by: Todd Kjos <tkjos@google.com>
Signed-off-by: Jann Horn <jannh@google.com>
---
fixed that broken binder_user_error() from the first version...
I sent v1 while I had a dirty tree containing the missing fix. whoops.

 drivers/android/binder.c | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/drivers/android/binder.c b/drivers/android/binder.c
index f50c5f182bb5..5b310eea9e52 100644
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
@@ -3635,10 +3641,17 @@ static int binder_thread_write(struct binder_proc *proc,
 				struct binder_node *ctx_mgr_node;
 				mutex_lock(&context->context_mgr_node_lock);
 				ctx_mgr_node = context->binder_context_mgr_node;
-				if (ctx_mgr_node)
+				if (ctx_mgr_node) {
+					if (ctx_mgr_node->proc == proc) {
+						binder_user_error("%d:%d context manager tried to acquire desc 0\n",
+								  proc->pid, thread->pid);
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
2.28.0.rc0.142.g3c755180ce-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

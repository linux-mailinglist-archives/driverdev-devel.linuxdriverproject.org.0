Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B559F43100
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Jun 2019 22:29:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E2725880E0;
	Wed, 12 Jun 2019 20:29:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1zTZ9dC9a+wM; Wed, 12 Jun 2019 20:29:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 716B487FFB;
	Wed, 12 Jun 2019 20:29:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BC1AD1BF3E5
 for <devel@linuxdriverproject.org>; Wed, 12 Jun 2019 20:29:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B99AC87FFB
 for <devel@linuxdriverproject.org>; Wed, 12 Jun 2019 20:29:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 617ms9sH9Ykd for <devel@linuxdriverproject.org>;
 Wed, 12 Jun 2019 20:29:41 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 36C4E87FDE
 for <devel@driverdev.osuosl.org>; Wed, 12 Jun 2019 20:29:41 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id t7so4479991plr.11
 for <devel@driverdev.osuosl.org>; Wed, 12 Jun 2019 13:29:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=android.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ztsODx8FS4iqleQB6S5Sbaw6s2vQsWeNtbIf3Gi3ev8=;
 b=tV0rKoo7aPIwJkeuB47jNZrom/4GFwVWKi8SGyHTggc/tcIopfSdYikE62up/2HeTh
 dQcabzL9jPuFZsaUE4LdfoIA4QcGn8xhS+cI0jpf5X+pyP5jcDHjWlmuR8QPaH5+kTa5
 +0ZMk/+0aEDq2Ypvj0edwR9ny5tFDUT0qbCdFJVvsfmmenMvuturIP8Y5nRKTF+mmrRT
 sm+tuLhfqvE7uOdl1JDdB5JnaF6B+k6Dh7JqKloBbiR1bMyjaYQgQV/kMMTnUbnHowJS
 Y++xPx3ckxFKqtKywpfU5k46nMdg7tDhlA6O2bF9f3URbcKvpA1J9LqwqDKl8HnxODlv
 e0TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ztsODx8FS4iqleQB6S5Sbaw6s2vQsWeNtbIf3Gi3ev8=;
 b=dJtsIIjFT9tPaTvaxxH21aTAg0clxUCYvvGdiF4Hcf2ClG7WXSpFA/vjQp5LNYarVs
 dvg394sm6mPaoY9HhnLZEGI+Q1QKp/T6SUtmYB2P8EB8L/u2PpuDtQOwV136F/7wnkcW
 m9JkSlMRNpCB60Ve+HAvWcgD1KR72lVboVKjqtYY5cQnh5ErHfySZQJFOWfQidSe2fVg
 olg4cHZ7lMKCf4RWkQrC135nnTKCN1vVon/JvGfhqAnWZEit/H6UAMIGe7S2XkpzemZQ
 8+Xse+WUAiUgZOmUUjLOscqenInolHLekTLz2CZzEjREbsuuGP26YYHqX8AQneL3z3Rp
 oAMQ==
X-Gm-Message-State: APjAAAUnbNmm+0CmFKw6uYmtJ7bGQ0TOZysqe03I0Du2ptkxCNnSY6ET
 iG8OVP2v2glZqA0F/u9AddzCcQ==
X-Google-Smtp-Source: APXvYqzFoHCFTQ/mild4RR3i5+q+a6dheIBjD2C9qCG5ZWSzZfpIq355jaWaTpdrY6e1E+n4lFpbIA==
X-Received: by 2002:a17:902:d88e:: with SMTP id
 b14mr31956181plz.153.1560371380872; 
 Wed, 12 Jun 2019 13:29:40 -0700 (PDT)
Received: from ava-linux2.mtv.corp.google.com
 ([2620:0:1000:1601:6cc0:d41d:b970:fd7])
 by smtp.googlemail.com with ESMTPSA id 3sm392555pfp.114.2019.06.12.13.29.39
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 12 Jun 2019 13:29:40 -0700 (PDT)
From: Todd Kjos <tkjos@android.com>
X-Google-Original-From: Todd Kjos <tkjos@google.com>
To: tkjos@google.com, gregkh@linuxfoundation.org, arve@android.com,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, maco@google.com
Subject: [PATCH] binder: fix possible UAF when freeing buffer
Date: Wed, 12 Jun 2019 13:29:27 -0700
Message-Id: <20190612202927.54518-1-tkjos@google.com>
X-Mailer: git-send-email 2.22.0.rc2.383.gf4fbbf30c2-goog
MIME-Version: 1.0
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

There is a race between the binder driver cleaning
up a completed transaction via binder_free_transaction()
and a user calling binder_ioctl(BC_FREE_BUFFER) to
release a buffer. It doesn't matter which is first but
they need to be protected against running concurrently
which can result in a UAF.

Signed-off-by: Todd Kjos <tkjos@google.com>
---
 drivers/android/binder.c | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/android/binder.c b/drivers/android/binder.c
index 748ac489ef7eb..bc26b5511f0a9 100644
--- a/drivers/android/binder.c
+++ b/drivers/android/binder.c
@@ -1941,8 +1941,18 @@ static void binder_free_txn_fixups(struct binder_transaction *t)
 
 static void binder_free_transaction(struct binder_transaction *t)
 {
-	if (t->buffer)
-		t->buffer->transaction = NULL;
+	struct binder_proc *target_proc = t->to_proc;
+
+	if (target_proc) {
+		binder_inner_proc_lock(target_proc);
+		if (t->buffer)
+			t->buffer->transaction = NULL;
+		binder_inner_proc_unlock(target_proc);
+	}
+	/*
+	 * If the transaction has no target_proc, then
+	 * t->buffer->transaction has already been cleared.
+	 */
 	binder_free_txn_fixups(t);
 	kfree(t);
 	binder_stats_deleted(BINDER_STAT_TRANSACTION);
@@ -3551,10 +3561,12 @@ static void binder_transaction(struct binder_proc *proc,
 static void
 binder_free_buf(struct binder_proc *proc, struct binder_buffer *buffer)
 {
+	binder_inner_proc_lock(proc);
 	if (buffer->transaction) {
 		buffer->transaction->buffer = NULL;
 		buffer->transaction = NULL;
 	}
+	binder_inner_proc_unlock(proc);
 	if (buffer->async_transaction && buffer->target_node) {
 		struct binder_node *buf_node;
 		struct binder_work *w;
-- 
2.22.0.rc2.383.gf4fbbf30c2-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

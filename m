Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B576369CAF
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Jul 2019 22:22:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C751286D82;
	Mon, 15 Jul 2019 20:22:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nnHoGTrsi0fs; Mon, 15 Jul 2019 20:22:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3E46986BE0;
	Mon, 15 Jul 2019 20:22:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 444801BF29C
 for <devel@linuxdriverproject.org>; Mon, 15 Jul 2019 20:22:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 412FB87A96
 for <devel@linuxdriverproject.org>; Mon, 15 Jul 2019 20:22:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7JJhgyEInS7m for <devel@linuxdriverproject.org>;
 Mon, 15 Jul 2019 20:22:15 +0000 (UTC)
X-Greylist: delayed 00:58:32 by SQLgrey-1.7.6
Received: from mail-vk1-f202.google.com (mail-vk1-f202.google.com
 [209.85.221.202])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B24AC87A8E
 for <devel@driverdev.osuosl.org>; Mon, 15 Jul 2019 20:22:15 +0000 (UTC)
Received: by mail-vk1-f202.google.com with SMTP id x71so40222vkd.15
 for <devel@driverdev.osuosl.org>; Mon, 15 Jul 2019 13:22:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=UrmHiwd7l9RTQPWRIFMpdG4iVBmNxjeLn/aT+hZa6RI=;
 b=Mxa6wWDjygyjXJJ3zd1w415IKp2A7JgcpMt/VNTgr5UQNXhkE9XOpO9loxlWAT7L53
 9nsh50Xu+sd34VgfjB1/O10CHb8yTgOFUlPHKS3oNNKcD5kkmZYk5ZeompxkMj/BAr9p
 HlQNp8QzZ2AY6XmGwhcSNkpZxLNERVgH9CkTBxol9C0CEpUspfmJiAAiot2UJXTAZm9O
 IUrRXKtK9DdqnSWzBnIRktqIk1RO69PXYq9fqoA6JldUaV/uoA3YIUjn4ygJEKrd/AJW
 clZfNW3nadwEb/uQF1braPjBGw2llxQlK/ZLZH+Xdk/WAekt4Au5WL6Spo3yaHok5C55
 144A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=UrmHiwd7l9RTQPWRIFMpdG4iVBmNxjeLn/aT+hZa6RI=;
 b=r4RmrV1LsdeXHWDNVfrCX8K3Ery+W9nLXOirUCFPJm+lqYv9tu/iB3wfPOw7jJselD
 atKiaPqHnm+6XmI3hP1vqiOj612ycE/9CBvqYOmNoomJtNRuSF4QLPp9rC/N1ARVnpYW
 rAOlYGZTgqZpTuFW2ySXQwE4sGZ+8i+DigDvP/o9phplYJQz8VKCoWgxciMB2q4yTAdv
 SqNzfqlLDFO4SlMqby5nq1VxenvAfEAEmOOuiIW+lMDn32lEAUaF0jSIHJZ+2vQN4KdF
 zy0NdTZUoleDJfGzw/yjnewRNRbjw50I6kciy9aZx0foVyM2F/2K/uxk0ryiKB6a67Av
 blaQ==
X-Gm-Message-State: APjAAAUJhR1cpO6dz2gQNFj13En7306Jsz2EwTRr80lZf+zsznkMKTrh
 u0dehNKqhNKpMetMUJu/53eN7UikEZA=
X-Google-Smtp-Source: APXvYqwsN5hT5MT5xZGb058JDliA81AgGEm89BFgX3G+jX5S4A/QmOMomqtBSuHe87yIDNlPcG/af7g78H4=
X-Received: by 2002:a63:f346:: with SMTP id t6mr29578283pgj.203.1563218321271; 
 Mon, 15 Jul 2019 12:18:41 -0700 (PDT)
Date: Mon, 15 Jul 2019 12:18:04 -0700
Message-Id: <20190715191804.112933-1-hridya@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.22.0.510.g264f2c817a-goog
Subject: [PATCH] binder: prevent transactions to context manager from its own
 process.
From: Hridya Valsaraju <hridya@google.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 "=?UTF-8?q?Arve=20Hj=C3=B8nnev=C3=A5g?=" <arve@android.com>,
 Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>, 
 Joel Fernandes <joel@joelfernandes.org>,
 Christian Brauner <christian@brauner.io>, 
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
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
Cc: Hridya Valsaraju <hridya@google.com>,
 syzbot+8b3c354d33c4ac78bfad@syzkaller.appspotmail.com, kernel-team@android.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Currently, a transaction to context manager from its own process
is prevented by checking if its binder_proc struct is the same as
that of the sender. However, this would not catch cases where the
process opens the binder device again and uses the new fd to send
a transaction to the context manager.

Reported-by: syzbot+8b3c354d33c4ac78bfad@syzkaller.appspotmail.com
Signed-off-by: Hridya Valsaraju <hridya@google.com>
---
 drivers/android/binder.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/android/binder.c b/drivers/android/binder.c
index e4d25ebec5be..89b9cedae088 100644
--- a/drivers/android/binder.c
+++ b/drivers/android/binder.c
@@ -3138,7 +3138,7 @@ static void binder_transaction(struct binder_proc *proc,
 			else
 				return_error = BR_DEAD_REPLY;
 			mutex_unlock(&context->context_mgr_node_lock);
-			if (target_node && target_proc == proc) {
+			if (target_node && target_proc->pid == proc->pid) {
 				binder_user_error("%d:%d got transaction to context manager from process owning it\n",
 						  proc->pid, thread->pid);
 				return_error = BR_FAILED_REPLY;
-- 
2.22.0.510.g264f2c817a-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

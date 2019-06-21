Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 00E564EEBA
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Jun 2019 20:18:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9F11582404;
	Fri, 21 Jun 2019 18:18:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4DhB2jMcKcl3; Fri, 21 Jun 2019 18:18:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id DC5E481D35;
	Fri, 21 Jun 2019 18:18:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9DC661BF36C
 for <devel@linuxdriverproject.org>; Fri, 21 Jun 2019 18:18:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9AD1D87FC3
 for <devel@linuxdriverproject.org>; Fri, 21 Jun 2019 18:18:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CG-dB-M6qEqZ for <devel@linuxdriverproject.org>;
 Fri, 21 Jun 2019 18:18:37 +0000 (UTC)
X-Greylist: delayed 00:17:22 by SQLgrey-1.7.6
Received: from mail-vk1-f196.google.com (mail-vk1-f196.google.com
 [209.85.221.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3FB7887B81
 for <devel@driverdev.osuosl.org>; Fri, 21 Jun 2019 18:18:37 +0000 (UTC)
Received: by mail-vk1-f196.google.com with SMTP id e83so1482091vke.12
 for <devel@driverdev.osuosl.org>; Fri, 21 Jun 2019 11:18:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=android.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1a5yiDbT8MVSdZIc2KfFVpg6BKB4IieuBTb1pHUhvRI=;
 b=SFWnq2eghvTe1iwSkujW45VCBIXhB+yUedma3hkhUXA//kvQ0CCJxRKcl0GvTeDzv4
 hMmhFoZUgAGbqGbNR0mwoy9q77igvy0l8/dC5RDkYI0uC/RxGZPRxfgEoj1+kKQDj2aB
 9xXgxiStwoURXbUGVn07kbUo61pPg0Lqiwl8GhdJh81QUqmz17xtgK8epu2S9T6coGT6
 T7cMF6l9C2bHBR4KFXno8basKcQ+cL/9jW2o30rxvG9ejzpGMdXVYagfco8tB2zRf8XO
 sX6+gpBAoreGJ+0tczOBUGPckFJ1Jhm1/I5l6kLBQUJv0JCLnaOdUinQuNIObUThdF7v
 llqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1a5yiDbT8MVSdZIc2KfFVpg6BKB4IieuBTb1pHUhvRI=;
 b=DIUsCT9mDNUAXgVLrYipZpF7wx/+I9a8/kzNmOZllsRToPZzm8xnekR16VF+nmcziA
 RL7O0scKQk91JIeDTXlA6SMIw3FXenap9bh4UXBykKLkdCmCwp7X1/bOH6VD7yugOrHY
 Gqd8XghhHrCB8eoD8UK3qhgqEBpQoC7N8lV6+PMhtOKhYAcqCJFfLvPlKF899ZFRvFz1
 ww7zTuOs4CMOCUv4Ss5C88EKsGgkG6kpmpAspEv4HtksJ3bB4EWo+eNZY/r6+C/YPAlL
 kEtTjNkVtZw0AUmzjQdjAkdbM1QqLgsMVf17aio/0k9DJbXdompIBFIzsyNf0GSxPl+D
 dLPQ==
X-Gm-Message-State: APjAAAU8JUfD59+vWVhXWYMcpW6bYF8Bgk7zmduG64sOfphnP6ijuRrp
 QOVB8cw9zIHfqUHt37x747Va2u6eYLI1KA==
X-Google-Smtp-Source: APXvYqwGNzkF0Mu5F/YRh9UNf59UqXo8AFlR0RG/2kuuHyyUh2AYvpVseMyZZKARTpZyPEhcMoYMCA==
X-Received: by 2002:a63:ba08:: with SMTP id k8mr4368113pgf.378.1561139671255; 
 Fri, 21 Jun 2019 10:54:31 -0700 (PDT)
Received: from ava-linux2.mtv.corp.google.com
 ([2620:0:1000:1601:6cc0:d41d:b970:fd7])
 by smtp.googlemail.com with ESMTPSA id n98sm6290343pjc.26.2019.06.21.10.54.30
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 21 Jun 2019 10:54:30 -0700 (PDT)
From: Todd Kjos <tkjos@android.com>
X-Google-Original-From: Todd Kjos <tkjos@google.com>
To: tkjos@google.com, gregkh@linuxfoundation.org, arve@android.com,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, maco@google.com
Subject: [PATCH] binder: fix memory leak in error path
Date: Fri, 21 Jun 2019 10:54:15 -0700
Message-Id: <20190621175415.80024-1-tkjos@google.com>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
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
Cc: joel@joelfernandes.org,
 syzbot+182ce46596c3f2e1eb24@syzkaller.appspotmail.com, kernel-team@android.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

syzkallar found a 32-byte memory leak in a rarely executed error
case. The transaction complete work item was not freed if put_user()
failed when writing the BR_TRANSACTION_COMPLETE to the user command
buffer. Fixed by freeing it before put_user() is called.

Reported-by: syzbot+182ce46596c3f2e1eb24@syzkaller.appspotmail.com
Signed-off-by: Todd Kjos <tkjos@google.com>
---
 drivers/android/binder.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/android/binder.c b/drivers/android/binder.c
index bc26b5511f0a9..8bf039fdeb918 100644
--- a/drivers/android/binder.c
+++ b/drivers/android/binder.c
@@ -4268,6 +4268,8 @@ static int binder_thread_read(struct binder_proc *proc,
 		case BINDER_WORK_TRANSACTION_COMPLETE: {
 			binder_inner_proc_unlock(proc);
 			cmd = BR_TRANSACTION_COMPLETE;
+			kfree(w);
+			binder_stats_deleted(BINDER_STAT_TRANSACTION_COMPLETE);
 			if (put_user(cmd, (uint32_t __user *)ptr))
 				return -EFAULT;
 			ptr += sizeof(uint32_t);
@@ -4276,8 +4278,6 @@ static int binder_thread_read(struct binder_proc *proc,
 			binder_debug(BINDER_DEBUG_TRANSACTION_COMPLETE,
 				     "%d:%d BR_TRANSACTION_COMPLETE\n",
 				     proc->pid, thread->pid);
-			kfree(w);
-			binder_stats_deleted(BINDER_STAT_TRANSACTION_COMPLETE);
 		} break;
 		case BINDER_WORK_NODE: {
 			struct binder_node *node = container_of(w, struct binder_node, work);
-- 
2.22.0.410.gd8fdbe21b5-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

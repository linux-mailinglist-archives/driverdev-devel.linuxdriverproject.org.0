Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAD93175B4C
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Mar 2020 14:10:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 93CE7875B3;
	Mon,  2 Mar 2020 13:10:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PQN5MWui1OaK; Mon,  2 Mar 2020 13:10:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2E5198776C;
	Mon,  2 Mar 2020 13:10:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B5FDB1BF29E
 for <devel@linuxdriverproject.org>; Mon,  2 Mar 2020 13:10:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B1F7220418
 for <devel@linuxdriverproject.org>; Mon,  2 Mar 2020 13:10:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id imwc2hHFcGd6 for <devel@linuxdriverproject.org>;
 Mon,  2 Mar 2020 13:10:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f73.google.com (mail-ed1-f73.google.com
 [209.85.208.73])
 by silver.osuosl.org (Postfix) with ESMTPS id BB49A203F5
 for <devel@driverdev.osuosl.org>; Mon,  2 Mar 2020 13:10:15 +0000 (UTC)
Received: by mail-ed1-f73.google.com with SMTP id ck15so7748582edb.6
 for <devel@driverdev.osuosl.org>; Mon, 02 Mar 2020 05:10:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=j3aDuvHmNNb8lZp62OUl5ijcLNjosW5sWfAg0aQm8tI=;
 b=vHewCuWK7XwWw+VRmDWzRLkq61RHy9RnkX3i1kaJ8fw0M0PseejKlj/CZ68p864I5Y
 N9SGMmkirAc/jgX9ro369d5IupRgP9uXpmgTu6qWv8iSKdgEsMlJCz2VRmtvOWTC/16r
 grP1CWYBHUL0E9jvxhIWnmwDxoKIWwJkXclff8CBxM+bx6bGzs+trjRunmDlTB2f/ISR
 4gaf0upeQTTq1XGdTweSwITQOJ96unRsDb0Lq9uWCv3/Qh1ver1HInXxiCT1JaF/IrcZ
 6+l3xZm5rOWOQFpx9N2kSsUuQHMUqx615nH6Ov9dq4D2fJQYRKhTRasXzzX8hyCASUJc
 Yr+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=j3aDuvHmNNb8lZp62OUl5ijcLNjosW5sWfAg0aQm8tI=;
 b=fdQA1AJf8d0xF4XX7uQMuJeJeqi31q2e1Q5sp3TWuI6t9SynAUeQneBX8x0tEwX8zj
 mgSAWov07Cn0uYea+3An4CgKBoBP/YyK69BK5XyXFHTLbO2XbAAspISsV6fduD5oEZJm
 rx7POd+Gt6TgN+sXFEC3YJHRC1fZFsgVZ3J1KIacGIrFsW5Dhl+R6+6pui3u9RY/x4Cj
 MSlCAIifWr6XHj0vtqb+4r/uX7OTue3WvM4M3k/7nAX1PQ1/mZRxNdTNA4Ygn6kdbEyY
 Q969Gj6rhzrW2LU1CotsnhNX+vkjte506EKrTUUgAOCU9SkHqcbWnFoOPofwaMZSBrAY
 ZEvQ==
X-Gm-Message-State: APjAAAWrh6qrQH2W7VN9xelpAucSPwNvoofK0TfeLu1u0e6XMTa/c9zX
 ObTM6CCBZXVJsm7XQacH+o3alWQfbOg=
X-Google-Smtp-Source: ADFU+vvhEHHYZJ73Yy0CimVvZXBOlQbztjelV2mMGDGzouPCkzbXetIp+8NAtW54Y5Fi1/JwnKRZO766kE8=
X-Received: by 2002:adf:ce12:: with SMTP id p18mr5676203wrn.88.1583154287784; 
 Mon, 02 Mar 2020 05:04:47 -0800 (PST)
Date: Mon,  2 Mar 2020 14:04:30 +0100
In-Reply-To: <20200302130430.201037-1-glider@google.com>
Message-Id: <20200302130430.201037-3-glider@google.com>
Mime-Version: 1.0
References: <20200302130430.201037-1-glider@google.com>
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
Subject: [PATCH v2 3/3] sched/wait: avoid double initialization in
 ___wait_event()
From: glider@google.com
To: tkjos@google.com, keescook@chromium.org, gregkh@linuxfoundation.org, 
 arve@android.com, mingo@redhat.com
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
Cc: devel@driverdev.osuosl.org, jannh@google.com, peterz@infradead.org,
 linux-kernel@vger.kernel.org, Alexander Potapenko <glider@google.com>,
 dvyukov@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

With CONFIG_INIT_STACK_ALL enabled, the local __wq_entry is initialized
twice. Because Clang is currently unable to optimize the automatic
initialization away (init_wait_entry() is defined in another translation
unit), remove it with the __no_initialize annotation.

Cc: Kees Cook <keescook@chromium.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Alexander Potapenko <glider@google.com>

---
 v2:
  - changed __do_not_initialize to __no_initialize as requested by Kees
    Cook
---
 drivers/android/binder.c | 4 ++--
 include/linux/wait.h     | 3 ++-
 2 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/android/binder.c b/drivers/android/binder.c
index a59871532ff6b..66984e7c33094 100644
--- a/drivers/android/binder.c
+++ b/drivers/android/binder.c
@@ -4827,7 +4827,7 @@ static int binder_ioctl_write_read(struct file *filp,
 	struct binder_proc *proc = filp->private_data;
 	unsigned int size = _IOC_SIZE(cmd);
 	void __user *ubuf = (void __user *)arg;
-	struct binder_write_read bwr __no_initialize;
+	struct binder_write_read bwr;
 
 	if (size != sizeof(struct binder_write_read)) {
 		ret = -EINVAL;
@@ -5026,7 +5026,7 @@ static long binder_ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
 			goto err;
 		break;
 	case BINDER_SET_MAX_THREADS: {
-		int max_threads;
+		int max_threads __no_initialize;
 
 		if (copy_from_user(&max_threads, ubuf,
 				   sizeof(max_threads))) {
diff --git a/include/linux/wait.h b/include/linux/wait.h
index 3283c8d021377..b52a9bb2c7727 100644
--- a/include/linux/wait.h
+++ b/include/linux/wait.h
@@ -262,7 +262,8 @@ extern void init_wait_entry(struct wait_queue_entry *wq_entry, int flags);
 #define ___wait_event(wq_head, condition, state, exclusive, ret, cmd)		\
 ({										\
 	__label__ __out;							\
-	struct wait_queue_entry __wq_entry;					\
+	/* Unconditionally initialized by init_wait_entry(). */			\
+	struct wait_queue_entry __wq_entry __no_initialize;			\
 	long __ret = ret;	/* explicit shadow */				\
 										\
 	init_wait_entry(&__wq_entry, exclusive ? WQ_FLAG_EXCLUSIVE : 0);	\
-- 
2.25.0.265.gbab2e86ba0-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

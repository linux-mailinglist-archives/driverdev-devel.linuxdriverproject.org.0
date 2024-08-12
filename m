Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1097094F8DE
	for <lists+driverdev-devel@lfdr.de>; Mon, 12 Aug 2024 23:19:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 68D018113A;
	Mon, 12 Aug 2024 21:19:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3t6s6qVsVslZ; Mon, 12 Aug 2024 21:18:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9A2F58117A
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9A2F58117A;
	Mon, 12 Aug 2024 21:18:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5388F1BF330
 for <devel@linuxdriverproject.org>; Mon, 12 Aug 2024 21:18:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3E6A78113A
 for <devel@linuxdriverproject.org>; Mon, 12 Aug 2024 21:18:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WmhNaroSDk2h for <devel@linuxdriverproject.org>;
 Mon, 12 Aug 2024 21:18:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::434; helo=mail-pf1-x434.google.com;
 envelope-from=dualli@chromium.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 746138112F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 746138112F
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com
 [IPv6:2607:f8b0:4864:20::434])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 746138112F
 for <devel@driverdev.osuosl.org>; Mon, 12 Aug 2024 21:18:54 +0000 (UTC)
Received: by mail-pf1-x434.google.com with SMTP id
 d2e1a72fcca58-70d2b921c48so3590022b3a.1
 for <devel@driverdev.osuosl.org>; Mon, 12 Aug 2024 14:18:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1723497533; x=1724102333;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=yDYIU6TfkajQoxq3j3EV9NIlfxxQLY9pFqJaxL5dfd4=;
 b=Un/KRPAjMcMNufOQ6blkFCiCLlkpJm2ipWsnl0rxu1KJJ+C7y5YpzF85TYAHhvATeB
 LRNXh7iRxm1FNiS2PYINg+TP9TVR182dlt18kyH5lqh+Ww0YyBayDNh6iyoNVpS+SAjq
 Dk94X4xRGcqGAOb9r4XEOi6zXyhlqzQaVXyIJQpDgyrCWdp4YbZw2BdbqDxgUyd0UNU/
 Umy5VYOSFTqrKBwQHrGS/2waPTk4hOSo8DQb3XU3eYLsAD/08W4oRJssG6/NNlW+wpKZ
 uYyZ72BjEEqla+qADwT99NH5EI0rDz0j3YfO8DZcVGlv3+hk5V4o5Cg4145gnLnUsUW/
 fzTA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXgzmlIPakF2DIBpEx3X53VxqRn981CwYuyqZIZJQYSvmExjIrU4lbgTDfj2tZcy8siTdTDW2jVlnd37QUJaQ1eB8OgT5eyvb3Izg==
X-Gm-Message-State: AOJu0YyvEEZJM7S9RbiskUCNcG+dQ8yMS3czndMaa++GF0r5Gmew2/4i
 BUW6bEM1ccfIbcPyambLtClKKfqSi/7BP+HQkyLDJkBewGKace0uQHWCYPw68A==
X-Google-Smtp-Source: AGHT+IG404/oJNiiEXBuT40zkwC2uUmUJkuoST8qFzgMpRmzgcCmAjWzSavkwJqZRrr9xFmnRWxXlA==
X-Received: by 2002:a05:6a00:a1b:b0:70d:3587:c665 with SMTP id
 d2e1a72fcca58-7125510ca52mr1648512b3a.2.1723497533308; 
 Mon, 12 Aug 2024 14:18:53 -0700 (PDT)
Received: from li-cloudtop.c.googlers.com.com
 (30.176.125.34.bc.googleusercontent.com. [34.125.176.30])
 by smtp.gmail.com with ESMTPSA id
 41be03b00d2f7-7c697a05ec9sm133620a12.55.2024.08.12.14.18.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 12 Aug 2024 14:18:52 -0700 (PDT)
From: Li Li <dualli@chromium.org>
To: dualli@google.com, gregkh@linuxfoundation.org, arve@android.com,
 tkjos@android.com, maco@android.com, joel@joelfernandes.org,
 brauner@kernel.org, cmllamas@google.com, surenb@google.com, arnd@arndb.de,
 masahiroy@kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, hridya@google.com, smoreland@google.com
Subject: [PATCH v1] add binder genl for txn report
Date: Mon, 12 Aug 2024 14:18:44 -0700
Message-ID: <20240812211844.4107494-1-dualli@chromium.org>
X-Mailer: git-send-email 2.46.0.76.ge559c4bf1a-goog
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1723497533; x=1724102333; darn=driverdev.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=yDYIU6TfkajQoxq3j3EV9NIlfxxQLY9pFqJaxL5dfd4=;
 b=Tr78ahmL9KNK8ZMpXSG9Wdv6cKKHohpHRyRizx2BQxjQds1KIGx+y4tCVELtGv1XdY
 LlMJ6NuYeC6I8alzB1W5yooYYzONrw28O5Tm4gSESZVR2WXI6Z7jDrWQWdT70eqOhdpt
 KzrS4cX6NSCh4YYRB2ut6mBvBPpvSV1+wFOqc=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=chromium.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=chromium.org header.i=@chromium.org header.a=rsa-sha256
 header.s=google header.b=Tr78ahmL
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
Cc: kernel-team@android.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Li Li <dualli@google.com>

Frozen tasks can't process binder transactions, so sync binder
transactions will fail with BR_FROZEN_REPLY and async binder
transactions will be queued in the kernel async binder buffer.
As these queued async transactions accumulates over time, the async
buffer will eventually be running out, denying all new transactions
after that with BR_FAILED_REPLY.

In addition to the above cases, different kinds of binder error codes
might be returned to the sender. However, the core Linux, or Android,
system administration process never knows what's actually happening.

This patch introduces the Linux generic netlink messages into the binder
driver so that the Linux/Android system administration process can
listen to important events and take corresponding actions, like stopping
a broken app from attacking the OS by sending huge amount of spamming
binder transactions.

To prevent making the already bloated binder.c even bigger, a new source
file binder_genl.c is created to host those generic netlink code.

Usage example (user space pseudo code):

	// enable binder report from the interested binder context(s)
	struct binder_report_info info = {0, BINDER_REPORT_ALL};
	ioctl(binder1, BINDER_ENABLE_REPORT, &info);
	ioctl(binder2, BINDER_ENABLE_REPORT, &info);

	// set optional per-process report, overriding the global one
	struct binder_report_info info2;
	info2.pid = getpid();
	info2.flags = BINDER_REPORT_FAILED | BINDER_REPORT_OVERRIDE;
	ioctl(binder2, BINDER_ENABLE_REPORT, &info2);

	// open netlink socket
	int fd = socket(AF_NETLINK, SOCK_RAW, NETLINK_GENERIC);

	// bind netlink socket
	bind(fd, struct socketaddr);

	// get the family id of binder generic netlink
	send(fd, CTRL_CMD_GETFAMILY, CTRL_ATTR_FAMILY_NAME);
	int id = recv(CTRL_ATTR_FAMILY_ID);

	// register the current process to receive binder reports
	send(fd, id, BINDER_GENL_CMD_REGISTER);

	// verify registration by reading back the registered pid
	recv(fd, BINDER_GENL_ATTR_PID, &pid);

	// wait and read all binder reports
	while (running) {
		struct binder_report report;
		recv(fd, BINDER_GENL_ATTR_REPORT, &report);

		// process struct binder_report
		do_something(&report);
	}

	// clean up
	close(fd);

Signed-off-by: Li Li <dualli@google.com>
---
 drivers/android/Makefile            |   2 +-
 drivers/android/binder.c            | 125 +++++++++++++++++-
 drivers/android/binder_genl.c       | 197 ++++++++++++++++++++++++++++
 drivers/android/binder_genl.h       |  17 +++
 drivers/android/binder_internal.h   |  13 ++
 drivers/android/binder_trace.h      |  37 ++++++
 include/uapi/linux/android/binder.h | 147 +++++++++++++++++++++
 7 files changed, 534 insertions(+), 4 deletions(-)
 create mode 100644 drivers/android/binder_genl.c
 create mode 100644 drivers/android/binder_genl.h

diff --git a/drivers/android/Makefile b/drivers/android/Makefile
index c9d3d0c99c25..d818447fbc4c 100644
--- a/drivers/android/Makefile
+++ b/drivers/android/Makefile
@@ -2,5 +2,5 @@
 ccflags-y += -I$(src)			# needed for trace events
 
 obj-$(CONFIG_ANDROID_BINDERFS)		+= binderfs.o
-obj-$(CONFIG_ANDROID_BINDER_IPC)	+= binder.o binder_alloc.o
+obj-$(CONFIG_ANDROID_BINDER_IPC)	+= binder.o binder_alloc.o binder_genl.o
 obj-$(CONFIG_ANDROID_BINDER_IPC_SELFTEST) += binder_alloc_selftest.o
diff --git a/drivers/android/binder.c b/drivers/android/binder.c
index 905290c98c3c..4cd8301a28cb 100644
--- a/drivers/android/binder.c
+++ b/drivers/android/binder.c
@@ -72,6 +72,7 @@
 
 #include <linux/cacheflush.h>
 
+#include "binder_genl.h"
 #include "binder_internal.h"
 #include "binder_trace.h"
 
@@ -3676,10 +3677,27 @@ static void binder_transaction(struct binder_proc *proc,
 		return_error_line = __LINE__;
 		goto err_copy_data_failed;
 	}
-	if (t->buffer->oneway_spam_suspect)
+	if (t->buffer->oneway_spam_suspect) {
 		tcomplete->type = BINDER_WORK_TRANSACTION_ONEWAY_SPAM_SUSPECT;
-	else
+		if (binder_genl_report_enabled(proc, BINDER_REPORT_SPAM)) {
+			struct binder_report report;
+
+			strscpy(report.name, context->name,
+				sizeof(report.name));
+			report.err = BR_ONEWAY_SPAM_SUSPECT;
+			report.from_pid = proc->pid;
+			report.from_tid = thread->pid;
+			report.to_pid = target_proc ? target_proc->pid : 0;
+			report.to_tid = target_thread ? target_thread->pid : 0;
+			report.reply = reply;
+			report.flags = tr->flags;
+			report.code = tr->code;
+			report.data_size = tr->data_size;
+			binder_genl_send_report(&report, sizeof(report));
+		}
+	} else {
 		tcomplete->type = BINDER_WORK_TRANSACTION_COMPLETE;
+	}
 	t->work.type = BINDER_WORK_TRANSACTION;
 
 	if (reply) {
@@ -3729,8 +3747,25 @@ static void binder_transaction(struct binder_proc *proc,
 		 * process and is put in a pending queue, waiting for the target
 		 * process to be unfrozen.
 		 */
-		if (return_error == BR_TRANSACTION_PENDING_FROZEN)
+		if (return_error == BR_TRANSACTION_PENDING_FROZEN) {
 			tcomplete->type = BINDER_WORK_TRANSACTION_PENDING;
+			if (binder_genl_report_enabled(proc, BINDER_REPORT_DELAYED)) {
+				struct binder_report report;
+
+				strscpy(report.name, context->name,
+					sizeof(report.name));
+				report.err = return_error;
+				report.from_pid = proc->pid;
+				report.from_tid = thread->pid;
+				report.to_pid = target_proc ? target_proc->pid : 0;
+				report.to_tid = target_thread ? target_thread->pid : 0;
+				report.reply = reply;
+				report.flags = tr->flags;
+				report.code = tr->code;
+				report.data_size = tr->data_size;
+				binder_genl_send_report(&report, sizeof(report));
+			}
+		}
 		binder_enqueue_thread_work(thread, tcomplete);
 		if (return_error &&
 		    return_error != BR_TRANSACTION_PENDING_FROZEN)
@@ -3792,6 +3827,22 @@ static void binder_transaction(struct binder_proc *proc,
 		binder_dec_node_tmpref(target_node);
 	}
 
+	if (binder_genl_report_enabled(proc, BINDER_REPORT_FAILED)) {
+		struct binder_report report;
+
+		strscpy(report.name, context->name, sizeof(report.name));
+		report.err = return_error;
+		report.from_pid = proc->pid;
+		report.from_tid = thread->pid;
+		report.to_pid = target_proc ? target_proc->pid : 0;
+		report.to_tid = target_thread ? target_thread->pid : 0;
+		report.reply = reply;
+		report.flags = tr->flags;
+		report.code = tr->code;
+		report.data_size = tr->data_size;
+		binder_genl_send_report(&report, sizeof(report));
+	}
+
 	binder_debug(BINDER_DEBUG_FAILED_TRANSACTION,
 		     "%d:%d transaction %s to %d:%d failed %d/%d/%d, size %lld-%lld line %d\n",
 		     proc->pid, thread->pid, reply ? "reply" :
@@ -5415,6 +5466,59 @@ static int binder_ioctl_get_extended_error(struct binder_thread *thread,
 	return 0;
 }
 
+/**
+ * binder_ioctl_enable_report() - set binder report flags
+ * @proc:	the binder_proc calling the ioctl
+ * @info:	contains the target pid and the flags to set
+ *
+ * If pid is 0, the flags are applied to the whole binder context.
+ * Otherwise, the flags are applied to the specific process only.
+ */
+static int binder_ioctl_enable_report(struct binder_proc *proc,
+				      struct binder_report_info *info)
+{
+	int pid;
+	u32 flags;
+	bool found;
+	struct binder_context *context;
+	struct binder_proc *target_proc;
+
+	pid = info->pid;
+	flags = info->flags;
+	context = proc->context;
+
+	if (flags != (flags & (BINDER_REPORT_ALL | BINDER_REPORT_OVERRIDE))) {
+		pr_err("Invalid binder report flags: %u\n", flags);
+		return -EINVAL;
+	}
+
+	if (!pid) {
+		/* Set the global flags for the whole binder context */
+
+		pr_info("Set global binder report flags %u for %s\n",
+			flags, context->name);
+		context->report_flags = flags;
+	} else {
+		/* Set the per-process flags */
+
+		found = false;
+		mutex_lock(&binder_procs_lock);
+		hlist_for_each_entry(target_proc, &binder_procs, proc_node) {
+			if (target_proc->pid == pid) {
+				found = true;
+				pr_info("Set binder report flags %u for %d\n",
+					flags, pid);
+				target_proc->report_flags = flags;
+			}
+		}
+		mutex_unlock(&binder_procs_lock);
+		if (!found)
+			return -EINVAL;
+	}
+
+	return 0;
+}
+
 static long binder_ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
 {
 	int ret;
@@ -5623,6 +5727,18 @@ static long binder_ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
 		if (ret < 0)
 			goto err;
 		break;
+	case BINDER_ENABLE_REPORT: {
+		struct binder_report_info info;
+
+		if (copy_from_user(&info, ubuf, sizeof(info))) {
+			ret = -EFAULT;
+			goto err;
+		}
+		ret = binder_ioctl_enable_report(proc, &info);
+		if (ret)
+			goto err;
+		break;
+	}
 	default:
 		ret = -EINVAL;
 		goto err;
@@ -6652,6 +6768,9 @@ static int __init binder_init(void)
 	const struct binder_debugfs_entry *db_entry;
 
 	ret = binder_alloc_shrinker_init();
+	if (ret)
+		return ret;
+	ret = binder_genl_init();
 	if (ret)
 		return ret;
 
diff --git a/drivers/android/binder_genl.c b/drivers/android/binder_genl.c
new file mode 100644
index 000000000000..4ed8f7d0492b
--- /dev/null
+++ b/drivers/android/binder_genl.c
@@ -0,0 +1,197 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/* binder_genl.c
+ *
+ * Android IPC Subsystem
+ *
+ * Copyright (C) 2024 Google, Inc.
+ */
+
+#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
+
+#include <linux/skbuff.h>
+#include <net/sock.h>
+#include <net/genetlink.h>
+#include <uapi/linux/android/binder.h>
+
+#include "binder_genl.h"
+#include "binder_trace.h"
+
+/**
+ * The registered process that would receive binder reports.
+ */
+static u32 binder_report_pid;
+
+/**
+ * The policy to verify the type of the binder genl data
+ */
+static const struct nla_policy binder_report_policy[BINDER_GENL_ATTR_MAX + 1] = {
+	[BINDER_GENL_ATTR_PID] = { .type = NLA_U32 },
+};
+
+static struct genl_family binder_gnl_family;
+
+/**
+ * binder_genl_cmd_register() - register the pid to receive binder genl reports
+ * @info:	the generic netlink struct passed from netlink driver
+ * @pid:	the process to receive binder genl reports
+ *
+ * Called by .doit to register the pid, which is then replied to the caller to
+ * complete the handshake.
+ */
+static int binder_genl_cmd_register(struct genl_info *info, u32 pid)
+{
+	int len;
+	struct sk_buff *skb;
+	void *hdr;
+
+	len = sizeof(pid);
+	skb = genlmsg_new(len, GFP_KERNEL);
+	if (!skb) {
+		pr_err("Failed to alloc binder genl message\n");
+		return -ENOMEM;
+	}
+
+	hdr = genlmsg_put(skb, pid, 0, &binder_gnl_family, 0,
+			  BINDER_GENL_CMD_REPLY);
+	if (!hdr) {
+		pr_err("Failed to set binder genl header\n");
+		kfree_skb(skb);
+		return -EMSGSIZE;
+	}
+
+	if (nla_put(skb, BINDER_GENL_ATTR_PID, len, &pid)) {
+		genlmsg_cancel(skb, hdr);
+		nlmsg_free(skb);
+		return -EMSGSIZE;
+	}
+
+	genlmsg_end(skb, hdr);
+
+	if (genlmsg_reply(skb, info)) {
+		pr_err("Failed to send binder genl message\n");
+		return -EFAULT;
+	}
+
+	binder_report_pid = pid;
+
+	return 0;
+}
+
+/**
+ * binder_genl_cmd_doit() - the .doit handler of binder genl commands
+ * @skb:	the metadata struct passed from netlink driver
+ * @info:	the generic netlink struct passed from netlink driver
+ *
+ * Implements the .doit function to process binder genl commands.
+ */
+static int binder_genl_cmd_doit(struct sk_buff *skb, struct genl_info *info)
+{
+	int pid;
+
+	pid = nlmsg_hdr(skb)->nlmsg_pid;
+
+	/* The only cmd is to register the process to receive binder reports */
+	return binder_genl_cmd_register(info, pid);
+}
+
+/**
+ * binder_genl_ops - the small version of generic netlink operations
+ *
+ * Supports only 1 command right now for registration handshake.
+ */
+static struct genl_small_ops binder_genl_ops[] = {
+	{
+		.cmd = BINDER_GENL_CMD_REGISTER,
+		.doit = binder_genl_cmd_doit,
+	}
+};
+
+/**
+ * binder_gnl_family - the binder generic netlink family
+ *
+ * Defines policies and supported operations of binder genl
+ */
+static struct genl_family binder_gnl_family = {
+	.name = BINDER_GENL_FAMILY_NAME,
+	.version = BINDER_GENL_VERSION,
+	.maxattr = BINDER_GENL_ATTR_MAX,
+	.policy	= binder_report_policy,
+	.small_ops = binder_genl_ops,
+	.n_small_ops = ARRAY_SIZE(binder_genl_ops),
+};
+
+/**
+ * binder_genl_init() - initialize binder generic netlink
+ *
+ * Registers the binder generic netlink family.
+ */
+int __init binder_genl_init(void)
+{
+	int ret = genl_register_family(&binder_gnl_family);
+
+	if (ret) {
+		pr_err("Failed to register binder genl\n");
+		return ret;
+	}
+
+	return 0;
+}
+
+/**
+ * binder_genl_report_enabled() - check if binder genl reports are enabled
+ * @proc:	the binder_proc to check
+ * @mask:	the categories of binder genl reports
+ *
+ * Returns true if certain binder genl reports are enabled for this binder
+ * proc (when per-process overriding takes effect) or context.
+ */
+inline bool binder_genl_report_enabled(struct binder_proc *proc, u32 mask)
+{
+	struct binder_context *context = proc->context;
+
+	if (proc->report_flags & BINDER_REPORT_OVERRIDE)
+		return (proc->report_flags & mask) != 0;
+	else
+		return (context->report_flags & mask) != 0;
+}
+
+/**
+ * binder_genl_send_report() - send one binder genl report
+ * @report:	the binder genl report to send
+ * @len:	the length of the report data
+ *
+ * Packs the report data into a BINDER_GENL_ATTR_REPORT packet and sends them
+ * to the previously registered process.
+ */
+void binder_genl_send_report(struct binder_report *report, int len)
+{
+	struct sk_buff *skb;
+	void *hdr;
+
+	trace_binder_send_report(report, len);
+
+	skb = genlmsg_new(len, GFP_KERNEL);
+	if (!skb) {
+		pr_err("Failed to alloc binder genl message\n");
+		return;
+	}
+
+	hdr = genlmsg_put(skb, binder_report_pid, 0, &binder_gnl_family, 0,
+			  BINDER_GENL_CMD_REPORT);
+	if (!hdr) {
+		pr_err("Failed to set binder genl header\n");
+		kfree_skb(skb);
+		return;
+	}
+
+	if (nla_put(skb, BINDER_GENL_ATTR_REPORT, len, report)) {
+		genlmsg_cancel(skb, hdr);
+		nlmsg_free(skb);
+		return;
+	}
+
+	genlmsg_end(skb, hdr);
+
+	if (genlmsg_unicast(&init_net, skb, binder_report_pid))
+		pr_err("Failed to send binder genl message\n");
+}
diff --git a/drivers/android/binder_genl.h b/drivers/android/binder_genl.h
new file mode 100644
index 000000000000..b017c2786860
--- /dev/null
+++ b/drivers/android/binder_genl.h
@@ -0,0 +1,17 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2024 Google, Inc.
+ */
+
+#ifndef _LINUX_BINDER_GENL_H
+#define _LINUX_BINDER_GENL_H
+
+#include "binder_internal.h"
+
+int binder_genl_init(void);
+
+bool binder_genl_report_enabled(struct binder_proc *proc, u32 mask);
+
+void binder_genl_send_report(struct binder_report *report, int len);
+
+#endif /* _LINUX_BINDER_GENL_H */
diff --git a/drivers/android/binder_internal.h b/drivers/android/binder_internal.h
index 7d4fc53f7a73..34cd2cf1b345 100644
--- a/drivers/android/binder_internal.h
+++ b/drivers/android/binder_internal.h
@@ -16,11 +16,21 @@
 #include "binder_alloc.h"
 #include "dbitmap.h"
 
+/**
+ * struct binder_context - information about a binder domain
+ * @binder_context_mgr_node: the context manager
+ * @context_mgr_node_lock:   the lock protecting the above context manager node
+ * @binder_context_mgr_uid:  the uid of the above context manager
+ * @name:                    the name of the binder device
+ * @report_flags:            the categories of binder transactions that would
+ *                           be reported (see enum binder_report_flag).
+ */
 struct binder_context {
 	struct binder_node *binder_context_mgr_node;
 	struct mutex context_mgr_node_lock;
 	kuid_t binder_context_mgr_uid;
 	const char *name;
+	u32 report_flags;
 };
 
 /**
@@ -399,6 +409,8 @@ struct binder_ref {
  * @binderfs_entry:       process-specific binderfs log file
  * @oneway_spam_detection_enabled: process enabled oneway spam detection
  *                        or not
+ * @report_flags:         the categories of binder transactions that would
+ *                        be reported (see enum binder_report_flag).
  *
  * Bookkeeping structure for binder processes
  */
@@ -436,6 +448,7 @@ struct binder_proc {
 	spinlock_t outer_lock;
 	struct dentry *binderfs_entry;
 	bool oneway_spam_detection_enabled;
+	u32 report_flags;
 };
 
 /**
diff --git a/drivers/android/binder_trace.h b/drivers/android/binder_trace.h
index fe38c6fc65d0..4c69c5f99e5c 100644
--- a/drivers/android/binder_trace.h
+++ b/drivers/android/binder_trace.h
@@ -423,6 +423,43 @@ TRACE_EVENT(binder_return,
 			  "unknown")
 );
 
+TRACE_EVENT(binder_send_report,
+	TP_PROTO(struct binder_report *report, int len),
+	TP_ARGS(report, len),
+	TP_STRUCT__entry(
+		__field(const char *, name)
+		__field(uint32_t, err)
+		__field(uint32_t, from_pid)
+		__field(uint32_t, from_tid)
+		__field(uint32_t, to_pid)
+		__field(uint32_t, to_tid)
+		__field(uint32_t, reply)
+		__field(uint32_t, flags)
+		__field(uint32_t, code)
+		__field(binder_size_t, data_size)
+		__field(uint32_t, len)
+	),
+	TP_fast_assign(
+		__entry->name = report->name;
+		__entry->err = report->err;
+		__entry->from_pid = report->from_pid;
+		__entry->from_tid = report->from_tid;
+		__entry->to_pid = report->to_pid;
+		__entry->to_tid = report->to_tid;
+		__entry->reply = report->reply;
+		__entry->flags = report->flags;
+		__entry->code = report->code;
+		__entry->data_size = report->data_size;
+		__entry->len = len;
+	),
+	TP_printk("%s: %d %d:%d -> %d:%d %s flags=0x08%x code=%d %llu %d",
+		  __entry->name, __entry->err, __entry->from_pid,
+		  __entry->from_tid, __entry->to_pid, __entry->to_tid,
+		  __entry->reply ? "reply" : "",
+		  __entry->flags, __entry->code, __entry->data_size,
+		  __entry->len)
+);
+
 #endif /* _BINDER_TRACE_H */
 
 #undef TRACE_INCLUDE_PATH
diff --git a/include/uapi/linux/android/binder.h b/include/uapi/linux/android/binder.h
index d44a8118b2ed..893192e5cc55 100644
--- a/include/uapi/linux/android/binder.h
+++ b/include/uapi/linux/android/binder.h
@@ -266,6 +266,7 @@ enum {
 	BINDER_GET_FROZEN_INFO		= _IOWR('b', 15, struct binder_frozen_status_info),
 	BINDER_ENABLE_ONEWAY_SPAM_DETECTION	= _IOW('b', 16, __u32),
 	BINDER_GET_EXTENDED_ERROR	= _IOWR('b', 17, struct binder_extended_error),
+	BINDER_ENABLE_REPORT		= _IOW('b', 18, __u32),
 };
 
 /*
@@ -552,5 +553,151 @@ enum binder_driver_command_protocol {
 	 */
 };
 
+/*
+ * Name of binder generic netlink
+ */
+#define BINDER_GENL_FAMILY_NAME	"binder"
+
+/*
+ * Version of binder generic netlink
+ */
+#define BINDER_GENL_VERSION	1
+
+/*
+ * Used with BINDER_ENABLE_REPORT, defining what kind of binder transactions
+ * should be reported to user space administration process.
+ */
+enum binder_report_flag {
+	/*
+	 * Report failed binder transactions,
+	 * when the sender gets BR_{FAILED|FROZEN|DEAD}_REPLY
+	 */
+	BINDER_REPORT_FAILED = 0x1,
+
+	/*
+	 * Report delayed async binder transactions due to frozen target,
+	 * when the sender gets BR_TRANSACTION_PENDING_FROZEN.
+	 */
+	BINDER_REPORT_DELAYED = 0x2,
+
+	/*
+	 * Report spamming binder transactions,
+	 * when the sender gets BR_ONEWAY_SPAM_SUSPECT.
+	 */
+	BINDER_REPORT_SPAM = 0x4,
+
+	/*
+	 * Report all of the above
+	 */
+	BINDER_REPORT_ALL = BINDER_REPORT_FAILED
+			| BINDER_REPORT_DELAYED
+			| BINDER_REPORT_SPAM,
+
+	/*
+	 * Enable the per-process flag, which overrides the global one.
+	 */
+	BINDER_REPORT_OVERRIDE = 0x8000000,
+};
+
+/* struct binder_report_info - binder report information
+ * @pid:	the process to apply the flags
+ * @flags:	the enabled binder reports (see enum binder_report_flag)
+ *
+ * Used with BINDER_ENABLE_REPORT. If pid is 0, the flags are applied to the
+ * whole binder context. Otherwise, the flags are applied to the specific
+ * process only.
+ */
+struct binder_report_info {
+	__u32 pid;
+	__u32 flags;
+};
+
+/*
+ * struct binder_report - reports an abnormal binder transaction
+ * @name:	copy of binder_context->name where the txn happens
+ * @err:	copy of binder_driver_return_protocol returned to the sender
+ * @from_pid:	sender pid of the corresponding binder transaction
+ * @from_tid:	sender tid of the corresponding binder transaction
+ * @to_pid:	target pid of the corresponding binder transaction
+ * @to_tid:	target tid of the corresponding binder transaction
+ * @reply:	1 means the txn is a reply, 0 otherwise
+ * @flags:	copy of binder_transaction_data->flags
+ * @code:	copy of binder_transaction_data->code
+ * @data_size:	copy of binder_transaction_data->data_size
+ *
+ * When a binder transaction fails to reach the target process or is not
+ * delivered on time, an error command BR_XXX is returned from the kernel
+ * binder driver to the user space sender. This is considered an abnormal
+ * binder transaction. The most important information about this abnormal
+ * binder transaction will be packed into this binder_report struct and sent
+ * to the registered user space administration process via generic netlink.
+ */
+struct binder_report {
+	__u8 name[16];
+	__u32 err;
+	__u32 from_pid;
+	__u32 from_tid;
+	__u32 to_pid;
+	__u32 to_tid;
+	__u32 reply;
+	__u32 flags;
+	__u32 code;
+	binder_size_t data_size;
+};
+
+/*
+ * The supported attributes of binder generic netlink.
+ */
+enum binder_genl_attr {
+	BINDER_GENL_ATTR_UNSPEC = 0,
+
+	/*
+	 * The attribute for BINDER_GENL_CMD_REPLY to reply to
+	 * BINDER_GENL_CMD_REGISTER.
+	 * Contains payload binder_report_pid.
+	 */
+	BINDER_GENL_ATTR_PID  = 1,
+
+	/*
+	 * The attribute for BINDER_GENL_CMD_REPORT.
+	 * Contains payload binder_report.
+	 */
+	BINDER_GENL_ATTR_REPORT = 2,
+
+	__BINDER_GENL_ATTR_MAX  = 3,
+};
+
+#define BINDER_GENL_ATTR_MAX (__BINDER_GENL_ATTR_MAX - 1)
+
+/*
+ * The supported commands of binder generic netlink.
+ */
+enum binder_genl_cmd {
+	BINDER_GENL_CMD_UNSPEC = 0,
+
+	/*
+	 * The user space administrator process uses this command to register
+	 * itself to receive binder reports via generic netlink.
+	 */
+	BINDER_GENL_CMD_REGISTER = 1,
+
+	/*
+	 * After receiving BINDER_GENL_CMD_REGISTER from the user space
+	 * administrator process, the kernel binder driver uses this command
+	 * to acknowledge the request.
+	 */
+	BINDER_GENL_CMD_REPLY  = 2,
+
+	/*
+	 * After enabling binder report, the kernel binder driver uses this
+	 * command to send the requested reports to the user space.
+	 */
+	BINDER_GENL_CMD_REPORT = 3,
+
+	__BINDER_GENL_CMD_MAX  = 4,
+};
+
+#define BINDER_GENL_CMD_MAX (__BINDER_GENL_CMD_MAX - 1)
+
 #endif /* _UAPI_LINUX_BINDER_H */
 
-- 
2.46.0.76.ge559c4bf1a-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

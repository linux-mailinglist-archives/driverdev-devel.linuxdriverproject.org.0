Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E45CC30E219
	for <lists+driverdev-devel@lfdr.de>; Wed,  3 Feb 2021 19:12:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id EFABB204A2;
	Wed,  3 Feb 2021 18:12:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IBTt2YRcbYhp; Wed,  3 Feb 2021 18:12:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 30B4C233A6;
	Wed,  3 Feb 2021 18:12:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 71AD01BF2F9
 for <devel@linuxdriverproject.org>; Wed,  3 Feb 2021 18:12:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 64FBD20454
 for <devel@linuxdriverproject.org>; Wed,  3 Feb 2021 18:12:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hE9wHFuLqu+E for <devel@linuxdriverproject.org>;
 Wed,  3 Feb 2021 18:12:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f45.google.com (mail-io1-f45.google.com
 [209.85.166.45])
 by silver.osuosl.org (Postfix) with ESMTPS id 3A31820478
 for <devel@driverdev.osuosl.org>; Wed,  3 Feb 2021 18:12:27 +0000 (UTC)
Received: by mail-io1-f45.google.com with SMTP id e133so264193iof.8
 for <devel@driverdev.osuosl.org>; Wed, 03 Feb 2021 10:12:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=t4wenknjZ2bs5eKNUbWK97l2NFAOkxWA8p4z0taSinQ=;
 b=bK/hwc7BdBaznbintn00c0zRwBKC2JVyZWt36DBGWZYS3p6BVpJeOJEEamHAM+6vyC
 PXMgKamY4JH2XBuWrtRG8FAQpXZ0SLZ28VkyLw2OPhYx4rxDJ1ScO65tUPG+qdprJ9XJ
 vV1RasCSNiAfnS8ol5pPlvaIVj8bQiMEHpw8M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=t4wenknjZ2bs5eKNUbWK97l2NFAOkxWA8p4z0taSinQ=;
 b=IKNm4MlN3LQYsJPg0GpTK95fqMF3CWYvkeQP80qJpK6E3UefVp1X+CMrRaw+gzv61M
 RrjVFBzwGleM69gVuk8tc0Vti56RAA3tVQkIn4cIOw20ndkV0oUC8lc45RjuLa+SgJ+y
 GhKtWhEiwLQWtF9OjvX8pjDnzS9hulvAzl6ziMM8LZ06CoM0a+gIbgKjPQIueQagRW68
 4fzB8ATZtipbiTFdm7E6UngHULwMUh3vn1hCi8sHgR4PhCPekoOZBO2rqjeUVGxnLOlc
 3cn6bguaVeHPDlOquwhsKhrHrU7RPxSigppspRNDNOSfs2fyZ+9bGsinJXwTeGwcbhEF
 F8jg==
X-Gm-Message-State: AOAM533Bj4LWgswSo5wIPXBaEGt2b+5WiKf9T0cl/NEdl/Ur8p7uTJ5W
 bhnc6baHa1Y/8XSW0BGjrMQHww==
X-Google-Smtp-Source: ABdhPJzuni/KqIxziQLcVYre754B6JcsdqYKUpMJ3ElrpM0fP5ipHxD7+qBAafURTEbI1MVyvOBomg==
X-Received: by 2002:a5e:a911:: with SMTP id c17mr2982344iod.20.1612375946517; 
 Wed, 03 Feb 2021 10:12:26 -0800 (PST)
Received: from shuah-t480s.internal (c-24-9-64-241.hsd1.co.comcast.net.
 [24.9.64.241])
 by smtp.gmail.com with ESMTPSA id h21sm399684iob.30.2021.02.03.10.12.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Feb 2021 10:12:26 -0800 (PST)
From: Shuah Khan <skhan@linuxfoundation.org>
To: corbet@lwn.net, gregkh@linuxfoundation.org, peterz@infradead.org,
 keescook@chromium.org, rafael@kernel.org, lenb@kernel.org,
 james.morse@arm.com, tony.luck@intel.com, bp@alien8.de
Subject: [PATCH v3 7/7] kobject: convert uevent_seqnum to seqnum_ops
Date: Wed,  3 Feb 2021 11:12:03 -0700
Message-Id: <3ddd122c266e8cb460542d852e9b703c6eef2141.1612314468.git.skhan@linuxfoundation.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <cover.1612314468.git.skhan@linuxfoundation.org>
References: <cover.1612314468.git.skhan@linuxfoundation.org>
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
Cc: devel@driverdev.osuosl.org, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-acpi@vger.kernel.org,
 linux-kselftest@vger.kernel.org, Shuah Khan <skhan@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Sequence Number api provides interfaces for unsigned atomic up counters
leveraging atomic_t and atomic64_t ops underneath.

Convert uevent_seqnum atomic counter to use seqnum_ops.

Signed-off-by: Shuah Khan <skhan@linuxfoundation.org>
---
 include/linux/kobject.h | 3 ++-
 kernel/ksysfs.c         | 3 ++-
 lib/kobject_uevent.c    | 9 ++++++---
 3 files changed, 10 insertions(+), 5 deletions(-)

diff --git a/include/linux/kobject.h b/include/linux/kobject.h
index ea30529fba08..8990e40344a2 100644
--- a/include/linux/kobject.h
+++ b/include/linux/kobject.h
@@ -27,6 +27,7 @@
 #include <linux/atomic.h>
 #include <linux/workqueue.h>
 #include <linux/uidgid.h>
+#include <linux/seqnum_ops.h>
 
 #define UEVENT_HELPER_PATH_LEN		256
 #define UEVENT_NUM_ENVP			64	/* number of env pointers */
@@ -38,7 +39,7 @@ extern char uevent_helper[];
 #endif
 
 /* counter to tag the uevent, read only except for the kobject core */
-extern u64 uevent_seqnum;
+extern struct seqnum64 uevent_seqnum;
 
 /*
  * The actions here must match the index to the string array
diff --git a/kernel/ksysfs.c b/kernel/ksysfs.c
index 35859da8bd4f..15836f6e5998 100644
--- a/kernel/ksysfs.c
+++ b/kernel/ksysfs.c
@@ -17,6 +17,7 @@
 #include <linux/sched.h>
 #include <linux/capability.h>
 #include <linux/compiler.h>
+#include <linux/seqnum_ops.h>
 
 #include <linux/rcupdate.h>	/* rcu_expedited and rcu_normal */
 
@@ -31,7 +32,7 @@ static struct kobj_attribute _name##_attr = \
 static ssize_t uevent_seqnum_show(struct kobject *kobj,
 				  struct kobj_attribute *attr, char *buf)
 {
-	return sprintf(buf, "%llu\n", (unsigned long long)uevent_seqnum);
+	return sprintf(buf, "%llu\n", seqnum64_get(&uevent_seqnum));
 }
 KERNEL_ATTR_RO(uevent_seqnum);
 
diff --git a/lib/kobject_uevent.c b/lib/kobject_uevent.c
index 7998affa45d4..3a7b2648f084 100644
--- a/lib/kobject_uevent.c
+++ b/lib/kobject_uevent.c
@@ -28,9 +28,10 @@
 #include <net/sock.h>
 #include <net/netlink.h>
 #include <net/net_namespace.h>
+#include <linux/seqnum_ops.h>
 
 
-u64 uevent_seqnum;
+struct seqnum64  uevent_seqnum;
 #ifdef CONFIG_UEVENT_HELPER
 char uevent_helper[UEVENT_HELPER_PATH_LEN] = CONFIG_UEVENT_HELPER_PATH;
 #endif
@@ -584,7 +585,8 @@ int kobject_uevent_env(struct kobject *kobj, enum kobject_action action,
 
 	mutex_lock(&uevent_sock_mutex);
 	/* we will send an event, so request a new sequence number */
-	retval = add_uevent_var(env, "SEQNUM=%llu", ++uevent_seqnum);
+	retval = add_uevent_var(env, "SEQNUM=%llu",
+				seqnum64_inc(&uevent_seqnum));
 	if (retval) {
 		mutex_unlock(&uevent_sock_mutex);
 		goto exit;
@@ -687,7 +689,8 @@ static int uevent_net_broadcast(struct sock *usk, struct sk_buff *skb,
 	int ret;
 
 	/* bump and prepare sequence number */
-	ret = snprintf(buf, sizeof(buf), "SEQNUM=%llu", ++uevent_seqnum);
+	ret = snprintf(buf, sizeof(buf), "SEQNUM=%llu",
+			seqnum64_inc(&uevent_seqnum));
 	if (ret < 0 || (size_t)ret >= sizeof(buf))
 		return -ENOMEM;
 	ret++;
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

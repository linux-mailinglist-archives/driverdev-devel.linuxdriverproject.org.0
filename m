Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 33498A1139
	for <lists+driverdev-devel@lfdr.de>; Thu, 29 Aug 2019 07:50:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3ADDE261E0;
	Thu, 29 Aug 2019 05:50:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9MQ8eLJtTudO; Thu, 29 Aug 2019 05:50:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6EB28261DF;
	Thu, 29 Aug 2019 05:50:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 006431BF3DA
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 05:50:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id F14C788640
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 05:49:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fHqAgWdTP6qS for <devel@linuxdriverproject.org>;
 Thu, 29 Aug 2019 05:49:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0FFF88862E
 for <devel@driverdev.osuosl.org>; Thu, 29 Aug 2019 05:49:58 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id c81so1281228pfc.11
 for <devel@driverdev.osuosl.org>; Wed, 28 Aug 2019 22:49:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=sn18T6uMLTeD/3sTDPtUsx+jMMfL+K1l3kGQTvhv0uI=;
 b=P8bPwDesXfZFakhgCIpWD7/icUFb4CELeLHTllKMNRPA/vHH+3GDVdMhh4HSp/2D0P
 t5P+tMbua+DbBxFOzjP1i6KkM5eNnGgvCMgV0OT7oqmcGhUDoF9paKSso+LQj3aKu62f
 NlKQeA6M/h+LzKU5RIeskY3pZSbQ8IUZGo1gaOGzGmB8dKLeWJwWx+QwK+IJ1VpfGq/f
 56zxQLfuPtKEL2pH0brnbyoZvMw/t8CJ4oOxn3UuuO1V+wSm84TLXVAWLd4u9QsAn6/D
 CPSzBvqoroYOgtL/HRDW3h51ZV+SVx2Q3b6+r/xQ/LpYhCGBsm7g8q+CdgQg7Gh7FQL4
 rMYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=sn18T6uMLTeD/3sTDPtUsx+jMMfL+K1l3kGQTvhv0uI=;
 b=q/cQmSKg40GNy2GsYfFO8HJMo/tzX9rcHmg/0UgPHgTwZ5h+N/sjbJqV0ClpnJC/7N
 7gLMNMQUcIelelIEFlalcviTwU3junyqQgHcjAfbnmfkcMHlbqPfFFRE1W4x6lrK9cv9
 2caRtVQSSStvpK9CV23N+9LVQVD/rpuVSotFGyxTVZas7YivYpNJZEma9+o530BI+VlK
 i6EDcBrfkVWpqKdB38nqpvdkEXlte+pnAjgKsQAbZCqsaTxu9elfEi4W6G9VRKLtOsOb
 yy3X/YCWi8eQ2TLW8+dHESZ5h3FNDqsxapmlewmgJ3B3I39HYGjOOQZcjH+mGKPQoHWl
 hGQw==
X-Gm-Message-State: APjAAAXnfVRx879TvxIZPL2RBSEKZuopOSUC4xTIK+2862jEGdK+rUkV
 jne4hoghPHdIvf+ve382Rg==
X-Google-Smtp-Source: APXvYqww+w/+6/x7PHnaGwc7CyPWqgAjbP3WyGmOhEEx38YY/cvtJm4W+f9+KbtvMU/+rFm1SB/6mg==
X-Received: by 2002:a63:3c5:: with SMTP id 188mr6567335pgd.394.1567057797661; 
 Wed, 28 Aug 2019 22:49:57 -0700 (PDT)
Received: from mark-All-Series (114-32-231-59.HINET-IP.hinet.net.
 [114.32.231.59])
 by smtp.gmail.com with ESMTPSA id v7sm1324033pff.87.2019.08.28.22.49.55
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 28 Aug 2019 22:49:57 -0700 (PDT)
Date: Thu, 29 Aug 2019 13:49:53 +0800
From: Peikan Tsai <peikantsai@gmail.com>
To: gregkh@linuxfoundation.org, arve@android.com, tkjos@android.com,
 maco@android.com, joel@joelfernandes.org, christian@brauner.io
Subject: [PATCH] binder: Use kmem_cache for binder_thread
Message-ID: <20190829054953.GA18328@mark-All-Series>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi,

The allocated size for each binder_thread is 512 bytes by kzalloc.
Because the size of binder_thread is fixed and it's only 304 bytes.
It will save 208 bytes per binder_thread when use create a kmem_cache
for the binder_thread.

Signed-off-by: Peikan Tsai <peikantsai@gmail.com>
---
 drivers/android/binder.c | 16 +++++++++++++---
 1 file changed, 13 insertions(+), 3 deletions(-)

diff --git a/drivers/android/binder.c b/drivers/android/binder.c
index dc1c83eafc22..043e0ebd0fe7 100644
--- a/drivers/android/binder.c
+++ b/drivers/android/binder.c
@@ -87,6 +87,8 @@ static struct dentry *binder_debugfs_dir_entry_root;
 static struct dentry *binder_debugfs_dir_entry_proc;
 static atomic_t binder_last_id;

+static struct kmem_cache *binder_thread_cachep;
+
 static int proc_show(struct seq_file *m, void *unused);
 DEFINE_SHOW_ATTRIBUTE(proc);

@@ -4696,14 +4698,15 @@ static struct binder_thread *binder_get_thread(struct binder_proc *proc)
 	thread = binder_get_thread_ilocked(proc, NULL);
 	binder_inner_proc_unlock(proc);
 	if (!thread) {
-		new_thread = kzalloc(sizeof(*thread), GFP_KERNEL);
+		new_thread = kmem_cache_zalloc(binder_thread_cachep,
+					       GFP_KERNEL);
 		if (new_thread == NULL)
 			return NULL;
 		binder_inner_proc_lock(proc);
 		thread = binder_get_thread_ilocked(proc, new_thread);
 		binder_inner_proc_unlock(proc);
 		if (thread != new_thread)
-			kfree(new_thread);
+			kmem_cache_free(binder_thread_cachep, new_thread);
 	}
 	return thread;
 }
@@ -4723,7 +4726,7 @@ static void binder_free_thread(struct binder_thread *thread)
 	BUG_ON(!list_empty(&thread->todo));
 	binder_stats_deleted(BINDER_STAT_THREAD);
 	binder_proc_dec_tmpref(thread->proc);
-	kfree(thread);
+	kmem_cache_free(binder_thread_cachep, thread);
 }

 static int binder_thread_release(struct binder_proc *proc,
@@ -6095,6 +6098,12 @@ static int __init binder_init(void)
 	if (ret)
 		return ret;

+	binder_thread_cachep = kmem_cache_create("binder_thread",
+						 sizeof(struct binder_thread),
+						 0, 0, NULL);
+	if (!binder_thread_cachep)
+		return -ENOMEM;
+
 	atomic_set(&binder_transaction_log.cur, ~0U);
 	atomic_set(&binder_transaction_log_failed.cur, ~0U);

@@ -6167,6 +6176,7 @@ static int __init binder_init(void)

 err_alloc_device_names_failed:
 	debugfs_remove_recursive(binder_debugfs_dir_entry_root);
+	kmem_cache_destroy(binder_thread_cachep);

 	return ret;
 }
--
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

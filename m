Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D40AA28D5
	for <lists+driverdev-devel@lfdr.de>; Thu, 29 Aug 2019 23:24:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1E200259AB;
	Thu, 29 Aug 2019 21:24:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VbGG1-Hrcnh1; Thu, 29 Aug 2019 21:23:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3CE1B20510;
	Thu, 29 Aug 2019 21:23:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 951ED1BF41F
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 21:23:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 90258204A8
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 21:23:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YPS1WNA9BJPX for <devel@linuxdriverproject.org>;
 Thu, 29 Aug 2019 21:23:53 +0000 (UTC)
X-Greylist: delayed 00:05:17 by SQLgrey-1.7.6
Received: from mail-qk1-f202.google.com (mail-qk1-f202.google.com
 [209.85.222.202])
 by silver.osuosl.org (Postfix) with ESMTPS id 98E33203D9
 for <devel@driverdev.osuosl.org>; Thu, 29 Aug 2019 21:23:53 +0000 (UTC)
Received: by mail-qk1-f202.google.com with SMTP id o133so5063975qke.4
 for <devel@driverdev.osuosl.org>; Thu, 29 Aug 2019 14:23:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=x8dW1eobv46xxf8Qk5whq589HTl41TDtcRbBhNUlvgA=;
 b=oq2JuZDPnrdiEZUE2201QMFcPToj3KIqIsam0bd9PtbV9C8qAhCC8foVP5ylX6dGKL
 BBWR7VUAqiKgeeKCsgQ1BKpieXF7anfbAMDMBYWPlRwQGdN5k4ShEN9Mw0kmgncqn9KI
 3t0EOOrM2ajTMkjOLBz+/g4HFjQUFoSi1FVXi10rPtdPJtcHOlVZgjAgAuLsV7qk7WJM
 8qaSNXQK/8uTVObl+Bp5exKBPfBRKP6fQrB10oPqJdP6EnqpyfywdkEd3TeR6FlLE8xu
 rfO+t2Nag8LvY+1+T1jX4NaFnZ94x/AJyebaxzxb5+d7nMGKAZLWs1a2exi4QzB9O7nu
 PqNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=x8dW1eobv46xxf8Qk5whq589HTl41TDtcRbBhNUlvgA=;
 b=cu8BloI9oJ1aTPOSK8p+gGCsfuVXJO6+4Fk43d4ImpTnAPpmriVoZsQynB+RncvLMz
 nsmeXrDOz7va3pRXyPufHJkuBuEMqDwyqQOZZ10E99HMw7hKRmYPKO7firDNR41AkaxP
 bcib8k6iTuGFtVXrm6rdW7+CK0Eo8S8UgEgsX+oxlE/O449ZN2949Rv3tXW/vwJNx3nA
 TfUFQWkj7QiM5V5Ala8a0wTMVe4YkxIJydWsTdpgM4Tb4xZVUi+y/Mu7HH9yhxAhu83j
 BLfF6ncQ7zS0hWQq4KE7hyx4z1FgMkpVORGHHZiYCMuofQDbUMBAm5JUCociAhMABzKM
 pD4w==
X-Gm-Message-State: APjAAAWHhXZL+M4bzCPwtVzj4Stz0dhFsvj0cSVysicoB/oLl8T7XeHT
 DcsW5UmREb4dbioSKx5m2MGltVodzxo=
X-Google-Smtp-Source: APXvYqwWd/cHbTCLORr8bpxWDL8cNzI/P4mBj8n+Rmyq6eSxJh4t92dm+nBe1eZ4szBDxYarMV/BwOpgnQ4=
X-Received: by 2002:a0c:fa89:: with SMTP id o9mr8142896qvn.165.1567113514869; 
 Thu, 29 Aug 2019 14:18:34 -0700 (PDT)
Date: Thu, 29 Aug 2019 14:18:09 -0700
In-Reply-To: <20190829211812.32520-1-hridya@google.com>
Message-Id: <20190829211812.32520-2-hridya@google.com>
Mime-Version: 1.0
References: <20190829211812.32520-1-hridya@google.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [PATCH v2 1/4] binder: add a mount option to show global stats
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
Cc: Hridya Valsaraju <hridya@google.com>, kernel-team@android.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Currently, all binder state and statistics live in debugfs.
We need this information even when debugfs is not mounted.
This patch adds the mount option 'stats' to enable a binderfs
instance to have binder debug information present in the same.
'stats=global' will enable the global binder statistics. In
the future, 'stats=local' will enable binder statistics local
to the binderfs instance. The two modes 'global' and 'local'
will be mutually exclusive. 'stats=global' option is only available
for a binderfs instance mounted in the initial user namespace.
An attempt to use the option to mount a binderfs instance in
another user namespace will return an EPERM error.

Signed-off-by: Hridya Valsaraju <hridya@google.com>
---

 Changes in v2:
 - Improve error check in binderfs_parse_mount_opts() as per Greg
   Kroah-Hartman.
 - Change pr_info() log before failure to pr_err() as per Greg
   Kroah-Hartman.

 drivers/android/binderfs.c | 45 ++++++++++++++++++++++++++++++++++++--
 1 file changed, 43 insertions(+), 2 deletions(-)

diff --git a/drivers/android/binderfs.c b/drivers/android/binderfs.c
index cc2e71576396..7045bfe5b52b 100644
--- a/drivers/android/binderfs.c
+++ b/drivers/android/binderfs.c
@@ -51,18 +51,27 @@ static DEFINE_IDA(binderfs_minors);
 /**
  * binderfs_mount_opts - mount options for binderfs
  * @max: maximum number of allocatable binderfs binder devices
+ * @stats_mode: enable binder stats in binderfs.
  */
 struct binderfs_mount_opts {
 	int max;
+	int stats_mode;
 };
 
 enum {
 	Opt_max,
+	Opt_stats_mode,
 	Opt_err
 };
 
+enum binderfs_stats_mode {
+	STATS_NONE,
+	STATS_GLOBAL,
+};
+
 static const match_table_t tokens = {
 	{ Opt_max, "max=%d" },
+	{ Opt_stats_mode, "stats=%s" },
 	{ Opt_err, NULL     }
 };
 
@@ -290,8 +299,9 @@ static void binderfs_evict_inode(struct inode *inode)
 static int binderfs_parse_mount_opts(char *data,
 				     struct binderfs_mount_opts *opts)
 {
-	char *p;
+	char *p, *stats;
 	opts->max = BINDERFS_MAX_MINOR;
+	opts->stats_mode = STATS_NONE;
 
 	while ((p = strsep(&data, ",")) != NULL) {
 		substring_t args[MAX_OPT_ARGS];
@@ -311,6 +321,22 @@ static int binderfs_parse_mount_opts(char *data,
 
 			opts->max = max_devices;
 			break;
+		case Opt_stats_mode:
+			if (!capable(CAP_SYS_ADMIN))
+				return -EINVAL;
+
+			stats = match_strdup(&args[0]);
+			if (!stats)
+				return -ENOMEM;
+
+			if (strcmp(stats, "global") != 0) {
+				kfree(stats);
+				return -EINVAL;
+			}
+
+			opts->stats_mode = STATS_GLOBAL;
+			kfree(stats);
+			break;
 		default:
 			pr_err("Invalid mount options\n");
 			return -EINVAL;
@@ -322,8 +348,21 @@ static int binderfs_parse_mount_opts(char *data,
 
 static int binderfs_remount(struct super_block *sb, int *flags, char *data)
 {
+	int prev_stats_mode, ret;
 	struct binderfs_info *info = sb->s_fs_info;
-	return binderfs_parse_mount_opts(data, &info->mount_opts);
+
+	prev_stats_mode = info->mount_opts.stats_mode;
+	ret = binderfs_parse_mount_opts(data, &info->mount_opts);
+	if (ret)
+		return ret;
+
+	if (prev_stats_mode != info->mount_opts.stats_mode) {
+		pr_err("Binderfs stats mode cannot be changed during a remount\n");
+		info->mount_opts.stats_mode = prev_stats_mode;
+		return -EINVAL;
+	}
+
+	return 0;
 }
 
 static int binderfs_show_mount_opts(struct seq_file *seq, struct dentry *root)
@@ -333,6 +372,8 @@ static int binderfs_show_mount_opts(struct seq_file *seq, struct dentry *root)
 	info = root->d_sb->s_fs_info;
 	if (info->mount_opts.max <= BINDERFS_MAX_MINOR)
 		seq_printf(seq, ",max=%d", info->mount_opts.max);
+	if (info->mount_opts.stats_mode == STATS_GLOBAL)
+		seq_printf(seq, ",stats=global");
 
 	return 0;
 }
-- 
2.23.0.187.g17f5b7556c-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

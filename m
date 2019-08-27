Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42B329F463
	for <lists+driverdev-devel@lfdr.de>; Tue, 27 Aug 2019 22:42:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B0B2A88555;
	Tue, 27 Aug 2019 20:42:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EnEs59Pjmvw0; Tue, 27 Aug 2019 20:42:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C7A3D884A9;
	Tue, 27 Aug 2019 20:42:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9259F1BF355
 for <devel@linuxdriverproject.org>; Tue, 27 Aug 2019 20:42:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8F89B21517
 for <devel@linuxdriverproject.org>; Tue, 27 Aug 2019 20:42:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6GL1SoYBnQxU for <devel@linuxdriverproject.org>;
 Tue, 27 Aug 2019 20:42:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-vk1-f201.google.com (mail-vk1-f201.google.com
 [209.85.221.201])
 by silver.osuosl.org (Postfix) with ESMTPS id AEF4221505
 for <devel@driverdev.osuosl.org>; Tue, 27 Aug 2019 20:42:09 +0000 (UTC)
Received: by mail-vk1-f201.google.com with SMTP id k199so222721vka.16
 for <devel@driverdev.osuosl.org>; Tue, 27 Aug 2019 13:42:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=6h3RXDkleqwSeFqf8A0vxqUeYj6Enzmb74sDLEq6U/8=;
 b=hIf+XNYEUQSXKtJDWrxGdw/5j20GGEWjVaH2b5AL4MYsKyZe4prNgrf5JXlUHYqgGY
 6ZP5MvNWdFUB7bWnJlJt0FS5GSHVfIkfwGnDb/swmXPE77hKQCom70QTNrYK8qP/Za4W
 HDPJDE7GmcYCIz0ar5Y12OLYP2heiC3VDmnBg2b7/CzQSh0oVLCWv5HkGRmgou10C5O+
 wJVCjRCgOsjKAChfQ3yVwyCtM16QKfhPIcQxKz4WXGmIECOhwqACTNuqUiyMPOhIyD13
 DP7C3HClweEGbdg0eO+7YtHVz2zjPjXzFTGv6TM9ZBmp5dUD773ZfgGn9Y8EsWlLUezB
 4VvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=6h3RXDkleqwSeFqf8A0vxqUeYj6Enzmb74sDLEq6U/8=;
 b=Qorr+MaWUo52EVgUfIIP19/bQlZPn7bsjgdFNqOomwF8roZmonYrszWTkl4QJMT7hv
 D5IHRetuGEas+8V21H4/FIuw9D2YOh/tuakxMm25E7RXoiVsF8ZSUmOWSTQtQuRECD+M
 bASCl5SY7i+DNUIH+XQKd9s5fN1zKFnfZhaafvm4r/MB8FuCGmXjq49eK9477d9NjZNO
 eVH0Ys0azFSmRpU3mjPwRf1nthHnd5KQaNl+jY+nlZvvbIRWvDYwbC+JcTDoMa70/OpB
 PSMkFItRMvpgtFl5E8Y4Qz/xQW+fTsg2bohmxQUMGC/qNQ42vKc4ke/huPIqcv+y7DId
 KckQ==
X-Gm-Message-State: APjAAAVJF1ajjOebEHfXg3Hlfy53j4OlA084CyFqjViV+Ykvg9F05O/E
 GLizyY48wtJDYlEYSjeb3cSLETBeENQ=
X-Google-Smtp-Source: APXvYqzVzwRWMuhucAFk4yPStyZ5DPzlB4p/7W3sns+k8ijHX6LpzCJvbvyZAY4fQQ8TVFzy3N2LQXFMtQ4=
X-Received: by 2002:a1f:7c0e:: with SMTP id x14mr486504vkc.0.1566938528429;
 Tue, 27 Aug 2019 13:42:08 -0700 (PDT)
Date: Tue, 27 Aug 2019 13:41:49 -0700
In-Reply-To: <20190827204152.114609-1-hridya@google.com>
Message-Id: <20190827204152.114609-2-hridya@google.com>
Mime-Version: 1.0
References: <20190827204152.114609-1-hridya@google.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [PATCH 1/4] binder: add a mount option to show global stats
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
 drivers/android/binderfs.c | 47 ++++++++++++++++++++++++++++++++++++--
 1 file changed, 45 insertions(+), 2 deletions(-)

diff --git a/drivers/android/binderfs.c b/drivers/android/binderfs.c
index cc2e71576396..d95d179aec58 100644
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
@@ -311,6 +321,24 @@ static int binderfs_parse_mount_opts(char *data,
 
 			opts->max = max_devices;
 			break;
+		case Opt_stats_mode:
+			stats = match_strdup(&args[0]);
+			if (!stats)
+				return -ENOMEM;
+
+			if (strcmp(stats, "global") != 0) {
+				kfree(stats);
+				return -EINVAL;
+			}
+
+			if (!capable(CAP_SYS_ADMIN)) {
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
@@ -322,8 +350,21 @@ static int binderfs_parse_mount_opts(char *data,
 
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
+		pr_info("Binderfs stats mode cannot be changed during a remount\n");
+		info->mount_opts.stats_mode = prev_stats_mode;
+		return -EINVAL;
+	}
+
+	return 0;
 }
 
 static int binderfs_show_mount_opts(struct seq_file *seq, struct dentry *root)
@@ -333,6 +374,8 @@ static int binderfs_show_mount_opts(struct seq_file *seq, struct dentry *root)
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

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 45032A6DCA
	for <lists+driverdev-devel@lfdr.de>; Tue,  3 Sep 2019 18:17:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id F02CB87798;
	Tue,  3 Sep 2019 16:17:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rPSZ4z0vChJG; Tue,  3 Sep 2019 16:17:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 234C28776E;
	Tue,  3 Sep 2019 16:17:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 52F1D1BF27F
 for <devel@linuxdriverproject.org>; Tue,  3 Sep 2019 16:17:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4FF5E884DA
 for <devel@linuxdriverproject.org>; Tue,  3 Sep 2019 16:17:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bMG3lLTDn-kd for <devel@linuxdriverproject.org>;
 Tue,  3 Sep 2019 16:17:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f202.google.com (mail-qt1-f202.google.com
 [209.85.160.202])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9A54C884DE
 for <devel@driverdev.osuosl.org>; Tue,  3 Sep 2019 16:17:09 +0000 (UTC)
Received: by mail-qt1-f202.google.com with SMTP id e2so19475620qtm.19
 for <devel@driverdev.osuosl.org>; Tue, 03 Sep 2019 09:17:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=x8dW1eobv46xxf8Qk5whq589HTl41TDtcRbBhNUlvgA=;
 b=iWg3lB/gimxrwQvHqRpk41oUEw7gODwiTIRgz/H8vwbj0lL3q8OSi8BSoAdngHXedF
 dAXKwG3OhxcSTjOyW7EhvMbzD+RjZeRBN/9r1WHbnhuqrluYLz2ZfZchh0ZQIkZe8uDR
 uzfopMYYCEKeaLgXtR5CQwXIMAFtITmme2uKVVGSzGvrrAlgyUhO3CXulS6wuSqImeiS
 e1yLYAp1v9fj6UtLOIEAgpsyQgq3CZ1ETjmbmw8yvso675rj1S7SPR2BoBMjR0mae/dB
 MC3A1XqFwMU8PAq0U6FvJNp/+diNM54GF0nen3rwnURcGAO8DljeBPkhd2p36zuC056B
 83vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=x8dW1eobv46xxf8Qk5whq589HTl41TDtcRbBhNUlvgA=;
 b=OIsh22b2DnC2Z6JhVRZY+Kl1vkMGLBEMP+u6I9c6Wjxv14rEMdlrvlA4OerzoOhsN1
 KWMtpWW57fMOv5A2c0W7sgfhu0B4MI/I0TdOKx3Yt/pEHt4hGcThLAFU6Lj+jlkrLQbH
 2TDJuekUZpVzzmhWwHxTdxUptM7Njb+Dl61SpLcZ5b4AY5c3L8ZcHc+8+e4LEOvWOEmn
 1nJ0v8FCPAJmV8CT/HjOb0m0KmOVMvA5+sTvWbJ+KlZikK64KWzcMFfAdfApanuKNuE+
 8f1a9tynrOBV/Wd59p0bcovxiUzA+X+1T84mSYBec1ysZLQnvadpLHWpDAXWuUG+V440
 xOVw==
X-Gm-Message-State: APjAAAXLGYAsF20xMcsk+KL51rMRUF7Zl9X73Oxf7gHgiWkTEppBs3Et
 u3t+nZB94G4/FDUwAt+ioiXjV2mfRG4=
X-Google-Smtp-Source: APXvYqxpd18NioTuSph+EA39tRdWN/I2DGfd/t9Lk3BvoJHxqi6SkdTNtXpyYMsvCmuaTOmOz5MuQB2qM/w=
X-Received: by 2002:a0c:9638:: with SMTP id 53mr18528892qvx.13.1567527428298; 
 Tue, 03 Sep 2019 09:17:08 -0700 (PDT)
Date: Tue,  3 Sep 2019 09:16:52 -0700
In-Reply-To: <20190903161655.107408-1-hridya@google.com>
Message-Id: <20190903161655.107408-2-hridya@google.com>
Mime-Version: 1.0
References: <20190903161655.107408-1-hridya@google.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [PATCH v3 1/4] binder: add a mount option to show global stats
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

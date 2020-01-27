Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B596414A1CB
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Jan 2020 11:16:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6EF5D858DD;
	Mon, 27 Jan 2020 10:16:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cUEtH6Nw22UD; Mon, 27 Jan 2020 10:16:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6C1D9858C6;
	Mon, 27 Jan 2020 10:16:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F06CF1BF294
 for <devel@linuxdriverproject.org>; Mon, 27 Jan 2020 10:16:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E751E2037E
 for <devel@linuxdriverproject.org>; Mon, 27 Jan 2020 10:16:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6XOXZ5nw97r3 for <devel@linuxdriverproject.org>;
 Mon, 27 Jan 2020 10:16:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 10C1C20035
 for <devel@driverdev.osuosl.org>; Mon, 27 Jan 2020 10:16:01 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id x7so4905190pgl.11
 for <devel@driverdev.osuosl.org>; Mon, 27 Jan 2020 02:16:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=RAuZJZqC2SGkCShIla0AvvSszot+qHX00yLZwza0yk4=;
 b=vEfiaWQmCdtZdGxBTp/pxFIot0PLcVqbhRRWpByRfBqnFaR/WX0ue8E4RIaLLgV36+
 shCJQG128WsoN6SwDlpU6xsmsS7MFBz7NasXeO7nN9uUExHLtu1GjONZi0Atu8h0fIBK
 G6mfMq2ZQSbLz/n0KVqtDEcicFLHA4lLmD3pu/SxUikZ34GZPY2sua1bDPjJCKezGsZ4
 67CwtNOdKjdtl1Emr4vQrIqJecn7eybE+quuHrkSNR7MZY8faivJ2iTkn4JE7R8RD4Vm
 gRpRjFQkxIWVxR5WzfBHmkqBd6h0ZagU1ayRBYLj9sadiFPAWhLnilP+AAvw+HihjDDV
 iwnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=RAuZJZqC2SGkCShIla0AvvSszot+qHX00yLZwza0yk4=;
 b=jFtVXDaV8DlVoG45nI3sMAnP51X6DMuHdgVuQuAdt2xfs8Zaka0Ygf8w7FdRkRXvbV
 3tTrvGyBVbKuccAVVhzvZWOlm9AgodviCe483EJ5cjqpTNRoKg1z1TNJyX7KoZ4/m+kt
 /1pGsU+CICE9F1rv0rWTcrrClClRuc15Hdw+ctsT9LC9VvQG/U/JnQui3oTwMxuQKyR/
 DK2w2vdiS9fIh8lJRvLZDAEMvxZQeC1EuXxzLMzzzm8apLUKj5NWKWRw1SVIhL3gBKnK
 gyitHq/+y/nfQT0lda3oI7OcO/gXYTVR4p9y9U/nMJrBp8c7FvM5h6MQ4bznMYGqOzBk
 rJMQ==
X-Gm-Message-State: APjAAAVdrxUMDwrBRtdQpgYAa476GRyJ5nR06Yg2JxC04HuQld7jWPCV
 lOf9T5uOxnj2UnS9N83VdZ8=
X-Google-Smtp-Source: APXvYqzOVJgs6ZnwvWmfrefHgl9aA6HPZYD1L31qFPIOKDlMVTzOu30DvyMdi5Vaek1b/0/9GrjvUg==
X-Received: by 2002:aa7:9556:: with SMTP id w22mr15592005pfq.198.1580120160623; 
 Mon, 27 Jan 2020 02:16:00 -0800 (PST)
Received: from localhost.localdomain ([2405:205:c902:a5e9:3956:8df2:aee5:9cf6])
 by smtp.gmail.com with ESMTPSA id s15sm15504138pgq.4.2020.01.27.02.15.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Jan 2020 02:15:59 -0800 (PST)
From: Pragat Pandya <pragat.pandya@gmail.com>
To: valdis.kletnieks@vt.edu,
	gregkh@linuxfoundation.org
Subject: [PATCH 20/22] staging: exfat: Rename variabel "CreateTimestamp" to
 "create_timestamp"
Date: Mon, 27 Jan 2020 15:43:41 +0530
Message-Id: <20200127101343.20415-21-pragat.pandya@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200127101343.20415-1-pragat.pandya@gmail.com>
References: <20200127101343.20415-1-pragat.pandya@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 skhan@linuxfoundation.org, linux-fsdevel@vger.kernel.org,
 linux-kernel-mentees@lists.linuxfoundation.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Change all the occurreces of "CreateTimestamp" to "create_timestamp" in
exfat.

Signed-off-by: Pragat Pandya <pragat.pandya@gmail.com>
---
 drivers/staging/exfat/exfat.h       |  2 +-
 drivers/staging/exfat/exfat_super.c | 46 ++++++++++++++---------------
 2 files changed, 24 insertions(+), 24 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index 2e07cb6b694a..9b3b4a6f586b 100644
--- a/drivers/staging/exfat/exfat.h
+++ b/drivers/staging/exfat/exfat.h
@@ -278,7 +278,7 @@ struct dir_entry_t {
 	u32 attr;
 	u64 Size;
 	u32 num_subdirs;
-	struct date_time_t CreateTimestamp;
+	struct date_time_t create_timestamp;
 	struct date_time_t ModifyTimestamp;
 	struct date_time_t AccessTimestamp;
 };
diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index 2fe59bdabb56..4279fb309f9e 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -1458,7 +1458,7 @@ static int ffsReadStat(struct inode *inode, struct dir_entry_t *info)
 		if ((fid->dir.dir == p_fs->root_dir) &&
 		    (fid->entry == -1)) {
 			info->attr = ATTR_SUBDIR;
-			memset((char *)&info->CreateTimestamp, 0,
+			memset((char *)&info->create_timestamp, 0,
 			       sizeof(struct date_time_t));
 			memset((char *)&info->ModifyTimestamp, 0,
 			       sizeof(struct date_time_t));
@@ -1505,13 +1505,13 @@ static int ffsReadStat(struct inode *inode, struct dir_entry_t *info)
 	info->attr = p_fs->fs_func->get_entry_attr(ep);
 
 	p_fs->fs_func->get_entry_time(ep, &tm, TM_CREATE);
-	info->CreateTimestamp.year = tm.year;
-	info->CreateTimestamp.month = tm.mon;
-	info->CreateTimestamp.day = tm.day;
-	info->CreateTimestamp.hour = tm.hour;
-	info->CreateTimestamp.minute = tm.min;
-	info->CreateTimestamp.second = tm.sec;
-	info->CreateTimestamp.milli_second = 0;
+	info->create_timestamp.year = tm.year;
+	info->create_timestamp.month = tm.mon;
+	info->create_timestamp.day = tm.day;
+	info->create_timestamp.hour = tm.hour;
+	info->create_timestamp.minute = tm.min;
+	info->create_timestamp.second = tm.sec;
+	info->create_timestamp.milli_second = 0;
 
 	p_fs->fs_func->get_entry_time(ep, &tm, TM_MODIFY);
 	info->ModifyTimestamp.year = tm.year;
@@ -1605,12 +1605,12 @@ static int ffsWriteStat(struct inode *inode, struct dir_entry_t *info)
 	p_fs->fs_func->set_entry_attr(ep, info->attr);
 
 	/* set FILE_INFO structure using the acquired struct dentry_t */
-	tm.sec  = info->CreateTimestamp.second;
-	tm.min  = info->CreateTimestamp.minute;
-	tm.hour = info->CreateTimestamp.hour;
-	tm.day  = info->CreateTimestamp.day;
-	tm.mon  = info->CreateTimestamp.month;
-	tm.year = info->CreateTimestamp.year;
+	tm.sec  = info->create_timestamp.second;
+	tm.min  = info->create_timestamp.minute;
+	tm.hour = info->create_timestamp.hour;
+	tm.day  = info->create_timestamp.day;
+	tm.mon  = info->create_timestamp.month;
+	tm.year = info->create_timestamp.year;
 	p_fs->fs_func->set_entry_time(ep, &tm, TM_CREATE);
 
 	tm.sec  = info->ModifyTimestamp.second;
@@ -1925,13 +1925,13 @@ static int ffsReadDir(struct inode *inode, struct dir_entry_t *dir_entry)
 			dir_entry->attr = fs_func->get_entry_attr(ep);
 
 			fs_func->get_entry_time(ep, &tm, TM_CREATE);
-			dir_entry->CreateTimestamp.year = tm.year;
-			dir_entry->CreateTimestamp.month = tm.mon;
-			dir_entry->CreateTimestamp.day = tm.day;
-			dir_entry->CreateTimestamp.hour = tm.hour;
-			dir_entry->CreateTimestamp.minute = tm.min;
-			dir_entry->CreateTimestamp.second = tm.sec;
-			dir_entry->CreateTimestamp.milli_second = 0;
+			dir_entry->create_timestamp.year = tm.year;
+			dir_entry->create_timestamp.month = tm.mon;
+			dir_entry->create_timestamp.day = tm.day;
+			dir_entry->create_timestamp.hour = tm.hour;
+			dir_entry->create_timestamp.minute = tm.min;
+			dir_entry->create_timestamp.second = tm.sec;
+			dir_entry->create_timestamp.milli_second = 0;
 
 			fs_func->get_entry_time(ep, &tm, TM_MODIFY);
 			dir_entry->ModifyTimestamp.year = tm.year;
@@ -3192,7 +3192,7 @@ static int exfat_fill_inode(struct inode *inode, struct file_id_t *fid)
 				& ~((loff_t)p_fs->cluster_size - 1)) >> 9;
 
 	exfat_time_fat2unix(&inode->i_mtime, &info.ModifyTimestamp);
-	exfat_time_fat2unix(&inode->i_ctime, &info.CreateTimestamp);
+	exfat_time_fat2unix(&inode->i_ctime, &info.create_timestamp);
 	exfat_time_fat2unix(&inode->i_atime, &info.AccessTimestamp);
 
 	return 0;
@@ -3263,7 +3263,7 @@ static int exfat_write_inode(struct inode *inode, struct writeback_control *wbc)
 	info.Size = i_size_read(inode);
 
 	exfat_time_unix2fat(&inode->i_mtime, &info.ModifyTimestamp);
-	exfat_time_unix2fat(&inode->i_ctime, &info.CreateTimestamp);
+	exfat_time_unix2fat(&inode->i_ctime, &info.create_timestamp);
 	exfat_time_unix2fat(&inode->i_atime, &info.AccessTimestamp);
 
 	ffsWriteStat(inode, &info);
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

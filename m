Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2411B1582A8
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Feb 2020 19:38:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A4ED6879A7;
	Mon, 10 Feb 2020 18:37:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W9JL3nERHh5C; Mon, 10 Feb 2020 18:37:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DD39A87527;
	Mon, 10 Feb 2020 18:37:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 95D8D1BF964
 for <devel@linuxdriverproject.org>; Mon, 10 Feb 2020 18:37:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8E7DF204A2
 for <devel@linuxdriverproject.org>; Mon, 10 Feb 2020 18:37:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gzB8q4LiTfjb for <devel@linuxdriverproject.org>;
 Mon, 10 Feb 2020 18:37:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 7E31D204A0
 for <devel@driverdev.osuosl.org>; Mon, 10 Feb 2020 18:37:55 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id w21so4342747pgl.9
 for <devel@driverdev.osuosl.org>; Mon, 10 Feb 2020 10:37:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=3LgDBSCZjxBjgZamIyJB6leQqXfm964yJ7D7RtAIfR8=;
 b=IwNu7+TgWWZ98ABg9NwC6VV5hBvLDRdVtxpanMXSFgJunDdCvMzsf1zql6r4HhcOa/
 AT2z7+MmQwR/YKfKLFa9aPT9B/d401F2RGckLnXeOtDRFtZPaNGGK8xHteOOurJdUsG4
 nlxr8Qn8GqBdkBvnL8+0wxKNQICviJNiJ25fa2+rX/sYsrs23E4NodEp6gxSwK9WgJiu
 L2+yHKwBW1HT1zXaCSv5ATjtO8PwWzCSlXXM7sQcLYSTjX454qbPDs5Du3Z/iXs+q/i2
 Ud74k/tRGlsaELe5FnT83G7zF5G4oDuNFH/KCGhAnKy5jt7nbiEAFDozGhVtwXVoDJQ7
 NgiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=3LgDBSCZjxBjgZamIyJB6leQqXfm964yJ7D7RtAIfR8=;
 b=BwUy2v+m9mXx1soWcrFenooBWVpS2OXp/fl9uXbdgVUw8ywKTJ6GwwK/iaKMLf4eKI
 FdeTyg3DPfAIobtIyJH4a0/Pa3gVwO7olO6ZNqU5BvPwhKCpMb7i9/6RpUY5iJZZvxsT
 rRGhg1yNmRN3OO9/jJ/7JS6OjgUS24m9tuefNEpUzfOX/5AXqdOBPiruj7QP5IhmqPrS
 3Z8Pi1BCXONgn7d6pSTFgMzfyJnQiEUS7jgBkyqio/gZLIH2LBpCQ7il1GTb41AaOZ/c
 YiCKVxe1RMVu9ISX6a+ndRqWw4E9IoNe7JP1minJQqpUfi4V7chckpGYL1jsbgLxA37V
 b2sQ==
X-Gm-Message-State: APjAAAVjLcGPe/nvs39b7xRuQX261q/dX4RLa86uOTKj84BjiIIAR5ns
 +GPWenL3cuK6hDa5Brstkkg=
X-Google-Smtp-Source: APXvYqxg/SHoV5oiAZaQA/DiyJwSO6NZNGQen5dGG6yrHhH7/51y6ow4KqGN3wNJqTbe62glhkgiwg==
X-Received: by 2002:a62:7945:: with SMTP id u66mr2428961pfc.82.1581359875129; 
 Mon, 10 Feb 2020 10:37:55 -0800 (PST)
Received: from localhost.localdomain ([2405:204:8308:74f3:144f:bb39:afc3:51b0])
 by smtp.gmail.com with ESMTPSA id gc1sm124922pjb.20.2020.02.10.10.37.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2020 10:37:54 -0800 (PST)
From: Pragat Pandya <pragat.pandya@gmail.com>
To: gregkh@linuxfoundation.org,
	valdis.kletnieks@vt.edu
Subject: [PATCH v2 17/19] staging: exfat: Rename variable 'CreateTimestamp' to
 'create_timestamp'
Date: Tue, 11 Feb 2020 00:05:56 +0530
Message-Id: <20200210183558.11836-18-pragat.pandya@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200210183558.11836-1-pragat.pandya@gmail.com>
References: <20200207094612.GA562325@kroah.com>
 <20200210183558.11836-1-pragat.pandya@gmail.com>
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

Fix checkpatch warning: Avoid CamelCase
Change all occurrences of identifier "CreateTimestamp" to
"create_timestamp"

Signed-off-by: Pragat Pandya <pragat.pandya@gmail.com>
---
 drivers/staging/exfat/exfat.h       |  2 +-
 drivers/staging/exfat/exfat_super.c | 46 ++++++++++++++---------------
 2 files changed, 24 insertions(+), 24 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index 90153175bbb9..c99652ab13f1 100644
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
index 365e9e719bcf..ed862c3e3e10 100644
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
 	info->attr = exfat_get_entry_attr(ep);
 
 	exfat_get_entry_time(ep, &tm, TM_CREATE);
-	info->CreateTimestamp.year = tm.year;
-	info->CreateTimestamp.month = tm.mon;
-	info->CreateTimestamp.day = tm.day;
-	info->CreateTimestamp.hour = tm.hour;
-	info->CreateTimestamp.minute = tm.min;
-	info->CreateTimestamp.second = tm.sec;
-	info->CreateTimestamp.millisecond = 0;
+	info->create_timestamp.year = tm.year;
+	info->create_timestamp.month = tm.mon;
+	info->create_timestamp.day = tm.day;
+	info->create_timestamp.hour = tm.hour;
+	info->create_timestamp.minute = tm.min;
+	info->create_timestamp.second = tm.sec;
+	info->create_timestamp.millisecond = 0;
 
 	exfat_get_entry_time(ep, &tm, TM_MODIFY);
 	info->ModifyTimestamp.year = tm.year;
@@ -1605,12 +1605,12 @@ static int ffsWriteStat(struct inode *inode, struct dir_entry_t *info)
 	exfat_set_entry_attr(ep, info->attr);
 
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
 	exfat_set_entry_time(ep, &tm, TM_CREATE);
 
 	tm.sec  = info->ModifyTimestamp.second;
@@ -1922,13 +1922,13 @@ static int ffsReadDir(struct inode *inode, struct dir_entry_t *dir_entry)
 			dir_entry->attr = exfat_get_entry_attr(ep);
 
 			exfat_get_entry_time(ep, &tm, TM_CREATE);
-			dir_entry->CreateTimestamp.year = tm.year;
-			dir_entry->CreateTimestamp.month = tm.mon;
-			dir_entry->CreateTimestamp.day = tm.day;
-			dir_entry->CreateTimestamp.hour = tm.hour;
-			dir_entry->CreateTimestamp.minute = tm.min;
-			dir_entry->CreateTimestamp.second = tm.sec;
-			dir_entry->CreateTimestamp.millisecond = 0;
+			dir_entry->create_timestamp.year = tm.year;
+			dir_entry->create_timestamp.month = tm.mon;
+			dir_entry->create_timestamp.day = tm.day;
+			dir_entry->create_timestamp.hour = tm.hour;
+			dir_entry->create_timestamp.minute = tm.min;
+			dir_entry->create_timestamp.second = tm.sec;
+			dir_entry->create_timestamp.millisecond = 0;
 
 			exfat_get_entry_time(ep, &tm, TM_MODIFY);
 			dir_entry->ModifyTimestamp.year = tm.year;
@@ -3189,7 +3189,7 @@ static int exfat_fill_inode(struct inode *inode, struct file_id_t *fid)
 				& ~((loff_t)p_fs->cluster_size - 1)) >> 9;
 
 	exfat_time_fat2unix(&inode->i_mtime, &info.ModifyTimestamp);
-	exfat_time_fat2unix(&inode->i_ctime, &info.CreateTimestamp);
+	exfat_time_fat2unix(&inode->i_ctime, &info.create_timestamp);
 	exfat_time_fat2unix(&inode->i_atime, &info.AccessTimestamp);
 
 	return 0;
@@ -3260,7 +3260,7 @@ static int exfat_write_inode(struct inode *inode, struct writeback_control *wbc)
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

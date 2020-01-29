Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B32E014CEED
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Jan 2020 18:00:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C59BD2202E;
	Wed, 29 Jan 2020 17:00:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kMWnUZeRU70W; Wed, 29 Jan 2020 17:00:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B1B552201C;
	Wed, 29 Jan 2020 17:00:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D52C81BF215
 for <devel@linuxdriverproject.org>; Wed, 29 Jan 2020 17:00:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D240081E90
 for <devel@linuxdriverproject.org>; Wed, 29 Jan 2020 17:00:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tMbxhvi-gxQH for <devel@linuxdriverproject.org>;
 Wed, 29 Jan 2020 17:00:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com
 [209.85.216.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 24F3183B2F
 for <devel@driverdev.osuosl.org>; Wed, 29 Jan 2020 17:00:26 +0000 (UTC)
Received: by mail-pj1-f67.google.com with SMTP id gv17so33903pjb.1
 for <devel@driverdev.osuosl.org>; Wed, 29 Jan 2020 09:00:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=X5DyFstm+Fabv2qYBB5NDWkEkfk8gyzH93R+wgHnU6E=;
 b=nQFgmZ7cb/lHmtpGJwUbae71HxinF4WrQDEtyFk6+eYZC5NNwym6nrG3AdRGWTitIT
 aRs9Q/H2ckvK1RAS2KbMaY6vpFZcfXTQAgNZyBToiIzDixwwvFJVceB3NRVL+7R8NQZV
 GgNVUmm15+P+M24UwKR06kAPfi2ZEAjojh7D5H2KTlIv76KGQIuSqXZIiSP1J7OruZQN
 oksSid1493MHjZ2JtuNqEug6Bj3LVVqc4q31yV4LxsrLECRjcgL9JZvtAb/XtmIvbkUV
 JMSRkfVuN3KlCOUfgUL0SJixzIf4K8yJIXs6MV++e7XYB62LxOV6hvWcXH4jGLTuj/Su
 nbmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=X5DyFstm+Fabv2qYBB5NDWkEkfk8gyzH93R+wgHnU6E=;
 b=MBWnOHqhy7zEHtKz8oHD2RQTKGB6Q7fF7VfN5xMquW77O8cyL93LCksXteUP7s6Q0S
 Ho4GQOfnfSjtfj83Ncky2ZBVq9S0P+9cUdsKyVcR/jk8r3ivtWc1GBXF3TtuFjNh4BGw
 S03jKEuJNrSrPX7K0n7pvF8rkPQd6zwoC+DCIbvUSI1vVLbQ8DCbJefQcEEQSCjwXVmh
 hEE+R+R5zjDiEAYIovrLTfmGWbvuJCUbhEqfbcoQsBmR1Vv6XajTMrSHCJXiguShQnHc
 4xoiwyfRSZXFEKL8kIXMCUHUIpys/nji4Jg4uMQ0tM33D9TttsIojjS3us2nHS9tDdz9
 nDaw==
X-Gm-Message-State: APjAAAWR4OBjtfMDVdQSKfwItuz6ZrIIR2VGxCrxxe3x2B2BKhCI4Z/I
 AkUJ9WckwRFNdHCGVYDTIyM=
X-Google-Smtp-Source: APXvYqw5gWUDWZTsleyhrwVCmHMkvzYsElcM5bMlPMQUDJiEptfbIgz27srgMEmyVbSk0kCWhisZOA==
X-Received: by 2002:a17:90b:941:: with SMTP id dw1mr592147pjb.21.1580317225700; 
 Wed, 29 Jan 2020 09:00:25 -0800 (PST)
Received: from localhost.localdomain ([2405:205:c92f:3ccd:49ce:a9e3:28b5:cf94])
 by smtp.gmail.com with ESMTPSA id f8sm3223610pfn.2.2020.01.29.09.00.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Jan 2020 09:00:25 -0800 (PST)
From: Pragat Pandya <pragat.pandya@gmail.com>
To: gregkh@linuxfoundation.org,
	valdis.kletnieks@vt.edu
Subject: [PATCH 17/19] staging: exfat: Rename variable 'CreateTimestamp' to
 'create_timestamp'
Date: Wed, 29 Jan 2020 22:28:30 +0530
Message-Id: <20200129165832.10574-18-pragat.pandya@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200129165832.10574-1-pragat.pandya@gmail.com>
References: <20200129165832.10574-1-pragat.pandya@gmail.com>
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

Fix checkpatch warning: Avoid CamelCase.
Change all occurrences of identifier "CreateTimestamp" to
"create_timestamp"

Signed-off-by: Pragat Pandya <pragat.pandya@gmail.com>
---
 drivers/staging/exfat/exfat.h       |  2 +-
 drivers/staging/exfat/exfat_super.c | 46 ++++++++++++++---------------
 2 files changed, 24 insertions(+), 24 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index 0b5ec053bb26..58db8ea700f8 100644
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
index 14a10f6f8653..694acfd8c52a 100644
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
-	info->CreateTimestamp.millisecond = 0;
+	info->create_timestamp.year = tm.year;
+	info->create_timestamp.month = tm.mon;
+	info->create_timestamp.day = tm.day;
+	info->create_timestamp.hour = tm.hour;
+	info->create_timestamp.minute = tm.min;
+	info->create_timestamp.second = tm.sec;
+	info->create_timestamp.millisecond = 0;
 
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
-			dir_entry->CreateTimestamp.millisecond = 0;
+			dir_entry->create_timestamp.year = tm.year;
+			dir_entry->create_timestamp.month = tm.mon;
+			dir_entry->create_timestamp.day = tm.day;
+			dir_entry->create_timestamp.hour = tm.hour;
+			dir_entry->create_timestamp.minute = tm.min;
+			dir_entry->create_timestamp.second = tm.sec;
+			dir_entry->create_timestamp.millisecond = 0;
 
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

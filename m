Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 851FD1582AB
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Feb 2020 19:38:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1C499861A7;
	Mon, 10 Feb 2020 18:38:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j4TnNraz11V1; Mon, 10 Feb 2020 18:38:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 349FE8610A;
	Mon, 10 Feb 2020 18:38:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 27F381BF964
 for <devel@linuxdriverproject.org>; Mon, 10 Feb 2020 18:38:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 24A3587527
 for <devel@linuxdriverproject.org>; Mon, 10 Feb 2020 18:38:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LoVqq3czDQpB for <devel@linuxdriverproject.org>;
 Mon, 10 Feb 2020 18:38:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A9DF285A46
 for <devel@driverdev.osuosl.org>; Mon, 10 Feb 2020 18:38:05 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id d6so4356082pgn.5
 for <devel@driverdev.osuosl.org>; Mon, 10 Feb 2020 10:38:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=OlRrcV4cV+SlhUD75IgA2vuU1RtHvP/9GZxrkhvxchc=;
 b=eyeATcJof+038p+BnoFo7o5+/Wg8N9L2sNXgOUL/t4JnoE5/w5swPUhhBxScTk/DHr
 WMNu7fXE7GqmMHBeupggQm1Z3ykj0g7eQw8WnUuK4U0pQiqSfHdhVwjCgPeuAac4sFlC
 9+hu32uaiFkSy7/WvvWuT7N49ThMt1lyd2U4N8lMQzN52NPseachthwFpS3tO9iocyLM
 EWiPKQzM6Ci56XgrmguS33VSlk5oKSIz0nJIgS3Ekmu8DEE9xopX+M3MwETvxQcPfkhG
 Ej5KC//6tToF6+drHLQNS07RK5XGeLd8fu37NPX3kAnreSm7FJ/mkwz6ydnCAgiKlB7V
 35YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=OlRrcV4cV+SlhUD75IgA2vuU1RtHvP/9GZxrkhvxchc=;
 b=VwVtA430fqYyiP5q0Cuv04Ul5N5mnR8vNzmU4yh3pWQ89vV7NFLxX6cWGghLlMi+FK
 X2c1memalKE2OYwoWwPNQHhfo0PZ+4gL7J0/PPfGgED7V8YAokhujqFKBdJ5kxaKLfsS
 +jAGRjqdyGeuewBsJAhAnT3rxJsS/zRpPnK6uDhe4pFKt7zYaw8myBb2GB8zqHM+aNJX
 KwMULZKvQB7ljhTYY8GvhZblk5fQ3FPCyaWr0iEhZzGB8kVbc6hsVleuiuSZuhOokTFz
 3cq1WPJYTuiumVP7oOsX45zCBrP+1j+HtGfUKG/rtU79a5r9ZS9YBEDCUQ/P2pSt3pC8
 fZDw==
X-Gm-Message-State: APjAAAVMLA4npr0b0Ufig1o/sMYTm9b1fwxKLaulSDQpm4Mxoma/y8zA
 I0RbTi5EwGuU5fhCtI+oz7I=
X-Google-Smtp-Source: APXvYqwKlPqRa5EC0LwWDP1BusScl/tPVHSEFZRpU+UtUDBjpDgl/nxAobd28LS4kzzlkCdnyEMBAw==
X-Received: by 2002:a63:aa07:: with SMTP id e7mr3020882pgf.90.1581359885308;
 Mon, 10 Feb 2020 10:38:05 -0800 (PST)
Received: from localhost.localdomain ([2405:204:8308:74f3:144f:bb39:afc3:51b0])
 by smtp.gmail.com with ESMTPSA id gc1sm124922pjb.20.2020.02.10.10.38.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2020 10:38:04 -0800 (PST)
From: Pragat Pandya <pragat.pandya@gmail.com>
To: gregkh@linuxfoundation.org,
	valdis.kletnieks@vt.edu
Subject: [PATCH v2 19/19] staging: exfat: Rename variable 'AccessTimestamp' to
 'access_timestamp'
Date: Tue, 11 Feb 2020 00:05:58 +0530
Message-Id: <20200210183558.11836-20-pragat.pandya@gmail.com>
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
Change all occurrences of identifier "AccessTimestamp" to
"access_timestamp"

Signed-off-by: Pragat Pandya <pragat.pandya@gmail.com>
---
 drivers/staging/exfat/exfat.h       |  2 +-
 drivers/staging/exfat/exfat_super.c | 10 +++++-----
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index 2c911f1ea949..46cfac322821 100644
--- a/drivers/staging/exfat/exfat.h
+++ b/drivers/staging/exfat/exfat.h
@@ -280,7 +280,7 @@ struct dir_entry_t {
 	u32 num_subdirs;
 	struct date_time_t create_timestamp;
 	struct date_time_t modify_timestamp;
-	struct date_time_t AccessTimestamp;
+	struct date_time_t access_timestamp;
 };
 
 struct timestamp_t {
diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index 7388aa8fb344..9f47102e3f38 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -1462,7 +1462,7 @@ static int ffsReadStat(struct inode *inode, struct dir_entry_t *info)
 			       sizeof(struct date_time_t));
 			memset((char *)&info->modify_timestamp, 0,
 			       sizeof(struct date_time_t));
-			memset((char *)&info->AccessTimestamp, 0,
+			memset((char *)&info->access_timestamp, 0,
 			       sizeof(struct date_time_t));
 			strcpy(info->short_name, ".");
 			strcpy(info->name, ".");
@@ -1522,7 +1522,7 @@ static int ffsReadStat(struct inode *inode, struct dir_entry_t *info)
 	info->modify_timestamp.second = tm.sec;
 	info->modify_timestamp.millisecond = 0;
 
-	memset((char *)&info->AccessTimestamp, 0, sizeof(struct date_time_t));
+	memset((char *)&info->access_timestamp, 0, sizeof(struct date_time_t));
 
 	*uni_name.name = 0x0;
 	/* XXX this is very bad for exfat cuz name is already included in es.
@@ -1939,7 +1939,7 @@ static int ffsReadDir(struct inode *inode, struct dir_entry_t *dir_entry)
 			dir_entry->modify_timestamp.second = tm.sec;
 			dir_entry->modify_timestamp.millisecond = 0;
 
-			memset((char *)&dir_entry->AccessTimestamp, 0,
+			memset((char *)&dir_entry->access_timestamp, 0,
 			       sizeof(struct date_time_t));
 
 			*uni_name.name = 0x0;
@@ -3190,7 +3190,7 @@ static int exfat_fill_inode(struct inode *inode, struct file_id_t *fid)
 
 	exfat_time_fat2unix(&inode->i_mtime, &info.modify_timestamp);
 	exfat_time_fat2unix(&inode->i_ctime, &info.create_timestamp);
-	exfat_time_fat2unix(&inode->i_atime, &info.AccessTimestamp);
+	exfat_time_fat2unix(&inode->i_atime, &info.access_timestamp);
 
 	return 0;
 }
@@ -3261,7 +3261,7 @@ static int exfat_write_inode(struct inode *inode, struct writeback_control *wbc)
 
 	exfat_time_unix2fat(&inode->i_mtime, &info.modify_timestamp);
 	exfat_time_unix2fat(&inode->i_ctime, &info.create_timestamp);
-	exfat_time_unix2fat(&inode->i_atime, &info.AccessTimestamp);
+	exfat_time_unix2fat(&inode->i_atime, &info.access_timestamp);
 
 	ffsWriteStat(inode, &info);
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

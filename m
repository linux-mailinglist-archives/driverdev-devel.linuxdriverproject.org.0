Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0547414A1CD
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Jan 2020 11:16:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8D07D856ED;
	Mon, 27 Jan 2020 10:16:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o8UfHbqwM6f0; Mon, 27 Jan 2020 10:16:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8BA448553C;
	Mon, 27 Jan 2020 10:16:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3278F1BF977
 for <devel@linuxdriverproject.org>; Mon, 27 Jan 2020 10:16:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2F442878AC
 for <devel@linuxdriverproject.org>; Mon, 27 Jan 2020 10:16:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8mlmU+jIHxRL for <devel@linuxdriverproject.org>;
 Mon, 27 Jan 2020 10:16:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f68.google.com (mail-pj1-f68.google.com
 [209.85.216.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A9E718789C
 for <devel@driverdev.osuosl.org>; Mon, 27 Jan 2020 10:16:10 +0000 (UTC)
Received: by mail-pj1-f68.google.com with SMTP id n96so2763801pjc.3
 for <devel@driverdev.osuosl.org>; Mon, 27 Jan 2020 02:16:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=uqJouIHf679d7RfMVdsTQABFE3LSL2nEkmeERrDaZwA=;
 b=D9LzKd2Rt7AIs9CPAOlMQkST4b9wVAL5Wwt/a/aq7VbsnJHUAlpLcr7tTizWeBbLtZ
 gLMFSj4OR0Q8cb15gBX2FeS1jinyAggXeIR9CHk3cedgZliKk2V25TfMpZWaSpEAP+ZP
 XYUDL/gdge1LWZswzFM3f18lv22ujR2UMiBMSHp6YAEHUGoaTKPBx0Qu4AVpVKvsHM/h
 vjRHPOL/6Wq7mXj5M1G5YRnI8iFcRVOje3hBoAuWC4rl5rKyT0IhiLJeXBj7+5LEkWPs
 TpJbfikkQ4RTFVc0Ppal5pB5+v002OKf8Yyg2jpu9CZ5I9xVMxLZv/56U+VzfkfaDSzd
 rVSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=uqJouIHf679d7RfMVdsTQABFE3LSL2nEkmeERrDaZwA=;
 b=dR7SJBBzeBbF/0WO1XLEZJ0hBm1Zj0nwd/02RDLp9x9e4qo6QXC0UZU8EcgLUHqpXv
 onaqxHU/mr3j3Slirjgjs08Gry62oPS8KaNehEX/wlxJEeEVIJfVFTsf2fZlELV5AE7P
 H4NHRFnC7PfX60cvvc2MR2XVgKX0DUXKzcSaYQITyW+PIP88vEqtxZ6MdRgyfjgLfOHH
 E4NbzDCuyA+DX7JLswWybaS+7SN1EowiZ7QSND+YzXriHG1Uh3DNmseSYgMfBVh8VsI4
 88ysrNI93Xo+e4iP3e8tEjQdvvn4rhQruhCUPqp7OnPeZQWy5b93KX1AU09bd4CWgMgo
 vrwQ==
X-Gm-Message-State: APjAAAWOWtAGlHH5K2kHZ0pbGkKS85Yl1cPK2aKzJYLnhnP72HxQqv+A
 agAkAxWIOjT/7hIUYoem/yE=
X-Google-Smtp-Source: APXvYqz3MdSETRa8Qhn3mjnM9xEyOqh43vFhRnyKw5NfUyKYd4uegbwy+0aEPWu+Sc3gUKuitxZUSg==
X-Received: by 2002:a17:90a:ff02:: with SMTP id
 ce2mr1167302pjb.98.1580120170312; 
 Mon, 27 Jan 2020 02:16:10 -0800 (PST)
Received: from localhost.localdomain ([2405:205:c902:a5e9:3956:8df2:aee5:9cf6])
 by smtp.gmail.com with ESMTPSA id s15sm15504138pgq.4.2020.01.27.02.16.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Jan 2020 02:16:09 -0800 (PST)
From: Pragat Pandya <pragat.pandya@gmail.com>
To: valdis.kletnieks@vt.edu,
	gregkh@linuxfoundation.org
Subject: [PATCH 22/22] staging: exfat: Rename variable "AccessTimestamp" to
 "access_timestamp"
Date: Mon, 27 Jan 2020 15:43:43 +0530
Message-Id: <20200127101343.20415-23-pragat.pandya@gmail.com>
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

Change all the occurrences of "AccessTimestamp" to "access_timestamp" in
exfat.

Signed-off-by: Pragat Pandya <pragat.pandya@gmail.com>
---
 drivers/staging/exfat/exfat.h       |  2 +-
 drivers/staging/exfat/exfat_super.c | 10 +++++-----
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index 92f36fcc4591..7424a27ca23f 100644
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
index 3fb7977ef27f..3364bc2140f5 100644
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
 	info->modify_timestamp.milli_second = 0;
 
-	memset((char *)&info->AccessTimestamp, 0, sizeof(struct date_time_t));
+	memset((char *)&info->access_timestamp, 0, sizeof(struct date_time_t));
 
 	*uni_name.name = 0x0;
 	/* XXX this is very bad for exfat cuz name is already included in es.
@@ -1942,7 +1942,7 @@ static int ffsReadDir(struct inode *inode, struct dir_entry_t *dir_entry)
 			dir_entry->modify_timestamp.second = tm.sec;
 			dir_entry->modify_timestamp.milli_second = 0;
 
-			memset((char *)&dir_entry->AccessTimestamp, 0,
+			memset((char *)&dir_entry->access_timestamp, 0,
 			       sizeof(struct date_time_t));
 
 			*uni_name.name = 0x0;
@@ -3193,7 +3193,7 @@ static int exfat_fill_inode(struct inode *inode, struct file_id_t *fid)
 
 	exfat_time_fat2unix(&inode->i_mtime, &info.modify_timestamp);
 	exfat_time_fat2unix(&inode->i_ctime, &info.create_timestamp);
-	exfat_time_fat2unix(&inode->i_atime, &info.AccessTimestamp);
+	exfat_time_fat2unix(&inode->i_atime, &info.access_timestamp);
 
 	return 0;
 }
@@ -3264,7 +3264,7 @@ static int exfat_write_inode(struct inode *inode, struct writeback_control *wbc)
 
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

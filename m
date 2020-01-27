Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A5FA614A1C0
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Jan 2020 11:15:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 448FD85693;
	Mon, 27 Jan 2020 10:15:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xus1v5aucqMy; Mon, 27 Jan 2020 10:15:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9EFBE85497;
	Mon, 27 Jan 2020 10:15:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0ADCB1BF294
 for <devel@linuxdriverproject.org>; Mon, 27 Jan 2020 10:15:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0770220487
 for <devel@linuxdriverproject.org>; Mon, 27 Jan 2020 10:15:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OZobgE-1bWVA for <devel@linuxdriverproject.org>;
 Mon, 27 Jan 2020 10:15:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 8FE5120486
 for <devel@driverdev.osuosl.org>; Mon, 27 Jan 2020 10:15:41 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id a6so3590205plm.3
 for <devel@driverdev.osuosl.org>; Mon, 27 Jan 2020 02:15:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Zrn7+TeOkTDL/p3LQj1UqFH3/1vHE1+1wFLqYAGLVFQ=;
 b=Ue4NKg8DXDExYRFvWUyszMX+E/J0sZFpnwRNCf+XUFtDtHOfJtaQqbGvcIM+Qar5St
 qcbx3ws0c5nX5kwCKMFYHTyvrmTjhTD3jrBp56mLOWQOoVn6wE+v5mC1cycDEgRVF8Dh
 YneupgBhKHzteqCRdHzqsuL5E3SbSOcX2nAUhmiVL21/iGZ1gFuMakOclbdmZ9XoUGJ5
 1/Ro/t8dLB/0J4bfRJqZODjGuPzncpDaEio43mjN6UxspNZW08cVhLOOTvA9VU2SUwRR
 CkVz6ucDgO35azapQBYYyhcXcHX6E+5iNwbfBkwUc3nXrroruRNfBItXS67naqnC6UQu
 EJgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Zrn7+TeOkTDL/p3LQj1UqFH3/1vHE1+1wFLqYAGLVFQ=;
 b=tvGnbW5Yhk7bIUeKV86zAnXYYNyvkw9UiwsOMDXggy16I+ME8c09NTtg2zLWRQBX4I
 pYsPTx6AyLre0x8ipWAuoFbZaaRi8b6yW8O8hTlpK5Pymk+HSHIxOZxtNoYbaf2wOn9V
 q4HAzrQ12oa5whewbGhsRDcJRCy0WtOdJq0oj+TaTcZk9S4fvbTqVITI9WnUBCsL4zcy
 Daqv2AlfUYO+thvTkADoizYdbcEXLecS9dGgCFZOfIi7cvV4ovx02vJS4TB5lRqe+Oyv
 /C985SUXnHpqr1TuJYhM2NQ6qsBKCDlKRUkeD5L65gmCcWTp/NgjR51mwZUCVl5KNS9R
 7cBQ==
X-Gm-Message-State: APjAAAVsd/XXYPm0pNJiSmNB0fGxmcenh2f/YyA9Qzhcl3DqoMPcdYuT
 SnYtK0waBSMxnoENU/FoDSM=
X-Google-Smtp-Source: APXvYqyniCKZhC1kuMrRPm8eqcHWxRjMBkQxqVV5/6XC3yNbMSHud/o/D8j5MaJj4DYGbntDxDPjxA==
X-Received: by 2002:a17:902:9f98:: with SMTP id
 g24mr17267550plq.325.1580120141216; 
 Mon, 27 Jan 2020 02:15:41 -0800 (PST)
Received: from localhost.localdomain ([2405:205:c902:a5e9:3956:8df2:aee5:9cf6])
 by smtp.gmail.com with ESMTPSA id s15sm15504138pgq.4.2020.01.27.02.15.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Jan 2020 02:15:40 -0800 (PST)
From: Pragat Pandya <pragat.pandya@gmail.com>
To: valdis.kletnieks@vt.edu,
	gregkh@linuxfoundation.org
Subject: [PATCH 16/22] staging: exfat: Rename variable "Name" to "name"
Date: Mon, 27 Jan 2020 15:43:37 +0530
Message-Id: <20200127101343.20415-17-pragat.pandya@gmail.com>
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

Change all the occurrences of "Name" to "name" in exfat.

Signed-off-by: Pragat Pandya <pragat.pandya@gmail.com>
---
 drivers/staging/exfat/exfat.h       |  2 +-
 drivers/staging/exfat/exfat_super.c | 12 ++++++------
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index abed7fed3823..bc917b241bab 100644
--- a/drivers/staging/exfat/exfat.h
+++ b/drivers/staging/exfat/exfat.h
@@ -270,7 +270,7 @@ struct file_id_t {
 };
 
 struct dir_entry_t {
-	char Name[MAX_NAME_LENGTH * MAX_CHARSET_SIZE];
+	char name[MAX_NAME_LENGTH * MAX_CHARSET_SIZE];
 
 	/* used only for FAT12/16/32, not used for exFAT */
 	char ShortName[DOS_NAME_LENGTH + 2];
diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index 223699a21079..8a4915aa3849 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -1465,7 +1465,7 @@ static int ffsReadStat(struct inode *inode, struct dir_entry_t *info)
 			memset((char *)&info->AccessTimestamp, 0,
 			       sizeof(struct date_time_t));
 			strcpy(info->ShortName, ".");
-			strcpy(info->Name, ".");
+			strcpy(info->name, ".");
 
 			dir.dir = p_fs->root_dir;
 			dir.flags = 0x01;
@@ -1530,7 +1530,7 @@ static int ffsReadStat(struct inode *inode, struct dir_entry_t *info)
 	 */
 	p_fs->fs_func->get_uni_name_from_ext_entry(sb, &fid->dir, fid->entry,
 						   uni_name.name);
-	nls_uniname_to_cstring(sb, info->Name, &uni_name);
+	nls_uniname_to_cstring(sb, info->name, &uni_name);
 
 	info->NumSubdirs = 2;
 
@@ -1948,7 +1948,7 @@ static int ffsReadDir(struct inode *inode, struct dir_entry_t *dir_entry)
 			*uni_name.name = 0x0;
 			fs_func->get_uni_name_from_ext_entry(sb, &dir, dentry,
 							     uni_name.name);
-			nls_uniname_to_cstring(sb, dir_entry->Name, &uni_name);
+			nls_uniname_to_cstring(sb, dir_entry->name, &uni_name);
 			exfat_buf_unlock(sb, sector);
 
 			ep = get_entry_in_dir(sb, &clu, i + 1, NULL);
@@ -1991,7 +1991,7 @@ static int ffsReadDir(struct inode *inode, struct dir_entry_t *dir_entry)
 		}
 	}
 
-	*dir_entry->Name = '\0';
+	*dir_entry->name = '\0';
 
 	fid->rwoffset = (s64)(++dentry);
 
@@ -2129,7 +2129,7 @@ static int exfat_readdir(struct file *filp, struct dir_context *ctx)
 
 	cpos = EXFAT_I(inode)->fid.rwoffset << DENTRY_SIZE_BITS;
 
-	if (!de.Name[0])
+	if (!de.name[0])
 		goto end_of_dir;
 
 	if (!memcmp(de.ShortName, DOS_CUR_DIR_NAME, DOS_NAME_LENGTH)) {
@@ -2149,7 +2149,7 @@ static int exfat_readdir(struct file *filp, struct dir_context *ctx)
 		}
 	}
 
-	if (!dir_emit(ctx, de.Name, strlen(de.Name), inum,
+	if (!dir_emit(ctx, de.name, strlen(de.name), inum,
 		      (de.Attr & ATTR_SUBDIR) ? DT_DIR : DT_REG))
 		goto out;
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

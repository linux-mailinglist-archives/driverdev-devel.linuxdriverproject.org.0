Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DEC691582A4
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Feb 2020 19:37:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7A76A204B1;
	Mon, 10 Feb 2020 18:37:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mrR8FGXpF4qg; Mon, 10 Feb 2020 18:37:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 552B1204A5;
	Mon, 10 Feb 2020 18:37:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 10CBA1BF964
 for <devel@linuxdriverproject.org>; Mon, 10 Feb 2020 18:37:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0CD3620499
 for <devel@linuxdriverproject.org>; Mon, 10 Feb 2020 18:37:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SiYtM1IgQ8LN for <devel@linuxdriverproject.org>;
 Mon, 10 Feb 2020 18:37:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 4396020418
 for <devel@driverdev.osuosl.org>; Mon, 10 Feb 2020 18:37:35 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id u131so4340440pgc.10
 for <devel@driverdev.osuosl.org>; Mon, 10 Feb 2020 10:37:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=jbKKaescAW/v3sV/i5FrPVYboB/i+KggEt5JPV7L6jQ=;
 b=TAWBNlljSk8lPBPwK5CmzKMcrsFA4PXq1IP60W4cWi6lQcr+h7/+dNdEWSt7OAsE/L
 RrN+0mfwxWzGUw/btpIH1vKJV81jO8F5q0DuAPtxS9uEfUWkKIHW0c4DJ90Zz6oZNJR1
 UsfmLIobpdNCdjYqZ1AB0XPhbJAQSos4duuvuFZOyDz4Kbb7IHs5SGJAbi34KSB8isCF
 wDIwLKFBfPTgJstawo0knWV+H/6jt6NZU9BxaIQg4pdq4Euu+Mnzfj+EUBbWvRq8Fgd5
 eOZnq0HkS5npCXxfbMTO/8E6dOIrFLCFNEJVsKHcF4ZmzszYhJdPMJ2ChXy1H1fnp87/
 93mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=jbKKaescAW/v3sV/i5FrPVYboB/i+KggEt5JPV7L6jQ=;
 b=MiUhSmOpKPfzsB/nxA10vrvopmk72NXeHfsZmw9PWrkLdbqGff6M7IaJZUk5PjKLaq
 WOA6IidKKVtePPvcy7BAgAYfjKFgP3SyPPCJbSeITrEmJu8POaS0ECd9Noo/VMQz1T2p
 QmX5L2bvm/l9GKIhKtdHr0TNp4Y2BeIxlHNBzu2+HEy8d3AS2Cjh2apmyfrO0J7i1nSk
 Rc666u6MZZzFAWFOePqI0ZZR2Lo4tLDqmXKeGyxype7L1DKi7yxMa7VfzBvRzxRHG+Yl
 BtMYPwNd1F2vRj/dBtGqmwr8n+FDxA8G1/qc5hCP8TLhN2CBuRMxCahS+zm/uSK/QXBm
 Iltg==
X-Gm-Message-State: APjAAAWLp0rvl64oWawWuq3algwE6kOTVlKMlByR257n3SG3Khg1FKq6
 q6OLhhTTkwUtWUFtZGIGeJ4=
X-Google-Smtp-Source: APXvYqxBbLWi252RVx3W4hTgWiu/o+iKDFgx29jy6k/w1NqPCiPhN5MzVuF2QDdEKQKVihh1NAaWVg==
X-Received: by 2002:a62:cd8c:: with SMTP id o134mr2343779pfg.22.1581359854914; 
 Mon, 10 Feb 2020 10:37:34 -0800 (PST)
Received: from localhost.localdomain ([2405:204:8308:74f3:144f:bb39:afc3:51b0])
 by smtp.gmail.com with ESMTPSA id gc1sm124922pjb.20.2020.02.10.10.37.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2020 10:37:34 -0800 (PST)
From: Pragat Pandya <pragat.pandya@gmail.com>
To: gregkh@linuxfoundation.org,
	valdis.kletnieks@vt.edu
Subject: [PATCH v2 13/19] staging: exfat: Rename variable 'Name' to 'name'
Date: Tue, 11 Feb 2020 00:05:52 +0530
Message-Id: <20200210183558.11836-14-pragat.pandya@gmail.com>
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
Change all occurrences of identifier "Name" to "name"

Signed-off-by: Pragat Pandya <pragat.pandya@gmail.com>
---
 drivers/staging/exfat/exfat.h       |  2 +-
 drivers/staging/exfat/exfat_super.c | 12 ++++++------
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index 01d79dcc1c94..3acb4701a30b 100644
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
index 7d70206eb5f8..566a6f62ed67 100644
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
 	exfat_get_uni_name_from_ext_entry(sb, &fid->dir, fid->entry,
 					  uni_name.name);
-	nls_uniname_to_cstring(sb, info->Name, &uni_name);
+	nls_uniname_to_cstring(sb, info->name, &uni_name);
 
 	info->NumSubdirs = 2;
 
@@ -1945,7 +1945,7 @@ static int ffsReadDir(struct inode *inode, struct dir_entry_t *dir_entry)
 			*uni_name.name = 0x0;
 			exfat_get_uni_name_from_ext_entry(sb, &dir, dentry,
 							  uni_name.name);
-			nls_uniname_to_cstring(sb, dir_entry->Name, &uni_name);
+			nls_uniname_to_cstring(sb, dir_entry->name, &uni_name);
 			exfat_buf_unlock(sb, sector);
 
 			ep = get_entry_in_dir(sb, &clu, i + 1, NULL);
@@ -1988,7 +1988,7 @@ static int ffsReadDir(struct inode *inode, struct dir_entry_t *dir_entry)
 		}
 	}
 
-	*dir_entry->Name = '\0';
+	*dir_entry->name = '\0';
 
 	fid->rwoffset = (s64)(++dentry);
 
@@ -2126,7 +2126,7 @@ static int exfat_readdir(struct file *filp, struct dir_context *ctx)
 
 	cpos = EXFAT_I(inode)->fid.rwoffset << DENTRY_SIZE_BITS;
 
-	if (!de.Name[0])
+	if (!de.name[0])
 		goto end_of_dir;
 
 	if (!memcmp(de.ShortName, DOS_CUR_DIR_NAME, DOS_NAME_LENGTH)) {
@@ -2146,7 +2146,7 @@ static int exfat_readdir(struct file *filp, struct dir_context *ctx)
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

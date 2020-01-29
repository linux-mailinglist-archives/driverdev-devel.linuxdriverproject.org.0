Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BF7014CEE4
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Jan 2020 18:00:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D5331874A7;
	Wed, 29 Jan 2020 17:00:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id djCdO5JlyvRg; Wed, 29 Jan 2020 17:00:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id ABD5687117;
	Wed, 29 Jan 2020 17:00:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6E2D91BF215
 for <devel@linuxdriverproject.org>; Wed, 29 Jan 2020 17:00:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6B62421F69
 for <devel@linuxdriverproject.org>; Wed, 29 Jan 2020 17:00:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZWhPBdD7IGVC for <devel@linuxdriverproject.org>;
 Wed, 29 Jan 2020 17:00:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by silver.osuosl.org (Postfix) with ESMTPS id B49EE2155E
 for <devel@driverdev.osuosl.org>; Wed, 29 Jan 2020 17:00:04 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id g6so174980plt.2
 for <devel@driverdev.osuosl.org>; Wed, 29 Jan 2020 09:00:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=bPvZB2eXnaQVO0WfOG+R7PFYHNHOhAB7tEpy1Zm0ayk=;
 b=b696053/Lt9vjqeFFvinQoccKggmldIV0Y1dzSBoR7i3gVTaRlbbMgLIp0TzZQCFwX
 Ryg50luCMbqng2qTecKgyo9na24UhZiRqmsLXR3oV1zcIirYWmu7dqtUyPwvSIaZy5X+
 /iL5AkJjnwIg4RH3c7zNApVrMneIZeTQCJhakDmqu/P15MVEiAnqUMHPtosbVpLi3+mt
 Nu/d+MnRe6NmhlXIZFlGGSm7wFZ7l2aVt2xEHOa7iRklUqJ5MAveXW4SbK0eHUYvaHuE
 7rS5qXrL79jLKCgpcd5kklcWt8evCPADzm59uRvGUFYtyNwJXlv6a5dbsf2Bka1dE0Wz
 6oJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=bPvZB2eXnaQVO0WfOG+R7PFYHNHOhAB7tEpy1Zm0ayk=;
 b=eUgxddy35M0CLGxJEL3TPh507C2zRpcypxHXWuErtsslVMg0y+UU6cr6DE1l+snxyb
 C0YxwMR8a5BrL3yDRlnzc3j/lcieSYAtXXwQXt42behE7BmYXwvJtlt3eKPA0WZsJCYr
 SgyUrGE4Bm2ppKO88imYMB7fTVP5Lhc2PsWRmxrdsU/Wr3hJClbew+CyraOVvsIkKKZl
 mAdkVQLTG05DIGNMfAt3RJlLXCYDzfjnqFlrfony2bavqdNfgw6ioLLHHyIsV+7kD8bN
 /ASoGxX7kE7qA5j5+KyukoZ+yUrow/sx8y4nt/jgM/W34MQTJ+DUvmf/ooNT33zV7fkD
 HrMw==
X-Gm-Message-State: APjAAAWpBILPkpS9ojDY6jDhdw7R0BP7qw7dvoWc1FbMOOBRO5Z2s/di
 58rf4xhTTIgPaahsJVezN30=
X-Google-Smtp-Source: APXvYqzxWBAM79wHdhfvx7HHnyjNePmla14ZZU8SCEMcp3qgnwSWntL6S+VfriBAQyiyMUfbBfvcng==
X-Received: by 2002:a17:902:ba8a:: with SMTP id
 k10mr271498pls.333.1580317204283; 
 Wed, 29 Jan 2020 09:00:04 -0800 (PST)
Received: from localhost.localdomain ([2405:205:c92f:3ccd:49ce:a9e3:28b5:cf94])
 by smtp.gmail.com with ESMTPSA id f8sm3223610pfn.2.2020.01.29.08.59.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Jan 2020 09:00:03 -0800 (PST)
From: Pragat Pandya <pragat.pandya@gmail.com>
To: gregkh@linuxfoundation.org,
	valdis.kletnieks@vt.edu
Subject: [PATCH 13/19] staging: exfat: Rename variable 'Name' to 'name'
Date: Wed, 29 Jan 2020 22:28:26 +0530
Message-Id: <20200129165832.10574-14-pragat.pandya@gmail.com>
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
Change all occurrences of identifier "Name" to "name"

Signed-off-by: Pragat Pandya <pragat.pandya@gmail.com>
---
 drivers/staging/exfat/exfat.h       |  2 +-
 drivers/staging/exfat/exfat_super.c | 12 ++++++------
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index 2242cf1fdb4a..e74e4d5fecd4 100644
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
index 4b8ffb8ab557..8e9684808cba 100644
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

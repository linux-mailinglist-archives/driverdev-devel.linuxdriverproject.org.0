Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F4B014CEE5
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Jan 2020 18:00:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id EAB7322008;
	Wed, 29 Jan 2020 17:00:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H8n32LkeJfpA; Wed, 29 Jan 2020 17:00:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C127F21FF8;
	Wed, 29 Jan 2020 17:00:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A66C91BF215
 for <devel@linuxdriverproject.org>; Wed, 29 Jan 2020 17:00:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A2F7884481
 for <devel@linuxdriverproject.org>; Wed, 29 Jan 2020 17:00:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IUWcijRzLins for <devel@linuxdriverproject.org>;
 Wed, 29 Jan 2020 17:00:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 321948350D
 for <devel@driverdev.osuosl.org>; Wed, 29 Jan 2020 17:00:10 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id p9so162302plk.9
 for <devel@driverdev.osuosl.org>; Wed, 29 Jan 2020 09:00:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=9aeiVANobTtX2du6RvB/Di8UDcO1ImcJlTwuVWcf+30=;
 b=k1WtaHw0ZIub3Ihonid26f1Rdn8lq9AHxeZY2KVIXqoGqq6qMefdsu0jtCKpO17guf
 pbSxGpJrXZavkKIQsRGWgL92za9fhwDmW2Rtv2b8QVB9+8fbiekFaOZFUUvf+YhrjZ/U
 /8ZNYxooQmHSguKjS+1QxfNLOGZkIIXpGGQw23vYu2bqGPoftUoNWT+zV6r/rThs4R1S
 aTeGpJnxOvQrtG1clWSIK27TorFeLeB4ubK7acsmtEsIZOiMUgr6WWymSChy2T+eHgkM
 1zcBbOq3yD0nrB1C2d2I706iK4ZirE1dOyBRzzpi9SFIDcsCb1cCPmZKhPYe9utvJVUP
 kH5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=9aeiVANobTtX2du6RvB/Di8UDcO1ImcJlTwuVWcf+30=;
 b=Dv3kOKj9lUZIfTFTgQ+Hehs5pvc9wbNOZtRlMkfyBSulnx6TBE8Bjm6cTff/ZwFnWU
 TdhwJ5/40+25vY+h6m0L6/dz2+1U/z8N1MMe/1w5OwhoNhkWy0e7oaJtXt4Rn9sK9Wh/
 f/HSIXp21hFxfdo3jWK/DNIHNdcHHgzf40T0/XfgEPlOORffLJ/79kxkvVokX7KdKkj2
 l0HLixwoIYQ9aywMsW2uZrm3JCoJ2HR3E8OwRzqULqnZYMrGiaYq0Mi3EI2ERVDeMq5T
 kvODyfjtHU8JhAbqrO8HZqNgU8w4eeZ5UgyRLjyUFg9DHrTAs6nyRI9F82q5Z/NYVgsI
 9HAw==
X-Gm-Message-State: APjAAAVG68VjyGp2IK3T2ktpG49Xro5g1pVqCR1+lsgOSwxr3tUr6B1b
 ObSOX63BDfsY1jsR/Ud8JJY=
X-Google-Smtp-Source: APXvYqwoxr62sLiUXS6Pzcz1MyevOZgjh8DyFmryp8Fk9RTl5zR6fobYKH+H/3go+qJ405se8eX+5Q==
X-Received: by 2002:a17:90a:26ab:: with SMTP id
 m40mr641511pje.42.1580317209743; 
 Wed, 29 Jan 2020 09:00:09 -0800 (PST)
Received: from localhost.localdomain ([2405:205:c92f:3ccd:49ce:a9e3:28b5:cf94])
 by smtp.gmail.com with ESMTPSA id f8sm3223610pfn.2.2020.01.29.09.00.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Jan 2020 09:00:09 -0800 (PST)
From: Pragat Pandya <pragat.pandya@gmail.com>
To: gregkh@linuxfoundation.org,
	valdis.kletnieks@vt.edu
Subject: [PATCH 14/19] staging: exfat: Rename variable 'ShortName' to
 'short_name'
Date: Wed, 29 Jan 2020 22:28:27 +0530
Message-Id: <20200129165832.10574-15-pragat.pandya@gmail.com>
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
Change all occurrences of identifier "ShortName" to "short_name"

Signed-off-by: Pragat Pandya <pragat.pandya@gmail.com>
---
 drivers/staging/exfat/exfat.h       | 2 +-
 drivers/staging/exfat/exfat_super.c | 6 +++---
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index e74e4d5fecd4..099730e5b9f1 100644
--- a/drivers/staging/exfat/exfat.h
+++ b/drivers/staging/exfat/exfat.h
@@ -273,7 +273,7 @@ struct dir_entry_t {
 	char name[MAX_NAME_LENGTH * MAX_CHARSET_SIZE];
 
 	/* used only for FAT12/16/32, not used for exFAT */
-	char ShortName[DOS_NAME_LENGTH + 2];
+	char short_name[DOS_NAME_LENGTH + 2];
 
 	u32 Attr;
 	u64 Size;
diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index 8e9684808cba..e155079722c8 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -1464,7 +1464,7 @@ static int ffsReadStat(struct inode *inode, struct dir_entry_t *info)
 			       sizeof(struct date_time_t));
 			memset((char *)&info->AccessTimestamp, 0,
 			       sizeof(struct date_time_t));
-			strcpy(info->ShortName, ".");
+			strcpy(info->short_name, ".");
 			strcpy(info->name, ".");
 
 			dir.dir = p_fs->root_dir;
@@ -2132,9 +2132,9 @@ static int exfat_readdir(struct file *filp, struct dir_context *ctx)
 	if (!de.name[0])
 		goto end_of_dir;
 
-	if (!memcmp(de.ShortName, DOS_CUR_DIR_NAME, DOS_NAME_LENGTH)) {
+	if (!memcmp(de.short_name, DOS_CUR_DIR_NAME, DOS_NAME_LENGTH)) {
 		inum = inode->i_ino;
-	} else if (!memcmp(de.ShortName, DOS_PAR_DIR_NAME, DOS_NAME_LENGTH)) {
+	} else if (!memcmp(de.short_name, DOS_PAR_DIR_NAME, DOS_NAME_LENGTH)) {
 		inum = parent_ino(filp->f_path.dentry);
 	} else {
 		loff_t i_pos = ((loff_t)EXFAT_I(inode)->fid.start_clu << 32) |
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

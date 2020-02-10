Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DF3861582A5
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Feb 2020 19:37:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7893F204A4;
	Mon, 10 Feb 2020 18:37:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oHg5aqf4S9PJ; Mon, 10 Feb 2020 18:37:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CBAD4204A2;
	Mon, 10 Feb 2020 18:37:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 08D501BF964
 for <devel@linuxdriverproject.org>; Mon, 10 Feb 2020 18:37:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 021A582A97
 for <devel@linuxdriverproject.org>; Mon, 10 Feb 2020 18:37:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k--2aVQUBTyG for <devel@linuxdriverproject.org>;
 Mon, 10 Feb 2020 18:37:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com
 [209.85.215.179])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C41BB877E2
 for <devel@driverdev.osuosl.org>; Mon, 10 Feb 2020 18:37:40 +0000 (UTC)
Received: by mail-pg1-f179.google.com with SMTP id u131so4340548pgc.10
 for <devel@driverdev.osuosl.org>; Mon, 10 Feb 2020 10:37:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=alT9tv0N8tW7XzRa/7TFhdEC9a9+4WLpwTT20uC/sHY=;
 b=dUiBY7fccUmCaRQSS0VKmJDI6Cj1HbJBJEY8u2ST8lYQkezXHc7NTK9z05m33JtuGX
 sOVH/A+aO3CbqztxP0QuTNy/EOsP80mZ5lbd4JUrRIfQsVFVBKz1hHCGrz8+ebHsUfQi
 0rNAvnokwkD1ovZH7S035Tw9GrnnBZdb+C/YESWMcvCCakW7LFmXMp/EzDrpTtZyVF6g
 Nuzmyps4SaTIvNFEY2sQ3xdWKfjtrt/SiyabfUD0Ic0h/ypUKqmgQZniGgYqUhlvZ4I3
 EX1pWst4PT/f/TWJiDABKnEV2ETPO8RUAi/kaKyKmIKBbnmjX0B9Jb59XTafCIhIH8Tu
 Q/Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=alT9tv0N8tW7XzRa/7TFhdEC9a9+4WLpwTT20uC/sHY=;
 b=Ej6BTRv+02zM1o7NPmMUwx0ugm231ZDjpKMw6h+GoGDELP5kdor9XomoWYX3QApYqn
 y2phZkoWF6V0buz1D3ea/Dn+OJnfzRR2rd4scLujNRDDSYYXRw2Fq5tT49NS79Esc7fR
 zm1CLyOglTw1f2pKnzJrPeafmbirziWAhVipqjYQMcqVemVevLSpo5torhOjqRM5e6sE
 SOYQV2qZCO/eF8I87XqKNHPPAROQAwk9gxH834BcrQox99qR8j1jWuaBEyVDtffvgVwS
 iy4EDefmmwDZHlBCYphThE1x05hVjx0p1ledxNv/dgXmAQYQ0700P6WCCFNoI4rtzs5F
 iCSw==
X-Gm-Message-State: APjAAAWk7kWSVIcEDVZrZzKcePevs05/8YYEf1Meg+JaiDPFmn4ehMhx
 gzDOoZ/FDOYMIDqlOcr1nG4=
X-Google-Smtp-Source: APXvYqwE+uIqcS2A8NsNO7wZu5xFeeqilLEtryP9JckD6QfgVRKmGLL+PDThQTlRNPNI5BSHVHFtnw==
X-Received: by 2002:a63:78c7:: with SMTP id t190mr3120192pgc.416.1581359860366; 
 Mon, 10 Feb 2020 10:37:40 -0800 (PST)
Received: from localhost.localdomain ([2405:204:8308:74f3:144f:bb39:afc3:51b0])
 by smtp.gmail.com with ESMTPSA id gc1sm124922pjb.20.2020.02.10.10.37.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2020 10:37:39 -0800 (PST)
From: Pragat Pandya <pragat.pandya@gmail.com>
To: gregkh@linuxfoundation.org,
	valdis.kletnieks@vt.edu
Subject: [PATCH v2 14/19] staging: exfat: Rename variable 'ShortName' to
 'short_name'
Date: Tue, 11 Feb 2020 00:05:53 +0530
Message-Id: <20200210183558.11836-15-pragat.pandya@gmail.com>
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
Change all occurrences of identifier "ShortName" to "short_name"

Signed-off-by: Pragat Pandya <pragat.pandya@gmail.com>
---
 drivers/staging/exfat/exfat.h       | 2 +-
 drivers/staging/exfat/exfat_super.c | 6 +++---
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index 3acb4701a30b..319c53fb62dc 100644
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
index 566a6f62ed67..d32759d5ba68 100644
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
@@ -2129,9 +2129,9 @@ static int exfat_readdir(struct file *filp, struct dir_context *ctx)
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

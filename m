Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D31BF1582A7
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Feb 2020 19:37:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7603087999;
	Mon, 10 Feb 2020 18:37:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5MzehYU30Wjx; Mon, 10 Feb 2020 18:37:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CEE9E87527;
	Mon, 10 Feb 2020 18:37:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EC4BC1BF964
 for <devel@linuxdriverproject.org>; Mon, 10 Feb 2020 18:37:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E910A8754B
 for <devel@linuxdriverproject.org>; Mon, 10 Feb 2020 18:37:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GcZFvlMo6S+l for <devel@linuxdriverproject.org>;
 Mon, 10 Feb 2020 18:37:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 73F098749A
 for <devel@driverdev.osuosl.org>; Mon, 10 Feb 2020 18:37:50 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id s1so4108006pfh.10
 for <devel@driverdev.osuosl.org>; Mon, 10 Feb 2020 10:37:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=umt++nmNk2LlD4NsvJDmDt5rq8zdUSLHh/U6VwMmTpU=;
 b=ZVkkUS0yXLzvHRVNZ6u24FHjeejdwBnetcrQbhhsDB/f4CD4jnnTeVlKc6yu30LLhN
 YwF3lwtze9felDDxwKbqtDSSSqkRKKANxNwO2BGFVAakgHc9yb0fuWbKVTcKhSdf32Zd
 K0WZ4go6l8owCO8V2fPQAeKmdIjEJOOeEghmFAzoBylKCCfKHL+YVwceJnlDeQsiPCoe
 jmiAO5V08F80Jqa0N0CnCfmgKn6FzSpO4c83yXesLyCt+Blu4tPELkzt8vRcyZCjJwXv
 3hav9NQ6u+FHe7YkWngVEYWsxsiCxyJrZZkvR1+CR2xYI2wIKF16T9OEPUf+GMPIN8Yl
 UZ8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=umt++nmNk2LlD4NsvJDmDt5rq8zdUSLHh/U6VwMmTpU=;
 b=qDTKDCIyf4Fl170ZJZU+RDj2T5pnMsnLr/SXuMBJ6Z/Wh549Q24v0sPw2KlYX7AAiK
 UrCEqaTxpNAGfq/tUWH0jnDKiMtXWG8dh11DE3yUmXYfeygB+v/g7jmdYq0UqOECKSMy
 5C579WvSvgLpJ34gj/6pI5MguxYeaSVpP+mLUBaor2hS1PReYbSFJTMXmU4IV9MbZmhW
 HSmXR719EVJVAcYxpBV8Si9pLD7MoBi+W2ONaCjwtGJCigSz0WOh+Gxa3rNASmWESm1e
 +JcsN6feYAx9ig7UE035276OYs2chEVWaz+rMUhgn2XsZ3qFpSVlv+D5HX9fDyK+rqz4
 R+Tg==
X-Gm-Message-State: APjAAAVRDZzpXp1x8IgGsacC/vqbc9QcF9ms5VW/U2BWKrXOJUT3Xcto
 AODdHpFuzL58XuVZ00bGq4A=
X-Google-Smtp-Source: APXvYqxAaiFR2ChuoSbvv3OdgcYZIZ4roX0XchWCJNhHZ6j3qGnJibm3mJ/4STzERapuYLkxUBI19g==
X-Received: by 2002:aa7:9f47:: with SMTP id h7mr2262393pfr.13.1581359870113;
 Mon, 10 Feb 2020 10:37:50 -0800 (PST)
Received: from localhost.localdomain ([2405:204:8308:74f3:144f:bb39:afc3:51b0])
 by smtp.gmail.com with ESMTPSA id gc1sm124922pjb.20.2020.02.10.10.37.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2020 10:37:49 -0800 (PST)
From: Pragat Pandya <pragat.pandya@gmail.com>
To: gregkh@linuxfoundation.org,
	valdis.kletnieks@vt.edu
Subject: [PATCH v2 16/19] staging: exfat: Rename variable 'NumSubdirs' to
 'num_subdirs'
Date: Tue, 11 Feb 2020 00:05:55 +0530
Message-Id: <20200210183558.11836-17-pragat.pandya@gmail.com>
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
Change all occurrences of identifier "NumSubdirs" to "num_subdirs"

Signed-off-by: Pragat Pandya <pragat.pandya@gmail.com>
---
 drivers/staging/exfat/exfat.h       |  2 +-
 drivers/staging/exfat/exfat_super.c | 10 +++++-----
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index 883e2c5ae6df..90153175bbb9 100644
--- a/drivers/staging/exfat/exfat.h
+++ b/drivers/staging/exfat/exfat.h
@@ -277,7 +277,7 @@ struct dir_entry_t {
 
 	u32 attr;
 	u64 Size;
-	u32 NumSubdirs;
+	u32 num_subdirs;
 	struct date_time_t CreateTimestamp;
 	struct date_time_t ModifyTimestamp;
 	struct date_time_t AccessTimestamp;
diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index 13ff6ba97528..365e9e719bcf 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -1484,7 +1484,7 @@ static int ffsReadStat(struct inode *inode, struct dir_entry_t *info)
 				ret = count; /* propagate error upward */
 				goto out;
 			}
-			info->NumSubdirs = count;
+			info->num_subdirs = count;
 
 			if (p_fs->dev_ejected)
 				ret = -EIO;
@@ -1532,7 +1532,7 @@ static int ffsReadStat(struct inode *inode, struct dir_entry_t *info)
 					  uni_name.name);
 	nls_uniname_to_cstring(sb, info->name, &uni_name);
 
-	info->NumSubdirs = 2;
+	info->num_subdirs = 2;
 
 	info->Size = exfat_get_entry_size(ep2);
 
@@ -1551,7 +1551,7 @@ static int ffsReadStat(struct inode *inode, struct dir_entry_t *info)
 			ret = count; /* propagate error upward */
 			goto out;
 		}
-		info->NumSubdirs += count;
+		info->num_subdirs += count;
 	}
 
 	if (p_fs->dev_ejected)
@@ -3164,7 +3164,7 @@ static int exfat_fill_inode(struct inode *inode, struct file_id_t *fid)
 
 		i_size_write(inode, info.Size);
 		EXFAT_I(inode)->mmu_private = i_size_read(inode);
-		set_nlink(inode, info.NumSubdirs);
+		set_nlink(inode, info.num_subdirs);
 	} else if (info.attr & ATTR_SYMLINK) { /* symbolic link */
 		inode->i_generation |= 1;
 		inode->i_mode = exfat_make_mode(sbi, info.attr, 0777);
@@ -3664,7 +3664,7 @@ static int exfat_read_root(struct inode *inode)
 	inode->i_mtime = curtime;
 	inode->i_atime = curtime;
 	inode->i_ctime = curtime;
-	set_nlink(inode, info.NumSubdirs + 2);
+	set_nlink(inode, info.num_subdirs + 2);
 
 	return 0;
 }
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

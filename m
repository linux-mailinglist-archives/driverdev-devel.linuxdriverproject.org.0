Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C81514CEE7
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Jan 2020 18:00:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E279B8350D;
	Wed, 29 Jan 2020 17:00:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KE2U4-J9Uwvm; Wed, 29 Jan 2020 17:00:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4AE7C834A0;
	Wed, 29 Jan 2020 17:00:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 727941BF215
 for <devel@linuxdriverproject.org>; Wed, 29 Jan 2020 17:00:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6F5182201C
 for <devel@linuxdriverproject.org>; Wed, 29 Jan 2020 17:00:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 81j0PHuhKn9j for <devel@linuxdriverproject.org>;
 Wed, 29 Jan 2020 17:00:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com
 [209.85.216.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 493CA2155E
 for <devel@driverdev.osuosl.org>; Wed, 29 Jan 2020 17:00:21 +0000 (UTC)
Received: by mail-pj1-f66.google.com with SMTP id d5so21966pjz.5
 for <devel@driverdev.osuosl.org>; Wed, 29 Jan 2020 09:00:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Re+GjI9C7izuf8NURe9OZ9XSS0jaSob1qfaa/PaU3r8=;
 b=JuzyK2icLE4/NHojG1P9zT5/IOWVLZUapAZYMcTzvLDYauV96IgNVJaZfNNULspY2I
 9DzuC+QuXU7WP9GEQRDg+QwP0eexmVDnIslSvcGgb+7k1+Kv77cUsM+Vo61ox30ZmkZY
 bmlWvJ1XXuMcFcOsOvb7bjGxx+XiqMFc4jA/7Mg8yMkD9VldTnPtskIeL36T8i8uekRF
 3hGvjZzUlE86B88lW+moaIbTMagdUg0/DU8PFvVk/L++a83u/4WzY+BbBogn4MQ5h2Ld
 dczMJI90kIvzfVYsaZl+YpwBLoeUTq47H97fcffj9E0Lmnc8bGgXPY4oamZGOh5xWmcN
 3p6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Re+GjI9C7izuf8NURe9OZ9XSS0jaSob1qfaa/PaU3r8=;
 b=k2zdpxMyYqFFTSsYcPArndPJ9gxX/P0NR/lwcmW5ELNXVe/BBVUGlT6wj13iMWWxlu
 mdXrx3sbq/7QQPvXFn9S5hC/oghTXt689AA735lm3S5W7gtmaIy/Y5XoWzpavD6PEXz7
 UVoipL8wM1UFyM2rJjBBB9y+E4TtoMw0OZK19zZSZV+uF4CjUA1Lzr3llnY/9K/YmLIL
 IiBhu3G20QHT7XvXzq4feP5xXBYoktby/NogesOY2lFX4t9H0FbP91g8q6GfYEX19ggI
 Q8QPF/s4vFUPJFif1MyDcVRie/d2Cdz1o3UBgOlDAyxOXasbQvp1pUi2pupceeFQoxSi
 lprg==
X-Gm-Message-State: APjAAAW++ucCW+LzgMNiL4JuIri8zKm1ErjiM+mB1x4ivB3cBhcPna08
 EWFOntHZ9vZch3NC91kwM2Y=
X-Google-Smtp-Source: APXvYqym2Cve/sWrde69rBx6Ve7uO608Kf0kw0RBG/Kvk5NBwuUvQ8DccUSFXZwYG4rOqU7+3YKYvw==
X-Received: by 2002:a17:902:528:: with SMTP id 37mr306157plf.322.1580317220820; 
 Wed, 29 Jan 2020 09:00:20 -0800 (PST)
Received: from localhost.localdomain ([2405:205:c92f:3ccd:49ce:a9e3:28b5:cf94])
 by smtp.gmail.com with ESMTPSA id f8sm3223610pfn.2.2020.01.29.09.00.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Jan 2020 09:00:20 -0800 (PST)
From: Pragat Pandya <pragat.pandya@gmail.com>
To: gregkh@linuxfoundation.org,
	valdis.kletnieks@vt.edu
Subject: [PATCH 16/19] staging: exfat: Rename variable 'NumSubdirs' to
 'num_subdirs'
Date: Wed, 29 Jan 2020 22:28:29 +0530
Message-Id: <20200129165832.10574-17-pragat.pandya@gmail.com>
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
Change all occurrences of identifier "NumSubdirs" to "num_subdirs"

Signed-off-by: Pragat Pandya <pragat.pandya@gmail.com>
---
 drivers/staging/exfat/exfat.h       |  2 +-
 drivers/staging/exfat/exfat_super.c | 10 +++++-----
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index f1fa4d19a2e2..0b5ec053bb26 100644
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
index 73d116b8d769..14a10f6f8653 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -1484,7 +1484,7 @@ static int ffsReadStat(struct inode *inode, struct dir_entry_t *info)
 				ret = count; /* propogate error upward */
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
 
 	info->Size = p_fs->fs_func->get_entry_size(ep2);
 
@@ -1551,7 +1551,7 @@ static int ffsReadStat(struct inode *inode, struct dir_entry_t *info)
 			ret = count; /* propogate error upward */
 			goto out;
 		}
-		info->NumSubdirs += count;
+		info->num_subdirs += count;
 	}
 
 	if (p_fs->dev_ejected)
@@ -3167,7 +3167,7 @@ static int exfat_fill_inode(struct inode *inode, struct file_id_t *fid)
 
 		i_size_write(inode, info.Size);
 		EXFAT_I(inode)->mmu_private = i_size_read(inode);
-		set_nlink(inode, info.NumSubdirs);
+		set_nlink(inode, info.num_subdirs);
 	} else if (info.attr & ATTR_SYMLINK) { /* symbolic link */
 		inode->i_generation |= 1;
 		inode->i_mode = exfat_make_mode(sbi, info.attr, 0777);
@@ -3667,7 +3667,7 @@ static int exfat_read_root(struct inode *inode)
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

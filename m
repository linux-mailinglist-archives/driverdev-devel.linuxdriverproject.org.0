Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5CB514A1C7
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Jan 2020 11:16:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3C97987924;
	Mon, 27 Jan 2020 10:15:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2Zh6a9bK3cyE; Mon, 27 Jan 2020 10:15:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9B79B878A0;
	Mon, 27 Jan 2020 10:15:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AC0621BF294
 for <devel@linuxdriverproject.org>; Mon, 27 Jan 2020 10:15:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A863C85497
 for <devel@linuxdriverproject.org>; Mon, 27 Jan 2020 10:15:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QcLtAeEl7DTm for <devel@linuxdriverproject.org>;
 Mon, 27 Jan 2020 10:15:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f65.google.com (mail-pj1-f65.google.com
 [209.85.216.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 248CF84E68
 for <devel@driverdev.osuosl.org>; Mon, 27 Jan 2020 10:15:56 +0000 (UTC)
Received: by mail-pj1-f65.google.com with SMTP id n96so2763566pjc.3
 for <devel@driverdev.osuosl.org>; Mon, 27 Jan 2020 02:15:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=RHsNhx6vrUoikkv5dv3p0L1TT7e/AEExxslakumc+Z8=;
 b=iBpuWHqw7W6e+WbIyYgNgXxWwgmpnsB7liFQRvfA3QK48xe3nWZHLChZvGnbxIzxBB
 Vf7hi52LNJwPany5bVJDVCZSb5kPTnuKlCiacHhlRP+nALLpKroVVEbGbps9hvtqbKI8
 PyvH/lsBSb3L3Ry2cs4cCAokstq6GF2h+ovNPmnbkCqbQTTGdhUUjvZI2rgVkE/HS/gL
 apJT1xHzBnT+4UsbWYyaKlYTBPEKggrjLZQFWO/4N9r8e8WtWdT+156pxBWfzfaw6hEk
 qkY4OKDerbln7baxTgKdvfvTONjpwtwvBjJR3M561BMh/0dNTN0goNcVhGIwMAOK6USd
 IRJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=RHsNhx6vrUoikkv5dv3p0L1TT7e/AEExxslakumc+Z8=;
 b=EQe0CrRQne6RFChcCFbr+2jrZS8lrviqWHmvouuxkv/plZD8yQJ0YOFnXVYYL8XDak
 Z8abVBM8Rs7Lk4P8qs++dkVmY07giipDv7GKYlkFzUGDoJea2/wQHDeET4W8LEuQAmvr
 hBPbX/D782Adrxj4+V1t5CJjDMGItV3MNIsm/ry8EGwgq+s3FmokrwiDK6R3Pgx65ZeV
 6iPHTu17l2/Ir28JlEX/7BvEOQi0l4r5o8uDCSJAWFa1B2YFX3K//a3qjfIul157qbIE
 Q9hGDI/mFS4qsouePLaORpdWJwq6yMF4mxtqgfCRyktA1c7WTbGPCmT0YEgYnuBzfTfu
 gf4A==
X-Gm-Message-State: APjAAAUY3JA/0Auh2Uin9ni+o7jGpoKBs03N2fyKOzHRMxYbUZYYG0ym
 tsFvKuQjrMaUx434UVhpM2s=
X-Google-Smtp-Source: APXvYqyaOwAWnULMWgndBrQQTf+HvNALhpFu4sooB+T8IRuZDVtr82njMNXTS0VWzsWPt9IweH2vZg==
X-Received: by 2002:a17:90a:f84:: with SMTP id 4mr8268094pjz.74.1580120155754; 
 Mon, 27 Jan 2020 02:15:55 -0800 (PST)
Received: from localhost.localdomain ([2405:205:c902:a5e9:3956:8df2:aee5:9cf6])
 by smtp.gmail.com with ESMTPSA id s15sm15504138pgq.4.2020.01.27.02.15.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Jan 2020 02:15:55 -0800 (PST)
From: Pragat Pandya <pragat.pandya@gmail.com>
To: valdis.kletnieks@vt.edu,
	gregkh@linuxfoundation.org
Subject: [PATCH 19/22] staging: exfat: Rename variabel "NumSubdirs" to
 "num_subdirs"
Date: Mon, 27 Jan 2020 15:43:40 +0530
Message-Id: <20200127101343.20415-20-pragat.pandya@gmail.com>
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

Change all the occurreces of "NumSubdirs" to "num_subdirs" in exfat.

Signed-off-by: Pragat Pandya <pragat.pandya@gmail.com>
---
 drivers/staging/exfat/exfat.h       |  2 +-
 drivers/staging/exfat/exfat_super.c | 10 +++++-----
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index ab48bbd083e5..2e07cb6b694a 100644
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
index 27d6362f2102..2fe59bdabb56 100644
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

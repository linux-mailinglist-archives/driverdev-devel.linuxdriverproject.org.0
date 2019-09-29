Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30440C128A
	for <lists+driverdev-devel@lfdr.de>; Sun, 29 Sep 2019 02:21:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 08EE58804A;
	Sun, 29 Sep 2019 00:21:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QtSkdWijFTeb; Sun, 29 Sep 2019 00:21:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 35B7A87CC4;
	Sun, 29 Sep 2019 00:21:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 85C3A1BF3A9
 for <devel@linuxdriverproject.org>; Sun, 29 Sep 2019 00:21:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7C95B20418
 for <devel@linuxdriverproject.org>; Sun, 29 Sep 2019 00:21:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h9sGpZ1S3Lez for <devel@linuxdriverproject.org>;
 Sun, 29 Sep 2019 00:21:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com
 [209.85.210.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 962C520341
 for <devel@driverdev.osuosl.org>; Sun, 29 Sep 2019 00:21:36 +0000 (UTC)
Received: by mail-ot1-f66.google.com with SMTP id o9so4634664otl.0
 for <devel@driverdev.osuosl.org>; Sat, 28 Sep 2019 17:21:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GqKNHe2wxsr8Qfpq+KczXDkRcW1icZtTDLdjOK6prOA=;
 b=rkkWX21c/g/bofwKmv/UhUhH+4tZu8Krt+PvQUQ937ByXHDcCrQQqzYm+2m17mmTDO
 9JgJHnDp3lHz52uEu1yPv5T0/rsug6ziYxcQUcs4668QGfFcmqipxjP2nu5lTdx7Bjie
 cZuJe0f8sJf8OVE4d5u+NLixduE7Ojodl/MWxKAc6YDxKAaADTH+b5mtE5X+dccxLSVa
 3cKaFVWs+RWS7VVn7/PzVPYpa6pkfVj8wV1j0r0wcW+uOTBa0PeuouXrtJaHxKslK12P
 WuBkLJqbAQfQovjWRc0C37od7hhZELCes6S5ximmORHIKk3ktFQZQ2XOHtmyS++A4xRK
 98Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GqKNHe2wxsr8Qfpq+KczXDkRcW1icZtTDLdjOK6prOA=;
 b=FVv8IDJCjuenyimVluMSN6cTA2WrLXdyuqux9xBxlWEJg3MOB8R7xWvB0BgD3rRhOi
 MjHMUIiNam3WzQxj1SwmBCYBVgQnrpfBPYMm1YsVAUiRHc8IK5fnAw9hO2g9eeJvi4JA
 PwoUG5tllxPnpXr0KEVEHYRcj9Y1GE7V/YAQhN6iRU2k3HfH8Hy+yonL6CzXywGVDQck
 39OBBD2jH7lcPAQ49fMCdMrj6RlkUi8ddMHtoQWKzaeXfpv/+VoGPqynN+kdqwHAqZxA
 2BsJ/yS0InPVvWlnZ5Wp/kmoissyAcR2Z7IMCLMKj5lURVuujfJb0up9J0xS70mDPJNW
 eaag==
X-Gm-Message-State: APjAAAW1Ln7S9CJ3XoRSpUMvJtWd6xy8se7VW+cohVyVgH0WMDvAvTEu
 fOQp4oFDSc6omOGUw0UV8Vw=
X-Google-Smtp-Source: APXvYqzunT2cgNroASE9kGPGmeQRn8lHIBqVUI7AU2JDZ3gtrWVijQBqi/73fwX9AwkS6dmTcFveAw==
X-Received: by 2002:a05:6830:1617:: with SMTP id
 g23mr8417269otr.366.1569716495534; 
 Sat, 28 Sep 2019 17:21:35 -0700 (PDT)
Received: from localhost (ip72-210-101-152.tu.ok.cox.net. [72.210.101.152])
 by smtp.gmail.com with ESMTPSA id 8sm2503637oti.41.2019.09.28.17.21.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 28 Sep 2019 17:21:35 -0700 (PDT)
From: Jesse Barton <jessebarton95@gmail.com>
To: valdis.kletnieks@vt.edu
Subject: [PATCH 3/3] Staging: exfat: exfat_super.c Fixed coding style issues.
Date: Sat, 28 Sep 2019 19:21:19 -0500
Message-Id: <20190929002119.20689-1-jessebarton95@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
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
 Jesse Barton <jessebarton95@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixed Coding Style issues

Signed-off-by: Jesse Barton <jessebarton95@gmail.com>
---
 drivers/staging/exfat/exfat_super.c | 29 +++++++++--------------------
 1 file changed, 9 insertions(+), 20 deletions(-)

diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index 3c7e2b7c2195..b9656ec06144 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -640,8 +640,7 @@ static int ffs_lookup_file(struct inode *inode, char *path, struct file_id_t *fi
 	return ret;
 }
 
-static int ffs_create_file(struct inode *inode, char *path, u8 mode,
-			 struct file_id_t *fid)
+static int ffs_create_file(struct inode *inode, char *path, u8 mode, struct file_id_t *fid)
 {
 	struct chain_t dir;
 	struct uni_name_t uni_name;
@@ -681,8 +680,7 @@ static int ffs_create_file(struct inode *inode, char *path, u8 mode,
 	return ret;
 }
 
-static int ffs_read_file(struct inode *inode, struct file_id_t *fid, void *buffer,
-		       u64 count, u64 *rcount)
+static int ffs_read_file(struct inode *inode, struct file_id_t *fid, void *buffer, u64 count, u64 *rcount)
 {
 	s32 offset, sec_offset, clu_offset;
 	u32 clu;
@@ -805,8 +803,7 @@ static int ffs_read_file(struct inode *inode, struct file_id_t *fid, void *buffe
 	return ret;
 }
 
-static int ffs_write_file(struct inode *inode, struct file_id_t *fid,
-			void *buffer, u64 count, u64 *wcount)
+static int ffs_write_file(struct inode *inode, struct file_id_t *fid, void *buffer, u64 count, u64 *wcount)
 {
 	bool modified = false;
 	s32 offset, sec_offset, clu_offset;
@@ -1212,8 +1209,7 @@ static void update_parent_info(struct file_id_t *fid,
 	}
 }
 
-static int ffs_move_file(struct inode *old_parent_inode, struct file_id_t *fid,
-		       struct inode *new_parent_inode, struct dentry *new_dentry)
+static int ffs_move_file(struct inode *old_parent_inode, struct file_id_t *fid, struct inode *new_parent_inode, struct dentry *new_dentry)
 {
 	s32 ret;
 	s32 dentry;
@@ -2061,9 +2057,7 @@ static int ffs_read_dir(struct inode *inode, struct dir_entry_t *dir_entry)
 			fs_func->get_uni_name_from_ext_entry(sb, &dir, dentry,
 							     uni_name.name);
 			if (*uni_name.name == 0x0 && p_fs->vol_type != EXFAT)
-				get_uni_name_from_dos_entry(sb,
-						(struct dos_dentry_t *)ep,
-						&uni_name, 0x1);
+				get_uni_name_from_dos_entry(sb, (struct dos_dentry_t *)ep, &uni_name, 0x1);
 			nls_uniname_to_cstring(sb, dir_entry->Name, &uni_name);
 			buf_unlock(sb, sector);
 
@@ -2074,11 +2068,8 @@ static int ffs_read_dir(struct inode *inode, struct dir_entry_t *dir_entry)
 					goto out;
 				}
 			} else {
-				get_uni_name_from_dos_entry(sb,
-						(struct dos_dentry_t *)ep,
-						&uni_name, 0x0);
-				nls_uniname_to_cstring(sb, dir_entry->ShortName,
-						       &uni_name);
+				get_uni_name_from_dos_entry(sb, (struct dos_dentry_t *)ep, &uni_name, 0x0);
+				nls_uniname_to_cstring(sb, dir_entry->ShortName, &uni_name);
 			}
 
 			dir_entry->Size = fs_func->get_entry_size(ep);
@@ -2460,8 +2451,7 @@ static struct dentry *exfat_lookup(struct inode *dir, struct dentry *dentry,
 			err = -ENOMEM;
 			goto error;
 		}
-		ffs_read_file(dir, &fid, EXFAT_I(inode)->target,
-			    i_size_read(inode), &ret);
+		ffs_read_file(dir, &fid, EXFAT_I(inode)->target, i_size_read(inode), &ret);
 		*(EXFAT_I(inode)->target + i_size_read(inode)) = '\0';
 	}
 
@@ -2748,8 +2738,7 @@ static int exfat_rename(struct inode *old_dir, struct dentry *old_dentry,
 
 	EXFAT_I(old_inode)->fid.size = i_size_read(old_inode);
 
-	err = ffs_move_file(old_dir, &(EXFAT_I(old_inode)->fid), new_dir,
-			  new_dentry);
+	err = ffs_move_file(old_dir, &(EXFAT_I(old_inode)->fid), new_dir, new_dentry);
 	if (err) {
 		if (err == FFS_PERMISSIONERR)
 			err = -EPERM;
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

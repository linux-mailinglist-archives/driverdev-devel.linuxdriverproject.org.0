Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D49F8D0C9
	for <lists+driverdev-devel@lfdr.de>; Wed, 14 Aug 2019 12:37:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 13A0988154;
	Wed, 14 Aug 2019 10:37:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5plVOa4yn3wO; Wed, 14 Aug 2019 10:37:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 04AE7880C4;
	Wed, 14 Aug 2019 10:37:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A48971BF30C
 for <devel@linuxdriverproject.org>; Wed, 14 Aug 2019 10:37:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A1E4020497
 for <devel@linuxdriverproject.org>; Wed, 14 Aug 2019 10:37:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iE+LTA2CJQGz for <devel@linuxdriverproject.org>;
 Wed, 14 Aug 2019 10:37:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga06-in.huawei.com [45.249.212.32])
 by silver.osuosl.org (Postfix) with ESMTPS id ED56520484
 for <devel@driverdev.osuosl.org>; Wed, 14 Aug 2019 10:37:49 +0000 (UTC)
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 31B2095A4597CCF664B3;
 Wed, 14 Aug 2019 18:37:47 +0800 (CST)
Received: from architecture4.huawei.com (10.140.130.215) by smtp.huawei.com
 (10.3.19.214) with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 14 Aug
 2019 18:37:37 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Chao Yu <yuchao0@huawei.com>, Pavel Machek <pavel@denx.de>, "Greg
 Kroah-Hartman" <gregkh@linuxfoundation.org>, <devel@driverdev.osuosl.org>,
 <linux-fsdevel@vger.kernel.org>
Subject: [PATCH v2 1/3] staging: erofs: introduce EFSCORRUPTED and more logs
Date: Wed, 14 Aug 2019 18:37:03 +0800
Message-ID: <20190814103705.60698-1-gaoxiang25@huawei.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.140.130.215]
X-CFilter-Loop: Reflected
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
Cc: linux-erofs@lists.ozlabs.org, Chao Yu <chao@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, weidu.du@huawei.com,
 Fang Wei <fangwei1@huawei.com>, Miao Xie <miaoxie@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Previously, EROFS uses EIO to indicate that filesystem
is corrupted as well. However, as Pavel said [1], other
filesystems tend to use EUCLEAN(EFSCORRUPTED) instead,
let's follow what others do right now.

Also, add some more prints to the syslog.

[1] https://lore.kernel.org/lkml/20190813114821.GB11559@amd/

Suggested-by: Pavel Machek <pavel@denx.de>
Reviewed-by: Chao Yu <yuchao0@huawei.com>
Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
---
change log from v1:
 - update the commit message;

This patchset has dependency on the previous patchset yesterday
 https://lore.kernel.org/lkml/20190813023054.73126-1-gaoxiang25@huawei.com/

Thanks,
Gao Xiang

 drivers/staging/erofs/data.c     |  6 ++++--
 drivers/staging/erofs/dir.c      | 15 ++++++++-------
 drivers/staging/erofs/inode.c    | 17 ++++++++++++-----
 drivers/staging/erofs/internal.h |  2 ++
 drivers/staging/erofs/namei.c    |  6 ++++--
 drivers/staging/erofs/xattr.c    |  5 +++--
 drivers/staging/erofs/zmap.c     |  5 +++--
 7 files changed, 36 insertions(+), 20 deletions(-)

diff --git a/drivers/staging/erofs/data.c b/drivers/staging/erofs/data.c
index 4cdb743c8b8d..72c4b4c5296b 100644
--- a/drivers/staging/erofs/data.c
+++ b/drivers/staging/erofs/data.c
@@ -143,10 +143,12 @@ static int erofs_map_blocks_flatmode(struct inode *inode,
 			vi->xattr_isize + erofs_blkoff(map->m_la);
 		map->m_plen = inode->i_size - offset;
 
-		/* inline data should locate in one meta block */
+		/* inline data should be located in one meta block */
 		if (erofs_blkoff(map->m_pa) + map->m_plen > PAGE_SIZE) {
+			errln("inline data cross block boundary @ nid %llu",
+			      vi->nid);
 			DBG_BUGON(1);
-			err = -EIO;
+			err = -EFSCORRUPTED;
 			goto err_out;
 		}
 
diff --git a/drivers/staging/erofs/dir.c b/drivers/staging/erofs/dir.c
index 2fbfc4935077..01efc96e1212 100644
--- a/drivers/staging/erofs/dir.c
+++ b/drivers/staging/erofs/dir.c
@@ -34,7 +34,7 @@ static void debug_one_dentry(unsigned char d_type, const char *de_name,
 #endif
 }
 
-static int erofs_fill_dentries(struct dir_context *ctx,
+static int erofs_fill_dentries(struct inode *dir, struct dir_context *ctx,
 			       void *dentry_blk, unsigned int *ofs,
 			       unsigned int nameoff, unsigned int maxsize)
 {
@@ -63,8 +63,9 @@ static int erofs_fill_dentries(struct dir_context *ctx,
 		/* a corrupted entry is found */
 		if (unlikely(nameoff + de_namelen > maxsize ||
 			     de_namelen > EROFS_NAME_LEN)) {
+			errln("bogus dirent @ nid %llu", EROFS_V(dir)->nid);
 			DBG_BUGON(1);
-			return -EIO;
+			return -EFSCORRUPTED;
 		}
 
 		debug_one_dentry(d_type, de_name, de_namelen);
@@ -104,10 +105,9 @@ static int erofs_readdir(struct file *f, struct dir_context *ctx)
 
 		if (unlikely(nameoff < sizeof(struct erofs_dirent) ||
 			     nameoff >= PAGE_SIZE)) {
-			errln("%s, invalid de[0].nameoff %u",
-			      __func__, nameoff);
-
-			err = -EIO;
+			errln("%s, invalid de[0].nameoff %u @ nid %llu",
+			      __func__, nameoff, EROFS_V(dir)->nid);
+			err = -EFSCORRUPTED;
 			goto skip_this;
 		}
 
@@ -123,7 +123,8 @@ static int erofs_readdir(struct file *f, struct dir_context *ctx)
 				goto skip_this;
 		}
 
-		err = erofs_fill_dentries(ctx, de, &ofs, nameoff, maxsize);
+		err = erofs_fill_dentries(dir, ctx, de, &ofs,
+					  nameoff, maxsize);
 skip_this:
 		kunmap(dentry_page);
 
diff --git a/drivers/staging/erofs/inode.c b/drivers/staging/erofs/inode.c
index 286729143365..461fd4213ce7 100644
--- a/drivers/staging/erofs/inode.c
+++ b/drivers/staging/erofs/inode.c
@@ -43,7 +43,7 @@ static int read_inode(struct inode *inode, void *data)
 		else if (S_ISFIFO(inode->i_mode) || S_ISSOCK(inode->i_mode))
 			inode->i_rdev = 0;
 		else
-			return -EIO;
+			goto bogusimode;
 
 		i_uid_write(inode, le32_to_cpu(v2->i_uid));
 		i_gid_write(inode, le32_to_cpu(v2->i_gid));
@@ -76,7 +76,7 @@ static int read_inode(struct inode *inode, void *data)
 		else if (S_ISFIFO(inode->i_mode) || S_ISSOCK(inode->i_mode))
 			inode->i_rdev = 0;
 		else
-			return -EIO;
+			goto bogusimode;
 
 		i_uid_write(inode, le16_to_cpu(v1->i_uid));
 		i_gid_write(inode, le16_to_cpu(v1->i_gid));
@@ -104,6 +104,11 @@ static int read_inode(struct inode *inode, void *data)
 	else
 		inode->i_blocks = nblks << LOG_SECTORS_PER_BLOCK;
 	return 0;
+
+bogusimode:
+	errln("bogus i_mode (%o) @ nid %llu", inode->i_mode, vi->nid);
+	DBG_BUGON(1);
+	return -EFSCORRUPTED;
 }
 
 /*
@@ -137,9 +142,11 @@ static int fill_inline_data(struct inode *inode, void *data,
 
 		/* inline symlink data shouldn't across page boundary as well */
 		if (unlikely(m_pofs + inode->i_size > PAGE_SIZE)) {
-			DBG_BUGON(1);
 			kfree(lnk);
-			return -EIO;
+			errln("inline data cross block boundary @ nid %llu",
+			      vi->nid);
+			DBG_BUGON(1);
+			return -EFSCORRUPTED;
 		}
 
 		/* get in-page inline data */
@@ -200,7 +207,7 @@ static int fill_inode(struct inode *inode, int isdir)
 			init_special_inode(inode, inode->i_mode, inode->i_rdev);
 			goto out_unlock;
 		} else {
-			err = -EIO;
+			err = -EFSCORRUPTED;
 			goto out_unlock;
 		}
 
diff --git a/drivers/staging/erofs/internal.h b/drivers/staging/erofs/internal.h
index 4ce5991c381f..12f737cbc0c0 100644
--- a/drivers/staging/erofs/internal.h
+++ b/drivers/staging/erofs/internal.h
@@ -548,5 +548,7 @@ static inline int z_erofs_init_zip_subsystem(void) { return 0; }
 static inline void z_erofs_exit_zip_subsystem(void) {}
 #endif	/* !CONFIG_EROFS_FS_ZIP */
 
+#define EFSCORRUPTED    EUCLEAN         /* Filesystem is corrupted */
+
 #endif	/* __EROFS_INTERNAL_H */
 
diff --git a/drivers/staging/erofs/namei.c b/drivers/staging/erofs/namei.c
index 8e06526da023..c0963f5a2d22 100644
--- a/drivers/staging/erofs/namei.c
+++ b/drivers/staging/erofs/namei.c
@@ -116,10 +116,12 @@ static struct page *find_target_block_classic(struct inode *dir,
 			struct erofs_qstr dname;
 
 			if (unlikely(!ndirents)) {
-				DBG_BUGON(1);
 				kunmap_atomic(de);
 				put_page(page);
-				page = ERR_PTR(-EIO);
+				errln("corrupted dir block %d @ nid %llu",
+				      mid, EROFS_V(dir)->nid);
+				DBG_BUGON(1);
+				page = ERR_PTR(-EFSCORRUPTED);
 				goto out;
 			}
 
diff --git a/drivers/staging/erofs/xattr.c b/drivers/staging/erofs/xattr.c
index 289c7850ec96..c5bfc9be412f 100644
--- a/drivers/staging/erofs/xattr.c
+++ b/drivers/staging/erofs/xattr.c
@@ -75,8 +75,9 @@ static int init_inode_xattrs(struct inode *inode)
 		goto out_unlock;
 	} else if (vi->xattr_isize < sizeof(struct erofs_xattr_ibody_header)) {
 		if (unlikely(vi->xattr_isize)) {
+			errln("bogus xattr ibody @ nid %llu", vi->nid);
 			DBG_BUGON(1);
-			ret = -EIO;
+			ret = -EFSCORRUPTED;
 			goto out_unlock;	/* xattr ondisk layout error */
 		}
 		ret = -ENOATTR;
@@ -237,7 +238,7 @@ static int xattr_foreach(struct xattr_iter *it,
 		/* xattr on-disk corruption: xattr entry beyond xattr_isize */
 		if (unlikely(*tlimit < entry_sz)) {
 			DBG_BUGON(1);
-			return -EIO;
+			return -EFSCORRUPTED;
 		}
 		*tlimit -= entry_sz;
 	}
diff --git a/drivers/staging/erofs/zmap.c b/drivers/staging/erofs/zmap.c
index aeed5c674d9e..16b3625604f4 100644
--- a/drivers/staging/erofs/zmap.c
+++ b/drivers/staging/erofs/zmap.c
@@ -338,8 +338,9 @@ static int vle_extent_lookback(struct z_erofs_maprecorder *m,
 	int err;
 
 	if (lcn < lookback_distance) {
+		errln("bogus lookback distance @ nid %llu", vi->nid);
 		DBG_BUGON(1);
-		return -EIO;
+		return -EFSCORRUPTED;
 	}
 
 	/* load extent head logical cluster if needed */
@@ -419,7 +420,7 @@ int z_erofs_map_blocks_iter(struct inode *inode,
 		if (unlikely(!m.lcn)) {
 			errln("invalid logical cluster 0 at nid %llu",
 			      vi->nid);
-			err = -EIO;
+			err = -EFSCORRUPTED;
 			goto unmap_out;
 		}
 		end = (m.lcn << lclusterbits) | m.clusterofs;
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

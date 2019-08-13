Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4477B8ACAE
	for <lists+driverdev-devel@lfdr.de>; Tue, 13 Aug 2019 04:31:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E0E3F8614E;
	Tue, 13 Aug 2019 02:31:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XUFofXZCOpIc; Tue, 13 Aug 2019 02:31:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B500986126;
	Tue, 13 Aug 2019 02:31:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A0D621BF34A
 for <devel@linuxdriverproject.org>; Tue, 13 Aug 2019 02:31:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9DF408691B
 for <devel@linuxdriverproject.org>; Tue, 13 Aug 2019 02:31:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zfvbyc1Jt6FC for <devel@linuxdriverproject.org>;
 Tue, 13 Aug 2019 02:31:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga05-in.huawei.com [45.249.212.191])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EE9FD86B0E
 for <devel@driverdev.osuosl.org>; Tue, 13 Aug 2019 02:31:37 +0000 (UTC)
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id B872AA85E77373CDF1D0;
 Tue, 13 Aug 2019 10:31:35 +0800 (CST)
Received: from architecture4.huawei.com (10.140.130.215) by smtp.huawei.com
 (10.3.19.213) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 13 Aug
 2019 10:31:26 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Chao Yu <yuchao0@huawei.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, <devel@driverdev.osuosl.org>,
 <linux-fsdevel@vger.kernel.org>
Subject: [PATCH 3/3] staging: erofs: xattr.c: avoid BUG_ON
Date: Tue, 13 Aug 2019 10:30:54 +0800
Message-ID: <20190813023054.73126-3-gaoxiang25@huawei.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190813023054.73126-1-gaoxiang25@huawei.com>
References: <20190813023054.73126-1-gaoxiang25@huawei.com>
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

Kill all the remaining BUG_ON in EROFS:
 - one BUG_ON was used to detect xattr on-disk corruption,
   proper error handling should be added for it instead;
 - the other BUG_ONs are used to detect potential issues,
   use DBG_BUGON only in (eng) debugging version.

Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
---
 drivers/staging/erofs/xattr.c | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/erofs/xattr.c b/drivers/staging/erofs/xattr.c
index b29177a17347..289c7850ec96 100644
--- a/drivers/staging/erofs/xattr.c
+++ b/drivers/staging/erofs/xattr.c
@@ -115,7 +115,7 @@ static int init_inode_xattrs(struct inode *inode)
 	for (i = 0; i < vi->xattr_shared_count; ++i) {
 		if (unlikely(it.ofs >= EROFS_BLKSIZ)) {
 			/* cannot be unaligned */
-			BUG_ON(it.ofs != EROFS_BLKSIZ);
+			DBG_BUGON(it.ofs != EROFS_BLKSIZ);
 			xattr_iter_end(&it, atomic_map);
 
 			it.page = erofs_get_meta_page(sb, ++it.blkaddr,
@@ -191,7 +191,7 @@ static int inline_xattr_iter_begin(struct xattr_iter *it,
 
 	xattr_header_sz = inlinexattr_header_size(inode);
 	if (unlikely(xattr_header_sz >= vi->xattr_isize)) {
-		BUG_ON(xattr_header_sz > vi->xattr_isize);
+		DBG_BUGON(xattr_header_sz > vi->xattr_isize);
 		return -ENOATTR;
 	}
 
@@ -234,7 +234,11 @@ static int xattr_foreach(struct xattr_iter *it,
 	if (tlimit) {
 		unsigned int entry_sz = EROFS_XATTR_ENTRY_SIZE(&entry);
 
-		BUG_ON(*tlimit < entry_sz);
+		/* xattr on-disk corruption: xattr entry beyond xattr_isize */
+		if (unlikely(*tlimit < entry_sz)) {
+			DBG_BUGON(1);
+			return -EIO;
+		}
 		*tlimit -= entry_sz;
 	}
 
@@ -253,7 +257,7 @@ static int xattr_foreach(struct xattr_iter *it,
 
 	while (processed < entry.e_name_len) {
 		if (it->ofs >= EROFS_BLKSIZ) {
-			BUG_ON(it->ofs > EROFS_BLKSIZ);
+			DBG_BUGON(it->ofs > EROFS_BLKSIZ);
 
 			err = xattr_iter_fixup(it);
 			if (err)
@@ -288,7 +292,7 @@ static int xattr_foreach(struct xattr_iter *it,
 
 	while (processed < value_sz) {
 		if (it->ofs >= EROFS_BLKSIZ) {
-			BUG_ON(it->ofs > EROFS_BLKSIZ);
+			DBG_BUGON(it->ofs > EROFS_BLKSIZ);
 
 			err = xattr_iter_fixup(it);
 			if (err)
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

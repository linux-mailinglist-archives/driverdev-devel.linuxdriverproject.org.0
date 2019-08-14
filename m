Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C3E418CA0E
	for <lists+driverdev-devel@lfdr.de>; Wed, 14 Aug 2019 06:08:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 25099875DC;
	Wed, 14 Aug 2019 04:08:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E+fITFCOYyjT; Wed, 14 Aug 2019 04:08:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4EE8A875CD;
	Wed, 14 Aug 2019 04:08:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B69701BF3F3
 for <devel@linuxdriverproject.org>; Wed, 14 Aug 2019 04:08:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A3D2886108
 for <devel@linuxdriverproject.org>; Wed, 14 Aug 2019 04:08:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gD0YTvMzfgcx for <devel@linuxdriverproject.org>;
 Wed, 14 Aug 2019 04:08:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 711A984CEB
 for <devel@driverdev.osuosl.org>; Wed, 14 Aug 2019 04:08:31 +0000 (UTC)
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 454CF1D7FAA01BD20600;
 Wed, 14 Aug 2019 12:08:28 +0800 (CST)
Received: from localhost.localdomain (10.175.124.28) by smtp.huawei.com
 (10.3.19.214) with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 14 Aug
 2019 12:08:18 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Chao Yu <yuchao0@huawei.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, <devel@driverdev.osuosl.org>,
 <linux-fsdevel@vger.kernel.org>
Subject: [PATCH 2/2] staging: erofs: differentiate unsupported on-disk format
Date: Wed, 14 Aug 2019 12:25:25 +0800
Message-ID: <20190814042525.4925-2-gaoxiang25@huawei.com>
X-Mailer: git-send-email 2.17.2
In-Reply-To: <20190814042525.4925-1-gaoxiang25@huawei.com>
References: <20190814042525.4925-1-gaoxiang25@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.175.124.28]
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

For some specific fields, use ENOTSUPP instead of EIO
for values which look sane but aren't supported right now.

Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
---
 drivers/staging/erofs/inode.c | 4 ++--
 drivers/staging/erofs/zmap.c  | 6 +++---
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/erofs/inode.c b/drivers/staging/erofs/inode.c
index 461fd4213ce7..1088cd154efa 100644
--- a/drivers/staging/erofs/inode.c
+++ b/drivers/staging/erofs/inode.c
@@ -24,7 +24,7 @@ static int read_inode(struct inode *inode, void *data)
 		errln("unsupported data mapping %u of nid %llu",
 		      vi->datamode, vi->nid);
 		DBG_BUGON(1);
-		return -EIO;
+		return -ENOTSUPP;
 	}
 
 	if (__inode_version(advise) == EROFS_INODE_LAYOUT_V2) {
@@ -95,7 +95,7 @@ static int read_inode(struct inode *inode, void *data)
 		errln("unsupported on-disk inode version %u of nid %llu",
 		      __inode_version(advise), vi->nid);
 		DBG_BUGON(1);
-		return -EIO;
+		return -ENOTSUPP;
 	}
 
 	if (!nblks)
diff --git a/drivers/staging/erofs/zmap.c b/drivers/staging/erofs/zmap.c
index 16b3625604f4..f955d0752792 100644
--- a/drivers/staging/erofs/zmap.c
+++ b/drivers/staging/erofs/zmap.c
@@ -178,7 +178,7 @@ static int vle_legacy_load_cluster_from_disk(struct z_erofs_maprecorder *m,
 		break;
 	default:
 		DBG_BUGON(1);
-		return -EIO;
+		return -ENOTSUPP;
 	}
 	m->type = type;
 	return 0;
@@ -362,7 +362,7 @@ static int vle_extent_lookback(struct z_erofs_maprecorder *m,
 		errln("unknown type %u at lcn %lu of nid %llu",
 		      m->type, lcn, vi->nid);
 		DBG_BUGON(1);
-		return -EIO;
+		return -ENOTSUPP;
 	}
 	return 0;
 }
@@ -436,7 +436,7 @@ int z_erofs_map_blocks_iter(struct inode *inode,
 	default:
 		errln("unknown type %u at offset %llu of nid %llu",
 		      m.type, ofs, vi->nid);
-		err = -EIO;
+		err = -ENOTSUPP;
 		goto unmap_out;
 	}
 
-- 
2.17.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

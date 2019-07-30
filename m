Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 681787A1B9
	for <lists+driverdev-devel@lfdr.de>; Tue, 30 Jul 2019 09:15:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DE13185C1D;
	Tue, 30 Jul 2019 07:15:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bI6y1aP1if7P; Tue, 30 Jul 2019 07:15:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 64E9A849FA;
	Tue, 30 Jul 2019 07:15:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A357C1BF2FA
 for <devel@linuxdriverproject.org>; Tue, 30 Jul 2019 07:15:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A079184836
 for <devel@linuxdriverproject.org>; Tue, 30 Jul 2019 07:15:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ziVx1dsulqjx for <devel@linuxdriverproject.org>;
 Tue, 30 Jul 2019 07:14:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1B50184AE2
 for <devel@driverdev.osuosl.org>; Tue, 30 Jul 2019 07:14:54 +0000 (UTC)
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id BC66B84379F6C465A5BD;
 Tue, 30 Jul 2019 15:14:51 +0800 (CST)
Received: from architecture4.huawei.com (10.140.130.215) by smtp.huawei.com
 (10.3.19.210) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 30 Jul
 2019 15:14:43 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Alexander Viro <viro@zeniv.linux.org.uk>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Andrew Morton <akpm@linux-foundation.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>, Theodore Ts'o <tytso@mit.edu>,
 "David Sterba" <dsterba@suse.cz>, Amir Goldstein <amir73il@gmail.com>,
 "Christoph Hellwig" <hch@infradead.org>, "Darrick J . Wong"
 <darrick.wong@oracle.com>, Dave Chinner <david@fromorbit.com>, Jaegeuk Kim
 <jaegeuk@kernel.org>, "Jan Kara" <jack@suse.cz>, Linus Torvalds
 <torvalds@linux-foundation.org>
Subject: [PATCH v5 09/24] erofs: support tracepoint
Date: Tue, 30 Jul 2019 15:13:58 +0800
Message-ID: <20190730071413.11871-10-gaoxiang25@huawei.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190730071413.11871-1-gaoxiang25@huawei.com>
References: <20190730071413.11871-1-gaoxiang25@huawei.com>
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
Cc: devel@driverdev.osuosl.org, linux-erofs@lists.ozlabs.org,
 Chao Yu <yuchao0@huawei.com>, LKML <linux-kernel@vger.kernel.org>,
 Li Guifu <bluce.liguifu@huawei.com>, Fang Wei <fangwei1@huawei.com>,
 linux-fsdevel@vger.kernel.org, Miao Xie <miaoxie@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Add basic tracepoints for ->readpage{,s}, ->lookup,
->destroy_inode, fill_inode and map_blocks.

Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
---
 include/trace/events/erofs.h | 241 +++++++++++++++++++++++++++++++++++
 1 file changed, 241 insertions(+)
 create mode 100644 include/trace/events/erofs.h

diff --git a/include/trace/events/erofs.h b/include/trace/events/erofs.h
new file mode 100644
index 000000000000..0c5847c54b60
--- /dev/null
+++ b/include/trace/events/erofs.h
@@ -0,0 +1,241 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#undef TRACE_SYSTEM
+#define TRACE_SYSTEM erofs
+
+#if !defined(_TRACE_EROFS_H) || defined(TRACE_HEADER_MULTI_READ)
+#define _TRACE_EROFS_H
+
+#include <linux/tracepoint.h>
+
+#define show_dev(dev)		MAJOR(dev), MINOR(dev)
+#define show_dev_nid(entry)	show_dev(entry->dev), entry->nid
+
+#define show_file_type(type)						\
+	__print_symbolic(type,						\
+		{ 0,		"FILE" },				\
+		{ 1,		"DIR" })
+
+#define show_map_flags(flags) __print_flags(flags, "|",	\
+	{ EROFS_GET_BLOCKS_RAW,	"RAW" })
+
+#define show_mflags(flags) __print_flags(flags, "",	\
+	{ EROFS_MAP_MAPPED,	"M" },			\
+	{ EROFS_MAP_META,	"I" })
+
+TRACE_EVENT(erofs_lookup,
+
+	TP_PROTO(struct inode *dir, struct dentry *dentry, unsigned int flags),
+
+	TP_ARGS(dir, dentry, flags),
+
+	TP_STRUCT__entry(
+		__field(dev_t,		dev	)
+		__field(erofs_nid_t,	nid	)
+		__field(const char *,	name	)
+		__field(unsigned int,	flags	)
+	),
+
+	TP_fast_assign(
+		__entry->dev	= dir->i_sb->s_dev;
+		__entry->nid	= EROFS_V(dir)->nid;
+		__entry->name	= dentry->d_name.name;
+		__entry->flags	= flags;
+	),
+
+	TP_printk("dev = (%d,%d), pnid = %llu, name:%s, flags:%x",
+		show_dev_nid(__entry),
+		__entry->name,
+		__entry->flags)
+);
+
+TRACE_EVENT(erofs_fill_inode,
+	TP_PROTO(struct inode *inode, int isdir),
+	TP_ARGS(inode, isdir),
+
+	TP_STRUCT__entry(
+		__field(dev_t,		dev	)
+		__field(erofs_nid_t,	nid	)
+		__field(erofs_blk_t,	blkaddr )
+		__field(unsigned int,	ofs	)
+		__field(int,		isdir	)
+	),
+
+	TP_fast_assign(
+		__entry->dev		= inode->i_sb->s_dev;
+		__entry->nid		= EROFS_V(inode)->nid;
+		__entry->blkaddr	= erofs_blknr(iloc(EROFS_I_SB(inode), __entry->nid));
+		__entry->ofs		= erofs_blkoff(iloc(EROFS_I_SB(inode), __entry->nid));
+		__entry->isdir		= isdir;
+	),
+
+	TP_printk("dev = (%d,%d), nid = %llu, blkaddr %u ofs %u, isdir %d",
+		  show_dev_nid(__entry),
+		  __entry->blkaddr, __entry->ofs,
+		  __entry->isdir)
+);
+
+TRACE_EVENT(erofs_readpage,
+
+	TP_PROTO(struct page *page, bool raw),
+
+	TP_ARGS(page, raw),
+
+	TP_STRUCT__entry(
+		__field(dev_t,		dev	)
+		__field(erofs_nid_t,    nid     )
+		__field(int,		dir	)
+		__field(pgoff_t,	index	)
+		__field(int,		uptodate)
+		__field(bool,		raw	)
+	),
+
+	TP_fast_assign(
+		__entry->dev	= page->mapping->host->i_sb->s_dev;
+		__entry->nid	= EROFS_V(page->mapping->host)->nid;
+		__entry->dir	= S_ISDIR(page->mapping->host->i_mode);
+		__entry->index	= page->index;
+		__entry->uptodate = PageUptodate(page);
+		__entry->raw = raw;
+	),
+
+	TP_printk("dev = (%d,%d), nid = %llu, %s, index = %lu, uptodate = %d "
+		"raw = %d",
+		show_dev_nid(__entry),
+		show_file_type(__entry->dir),
+		(unsigned long)__entry->index,
+		__entry->uptodate,
+		__entry->raw)
+);
+
+TRACE_EVENT(erofs_readpages,
+
+	TP_PROTO(struct inode *inode, struct page *page, unsigned int nrpage,
+		bool raw),
+
+	TP_ARGS(inode, page, nrpage, raw),
+
+	TP_STRUCT__entry(
+		__field(dev_t,		dev	)
+		__field(erofs_nid_t,	nid	)
+		__field(pgoff_t,	start	)
+		__field(unsigned int,	nrpage	)
+		__field(bool,		raw	)
+	),
+
+	TP_fast_assign(
+		__entry->dev	= inode->i_sb->s_dev;
+		__entry->nid	= EROFS_V(inode)->nid;
+		__entry->start	= page->index;
+		__entry->nrpage	= nrpage;
+		__entry->raw	= raw;
+	),
+
+	TP_printk("dev = (%d,%d), nid = %llu, start = %lu nrpage = %u raw = %d",
+		show_dev_nid(__entry),
+		(unsigned long)__entry->start,
+		__entry->nrpage,
+		__entry->raw)
+);
+
+DECLARE_EVENT_CLASS(erofs__map_blocks_enter,
+	TP_PROTO(struct inode *inode, struct erofs_map_blocks *map,
+		 unsigned int flags),
+
+	TP_ARGS(inode, map, flags),
+
+	TP_STRUCT__entry(
+		__field(	dev_t,		dev		)
+		__field(	erofs_nid_t,	nid		)
+		__field(	erofs_off_t,	la		)
+		__field(	u64,		llen		)
+		__field(	unsigned int,	flags		)
+	),
+
+	TP_fast_assign(
+		__entry->dev    = inode->i_sb->s_dev;
+		__entry->nid    = EROFS_V(inode)->nid;
+		__entry->la	= map->m_la;
+		__entry->llen	= map->m_llen;
+		__entry->flags	= flags;
+	),
+
+	TP_printk("dev = (%d,%d), nid = %llu, la %llu llen %llu flags %s",
+		  show_dev_nid(__entry),
+		  __entry->la, __entry->llen,
+		  __entry->flags ? show_map_flags(__entry->flags) : "NULL")
+);
+
+DEFINE_EVENT(erofs__map_blocks_enter, erofs_map_blocks_flatmode_enter,
+	TP_PROTO(struct inode *inode, struct erofs_map_blocks *map,
+		 unsigned flags),
+
+	TP_ARGS(inode, map, flags)
+);
+
+DECLARE_EVENT_CLASS(erofs__map_blocks_exit,
+	TP_PROTO(struct inode *inode, struct erofs_map_blocks *map,
+		 unsigned int flags, int ret),
+
+	TP_ARGS(inode, map, flags, ret),
+
+	TP_STRUCT__entry(
+		__field(	dev_t,		dev		)
+		__field(	erofs_nid_t,	nid		)
+		__field(        unsigned int,   flags           )
+		__field(	erofs_off_t,	la		)
+		__field(	erofs_off_t,	pa		)
+		__field(	u64,		llen		)
+		__field(	u64,		plen		)
+		__field(        unsigned int,	mflags		)
+		__field(	int,		ret		)
+	),
+
+	TP_fast_assign(
+		__entry->dev    = inode->i_sb->s_dev;
+		__entry->nid    = EROFS_V(inode)->nid;
+		__entry->flags	= flags;
+		__entry->la	= map->m_la;
+		__entry->pa	= map->m_pa;
+		__entry->llen	= map->m_llen;
+		__entry->plen	= map->m_plen;
+		__entry->mflags	= map->m_flags;
+		__entry->ret	= ret;
+	),
+
+	TP_printk("dev = (%d,%d), nid = %llu, flags %s "
+		  "la %llu pa %llu llen %llu plen %llu mflags %s ret %d",
+		  show_dev_nid(__entry),
+		  __entry->flags ? show_map_flags(__entry->flags) : "NULL",
+		  __entry->la, __entry->pa, __entry->llen, __entry->plen,
+		  show_mflags(__entry->mflags), __entry->ret)
+);
+
+DEFINE_EVENT(erofs__map_blocks_exit, erofs_map_blocks_flatmode_exit,
+	TP_PROTO(struct inode *inode, struct erofs_map_blocks *map,
+		 unsigned flags, int ret),
+
+	TP_ARGS(inode, map, flags, ret)
+);
+
+TRACE_EVENT(erofs_destroy_inode,
+	TP_PROTO(struct inode *inode),
+
+	TP_ARGS(inode),
+
+	TP_STRUCT__entry(
+		__field(	dev_t,		dev		)
+		__field(	erofs_nid_t,	nid		)
+	),
+
+	TP_fast_assign(
+		__entry->dev	= inode->i_sb->s_dev;
+		__entry->nid	= EROFS_V(inode)->nid;
+	),
+
+	TP_printk("dev = (%d,%d), nid = %llu", show_dev_nid(__entry))
+);
+
+#endif /* _TRACE_EROFS_H */
+
+ /* This part must be outside protection */
+#include <trace/define_trace.h>
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

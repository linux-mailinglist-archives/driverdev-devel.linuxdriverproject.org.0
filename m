Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ACEA9D054
	for <lists+driverdev-devel@lfdr.de>; Mon, 26 Aug 2019 15:23:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 31E8A86840;
	Mon, 26 Aug 2019 13:23:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WZ1YL7+F8JUX; Mon, 26 Aug 2019 13:23:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B62E18673C;
	Mon, 26 Aug 2019 13:23:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3533A1BF345
 for <devel@linuxdriverproject.org>; Mon, 26 Aug 2019 13:23:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2CAD287807
 for <devel@linuxdriverproject.org>; Mon, 26 Aug 2019 13:23:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pmiqXtQ5K0sC for <devel@linuxdriverproject.org>;
 Mon, 26 Aug 2019 13:23:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B47528777C
 for <devel@driverdev.osuosl.org>; Mon, 26 Aug 2019 13:23:39 +0000 (UTC)
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 086A83DE10F13807F273;
 Mon, 26 Aug 2019 21:23:34 +0800 (CST)
Received: from architecture4.huawei.com (10.140.130.215) by smtp.huawei.com
 (10.3.19.214) with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 26 Aug
 2019 21:23:26 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Chao Yu <yuchao0@huawei.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, <devel@driverdev.osuosl.org>
Subject: [PATCH] erofs: fix compile warnings when moving out
 include/trace/events/erofs.h
Date: Mon, 26 Aug 2019 21:22:34 +0800
Message-ID: <20190826132234.96939-1-gaoxiang25@huawei.com>
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

As Stephon reported [1], many compile warnings are raised when
moving out include/trace/events/erofs.h:

In file included from include/trace/events/erofs.h:8,
                 from <command-line>:
include/trace/events/erofs.h:28:37: warning: 'struct dentry' declared inside parameter list will not be visible outside of this definition or declaration
  TP_PROTO(struct inode *dir, struct dentry *dentry, unsigned int flags),
                                     ^~~~~~
include/linux/tracepoint.h:233:34: note: in definition of macro '__DECLARE_TRACE'
  static inline void trace_##name(proto)    \
                                  ^~~~~
include/linux/tracepoint.h:396:24: note: in expansion of macro 'PARAMS'
  __DECLARE_TRACE(name, PARAMS(proto), PARAMS(args),  \
                        ^~~~~~
include/linux/tracepoint.h:532:2: note: in expansion of macro 'DECLARE_TRACE'
  DECLARE_TRACE(name, PARAMS(proto), PARAMS(args))
  ^~~~~~~~~~~~~
include/linux/tracepoint.h:532:22: note: in expansion of macro 'PARAMS'
  DECLARE_TRACE(name, PARAMS(proto), PARAMS(args))
                      ^~~~~~
include/trace/events/erofs.h:26:1: note: in expansion of macro 'TRACE_EVENT'
 TRACE_EVENT(erofs_lookup,
 ^~~~~~~~~~~
include/trace/events/erofs.h:28:2: note: in expansion of macro 'TP_PROTO'
  TP_PROTO(struct inode *dir, struct dentry *dentry, unsigned int flags),
  ^~~~~~~~

That makes me very confused since most original EROFS tracepoint code
was taken from f2fs, and finally I found

commit 43c78d88036e ("kbuild: compile-test kernel headers to ensure they are self-contained")

It seems these warnings are generated from KERNEL_HEADER_TEST feature and
ext4/f2fs tracepoint files were in blacklist.

Anyway, let's fix these issues for KERNEL_HEADER_TEST feature instead
of adding to blacklist...

[1] https://lore.kernel.org/lkml/20190826162432.11100665@canb.auug.org.au/
Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
---

Hi Chao and Greg,
 It seems the root cause reported by Stephen is the following (sorry for
 taking some time...) could you kindly review and merge this patch?

Thanks,
Gao Xiang

 include/trace/events/erofs.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/include/trace/events/erofs.h b/include/trace/events/erofs.h
index bfb2da9c4eee..d239f39cbc8c 100644
--- a/include/trace/events/erofs.h
+++ b/include/trace/events/erofs.h
@@ -6,6 +6,9 @@
 #define _TRACE_EROFS_H
 
 #include <linux/tracepoint.h>
+#include <linux/fs.h>
+
+struct erofs_map_blocks;
 
 #define show_dev(dev)		MAJOR(dev), MINOR(dev)
 #define show_dev_nid(entry)	show_dev(entry->dev), entry->nid
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

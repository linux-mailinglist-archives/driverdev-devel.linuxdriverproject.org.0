Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A5326F785
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Jul 2019 04:52:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 205272010C;
	Mon, 22 Jul 2019 02:52:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DezEPn-9h0dp; Mon, 22 Jul 2019 02:52:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id AAD812041B;
	Mon, 22 Jul 2019 02:51:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AB3181BF3CA
 for <devel@linuxdriverproject.org>; Mon, 22 Jul 2019 02:51:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A56748542A
 for <devel@linuxdriverproject.org>; Mon, 22 Jul 2019 02:51:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id veiFOiG3uhZA for <devel@linuxdriverproject.org>;
 Mon, 22 Jul 2019 02:51:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga05-in.huawei.com [45.249.212.191])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D6B8885402
 for <devel@driverdev.osuosl.org>; Mon, 22 Jul 2019 02:51:31 +0000 (UTC)
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 73C21ABFF51F86BF5568;
 Mon, 22 Jul 2019 10:51:29 +0800 (CST)
Received: from architecture4.huawei.com (10.140.130.215) by smtp.huawei.com
 (10.3.19.203) with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 22 Jul
 2019 10:51:19 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Alexander Viro <viro@zeniv.linux.org.uk>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Andrew Morton <akpm@linux-foundation.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>, Theodore Ts'o <tytso@mit.edu>,
 "Linus Torvalds" <torvalds@linux-foundation.org>
Subject: [PATCH v3 21/24] erofs: introduce LZ4 decompression inplace
Date: Mon, 22 Jul 2019 10:50:40 +0800
Message-ID: <20190722025043.166344-22-gaoxiang25@huawei.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190722025043.166344-1-gaoxiang25@huawei.com>
References: <20190722025043.166344-1-gaoxiang25@huawei.com>
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

compressed data will be usually loaded into last pages of
the extent (the last page for 4k) for in-place decompression
(more specifically, in-place IO), as ilustration below,

         start of compressed logical extent
           |                          end of this logical extent
           |                           |
     ______v___________________________v________
... |  page 6  |  page 7  |  page 8  |  page 9  | ...
    |__________|__________|__________|__________|
           .                         ^ .        ^
           .                         |compressed|
           .                         |   data   |
           .                           .        .
           |<          dstsize        >|<margin>|
                                       oend     iend
           op                        ip

Therefore, it's possible to do decompression inplace (thus no
memcpy at all) if the margin is sufficient and safe enough [1],
and it can be implemented only for fixed-size output compression
compared with fixed-size input compression.

No memcpy for most of in-place IO (about 99% of enwik9) after
decompression inplace is implemented and sequential read will
be improved of course (see the following patches for test results).

[1] https://github.com/lz4/lz4/commit/b17f578a919b7e6b078cede2d52be29dd48c8e8c
    https://github.com/lz4/lz4/commit/5997e139f53169fa3a1c1b4418d2452a90b01602

Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
---
 fs/erofs/decompressor.c | 36 ++++++++++++++++++++++++++++++++----
 fs/erofs/erofs_fs.h     |  2 +-
 2 files changed, 33 insertions(+), 5 deletions(-)

diff --git a/fs/erofs/decompressor.c b/fs/erofs/decompressor.c
index 2ee10bb7e440..18fcbd75423e 100644
--- a/fs/erofs/decompressor.c
+++ b/fs/erofs/decompressor.c
@@ -14,6 +14,9 @@
 #endif
 
 #define LZ4_MAX_DISTANCE_PAGES	(DIV_ROUND_UP(LZ4_DISTANCE_MAX, PAGE_SIZE) + 1)
+#ifndef LZ4_DECOMPRESS_INPLACE_MARGIN
+#define LZ4_DECOMPRESS_INPLACE_MARGIN(srcsize)  (((srcsize) >> 8) + 32)
+#endif
 
 struct z_erofs_decompressor {
 	/*
@@ -112,7 +115,7 @@ static int lz4_decompress(struct z_erofs_decompress_req *rq, u8 *out)
 {
 	unsigned int inputmargin, inlen;
 	u8 *src;
-	bool copied;
+	bool copied, support_0padding;
 	int ret;
 
 	if (rq->inputsize > PAGE_SIZE)
@@ -120,13 +123,38 @@ static int lz4_decompress(struct z_erofs_decompress_req *rq, u8 *out)
 
 	src = kmap_atomic(*rq->in);
 	inputmargin = 0;
+	support_0padding = false;
+
+	/* decompression inplace is only safe when 0padding is enabled */
+	if (EROFS_SB(rq->sb)->requirements & EROFS_REQUIREMENT_LZ4_0PADDING) {
+		support_0padding = true;
+
+		while (!src[inputmargin & ~PAGE_MASK])
+			if (!(++inputmargin & ~PAGE_MASK))
+				break;
+
+		if (inputmargin >= rq->inputsize) {
+			kunmap_atomic(src);
+			return -EIO;
+		}
+	}
 
 	copied = false;
 	inlen = rq->inputsize - inputmargin;
 	if (rq->inplace_io) {
-		src = generic_copy_inplace_data(rq, src, inputmargin);
-		inputmargin = 0;
-		copied = true;
+		const uint oend = (rq->pageofs_out +
+				   rq->outputsize) & ~PAGE_MASK;
+		const uint nr = PAGE_ALIGN(rq->pageofs_out +
+					   rq->outputsize) >> PAGE_SHIFT;
+
+		if (rq->partial_decoding || !support_0padding ||
+		    rq->out[nr - 1] != rq->in[0] ||
+		    rq->inputsize - oend <
+		      LZ4_DECOMPRESS_INPLACE_MARGIN(inlen)) {
+			src = generic_copy_inplace_data(rq, src, inputmargin);
+			inputmargin = 0;
+			copied = true;
+		}
 	}
 
 	ret = LZ4_decompress_safe_partial(src + inputmargin, out,
diff --git a/fs/erofs/erofs_fs.h b/fs/erofs/erofs_fs.h
index e418725abfd6..8c64e78ceaca 100644
--- a/fs/erofs/erofs_fs.h
+++ b/fs/erofs/erofs_fs.h
@@ -17,7 +17,7 @@
  * incompatible with this kernel version.
  */
 #define EROFS_REQUIREMENT_LZ4_0PADDING	0x00000001
-#define EROFS_ALL_REQUIREMENTS		0
+#define EROFS_ALL_REQUIREMENTS		EROFS_REQUIREMENT_LZ4_0PADDING
 
 struct erofs_super_block {
 /*  0 */__le32 magic;           /* in the little endian */
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DBC050391
	for <lists+driverdev-devel@lfdr.de>; Mon, 24 Jun 2019 09:34:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DC2B0870F6;
	Mon, 24 Jun 2019 07:34:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZYtEVmqZwWJw; Mon, 24 Jun 2019 07:34:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A5E5786E1D;
	Mon, 24 Jun 2019 07:34:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C000C1BF963
 for <devel@linuxdriverproject.org>; Mon, 24 Jun 2019 07:34:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BD3FE86DCA
 for <devel@linuxdriverproject.org>; Mon, 24 Jun 2019 07:34:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wH1pkAC2Nvsl for <devel@linuxdriverproject.org>;
 Mon, 24 Jun 2019 07:34:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic312-25.consmr.mail.gq1.yahoo.com
 (sonic312-25.consmr.mail.gq1.yahoo.com [98.137.69.206])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1D0B986DAD
 for <devel@driverdev.osuosl.org>; Mon, 24 Jun 2019 07:34:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aol.com; s=a2048;
 t=1561361640; bh=FJEynATfKJ6xd0ZUUtfTGwYABlX64SzTN7wKLwUjSUQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From:Subject;
 b=tjuGYYslrH6VZQrCJnaxljahx/1yDnPEsK+G0MSrgL5DY9+SHtuvTt23zOey4GZz1x9FIQMdAfniLKvuNULEDWyMLbO6yNb/pivV0ankM5BpWsyYWFzG7nSySJlc5FSd+lsW1hkwxItFfjcS26x2A7HMpzfGG5EHZjwLEliWF2rly0mYejjR7jtzxBPzBewQ3Qx+6qOcvPC9cM98xm8i02/f3WMxI9wEU3vdgf47NXWtCaiTRCYibmQ5STyntAGpMDzJMsPx+zmtV3xhvcBh2a4mJoG+62o3/gcpyZ92UIaWl5pEMRWej9NdhxrIJgE4Y6t9uFTuDgwknPoxguNWnQ==
X-YMail-OSG: oRDi.XYVM1kio_XOt2sm4xAB9l0ZQM83N.dZb2PJqyYScJ2P3aeoPA3is211uPY
 dTV3pIwCn1GhuJobnR5Eg4rt1V2VWIm999OsGL3zVlVIYqBAa1mcAN_fjkbB4g2PZIWyfSqO_Ksx
 QW1wlAtuXbHE_WikvHbH2BKYoZSvrEx0hez2xcOFDlOJnWvy7dQavfoQdtVSGTDyTdK7i223zcCF
 ziRj1wOkQ5fiL1uasjdFVSs6nrMeTaGCpuWUincJQzHxc41LOQzxgeifVBtgwXmQa.S_tajjSRCA
 w2eVLrrK0YgsfGziwB2dzBi_Vf0fRK0bCaXU6_XaZKONdeLLMQG8gyYOMYmg2.YYJGn0n5LGQxn3
 bzjih4nhGGMuyIyde4Jop75fFMVgiXr9K6mRwxNY2mwI3pPzyCZFzM9P_iqeYGbakmALpm1jD6hu
 uwEOxddHuHWp_S5RUNoWHZYnbRS16De55U.PL5M..p2Mm.D7_cUOs9.471xmNOSfzxOSwUuQObVB
 n9YD_uuvzR4GqU2sZA6ZW8tFvN79qBFDbI6i2kbc99OIA7CILH0M64zcs_WYYRCxBx0eHM_UAyu7
 qYTHOQh2eWKKqDXZ1UggMAZ81BTwBXw99DbST7CsdG.ZfSuGEYYdJV1X2iIAdSVQYL.wg4Xw9xaW
 0GqT4IrGI9knFpWrbvvvbaAflwpC2jH_Ikfe5xKmCMB.gvwj1uMNePVHT0eijBZh_CnJNLZjZsiw
 3Wckk23e1T1XOkTookcqWQlULeDEMnQfUGxg7GrjZgu4UBfSiB9IKOqsTZJdhW0KRuSE72WB1vSz
 AyeoH.lcp4aj.Zzl07agXaWO2wfiIHH7Dg4Bbk_sKAapTv0vXeXjSDrMqW76wrGxfqsi_FK6Y83j
 wBfOGeuzfojTnMlEdszgDY.rw6G4xvEDqUcyuVEfTVyjze4yw70cwrlecOBXRFlXwrDLQIHeLj9F
 8s6DYgCGDQlfQ4FPRG5UouEYOmb3jDoxfYfPWrvNjAEVO_PCIE8K2TdhPx8YYX9rxaD5CQw0y73f
 LpGu7390mf5uEdhVEYhKMClstvaRjLD5tyH7yl7niJ_.zCl__ZcsYkf6FhgsawAm2pl6_QrEGBum
 64fN7PD_re6SXwEEu5.4H8aYQxF6.Sw3IMcTiJf3Ky4.TPRN0Mj3aEzxksMaDMDGuO.q.b2aq9vf
 kvFiGhE2lh0wYAH8o4ePwilaBjwM35wOM8SzEW7u1ExYs9Gu_Pcab4yhyyJ67BWtw
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic312.consmr.mail.gq1.yahoo.com with HTTP; Mon, 24 Jun 2019 07:34:00 +0000
Received: from 116.226.249.212 (EHLO localhost.localdomain) ([116.226.249.212])
 by smtp415.mail.gq1.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID
 6d1878af4efb7cadb69856afeea1b125; 
 Mon, 24 Jun 2019 07:23:56 +0000 (UTC)
From: Gao Xiang <hsiangkao@aol.com>
To: Chao Yu <yuchao0@huawei.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3 6/8] staging: erofs: introduce LZ4 decompression inplace
Date: Mon, 24 Jun 2019 15:22:56 +0800
Message-Id: <20190624072258.28362-7-hsiangkao@aol.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190624072258.28362-1-hsiangkao@aol.com>
References: <20190624072258.28362-1-hsiangkao@aol.com>
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
 Chao Yu <chao@kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 Du Wei <weidu.du@huawei.com>, Fang Wei <fangwei1@huawei.com>,
 linux-fsdevel@vger.kernel.org, Miao Xie <miaoxie@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Gao Xiang <gaoxiang25@huawei.com>

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

Reviewed-by: Chao Yu <yuchao0@huawei.com>
Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
---
 drivers/staging/erofs/compress.h     |  1 +
 drivers/staging/erofs/decompressor.c | 36 ++++++++++++++++++++++++----
 drivers/staging/erofs/erofs_fs.h     |  3 ++-
 3 files changed, 35 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/erofs/compress.h b/drivers/staging/erofs/compress.h
index ebeccb1f4eae..c43aa3374d28 100644
--- a/drivers/staging/erofs/compress.h
+++ b/drivers/staging/erofs/compress.h
@@ -17,6 +17,7 @@ enum {
 };
 
 struct z_erofs_decompress_req {
+	struct super_block *sb;
 	struct page **in, **out;
 
 	unsigned short pageofs_out;
diff --git a/drivers/staging/erofs/decompressor.c b/drivers/staging/erofs/decompressor.c
index df8fd68a338b..80f1f39719ba 100644
--- a/drivers/staging/erofs/decompressor.c
+++ b/drivers/staging/erofs/decompressor.c
@@ -14,6 +14,9 @@
 #endif
 
 #define LZ4_MAX_DISTANCE_PAGES	DIV_ROUND_UP(LZ4_DISTANCE_MAX, PAGE_SIZE)
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
diff --git a/drivers/staging/erofs/erofs_fs.h b/drivers/staging/erofs/erofs_fs.h
index 9a9aaf2d9fbb..9f61abb7c1ca 100644
--- a/drivers/staging/erofs/erofs_fs.h
+++ b/drivers/staging/erofs/erofs_fs.h
@@ -21,7 +21,8 @@
  * Any bits that aren't in EROFS_ALL_REQUIREMENTS should be
  * incompatible with this kernel version.
  */
-#define EROFS_ALL_REQUIREMENTS  0
+#define EROFS_REQUIREMENT_LZ4_0PADDING	0x00000001
+#define EROFS_ALL_REQUIREMENTS		EROFS_REQUIREMENT_LZ4_0PADDING
 
 struct erofs_super_block {
 /*  0 */__le32 magic;           /* in the little endian */
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

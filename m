Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75D06E9461
	for <lists+driverdev-devel@lfdr.de>; Wed, 30 Oct 2019 02:04:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 188A987B3C;
	Wed, 30 Oct 2019 01:04:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3gjwQ2vJTeU4; Wed, 30 Oct 2019 01:04:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6737587AF4;
	Wed, 30 Oct 2019 01:04:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 18D8A1BF578
 for <devel@linuxdriverproject.org>; Wed, 30 Oct 2019 01:04:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 13A9A82383
 for <devel@linuxdriverproject.org>; Wed, 30 Oct 2019 01:04:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FqbKFQoGqJhY for <devel@linuxdriverproject.org>;
 Wed, 30 Oct 2019 01:04:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 43FE782022
 for <devel@driverdev.osuosl.org>; Wed, 30 Oct 2019 01:04:53 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id g24so283921wmh.5
 for <devel@driverdev.osuosl.org>; Tue, 29 Oct 2019 18:04:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5BUDv5SzjoPNUH8eX9BsExMRskMoCgy1lMsq/PW/h24=;
 b=ak2pbzBRUpoVboJbNkCZO1ERrTrVyaWaoBKa+8lA6oAgYErv6PsAjO8mmvXuLy2Ium
 luyPaYstnGBJk/+RRObnX1JSiVRwptCEUDTk8MB+XsmlbF+cFeAMdcQkqDC0Apk/vWtS
 TdBC1gdnfxn3G9Jjc6Q/nvoQLEfJycRgOBDU4HnzUdldK/arQhF44uIcM1i8sXXxjOvt
 FHxrg9CJ/gC6G/l0rBbsDgmsM2MtDI/NdmbOU8R+er8WiRNS1h7z+6PfXcWHTl3JFoWu
 yJBF6IH4EB+NPQii5ZQ3GPyjTHgCUa7LAEC0hQG4QNh+rM8DI8E/qNhpXsjdZ24OucMr
 JjnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5BUDv5SzjoPNUH8eX9BsExMRskMoCgy1lMsq/PW/h24=;
 b=AsVcydF0bBD5VJZhWT9jwAKNHp2P9+kHMhAsDgSskYuXmKxxZNPRkLbllkUrohW3Jn
 Tyn1tYRyQUYKzo7AQ2GStqD1UZVISK3SNfKlccZre9f5FP1HUQzqjibsqc9BkuAcDae4
 yP7zU03PE0odetgXBs/3tQzYmhsKQBhURHK5bYwSRkylTJNaWZHxXA5NOZwI35ZkCtU5
 U2Gd8NaGKIF8bmVqLysgRJoK51++xqPtinF2cRdE26EyGxIm4tk6VTXSxZGRelZvq5Kk
 +9q+fUiVn8ud3tdc/CejyaynrZn1/4d9JIdGGPedMcgfbs90EPDCeIXilBQKYaQ/Oe6Q
 58tQ==
X-Gm-Message-State: APjAAAVSxEQHm54JTDh/79yHj5IZmO4JSIaw9uPf3EOhklNAcOfeXMT0
 +1GzUEL5wXttibYp+iwjl74=
X-Google-Smtp-Source: APXvYqyzU5KWypL3dJMrEivGN/RI66W/6qw+DVzTLawdpBa+0UHs3nOhRtWi7ZGWvT0j6Gtu/3HYgw==
X-Received: by 2002:a7b:c101:: with SMTP id w1mr6805153wmi.130.1572397491865; 
 Tue, 29 Oct 2019 18:04:51 -0700 (PDT)
Received: from localhost ([92.177.95.83])
 by smtp.gmail.com with ESMTPSA id e15sm338461wrx.58.2019.10.29.18.04.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 18:04:51 -0700 (PDT)
From: Roi Martin <jroi.martin@gmail.com>
To: valdis.kletnieks@vt.edu
Subject: [PATCH 2/6] staging: exfat: make alignment match open parenthesis
Date: Wed, 30 Oct 2019 02:03:24 +0100
Message-Id: <20191030010328.10203-3-jroi.martin@gmail.com>
X-Mailer: git-send-email 2.24.0.rc1
In-Reply-To: <20191030010328.10203-1-jroi.martin@gmail.com>
References: <20191030010328.10203-1-jroi.martin@gmail.com>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, Roi Martin <jroi.martin@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix checkpatch.pl warning:

	CHECK: Alignment should match open parenthesis

Signed-off-by: Roi Martin <jroi.martin@gmail.com>
---
 drivers/staging/exfat/exfat_core.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/exfat/exfat_core.c b/drivers/staging/exfat/exfat_core.c
index d8f4fad732c4..177787296ab9 100644
--- a/drivers/staging/exfat/exfat_core.c
+++ b/drivers/staging/exfat/exfat_core.c
@@ -1703,7 +1703,7 @@ struct entry_set_cache_t *get_entry_set_in_dir(struct super_block *sb,
 	size_t bufsize;
 
 	pr_debug("%s entered p_dir dir %u flags %x size %d\n",
-		__func__, p_dir->dir, p_dir->flags, p_dir->size);
+		 __func__, p_dir->dir, p_dir->flags, p_dir->size);
 
 	byte_offset = entry << DENTRY_SIZE_BITS;
 	ret = _walk_fat_chain(sb, p_dir, byte_offset, &clu);
@@ -1835,8 +1835,8 @@ struct entry_set_cache_t *get_entry_set_in_dir(struct super_block *sb,
 		*file_ep = (struct dentry_t *)&es->__buf;
 
 	pr_debug("%s exiting es %p sec %llu offset %d flags %d, num_entries %u buf ptr %p\n",
-		   __func__, es, (unsigned long long)es->sector, es->offset,
-		   es->alloc_flag, es->num_entries, &es->__buf);
+		 __func__, es, (unsigned long long)es->sector, es->offset,
+		 es->alloc_flag, es->num_entries, &es->__buf);
 	return es;
 err_out:
 	pr_debug("%s exited NULL (es %p)\n", __func__, es);
@@ -1862,7 +1862,7 @@ static s32 __write_partial_entries_in_entry_set(struct super_block *sb,
 	u8 *buf, *esbuf = (u8 *)&es->__buf;
 
 	pr_debug("%s entered es %p sec %llu off %d count %d\n",
-		__func__, es, (unsigned long long)sec, off, count);
+		 __func__, es, (unsigned long long)sec, off, count);
 	num_entries = count;
 
 	while (num_entries) {
@@ -1876,8 +1876,8 @@ static s32 __write_partial_entries_in_entry_set(struct super_block *sb,
 			goto err_out;
 		pr_debug("es->buf %p buf_off %u\n", esbuf, buf_off);
 		pr_debug("copying %d entries from %p to sector %llu\n",
-			copy_entries, (esbuf + buf_off),
-			(unsigned long long)sec);
+			 copy_entries, (esbuf + buf_off),
+			 (unsigned long long)sec);
 		memcpy(buf + off, esbuf + buf_off,
 		       copy_entries << DENTRY_SIZE_BITS);
 		buf_modify(sb, sec);
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

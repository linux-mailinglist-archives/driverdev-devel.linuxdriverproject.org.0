Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0BA321BCF2
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 Jul 2020 20:28:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CED0A89C58;
	Fri, 10 Jul 2020 18:28:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xebyampSeovl; Fri, 10 Jul 2020 18:28:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E8CFA89C53;
	Fri, 10 Jul 2020 18:28:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 599C61BF3E1
 for <devel@linuxdriverproject.org>; Fri, 10 Jul 2020 18:28:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4731089C53
 for <devel@linuxdriverproject.org>; Fri, 10 Jul 2020 18:28:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6N4MNA-nfJ8V for <devel@linuxdriverproject.org>;
 Fri, 10 Jul 2020 18:28:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4438A89C52
 for <devel@driverdev.osuosl.org>; Fri, 10 Jul 2020 18:28:16 +0000 (UTC)
Received: from embeddedor (unknown [200.39.25.189])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2D42D2075D;
 Fri, 10 Jul 2020 18:28:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1594405696;
 bh=znLxL7QxKrQnwkFsgsEFQvbCS0/u/STlDOmErC2vb38=;
 h=Date:From:To:Cc:Subject:From;
 b=RrL4eFoQQU5pUrPGbbtbsYS48NPO24Wmkdm9W+LOygckMHyzZ2xx84sGlIc7t7ktP
 27miComXyAVgz2Dqt3gKhBOgMM9VoPrZdfnhac6dEeI2aES04WsYJBkkzBL469GyMr
 egg+AZ+92tD/5eRLJOP4URgfPIRyf8c+GH643QZk=
Date: Fri, 10 Jul 2020 13:33:50 -0500
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: rts5208: Assign array_size() to a variable
Message-ID: <20200710183350.GA8376@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
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
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Assign array_size() to variable _size_ and use it in multiple places.

This issue was found with the help of Coccinelle and, audited and fixed
manually.

Addresses-KSPP-ID: https://github.com/KSPP/linux/issues/83
Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
---
 drivers/staging/rts5208/rtsx_chip.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rts5208/rtsx_chip.c b/drivers/staging/rts5208/rtsx_chip.c
index c6f9375468eb..ee9ddc4eb94d 100644
--- a/drivers/staging/rts5208/rtsx_chip.c
+++ b/drivers/staging/rts5208/rtsx_chip.c
@@ -1440,6 +1440,7 @@ int rtsx_write_cfg_seq(struct rtsx_chip *chip, u8 func, u16 addr, u8 *buf,
 	u16 aligned_addr = addr - offset;
 	int dw_len, i, j;
 	int retval;
+	size_t size;
 
 	if (!buf)
 		return STATUS_NOMEM;
@@ -1451,11 +1452,12 @@ int rtsx_write_cfg_seq(struct rtsx_chip *chip, u8 func, u16 addr, u8 *buf,
 
 	dev_dbg(rtsx_dev(chip), "dw_len = %d\n", dw_len);
 
-	data = vzalloc(array_size(dw_len, 4));
+	size = array_size(dw_len, 4);
+	data = vzalloc(size);
 	if (!data)
 		return STATUS_NOMEM;
 
-	mask = vzalloc(array_size(dw_len, 4));
+	mask = vzalloc(size);
 	if (!mask) {
 		vfree(data);
 		return STATUS_NOMEM;
@@ -1471,10 +1473,8 @@ int rtsx_write_cfg_seq(struct rtsx_chip *chip, u8 func, u16 addr, u8 *buf,
 		}
 	}
 
-	print_hex_dump_bytes(KBUILD_MODNAME ": ", DUMP_PREFIX_NONE, mask,
-			     dw_len * 4);
-	print_hex_dump_bytes(KBUILD_MODNAME ": ", DUMP_PREFIX_NONE, data,
-			     dw_len * 4);
+	print_hex_dump_bytes(KBUILD_MODNAME ": ", DUMP_PREFIX_NONE, mask, size);
+	print_hex_dump_bytes(KBUILD_MODNAME ": ", DUMP_PREFIX_NONE, data, size);
 
 	for (i = 0; i < dw_len; i++) {
 		retval = rtsx_write_cfg_dw(chip, func, aligned_addr + i * 4,
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

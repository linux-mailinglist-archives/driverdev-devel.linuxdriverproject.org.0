Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 763B183150
	for <lists+driverdev-devel@lfdr.de>; Tue,  6 Aug 2019 14:29:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 97D9B21548;
	Tue,  6 Aug 2019 12:29:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7zf7WaFCUeEr; Tue,  6 Aug 2019 12:29:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0238A2154C;
	Tue,  6 Aug 2019 12:29:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3755B1BF5F4
 for <devel@linuxdriverproject.org>; Tue,  6 Aug 2019 12:29:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 343A987D6C
 for <devel@linuxdriverproject.org>; Tue,  6 Aug 2019 12:29:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LBLaRqnkksXI for <devel@linuxdriverproject.org>;
 Tue,  6 Aug 2019 12:29:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 15FC687D5D
 for <devel@driverdev.osuosl.org>; Tue,  6 Aug 2019 12:29:01 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id d1so8706510pgp.4
 for <devel@driverdev.osuosl.org>; Tue, 06 Aug 2019 05:29:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=TAkr50ijx8uYBSMvjJlZB0+VJTs1FTT2VnuFaShQXNo=;
 b=M1Cpzj/7rNIxbHRqUPvLOeU/gHQtCssc9hYvhmUxHsnJOd0HVPukRZF2hERxcIqtVW
 VCsbXTgZm8u5jYdkXoG/rW8Ox5LUTICEr0sQtAUXDcIxMmvgKiTnQqnvuyms5MtWb+2D
 r9VRIXaqjscdeZOPFg5Cd0zfC0nX09fumWnv2CkgUnV3QoC4qqOWvoVe6nJiqpXLREMq
 DrN4sH9xBT3ZVS7ghP+nQIoXUKYDHnwbSDusV132j6NxPV3e9cb5sc7zGXRG/VnxpfYA
 cGI0Yai5rcUN6pq2NXVIr93Q2ioqwf8tG8rLPXeXhrd048n467rF8MzaEn8+5deOK/IK
 6Gvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=TAkr50ijx8uYBSMvjJlZB0+VJTs1FTT2VnuFaShQXNo=;
 b=cVVMbVSENvRgP+2nQoHKAiZfHrfffOsRyxlNG9UyvItcEX3mwIaTocrCYGSj1nwOD8
 HUxNaRL6uJuzjtVEERxYgXISyzb8ftlL/LWHmwaZtJcURcYgEJ9e6P3vsJ7G0gVV4L8i
 rJz03vvESS/TSx0t5klcmc/26aUNrBfxUilQWotkrvGsx5VZgQATY/GLG40FXtPEGi+S
 zt9R6feEtJUtwLyYjBBUxVnaFCJX0NSm3bYSO4XEsEyJ50JnzoU15kItdeK0ZWoC/NhU
 HOCpBGwVKr1xzlrKgG0hMyWhcmr1HXyef0WKx8017hnZ8dnAzLlU8bcnmhguxU8cJikx
 22lg==
X-Gm-Message-State: APjAAAUP/XFPoAbuJ7kBzFRSfOaiemPv442ZmZS0tw0x69QuxiNIDLLF
 YZjkRidUCsMcKbe8oRvUrIJLPTFfWe/jnw==
X-Google-Smtp-Source: APXvYqywhiZJSJjgzafUW390rY+y8rUndAU2xen9Y11XFEmgMYEMpJ3sitE9HVud3KQFoUPLdQHnBw==
X-Received: by 2002:a63:6f81:: with SMTP id k123mr2938399pgc.12.1565094540469; 
 Tue, 06 Aug 2019 05:29:00 -0700 (PDT)
Received: from IoT-COE ([2401:4900:2712:6d:6061:e04e:e2af:fb26])
 by smtp.gmail.com with ESMTPSA id u128sm100439738pfu.48.2019.08.06.05.28.57
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 06 Aug 2019 05:29:00 -0700 (PDT)
Date: Tue, 6 Aug 2019 17:58:49 +0530
From: Merwin Trever Ferrao <merwintf@gmail.com>
To: Larry.Finger@lwfinger.net, gregkh@linuxfoundation.org,
 dan.carpenter@oracle.com
Subject: [PATCH] Staging: rtl8188eu: core: rtw_security: tidy up crc32_init()
Message-ID: <20190806122849.GA25628@IoT-COE>
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
Cc: devel@driverdev.osuosl.org, merwintf@gmail.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This code generates checkpatch warning:

WARNING: else is not generally useful after a break or return

Moving the declaration to the top of the function we can pull the
code back one tab and it makes it more readable.

Signed-off-by: Merwin Trever Ferrao <merwintf@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_security.c | 41 +++++++++----------
 1 file changed, 20 insertions(+), 21 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_security.c b/drivers/staging/rtl8188eu/core/rtw_security.c
index 2f90f60f1681..435c0fbec54a 100644
--- a/drivers/staging/rtl8188eu/core/rtw_security.c
+++ b/drivers/staging/rtl8188eu/core/rtw_security.c
@@ -87,29 +87,28 @@ static u8 crc32_reverseBit(u8 data)
 
 static void crc32_init(void)
 {
-	if (bcrc32initialized == 1) {
+	int i, j;
+	u32 c;
+	u8 *p = (u8 *)&c, *p1;
+	u8 k;
+
+	if (bcrc32initialized == 1)
 		return;
-	} else {
-		int i, j;
-		u32 c;
-		u8 *p = (u8 *)&c, *p1;
-		u8 k;
-
-		c = 0x12340000;
-
-		for (i = 0; i < 256; ++i) {
-			k = crc32_reverseBit((u8)i);
-			for (c = ((u32)k) << 24, j = 8; j > 0; --j)
-				c = c & 0x80000000 ? (c << 1) ^ CRC32_POLY : (c << 1);
-			p1 = (u8 *)&crc32_table[i];
-
-			p1[0] = crc32_reverseBit(p[3]);
-			p1[1] = crc32_reverseBit(p[2]);
-			p1[2] = crc32_reverseBit(p[1]);
-			p1[3] = crc32_reverseBit(p[0]);
-		}
-		bcrc32initialized = 1;
+
+	c = 0x12340000;
+
+	for (i = 0; i < 256; ++i) {
+		k = crc32_reverseBit((u8)i);
+		for (c = ((u32)k) << 24, j = 8; j > 0; --j)
+			c = c & 0x80000000 ? (c << 1) ^ CRC32_POLY : (c << 1);
+		p1 = (u8 *)&crc32_table[i];
+
+		p1[0] = crc32_reverseBit(p[3]);
+		p1[1] = crc32_reverseBit(p[2]);
+		p1[2] = crc32_reverseBit(p[1]);
+		p1[3] = crc32_reverseBit(p[0]);
 	}
+	bcrc32initialized = 1;
 }
 
 static __le32 getcrc32(u8 *buf, int len)
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

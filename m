Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D02C83103
	for <lists+driverdev-devel@lfdr.de>; Tue,  6 Aug 2019 13:54:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D3106844C2;
	Tue,  6 Aug 2019 11:54:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PO2VJVp0JlsY; Tue,  6 Aug 2019 11:54:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3AA33843FD;
	Tue,  6 Aug 2019 11:54:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DB92D1BF5F5
 for <devel@linuxdriverproject.org>; Tue,  6 Aug 2019 11:54:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D91A486745
 for <devel@linuxdriverproject.org>; Tue,  6 Aug 2019 11:54:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JdL+lAM+J0VB for <devel@linuxdriverproject.org>;
 Tue,  6 Aug 2019 11:54:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4D6018553C
 for <devel@driverdev.osuosl.org>; Tue,  6 Aug 2019 11:54:50 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id p184so41382642pfp.7
 for <devel@driverdev.osuosl.org>; Tue, 06 Aug 2019 04:54:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=gZItrYoYJjlkO/ZSFT6aP95X89vdMB+Sl7boPAmKeP0=;
 b=UCYBj3FQarjSM+e8s8LmJJQpUwL8r7yJiIHQ46oHczydYm/enMPksBrMubdGdT+BXO
 GqdGKwsfNk4k+cQy9yh9ocJPOSV8yPaQOV5Sd9i8LBSgWEYVF/awi9ylyoxv9A5uzBx8
 2hKV6mgRZp3HauZtZQfC1fjtzn3UwhSolRlY+QE+WMp8AZOEsI/5j+xmlfsbty2dsbxQ
 XfDW5KksCsG1oE85bpN8HXIQm8Oykb/DVXkRMUwHlJsSPAH1PNSAiR/S/VRhYzkRCIOL
 BAsfhVXr3YztzLXXnrHswqzLTC4ud8i1o8GbjCVrEVUHIMs6J3+DjlkC1Pee7pBPnVsT
 Oyng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=gZItrYoYJjlkO/ZSFT6aP95X89vdMB+Sl7boPAmKeP0=;
 b=Yy5g9bXyqZnXFQEyh/aWoyS42nt+LTUc3rea4KZ1jAK6IJP7wmA5i8PH74R4Mv0Gdb
 RKsReG3YYUiGHUQ8bpr3TdphuaxZEqr4kXdsEAnz/Fj/4lg3QVcWoiMbeARkIInhpESM
 ORfi15ENK5jpD2hFijo0UzHN7FKLc8S0RazPyklVI8l4ThXxIo0xU55hBauIgzW5qmlR
 SAFnsy2JGluYV3BYyPwK+/gCeJujkK3sX1QOltl+uJp1jYNmlFZmmAp9fE2r4h2uW9Y1
 UviPONRWkHQP9MUm/cMe6dixmm/TXzbyjb/CtcI7UmWLk9KUSN8bKqtBXc4R02TOYApQ
 1NMQ==
X-Gm-Message-State: APjAAAUsDKoS1DHgYECzIVUb3V5dlNIzF3ozPUpUNmmGcVmhaT4CScwU
 9wLVDtjzGVmhhn30QO3MZnX0IhqD5DvStQ==
X-Google-Smtp-Source: APXvYqyyI1puDPB9eUlJf/dQb8d5nnW8Yqi7aE4yT07Et3OKYiX4QaKqSUyEhvsBfWV6RyRP429C9A==
X-Received: by 2002:aa7:858b:: with SMTP id w11mr3167671pfn.68.1565092489772; 
 Tue, 06 Aug 2019 04:54:49 -0700 (PDT)
Received: from IoT-COE ([2401:4900:2712:6d:44cc:cdec:b41d:4713])
 by smtp.gmail.com with ESMTPSA id s24sm87562512pfh.133.2019.08.06.04.54.46
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 06 Aug 2019 04:54:49 -0700 (PDT)
Date: Tue, 6 Aug 2019 17:24:38 +0530
From: Merwin Trever Ferrao <merwintf@gmail.com>
To: Larry.Finger@lwfinger.net, gregkh@linuxfoundation.org,
 dan.carpenter@oracle.com
Subject: [PATCH] Staging: rtl8188eu: core: rtw_security: fixed a coding style
 issue
Message-ID: <20190806115438.GA24258@IoT-COE>
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

Fixed WARNING: else is not generally useful after a break or return
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

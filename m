Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BF0E339F87
	for <lists+driverdev-devel@lfdr.de>; Sat, 13 Mar 2021 18:33:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 87A26606DF;
	Sat, 13 Mar 2021 17:33:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aec3rOgt1ZHL; Sat, 13 Mar 2021 17:33:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 889A1606AE;
	Sat, 13 Mar 2021 17:33:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 499A81BF573
 for <devel@linuxdriverproject.org>; Sat, 13 Mar 2021 17:33:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 398D2400C1
 for <devel@linuxdriverproject.org>; Sat, 13 Mar 2021 17:33:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FKFRUf26EU0A for <devel@linuxdriverproject.org>;
 Sat, 13 Mar 2021 17:33:03 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com
 [IPv6:2607:f8b0:4864:20::1036])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AB326400BC
 for <devel@driverdev.osuosl.org>; Sat, 13 Mar 2021 17:33:03 +0000 (UTC)
Received: by mail-pj1-x1036.google.com with SMTP id
 f2-20020a17090a4a82b02900c67bf8dc69so12277207pjh.1
 for <devel@driverdev.osuosl.org>; Sat, 13 Mar 2021 09:33:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=bKA1UktvWcJyakRtzZ4ERgYmauXN2IHyEOYSixvbU/c=;
 b=mAycPwOSWTLs3za00O6QTlslQugjOaAKbLaaw6BtCFt27jVEAclwXSfXDFB05jP6GB
 NtSZX2/WpeNceGA76qixCjVG/yNOCkLuhQgAOnt7vmpOwQ5jdN0n1HJT7/boV2TeC0sE
 JDsih9f9IpqOJLepX0BIcnv5I/qdcYWW7f/SLY+g9jnXXK23t44sUXZoN1iN8eJb/yS8
 tcb7l6NE+QnaKDV0hdvDp9CZ7VEL0oQaBcLbv7gfWtNwpZvYimitiv9dgt9uOZxVD2BA
 hLinN596+UrGxepi+uiOgKpsWmd+pDXaC7R8iZefhPZJCdT4m+ES8OuYIpAdX+n+PxvJ
 6W5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=bKA1UktvWcJyakRtzZ4ERgYmauXN2IHyEOYSixvbU/c=;
 b=KyQ+v9/680Rp24h4xdXF2A+N3NFZ92lT0DT10lY71XfNRSS3iAr6H5yKVVpKGL2OWs
 5cseTM+ZZFd/k94HY4Sfd12GYGw4uWhfhD0pOv3rbHCEGHv5ZZCDicoULApeS4tULrVI
 3Fc+EYWeLWzJcUlma3id/OAmINFCeQglOAOgGpMmKYthQPLilcPaBqX4ZnADrtlRSJBd
 WeHVVGiMqoszKQ7u/Qn/PIejFU+ZfffXKQxPjBCphnwhrkTTSO/e+86bo8WHzKID1Agb
 zXjcOmObl6kAgq11lOCG1uvnqSTnKUW0TyMP9IBDZYqb2MAFtWKqyHF6wHTvSC7FBMHe
 q+vQ==
X-Gm-Message-State: AOAM532iFfv6e116yc2jKzPYSnHsCqY8Pb9cRvDT5y65AC7vCDIL7j8b
 eVauT5jgfOe77BWkGfX/dpydhHttQ/X/ahTM
X-Google-Smtp-Source: ABdhPJyFbUGGa344uFqWZu3UZcafx8taT94nXcL9egrrXcSVr3vfUQ0jvS1411WQUyyv7+CiflJE3Q==
X-Received: by 2002:a17:90a:bb07:: with SMTP id
 u7mr4584129pjr.49.1615656782991; 
 Sat, 13 Mar 2021 09:33:02 -0800 (PST)
Received: from localhost.localdomain ([115.99.61.0])
 by smtp.gmail.com with ESMTPSA id s8sm5570084pjg.29.2021.03.13.09.33.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 13 Mar 2021 09:33:02 -0800 (PST)
From: Selvakumar Elangovan <selvakumar16197@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: octeon-usb: fixed precedence issue
Date: Sat, 13 Mar 2021 23:02:47 +0530
Message-Id: <20210313173247.8676-1-selvakumar16197@gmail.com>
X-Mailer: git-send-email 2.17.1
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Added parenthesis around reg macro to avoid precedence issue identified by
checkpatch.pl

Signed-off-by: Selvakumar Elangovan <selvakumar16197@gmail.com>
---
 drivers/staging/octeon-usb/octeon-hcd.h | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/octeon-usb/octeon-hcd.h b/drivers/staging/octeon-usb/octeon-hcd.h
index 9ed619c93a4e..5aefd3fb3854 100644
--- a/drivers/staging/octeon-usb/octeon-hcd.h
+++ b/drivers/staging/octeon-usb/octeon-hcd.h
@@ -51,11 +51,11 @@
 #include <asm/bitfield.h>
 
 #define CVMX_USBCXBASE 0x00016F0010000000ull
-#define CVMX_USBCXREG1(reg, bid) \
-	(CVMX_ADD_IO_SEG(CVMX_USBCXBASE | reg) + \
+#define CVMX_USBCXREG1((reg), bid) \
+	(CVMX_ADD_IO_SEG(CVMX_USBCXBASE | (reg)) + \
 	 ((bid) & 1) * 0x100000000000ull)
-#define CVMX_USBCXREG2(reg, bid, off) \
-	(CVMX_ADD_IO_SEG(CVMX_USBCXBASE | reg) + \
+#define CVMX_USBCXREG2((reg), bid, off) \
+	(CVMX_ADD_IO_SEG(CVMX_USBCXBASE | (reg)) + \
 	 (((off) & 7) + ((bid) & 1) * 0x8000000000ull) * 32)
 
 #define CVMX_USBCX_GAHBCFG(bid)		CVMX_USBCXREG1(0x008, bid)
@@ -86,10 +86,10 @@
 #define CVMX_USBNXBID1(bid) (((bid) & 1) * 0x10000000ull)
 #define CVMX_USBNXBID2(bid) (((bid) & 1) * 0x100000000000ull)
 
-#define CVMX_USBNXREG1(reg, bid) \
-	(CVMX_ADD_IO_SEG(0x0001180068000000ull | reg) + CVMX_USBNXBID1(bid))
-#define CVMX_USBNXREG2(reg, bid) \
-	(CVMX_ADD_IO_SEG(0x00016F0000000000ull | reg) + CVMX_USBNXBID2(bid))
+#define CVMX_USBNXREG1((reg), bid) \
+	(CVMX_ADD_IO_SEG(0x0001180068000000ull | (reg)) + CVMX_USBNXBID1(bid))
+#define CVMX_USBNXREG2((reg), bid) \
+	(CVMX_ADD_IO_SEG(0x00016F0000000000ull | (reg)) + CVMX_USBNXBID2(bid))
 
 #define CVMX_USBNX_CLK_CTL(bid)		CVMX_USBNXREG1(0x10, bid)
 #define CVMX_USBNX_DMA0_INB_CHN0(bid)	CVMX_USBNXREG2(0x818, bid)
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

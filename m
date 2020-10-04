Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B48912827BE
	for <lists+driverdev-devel@lfdr.de>; Sun,  4 Oct 2020 03:18:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A959D2035E;
	Sun,  4 Oct 2020 01:18:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CIb4RjOJjCKt; Sun,  4 Oct 2020 01:18:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 870DB2033B;
	Sun,  4 Oct 2020 01:18:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E12C51BF5A9
 for <devel@linuxdriverproject.org>; Sun,  4 Oct 2020 01:18:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DE73F85429
 for <devel@linuxdriverproject.org>; Sun,  4 Oct 2020 01:18:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bJQFBzF_XhzK for <devel@linuxdriverproject.org>;
 Sun,  4 Oct 2020 01:18:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f193.google.com (mail-il1-f193.google.com
 [209.85.166.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1969385424
 for <devel@driverdev.osuosl.org>; Sun,  4 Oct 2020 01:18:00 +0000 (UTC)
Received: by mail-il1-f193.google.com with SMTP id f15so4780859ilj.2
 for <devel@driverdev.osuosl.org>; Sat, 03 Oct 2020 18:18:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hWcX8nDRcXPwQhru07wwR3wgE1gSI9bcbHDH0d1P4/g=;
 b=TzY7lhBrpid96fdyXG+eaDEsQSwYcgfflWa2ms+ZOibe6+4+fXXOabZN8/j6jdIdoU
 wxLZ6JLMeuySA2mCziILZQfb1a9HeQ1Fx0B5ztGm4YcRKE5aV9/e+hFVYfyHWekKxMl2
 6Y/QIEtj8UeSKGeI61MK/sYOwmWXcrDXQJ+z2RQ7weK4Kk7x08l+iTyvWFGc+jgdLE/O
 NRd7jPYkNjy82g0qIw/4TEaI43g559GrvBD3mZbTyfZzazt1kT0G/A0u205MsY7zHpWA
 de9X1B3KeGJh0f7lcc0y0l5rFYIHqqZ0J4uI+iZ7B66t2dDrtpizuM3PWQGUDntWk+XK
 eOUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hWcX8nDRcXPwQhru07wwR3wgE1gSI9bcbHDH0d1P4/g=;
 b=lgsHue5VxvInl65lfYqaZTV8ANQb0N/uZUf4+vPy0YNXNTb0dDsaMf6yA+JoeWiBUm
 IEb295HkhoIXpIdc0JnSLsiDRY9AKGkzB/Cy43nISCBDuZn3pSnEPpBYflff6wgYZmPs
 y231lehCPNTelEV3nTDP1Sev6keUOuBjSTqMMEa2Z9CSqR4MEps2s+4ojstOwv8lYC5Z
 Ua8Od+mqymseVAZraQeMCDFIKGYu6ZivG7fYfSYK8AT18ICFPZCn6DT70BCwLedsI5fR
 BDy8/QYEwVYD4nlGIjqCVp5wVUVDycLLGuG/X9Hw1qr2HU1NSKcKuBjRE6MzgAsRFfZ3
 Y3dg==
X-Gm-Message-State: AOAM532JeruuzKPHDmnx9L6pqjdrAAw86jbmnBaeyPLiAlcurI9JnxD1
 MZpfUWqyD27CPpNUiG1hXoA=
X-Google-Smtp-Source: ABdhPJxMGi5K5+kmnjtsmPs7QdeWOkjrJZfOEiMPen7xyRDKJMg3CAro/Vmi+ZkDYsNpCOflSXYQ+w==
X-Received: by 2002:a92:d44f:: with SMTP id r15mr6964373ilm.236.1601774279419; 
 Sat, 03 Oct 2020 18:17:59 -0700 (PDT)
Received: from localhost.localdomain (c-73-242-81-227.hsd1.mn.comcast.net.
 [73.242.81.227])
 by smtp.gmail.com with ESMTPSA id t64sm3575194ild.10.2020.10.03.18.17.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 03 Oct 2020 18:17:59 -0700 (PDT)
From: Ross Schmidt <ross.schm.dev@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 4/8] staging: rtl8723bs: remove unused macros
Date: Sat,  3 Oct 2020 20:17:39 -0500
Message-Id: <20201004011743.10750-4-ross.schm.dev@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201004011743.10750-1-ross.schm.dev@gmail.com>
References: <20201004011743.10750-1-ross.schm.dev@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Ross Schmidt <ross.schm.dev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove several macros in osdep_service.h because they are not used.

Signed-off-by: Ross Schmidt <ross.schm.dev@gmail.com>
---
 .../staging/rtl8723bs/include/osdep_service.h | 57 -------------------
 1 file changed, 57 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/osdep_service.h b/drivers/staging/rtl8723bs/include/osdep_service.h
index c5e9a4eebd27..da4aa3e71a4b 100644
--- a/drivers/staging/rtl8723bs/include/osdep_service.h
+++ b/drivers/staging/rtl8723bs/include/osdep_service.h
@@ -151,68 +151,11 @@ extern void rtw_free_netdev(struct net_device * netdev);
 /* Macros for handling unaligned memory accesses */
 
 #define RTW_GET_BE16(a) ((u16) (((a)[0] << 8) | (a)[1]))
-#define RTW_PUT_BE16(a, val)			\
-	do {					\
-		(a)[0] = ((u16) (val)) >> 8;	\
-		(a)[1] = ((u16) (val)) & 0xff;	\
-	} while (0)
 
 #define RTW_GET_LE16(a) ((u16) (((a)[1] << 8) | (a)[0]))
-#define RTW_PUT_LE16(a, val)			\
-	do {					\
-		(a)[1] = ((u16) (val)) >> 8;	\
-		(a)[0] = ((u16) (val)) & 0xff;	\
-	} while (0)
 
 #define RTW_GET_BE24(a) ((((u32) (a)[0]) << 16) | (((u32) (a)[1]) << 8) | \
 			 ((u32) (a)[2]))
-#define RTW_PUT_BE24(a, val)					\
-	do {							\
-		(a)[0] = (u8) ((((u32) (val)) >> 16) & 0xff);	\
-		(a)[1] = (u8) ((((u32) (val)) >> 8) & 0xff);	\
-		(a)[2] = (u8) (((u32) (val)) & 0xff);		\
-	} while (0)
-
-#define RTW_GET_BE32(a) ((((u32) (a)[0]) << 24) | (((u32) (a)[1]) << 16) | \
-			 (((u32) (a)[2]) << 8) | ((u32) (a)[3]))
-#define RTW_PUT_BE32(a, val)					\
-	do {							\
-		(a)[0] = (u8) ((((u32) (val)) >> 24) & 0xff);	\
-		(a)[1] = (u8) ((((u32) (val)) >> 16) & 0xff);	\
-		(a)[2] = (u8) ((((u32) (val)) >> 8) & 0xff);	\
-		(a)[3] = (u8) (((u32) (val)) & 0xff);		\
-	} while (0)
-
-#define RTW_GET_LE32(a) ((((u32) (a)[3]) << 24) | (((u32) (a)[2]) << 16) | \
-			 (((u32) (a)[1]) << 8) | ((u32) (a)[0]))
-#define RTW_PUT_LE32(a, val)					\
-	do {							\
-		(a)[3] = (u8) ((((u32) (val)) >> 24) & 0xff);	\
-		(a)[2] = (u8) ((((u32) (val)) >> 16) & 0xff);	\
-		(a)[1] = (u8) ((((u32) (val)) >> 8) & 0xff);	\
-		(a)[0] = (u8) (((u32) (val)) & 0xff);		\
-	} while (0)
-
-#define RTW_GET_BE64(a) ((((u64) (a)[0]) << 56) | (((u64) (a)[1]) << 48) | \
-			 (((u64) (a)[2]) << 40) | (((u64) (a)[3]) << 32) | \
-			 (((u64) (a)[4]) << 24) | (((u64) (a)[5]) << 16) | \
-			 (((u64) (a)[6]) << 8) | ((u64) (a)[7]))
-#define RTW_PUT_BE64(a, val)				\
-	do {						\
-		(a)[0] = (u8) (((u64) (val)) >> 56);	\
-		(a)[1] = (u8) (((u64) (val)) >> 48);	\
-		(a)[2] = (u8) (((u64) (val)) >> 40);	\
-		(a)[3] = (u8) (((u64) (val)) >> 32);	\
-		(a)[4] = (u8) (((u64) (val)) >> 24);	\
-		(a)[5] = (u8) (((u64) (val)) >> 16);	\
-		(a)[6] = (u8) (((u64) (val)) >> 8);	\
-		(a)[7] = (u8) (((u64) (val)) & 0xff);	\
-	} while (0)
-
-#define RTW_GET_LE64(a) ((((u64) (a)[7]) << 56) | (((u64) (a)[6]) << 48) | \
-			 (((u64) (a)[5]) << 40) | (((u64) (a)[4]) << 32) | \
-			 (((u64) (a)[3]) << 24) | (((u64) (a)[2]) << 16) | \
-			 (((u64) (a)[1]) << 8) | ((u64) (a)[0]))
 
 void rtw_buf_free(u8 **buf, u32 *buf_len);
 void rtw_buf_update(u8 **buf, u32 *buf_len, u8 *src, u32 src_len);
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

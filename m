Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A8971187B8F
	for <lists+driverdev-devel@lfdr.de>; Tue, 17 Mar 2020 09:51:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 33867883C4;
	Tue, 17 Mar 2020 08:51:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xMYbUGK8qXV8; Tue, 17 Mar 2020 08:51:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 286A78839F;
	Tue, 17 Mar 2020 08:51:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AEDDC1BF293
 for <devel@linuxdriverproject.org>; Tue, 17 Mar 2020 08:51:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A897E226B2
 for <devel@linuxdriverproject.org>; Tue, 17 Mar 2020 08:51:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kBpZxOspvncD for <devel@linuxdriverproject.org>;
 Tue, 17 Mar 2020 08:51:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qv1-f67.google.com (mail-qv1-f67.google.com
 [209.85.219.67])
 by silver.osuosl.org (Postfix) with ESMTPS id A6F5E21567
 for <devel@driverdev.osuosl.org>; Tue, 17 Mar 2020 08:51:41 +0000 (UTC)
Received: by mail-qv1-f67.google.com with SMTP id w5so10398582qvp.11
 for <devel@driverdev.osuosl.org>; Tue, 17 Mar 2020 01:51:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3XgwzraBXqz3SI/6EeJQ6wiwE5blj9E+h6o+6iDLuN0=;
 b=tFZztaS15QYMv2CWkVdEJLs5MHgmxDHOXk+I1BSGN+mc48dCfDTDDdldGg+T2u/1u9
 5rwNbdaCkxGrvmySw3Ebhd/2uPNFeIUUDSYsa6Xp6VsmJJT9ejeyNgJFnNbcAdoPLBva
 aFdt6hhKgp8gEUvT7RBfMrUFV4KNV28AtsKl6XCiODRLMTq0XB/opu8AINFupxZjCoVx
 3jisyKWUst4nJqFpZWxYAhiEvA4U69FNNNtPkK+NHiCIiHP+BjPfRYRh4okIpHDVNqgI
 nIkhgG1uOdSbvAkpassLYs0czYVUvRr8zvrGhm00AQShENeO4WEkjAHepxiz0bEPyvbd
 CmuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3XgwzraBXqz3SI/6EeJQ6wiwE5blj9E+h6o+6iDLuN0=;
 b=FV5VJ1lDaYLTrSkV/oQsAWd9+OfRVWf5mKr3S+9OaEYnST5lkDtkem/hhxUHaP9Fxq
 VhZL4CdFhN5cXXMATH2BzZ42Cm49Bt0wlKdNkXvG32/nFPXsQk1GHqcS66A6Xmi4Ju9B
 zP19G7XG3TO5qHbC0jEEs9z7DaKQKVLjgicUNGLnVvIyNClrpe8nqvAJBozSfIwWPloR
 gHKZwYqNAObv/WicPqGc3aQy5NIjG8erUqDd3sv0BG6EipL7DISRo9gVuddVzWiiAsgE
 HoLWRak40rbhM5ZfMso+DndcPOmOEt+QfgnsYyhOlmyRSbIPPZQER+mWng7o9QaD9ruN
 Gqzw==
X-Gm-Message-State: ANhLgQ1lPShvJzJgiI2iTwILBssCNWNO2UTPfSjrfh0Hk0wtJARiS4+s
 g/IAeToMPz8MCQhtQc96rs8=
X-Google-Smtp-Source: ADFU+vsIUZ7aRiWg2Ed6kZ2zMiaUflakk/CUUD23qWtnXcEz4rF+TMW8LpNsQANfqjpjBk+SwtTf8Q==
X-Received: by 2002:ad4:5222:: with SMTP id r2mr3888131qvq.178.1584435100486; 
 Tue, 17 Mar 2020 01:51:40 -0700 (PDT)
Received: from localhost.localdomain (179.186.61.135.dynamic.adsl.gvt.net.br.
 [179.186.61.135])
 by smtp.gmail.com with ESMTPSA id s4sm1884404qte.36.2020.03.17.01.51.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Mar 2020 01:51:40 -0700 (PDT)
From: Camylla Goncalves Cantanheide <c.cantanheide@gmail.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, lkcamp@lists.libreplanetbr.org
Subject: [PATCH 1/2] staging: rtl8192u: Using function name as string
Date: Tue, 17 Mar 2020 08:51:29 +0000
Message-Id: <20200317085130.21213-1-c.cantanheide@gmail.com>
X-Mailer: git-send-email 2.20.1
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Solves the following checkpatch.pl for a triggered function:
WARNING: Prefer using '"%s...", __func__' to using 'setKey',
this function's name, in a string

Signed-off-by: Camylla Goncalves Cantanheide <c.cantanheide@gmail.com>
---
 drivers/staging/rtl8192u/r8192U_core.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
index 9e222172b..93a15d57e 100644
--- a/drivers/staging/rtl8192u/r8192U_core.c
+++ b/drivers/staging/rtl8192u/r8192U_core.c
@@ -4886,11 +4886,11 @@ void setKey(struct net_device *dev, u8 EntryNo, u8 KeyIndex, u16 KeyType,
 	u8 i;
 
 	if (EntryNo >= TOTAL_CAM_ENTRY)
-		RT_TRACE(COMP_ERR, "cam entry exceeds in setKey()\n");
+		RT_TRACE(COMP_ERR, "cam entry exceeds in %s\n", __func__);
 
 	RT_TRACE(COMP_SEC,
-		 "====>to setKey(), dev:%p, EntryNo:%d, KeyIndex:%d, KeyType:%d, MacAddr%pM\n",
-		 dev, EntryNo, KeyIndex, KeyType, MacAddr);
+		 "====>to %s, dev:%p, EntryNo:%d, KeyIndex:%d, KeyType:%d, MacAddr%pM\n",
+		 __func__, dev, EntryNo, KeyIndex, KeyType, MacAddr);
 
 	if (DefaultKey)
 		usConfig |= BIT(15) | (KeyType << 2);
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

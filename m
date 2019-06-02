Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F871322B6
	for <lists+driverdev-devel@lfdr.de>; Sun,  2 Jun 2019 10:28:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DF93E2077C;
	Sun,  2 Jun 2019 08:28:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q0taDKSyVDyV; Sun,  2 Jun 2019 08:28:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 98F6020029;
	Sun,  2 Jun 2019 08:28:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 81EE91BF3BA
 for <devel@linuxdriverproject.org>; Sun,  2 Jun 2019 08:28:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7EDE885E2B
 for <devel@linuxdriverproject.org>; Sun,  2 Jun 2019 08:28:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mud5bHGlnUbw for <devel@linuxdriverproject.org>;
 Sun,  2 Jun 2019 08:28:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id F160C85D6C
 for <devel@driverdev.osuosl.org>; Sun,  2 Jun 2019 08:28:19 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id d9so9250695wrx.0
 for <devel@driverdev.osuosl.org>; Sun, 02 Jun 2019 01:28:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WnNi9KkC4U+mIhXiCVi96pOXS/XmFU28bKFjrsJQpfY=;
 b=QSOIKTSGa2YueIbuOgCUlbVf4/H4ir6PyaElNxFbkoz+rmtLL4YyRmskp/q+r/ScPR
 mEUGT8rhc7UvlMCP+pQzH9Tj3XOK5qxHibwDGdmYFGZ676C1tLe9mkLFnzCfkR3Rggei
 3GmyH67W4Aa6J5jdNr/IkzXJ4Chdt39vUP4P7fBvkXowwC2h/GUYpiZjBnW3tz2D9xjH
 eEUHxymjFKxekx9IBq9J3a+NLbynIT782F044lNF5p78C6xp6jH8tqCn1fcFuy7SjKLp
 zHaImxaigsJ3MkkB0sdkunuK9bb3sGFuQVEl6plBZBIUtpy7NVexFKYxZwoEfcc3RAk2
 ZerA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WnNi9KkC4U+mIhXiCVi96pOXS/XmFU28bKFjrsJQpfY=;
 b=s+4OZrPSMl/80kUEM44S8+UJveU5IT23vGF8YcSX9mf+rSAnsyKS0ieDZ+axtK7MwF
 8D61d24pbZD3G2FROgeA22ZNa8wpqrgY6/rzUS/nRDE7KJHJURUv68CdJKOaEn0rdxoo
 rLDNKqopMHdvS/C5iP+hmu49Wib5GP2pYLks/YkyaMr2hceNEdECSzT3bdiwwDDknjMb
 hk33K7W2/vlBq5wrWlj9XP0TWQ/zrQDKYYoA7TWsV6x7PH0WWot/JjsWI3pETOpe07LT
 O86nkG5uDy1pXD/LqruKr9E98gGjwU3qCvWW2oalhAw57C6Z9J0lTZ1QUhaeeroXoEPq
 4z8A==
X-Gm-Message-State: APjAAAVp94wIkMcwhqrONjVH85/I9TF0LNmQF8hG9FeqFe+0qTnajnyn
 TyJgX5wuVv7wdZcl2JR6dYM=
X-Google-Smtp-Source: APXvYqwtRn6icomP8dU6EUlNiNqfA6oW0HYJpH6eAFdqakg1ERF0j3ZrKujTsTiiS6+vj957Pw8Yhw==
X-Received: by 2002:a5d:6144:: with SMTP id y4mr12532929wrt.84.1559464098333; 
 Sun, 02 Jun 2019 01:28:18 -0700 (PDT)
Received: from localhost.localdomain
 ([2a02:8108:96bf:e0ab:2b68:5d76:a12a:e6ba])
 by smtp.gmail.com with ESMTPSA id 32sm34252041wra.35.2019.06.02.01.28.17
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 02 Jun 2019 01:28:17 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8188eu: remove ODM_PhyStatusQuery() wrapper
Date: Sun,  2 Jun 2019 10:28:00 +0200
Message-Id: <20190602082800.5846-1-straube.linux@gmail.com>
X-Mailer: git-send-email 2.21.0
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
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Function ODM_PhyStatusQuery() is just a wrapper around
ODM_PhyStatusQuery_92CSeries(). Rename ODM_PhyStatusQuery_92CSeries()
to ODM_PhyStatusQuery() and remove the wrapper.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/hal/odm_hwconfig.c | 15 +++------------
 1 file changed, 3 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/odm_hwconfig.c b/drivers/staging/rtl8188eu/hal/odm_hwconfig.c
index 149b0009ad66..d5a9ac51e907 100644
--- a/drivers/staging/rtl8188eu/hal/odm_hwconfig.c
+++ b/drivers/staging/rtl8188eu/hal/odm_hwconfig.c
@@ -387,10 +387,9 @@ static void odm_Process_RSSIForDM(struct odm_dm_struct *dm_odm,
 }
 
 /*  Endianness before calling this API */
-static void ODM_PhyStatusQuery_92CSeries(struct odm_dm_struct *dm_odm,
-					 struct odm_phy_status_info *pPhyInfo,
-					 u8 *pPhyStatus,
-					 struct odm_per_pkt_info *pPktinfo)
+void ODM_PhyStatusQuery(struct odm_dm_struct *dm_odm,
+			struct odm_phy_status_info *pPhyInfo,
+			u8 *pPhyStatus, struct odm_per_pkt_info *pPktinfo)
 {
 	odm_RxPhyStatus92CSeries_Parsing(dm_odm, pPhyInfo, pPhyStatus,
 					 pPktinfo);
@@ -398,12 +397,4 @@ static void ODM_PhyStatusQuery_92CSeries(struct odm_dm_struct *dm_odm,
 		;/*  Select the packets to do RSSI checking for antenna switching. */
 	else
 		odm_Process_RSSIForDM(dm_odm, pPhyInfo, pPktinfo);
-
-}
-
-void ODM_PhyStatusQuery(struct odm_dm_struct *dm_odm,
-			struct odm_phy_status_info *pPhyInfo,
-			u8 *pPhyStatus, struct odm_per_pkt_info *pPktinfo)
-{
-	ODM_PhyStatusQuery_92CSeries(dm_odm, pPhyInfo, pPhyStatus, pPktinfo);
 }
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

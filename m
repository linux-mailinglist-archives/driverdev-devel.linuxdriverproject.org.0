Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CE75E232550
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Jul 2020 21:22:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8054E85549;
	Wed, 29 Jul 2020 19:22:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jKqFwat68n62; Wed, 29 Jul 2020 19:22:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7847884FB9;
	Wed, 29 Jul 2020 19:22:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6267E1BF328
 for <devel@linuxdriverproject.org>; Wed, 29 Jul 2020 19:22:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4C11424B3A
 for <devel@linuxdriverproject.org>; Wed, 29 Jul 2020 19:22:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2ppu2xQchwqK for <devel@linuxdriverproject.org>;
 Wed, 29 Jul 2020 19:22:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 1C4F820497
 for <devel@driverdev.osuosl.org>; Wed, 29 Jul 2020 19:22:09 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id m16so12307974pls.5
 for <devel@driverdev.osuosl.org>; Wed, 29 Jul 2020 12:22:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=XTfRT4phhdas5zdx8jEfLY3dRt6rlChKS+9tag1reXc=;
 b=E9dS+ATytfXElcxg+e+K9iLMzz6NrScMZb92j0C0xssYcABiBDIc8XQki7okuTry8R
 NMq1b68VROGXHtrFyMnIK/BK7F+zm/iwbP8gJKcARvbPiZM7jEvFva+9jt837mesG7Xp
 /34Fez/3qwa5yZ9srz8byOV0BjKnl+5RyEpRkZ2jC6FSyBOW41a8mfEQDdKLxx77caOP
 POXNA2mwtIcZvQh94nmIXarDEB3wagRVYARUX8mRpIolP4KnNeNVTfNJwyHbhjR2SGda
 lwprWss+MbutJJpMqJRmeJig/aF4rFq4aVPVkYZO2xJ4fyCscFXPz65fLJWvqCNI8TMK
 imtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XTfRT4phhdas5zdx8jEfLY3dRt6rlChKS+9tag1reXc=;
 b=fyv91ch0KuWzpkMNLypYRakQZncX5488QzvBpxk+uyR4SqeqP0KYX8oiv+wqUru4I2
 EVAhyVo7NiX9yk/dgIV+rVkJY4Kxa07NkGblqh9iIJUVSs8SS4Qq6wCn9rpgOzh9/KCz
 TYjS9nfcecF/svl2eyf0DLymxZysVgspOoyk/HmQpnQdBfrQCxTL315Xq3RkpWyOfgWd
 P8WZWpwEg2/X3RschSEfbqdcv+vJFL1M7MmhdkIs6AzgtrMt555QR4fSqZvMygLvw3Nl
 Db/XjhFkKPjLelVUGWalHzOCwlkrHhzUdLL70KYTYUmHogqIu7KZbtBqndxVS8XuYxZI
 spDw==
X-Gm-Message-State: AOAM530wtnNuDO4d6GKu4DBmxo+jQfoC//sDJBTwnACPnThztpUJjBw6
 HI06cDmVvKIDKjsOVydyCU0=
X-Google-Smtp-Source: ABdhPJwbCUxpmkSWu34mAItPZC9nXt6mtoVH6tJtlH5pUWs1f2JlE91th79Lqvmhb67JwRNse/CC0g==
X-Received: by 2002:a17:902:9a47:: with SMTP id
 x7mr28576752plv.90.1596050528639; 
 Wed, 29 Jul 2020 12:22:08 -0700 (PDT)
Received: from localhost.localdomain ([122.167.86.75])
 by smtp.googlemail.com with ESMTPSA id hg7sm599431pjb.24.2020.07.29.12.22.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Jul 2020 12:22:08 -0700 (PDT)
From: Aditya Jain <aditya.jainadityajain.jain@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v4 3/3] staging: rtl8723bs: Align macro definitions
Date: Thu, 30 Jul 2020 00:51:36 +0530
Message-Id: <20200729192136.23828-4-aditya.jainadityajain.jain@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200729192136.23828-1-aditya.jainadityajain.jain@gmail.com>
References: <CAJAoDUjVBon2iiztdER82mHgJtVS6s5XYSajbCTne0KWAzoLvg@mail.gmail.com>
 <20200729192136.23828-1-aditya.jainadityajain.jain@gmail.com>
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
Cc: devel@driverdev.osuosl.org,
 Aditya Jain <aditya.jainadityajain.jain@gmail.com>,
 linux-kernel@vger.kernel.org, hdegoede@redhat.com, joe@perches.com,
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Adjust spacing in macro definitions to align them and improve
readbility

Signed-off-by: Aditya Jain <aditya.jainadityajain.jain@gmail.com>
---
 drivers/staging/rtl8723bs/include/hal_phy_cfg.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/hal_phy_cfg.h b/drivers/staging/rtl8723bs/include/hal_phy_cfg.h
index 0eb3e57f4082..ed3488a09d79 100644
--- a/drivers/staging/rtl8723bs/include/hal_phy_cfg.h
+++ b/drivers/staging/rtl8723bs/include/hal_phy_cfg.h
@@ -8,11 +8,11 @@
 #define __INC_HAL8723BPHYCFG_H__
 
 /*--------------------------Define Parameters-------------------------------*/
-#define LOOP_LIMIT				5
-#define MAX_STALL_TIME			50		/* us */
+#define LOOP_LIMIT		5
+#define MAX_STALL_TIME		50	/* us */
 #define AntennaDiversityValue	0x80	/* Adapter->bSoftwareAntennaDiversity ? 0x00:0x80) */
 #define MAX_TXPWR_IDX_NMODE_92S	63
-#define Reset_Cnt_Limit			3
+#define Reset_Cnt_Limit		3
 
 #define MAX_AGGR_NUM	0x07
 
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

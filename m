Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id ADC4732F8EB
	for <lists+driverdev-devel@lfdr.de>; Sat,  6 Mar 2021 09:12:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B72A284573;
	Sat,  6 Mar 2021 08:12:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e5WWs0tVO_XK; Sat,  6 Mar 2021 08:12:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E594984547;
	Sat,  6 Mar 2021 08:12:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 87DAB1BF2E4
 for <devel@linuxdriverproject.org>; Sat,  6 Mar 2021 08:11:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 74A27414F6
 for <devel@linuxdriverproject.org>; Sat,  6 Mar 2021 08:11:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2xOcPGEGtknd for <devel@linuxdriverproject.org>;
 Sat,  6 Mar 2021 08:11:52 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com
 [IPv6:2a00:1450:4864:20::636])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B137D414E0
 for <devel@driverdev.osuosl.org>; Sat,  6 Mar 2021 08:11:52 +0000 (UTC)
Received: by mail-ej1-x636.google.com with SMTP id w17so8331879ejc.6
 for <devel@driverdev.osuosl.org>; Sat, 06 Mar 2021 00:11:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=x+EF1AAM7EWJZCaU5TM8Zhhbah4qYiTm12Oy1y0E5dU=;
 b=YLMxrYy6mqzNRFVBFV5Ykra2gFccgHS1+n2U293scbkLDLh7fKriMG8uL4xhTidT0P
 NORJyP8VhBWV4MRZNEJ54z4p7o2DLxDLwzmBiKLf+XlTmX+RLveMTyC2DW170jgNYK9X
 svIWmtgm2Ilaetil3ky8QhfsLhPB+2gVyMH7TdtEWkLtutBUteJEvDh/L5QIkZI1gTiR
 zazm3qeoPusfxTpqYBYYGyIcsJt/ExGxJ+rYPKebYmUKXU2soUpeiFDATn1pOd9A01an
 W8va8yMDQP5CyM2/iywBynqSpU+EqNFvDTm4JQFJh1P3oZ/yAodra7KCRUsFbUhKmqBU
 f2Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=x+EF1AAM7EWJZCaU5TM8Zhhbah4qYiTm12Oy1y0E5dU=;
 b=Ck7sG8EqAViWiFlUtZYEiWRyHOPvzTJWVcyIabW1D8dG4UyBuKZm6UR55fu/9oSSkF
 YaxSTVXfp5/uYsBbbHjEwwjBCQ1FyZM0cahuV7RIggzO6KWMudcwF0Vw7GeL/FEwlJXZ
 JFY8OkzKbeyFepuuAbchJYlV4zb83zBw0IJwhktXq0DWZCWQNpqIAYp/eF2Zxb8xUcjb
 +9Lz2hJ7I/A9xx0QyxZ7WEt+DYeAk+jFe/lKcHp9JwdmaDXtGY4WvXGVFc4t3fyHDjNF
 tZzlGvny78qduQik1U0+4YSKj0q5joaufUFCubHJzSPbGkrY3b4h/PzNkTE1WZaBgexK
 G+GA==
X-Gm-Message-State: AOAM533WSR3oVahXacyfTulq9VvMiU91ZlLkklJdDpiqcE0gGYw9gYV2
 CSGwF/lZqQpHb3qGORpXHd0=
X-Google-Smtp-Source: ABdhPJxUBjQEeTyEqWolOO/4GS/xqP+y5M+i/xlxR9fotLjHMVBmg1w/dn/P+Yg04qYLnjz8bLG3ng==
X-Received: by 2002:a17:906:ada:: with SMTP id
 z26mr5928117ejf.438.1615018310815; 
 Sat, 06 Mar 2021 00:11:50 -0800 (PST)
Received: from tumbleweed.fritz.box
 (dslb-002-204-141-079.002.204.pools.vodafone-ip.de. [2.204.141.79])
 by smtp.gmail.com with ESMTPSA id q11sm2814737ejr.36.2021.03.06.00.11.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 06 Mar 2021 00:11:50 -0800 (PST)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 1/2] staging: rtl8188eu: rename ODM_PhyStatusQuery()
Date: Sat,  6 Mar 2021 09:11:32 +0100
Message-Id: <20210306081133.1272-1-straube.linux@gmail.com>
X-Mailer: git-send-email 2.30.1
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

Rename ODM_PhyStatusQuery() to odm_phy_status_query() to avoid camel
case.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/hal/odm_hwconfig.c     | 6 +++---
 drivers/staging/rtl8188eu/hal/rtl8188e_rxdesc.c  | 4 ++--
 drivers/staging/rtl8188eu/include/odm_hwconfig.h | 8 ++++----
 3 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/odm_hwconfig.c b/drivers/staging/rtl8188eu/hal/odm_hwconfig.c
index 65a346ae3cb0..c5af0c559cba 100644
--- a/drivers/staging/rtl8188eu/hal/odm_hwconfig.c
+++ b/drivers/staging/rtl8188eu/hal/odm_hwconfig.c
@@ -385,9 +385,9 @@ static void odm_Process_RSSIForDM(struct odm_dm_struct *dm_odm,
 }
 
 /*  Endianness before calling this API */
-void ODM_PhyStatusQuery(struct odm_dm_struct *dm_odm,
-			struct odm_phy_status_info *pPhyInfo,
-			u8 *pPhyStatus, struct odm_per_pkt_info *pPktinfo)
+void odm_phy_status_query(struct odm_dm_struct *dm_odm,
+			  struct odm_phy_status_info *pPhyInfo,
+			  u8 *pPhyStatus, struct odm_per_pkt_info *pPktinfo)
 {
 	odm_RxPhyStatus92CSeries_Parsing(dm_odm, pPhyInfo, pPhyStatus,
 					 pPktinfo);
diff --git a/drivers/staging/rtl8188eu/hal/rtl8188e_rxdesc.c b/drivers/staging/rtl8188eu/hal/rtl8188e_rxdesc.c
index 7d0135fde795..0d06cb54b1ad 100644
--- a/drivers/staging/rtl8188eu/hal/rtl8188e_rxdesc.c
+++ b/drivers/staging/rtl8188eu/hal/rtl8188e_rxdesc.c
@@ -171,8 +171,8 @@ void update_recvframe_phyinfo_88e(struct recv_frame *precvframe,
 		pkt_info.StationID = psta->mac_id;
 	pkt_info.Rate = pattrib->mcs_rate;
 
-	ODM_PhyStatusQuery(&padapter->HalData->odmpriv, pPHYInfo,
-			   (u8 *)pphy_status, &(pkt_info));
+	odm_phy_status_query(&padapter->HalData->odmpriv, pPHYInfo,
+			     (u8 *)pphy_status, &(pkt_info));
 
 	precvframe->psta = NULL;
 	if (pkt_info.bPacketMatchBSSID &&
diff --git a/drivers/staging/rtl8188eu/include/odm_hwconfig.h b/drivers/staging/rtl8188eu/include/odm_hwconfig.h
index 2cd8a47a3673..dc86e4058eff 100644
--- a/drivers/staging/rtl8188eu/include/odm_hwconfig.h
+++ b/drivers/staging/rtl8188eu/include/odm_hwconfig.h
@@ -93,9 +93,9 @@ struct phy_status_rpt {
 #endif
 };
 
-void ODM_PhyStatusQuery(struct odm_dm_struct *pDM_Odm,
-			struct odm_phy_status_info *pPhyInfo,
-			u8 *pPhyStatus,
-			struct odm_per_pkt_info *pPktinfo);
+void odm_phy_status_query(struct odm_dm_struct *pDM_Odm,
+			  struct odm_phy_status_info *pPhyInfo,
+			  u8 *pPhyStatus,
+			  struct odm_per_pkt_info *pPktinfo);
 
 #endif
-- 
2.30.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

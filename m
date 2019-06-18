Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E6EBA4978A
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 Jun 2019 04:39:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D31B320335;
	Tue, 18 Jun 2019 02:39:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gwFnKTT7aszN; Tue, 18 Jun 2019 02:39:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 725EB20496;
	Tue, 18 Jun 2019 02:39:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B454B1BF36B
 for <devel@linuxdriverproject.org>; Tue, 18 Jun 2019 02:39:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B16318567A
 for <devel@linuxdriverproject.org>; Tue, 18 Jun 2019 02:39:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aqG9781y62M0 for <devel@linuxdriverproject.org>;
 Tue, 18 Jun 2019 02:39:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D8EC6849A3
 for <devel@driverdev.osuosl.org>; Tue, 18 Jun 2019 02:39:20 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id s21so6792416pga.12
 for <devel@driverdev.osuosl.org>; Mon, 17 Jun 2019 19:39:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=D2ULf8qwvOBwy3f46dg2e3I/gGjBRzByDR6nlqf/Poo=;
 b=r3MZmS+Z+I1cKNS7BeGAWJUdN0PvL3JKwYaxcFev5JWsA8qVzMlBOBmGJXCEEdkPd7
 D91dibNWsZPlz7G+caLULqx8SCg5UsaP7EhoUrcJH6sDXGTdaT1m0kt2BxkEZkbcppMR
 q8llZ6m7wxB5W1wTHKTsYG99urZtrbmt6USA+lNx4b4sjBAkn2lyOrlQg2+BKokFjQNi
 z6HHRHW/eqdc0EzQGbasTEZSViAWTAHX3pwhp3ldLLIPMPMuDB5xSaqQ1CQniDLiawgF
 ordyt96nEKMyPzZfe7ktdJ8XecCBWiMGVKRsiUM6eWqpqAVW9G50+Rkolls3Rhl3KAdL
 H4pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=D2ULf8qwvOBwy3f46dg2e3I/gGjBRzByDR6nlqf/Poo=;
 b=YxXh9Fv0DWJYGOxKmE29tdcY2XRxkKt5SdeeMBs5KAmelZpYIlDM+I+t8lqJY/slA+
 8KgU0PcT2SqWoic0C4+U7BoI6Qn2Ie5e4/Q/MuqLhQZrtDO7aBoUuP7XGiRf9lZT8XGJ
 iZV2hKCxasKr6Vr84IVCO75x2UQNyM1kZJ6sm/P4gof0zWLdrtzt+mQ7e5fcA8LTNuA9
 V9wI3/1n0dBt5PKjaov1P3ZfJ+2ZPtxEpVXillGL2TkNwhdrtFKqvDMUD0lF2+Fu07as
 lgjO4qFOGQppAVoQZJbUqqtYpRBiEiDt0iR4WuEovGkCvFYN9AYxWOwYrJw9UUho3aAA
 3F+g==
X-Gm-Message-State: APjAAAX/MfxhdzMhwiGKPLZbEYw3gXjTKTfg3wcvhpgz+2FokLNEUygn
 umBwj+BuH1EcwKEVAhUKf4s=
X-Google-Smtp-Source: APXvYqzcIPqZDnf5snxqTSXapBqCegfFEqducV4HlYMAM8ZDlJ7T/MpiD8ZpFSxY5ih0Ezbbvqowpw==
X-Received: by 2002:a62:b503:: with SMTP id y3mr115834632pfe.4.1560825560519; 
 Mon, 17 Jun 2019 19:39:20 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.187])
 by smtp.gmail.com with ESMTPSA id o13sm16571452pgr.86.2019.06.17.19.39.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 19:39:19 -0700 (PDT)
Date: Tue, 18 Jun 2019 08:09:14 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Quytelda Kahja <quytelda@tamalin.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [Patch v3] staging: rtl8723bs: hal: odm_HWConfig: Unneeded variable:
 "result". Return "HAL_STATUS_SUCCESS"
Message-ID: <20190618023914.GA14730@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
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

Remove function ODM_ConfigMACWithHeaderFile as trace is not necessary
and as it is getting called only once and call direct function
"ODM_ReadAndConfig_MP_8723B_MAC_REG"

Issue identified by coccicheck

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
----
changes v2: fixed typo in commit message
changes v3: Remove function ODM_ConfigMACWithHeaderFile and replace
            with ODM_ReadAndConfig_MP_8723B_MAC_REG
---
---
 drivers/staging/rtl8723bs/hal/odm_HWConfig.c    | 29 -------------------------
 drivers/staging/rtl8723bs/hal/odm_HWConfig.h    |  2 --
 drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c |  2 +-
 3 files changed, 1 insertion(+), 32 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/odm_HWConfig.c b/drivers/staging/rtl8723bs/hal/odm_HWConfig.c
index d802a1f..22f7410 100644
--- a/drivers/staging/rtl8723bs/hal/odm_HWConfig.c
+++ b/drivers/staging/rtl8723bs/hal/odm_HWConfig.c
@@ -496,32 +496,3 @@ HAL_STATUS ODM_ConfigBBWithHeaderFile(
 	return HAL_STATUS_SUCCESS;
 }
 
-HAL_STATUS ODM_ConfigMACWithHeaderFile(PDM_ODM_T pDM_Odm)
-{
-	u8 result = HAL_STATUS_SUCCESS;
-
-	ODM_RT_TRACE(
-		pDM_Odm,
-		ODM_COMP_INIT,
-		ODM_DBG_LOUD,
-		(
-			"===>ODM_ConfigMACWithHeaderFile (%s)\n",
-			(pDM_Odm->bIsMPChip) ? "MPChip" : "TestChip"
-		)
-	);
-	ODM_RT_TRACE(
-		pDM_Odm,
-		ODM_COMP_INIT,
-		ODM_DBG_LOUD,
-		(
-			"pDM_Odm->SupportPlatform: 0x%X, pDM_Odm->SupportInterface: 0x%X, pDM_Odm->BoardType: 0x%X\n",
-			pDM_Odm->SupportPlatform,
-			pDM_Odm->SupportInterface,
-			pDM_Odm->BoardType
-		)
-	);
-
-	READ_AND_CONFIG(8723B, _MAC_REG);
-
-	return result;
-}
diff --git a/drivers/staging/rtl8723bs/hal/odm_HWConfig.h b/drivers/staging/rtl8723bs/hal/odm_HWConfig.h
index d3af1ca..945366b 100644
--- a/drivers/staging/rtl8723bs/hal/odm_HWConfig.h
+++ b/drivers/staging/rtl8723bs/hal/odm_HWConfig.h
@@ -140,8 +140,6 @@ HAL_STATUS ODM_ConfigBBWithHeaderFile(
 	PDM_ODM_T pDM_Odm, ODM_BB_Config_Type ConfigType
 );
 
-HAL_STATUS ODM_ConfigMACWithHeaderFile(PDM_ODM_T pDM_Odm);
-
 HAL_STATUS ODM_ConfigFWWithHeaderFile(
 	PDM_ODM_T pDM_Odm,
 	ODM_FW_Config_Type ConfigType,
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c b/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c
index 6da7f8e..25c75b9 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c
@@ -375,7 +375,7 @@ s32 PHY_MACConfig8723B(struct adapter *Adapter)
 	/*  */
 	rtStatus = phy_ConfigMACWithParaFile(Adapter, pszMACRegFile);
 	if (rtStatus == _FAIL) {
-		ODM_ConfigMACWithHeaderFile(&pHalData->odmpriv);
+		ODM_ReadAndConfig_MP_8723B_MAC_REG(&pHalData->odmpriv);
 		rtStatus = _SUCCESS;
 	}
 
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

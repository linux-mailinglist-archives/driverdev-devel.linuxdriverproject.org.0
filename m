Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7CE25AA1B
	for <lists+driverdev-devel@lfdr.de>; Sat, 29 Jun 2019 12:24:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CF21E8825E;
	Sat, 29 Jun 2019 10:24:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zNkQS2tA5npO; Sat, 29 Jun 2019 10:24:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5E8508816A;
	Sat, 29 Jun 2019 10:24:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A1DC01BF405
 for <devel@linuxdriverproject.org>; Sat, 29 Jun 2019 10:24:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9F3698816A
 for <devel@linuxdriverproject.org>; Sat, 29 Jun 2019 10:24:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XVVzVEYXfOTG for <devel@linuxdriverproject.org>;
 Sat, 29 Jun 2019 10:24:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 371368815F
 for <devel@driverdev.osuosl.org>; Sat, 29 Jun 2019 10:24:12 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id i8so511255pgm.13
 for <devel@driverdev.osuosl.org>; Sat, 29 Jun 2019 03:24:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=RptfxyB7O7iR3X6CW3MwQJ/ahOEa3Z1ayV5mK7lrjQk=;
 b=fF0VaPfIGIcDL/ZgcVy2LKBto6YZEi5UuSXzCBZbCzBs0paO1D5hprlcQLqntKmavh
 5i8RhZYkzuZF2ZDNGXXcc0HVHIz4p/k7ANCxlMUq6PtMB4R/oSCVzZ25vqpcZSyM0Is7
 68HJTCEet/aJjlXM+5jUzXgBHrtSZh0YbXMTFy0MpzEgFyOp6QHKE/28o2wAgBiznUGO
 gS4ZRwnw5bLr8GCFBfZB7OqhkIChbXjKz5Aqp75kxPCz/mhWw+58huGoHiwqhlEEc9HI
 RZ8G7EyrOGatRX6kfuCtAtHPJKn/KOrKWJfGIjle9kfJNFeFKP+6Dnh/8TpoJwTLUQ3I
 UCVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=RptfxyB7O7iR3X6CW3MwQJ/ahOEa3Z1ayV5mK7lrjQk=;
 b=FTtirGmNCmBPjAwlkXySaX2qPqv58Eg3Ci6HYGe8/gPlH45KwtuujQu9+cK0tX6tI4
 f7o7ePMnxxmdrvAl+HMeZQY3TarFfRyIwxKnP25KZS4wAZ+72GtTAdiFfZpJ7MQ44enx
 p/ve2ZjWOToH9MDjV5o82KRRWLfxkbLFHpSl7zJMZAlhsK4AX7apiX3HevWdR3oPNH0j
 cftBGCkjl7GGzSq/IsW68dFzTDKC68QGKX/6EL0xbUpP+D5d7dhO9GRigEm5EUsBqjoG
 jfSWLUbrKlB8k3DCjpjF0UfEExZXMIAfQZXdTlHsNQo0yrTLegATs8jrmaafWhIduEPa
 3kjA==
X-Gm-Message-State: APjAAAXrh2Zzwlop5c96zQx9UucfkKcctmYbn9MrftG/MP6EY4daUknE
 0+Tyqnw+3BKDGjT3XQ7SoIQ=
X-Google-Smtp-Source: APXvYqz15+NrOPPHfwMmYvQZdC4xMg7YmZgaWZl9Z+Vggiiqms6QByTgmHK7ZFXnpmDo2Hwy4M1TPQ==
X-Received: by 2002:a17:90a:9503:: with SMTP id
 t3mr8952131pjo.47.1561803851887; 
 Sat, 29 Jun 2019 03:24:11 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.187])
 by smtp.gmail.com with ESMTPSA id m101sm4234630pjb.7.2019.06.29.03.24.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 29 Jun 2019 03:24:11 -0700 (PDT)
Date: Sat, 29 Jun 2019 15:54:07 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Colin Ian King <colin.king@canonical.com>,
 Puranjay Mohan <puranjay12@gmail.com>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 05/10] staging/rtl8723bs/hal: fix comparison to true/false is
 error prone
Message-ID: <20190629102407.GA15143@hari-Inspiron-1545>
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

fix below issues reported by checkpatch

CHECK: Using comparison to false is error prone
CHECK: Using comparison to true is error prone

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8723bs/hal/odm_DIG.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/odm_DIG.c b/drivers/staging/rtl8723bs/hal/odm_DIG.c
index 70d98c5..dbfb05e 100644
--- a/drivers/staging/rtl8723bs/hal/odm_DIG.c
+++ b/drivers/staging/rtl8723bs/hal/odm_DIG.c
@@ -95,7 +95,7 @@ void odm_NHMBB(void *pDM_VOID)
 
 
 	if ((pDM_Odm->NHMCurTxOkcnt) + 1 > (u64)(pDM_Odm->NHMCurRxOkcnt<<2) + 1) { /* Tx > 4*Rx possible for adaptivity test */
-		if (pDM_Odm->NHM_cnt_0 >= 190 || pDM_Odm->adaptivity_flag == true) {
+		if (pDM_Odm->NHM_cnt_0 >= 190 || pDM_Odm->adaptivity_flag) {
 			/* Enable EDCCA since it is possible running Adaptivity testing */
 			/* test_status = 1; */
 			pDM_Odm->adaptivity_flag = true;
@@ -112,7 +112,7 @@ void odm_NHMBB(void *pDM_VOID)
 			}
 		}
 	} else { /*  TX<RX */
-		if (pDM_Odm->adaptivity_flag == true && pDM_Odm->NHM_cnt_0 <= 200) {
+		if (pDM_Odm->adaptivity_flag && pDM_Odm->NHM_cnt_0 <= 200) {
 			/* test_status = 2; */
 			pDM_Odm->tolerance_cnt = 0;
 		} else {
@@ -207,7 +207,7 @@ void odm_AdaptivityInit(void *pDM_VOID)
 {
 	PDM_ODM_T pDM_Odm = (PDM_ODM_T)pDM_VOID;
 
-	if (pDM_Odm->Carrier_Sense_enable == false)
+	if (!pDM_Odm->Carrier_Sense_enable)
 		pDM_Odm->TH_L2H_ini = 0xf7; /*  -7 */
 	else
 		pDM_Odm->TH_L2H_ini = 0xa;
@@ -257,7 +257,7 @@ void odm_Adaptivity(void *pDM_VOID, u8 IGI)
 	pDM_Odm->IGI_target = (u8) IGI_target;
 
 	/* Search pwdB lower bound */
-	if (pDM_Odm->TxHangFlg == true) {
+	if (pDM_Odm->TxHangFlg) {
 		PHY_SetBBReg(pDM_Odm->Adapter, ODM_REG_DBG_RPT_11N, bMaskDWord, 0x208);
 		odm_SearchPwdBLowerBound(pDM_Odm, pDM_Odm->IGI_target);
 	}
@@ -456,7 +456,7 @@ bool odm_DigAbort(void *pDM_VOID)
 	}
 
 	/* add by Neil Chen to avoid PSD is processing */
-	if (pDM_Odm->bDMInitialGainEnable == false) {
+	if (!pDM_Odm->bDMInitialGainEnable) {
 		ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("odm_DIG(): Return: PSD is Processing\n"));
 		return	true;
 	}
@@ -525,7 +525,7 @@ void odm_DIG(void *pDM_VOID)
 
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("odm_DIG() ===========================>\n\n"));
 
-	if (pDM_Odm->adaptivity_flag == true)
+	if (pDM_Odm->adaptivity_flag)
 		Adap_IGI_Upper = pDM_Odm->Adaptivity_IGI_upper;
 
 
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F25320C2AC
	for <lists+driverdev-devel@lfdr.de>; Sat, 27 Jun 2020 17:19:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0FA29204A6;
	Sat, 27 Jun 2020 15:19:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cXFTkr8c2zvX; Sat, 27 Jun 2020 15:19:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id F309D2094E;
	Sat, 27 Jun 2020 15:18:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C10041BF362
 for <devel@linuxdriverproject.org>; Sat, 27 Jun 2020 15:18:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BBB0C88521
 for <devel@linuxdriverproject.org>; Sat, 27 Jun 2020 15:18:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bRMUe4d0OaXH for <devel@linuxdriverproject.org>;
 Sat, 27 Jun 2020 15:18:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BE597882EC
 for <devel@driverdev.osuosl.org>; Sat, 27 Jun 2020 15:18:23 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id q5so12244068wru.6
 for <devel@driverdev.osuosl.org>; Sat, 27 Jun 2020 08:18:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NU9KLKmGGGJvPp19RkXwDYHc15SB6HnPK2Xb5FuPPA4=;
 b=XH43tNwpFGVVg3khLEQCBEjs5TPlPP9gLywPjk21fGzPdo08pV/4IsbQ3xbnt6zguI
 34/BM7kHcr83thA+8JeKs2tZwUcf7RpuRWltaQ/d+MXOtCth+luDRGg2kliElojRGebs
 AGtG30W/wLSG7gIbidZ9MjgqxGIFREqrSvAd9l3EvzrK1mChlQeera9mahWjvkJwe9lA
 htYb7UzQz27bWO/RT2bzisDOFZYPAqyfAT2mhtSkAAcxGEZvK0eQhVnS6DjoaDId6Rtb
 Er6ODEGGwoCPRNMl8/kWoD7pGufUexrNcMX18xvsuaTv6wsdxXDtEyLZv7dIvVtPoyOI
 pSQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NU9KLKmGGGJvPp19RkXwDYHc15SB6HnPK2Xb5FuPPA4=;
 b=WorNOyG9666Vs7KjcCuqztAUW4RZAEyGvZcxpsAUgzkxlKOUVombgz2JUfK8hqpLl7
 jMBOQ1n1hIhQ6I/cha2iNztQ0rrKQTaYqvLL7X7cEcdva8e/w/4VIZBdwQTc3RCDv0J5
 X9kPyIxft5x4ckPKL21KLLkzhdoSACD53oWVTHFhWddyyPth9VUXfvpC70WXE2fpMYAZ
 Bj9DIpJle9BcjJpIHU6Y0+CxXSIctBCtkXarw+/7w8fFmMoPN6jTOSEtqgt9dcKfge5i
 g00rNGHxRhHDZMvz2PD+/Xed8ExjEf2GTZYIG3V0/AFi6/Tq0+pCTauEDFanUd13lLxS
 DZPw==
X-Gm-Message-State: AOAM533E5vU7tPA8kEtDFqfUEoaeWMejeG8NcLCZI3Oqgww4uRmR+3Qw
 dqL2CtkzUVm0LTIvFwGZtsU=
X-Google-Smtp-Source: ABdhPJwHF8Cc75NiCoqdWLrfa/FPxGFh0JpjLi0WPGU7UIEedQzFzmb0A4CuVxua7FvyHzOO96fVKQ==
X-Received: by 2002:adf:9062:: with SMTP id h89mr8288825wrh.285.1593271102040; 
 Sat, 27 Jun 2020 08:18:22 -0700 (PDT)
Received: from localhost.localdomain
 (dslb-178-006-252-175.178.006.pools.vodafone-ip.de. [178.6.252.175])
 by smtp.gmail.com with ESMTPSA id o7sm20454932wmb.9.2020.06.27.08.18.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 27 Jun 2020 08:18:21 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8188eu: remove unnecessary comments in
 hal8188e_phy_cfg.h
Date: Sat, 27 Jun 2020 17:15:44 +0200
Message-Id: <20200627151544.11251-1-straube.linux@gmail.com>
X-Mailer: git-send-email 2.27.0
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

Remove unnecessary comments in hal8188e_phy_cfg.h to improve
readability and clear multiple blank lines checkpatch issues.

CHECK: Please don't use multiple blank lines

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 .../rtl8188eu/include/hal8188e_phy_cfg.h      | 23 -------------------
 1 file changed, 23 deletions(-)

diff --git a/drivers/staging/rtl8188eu/include/hal8188e_phy_cfg.h b/drivers/staging/rtl8188eu/include/hal8188e_phy_cfg.h
index 0c5b2b0948f5..78b44bf55f28 100644
--- a/drivers/staging/rtl8188eu/include/hal8188e_phy_cfg.h
+++ b/drivers/staging/rtl8188eu/include/hal8188e_phy_cfg.h
@@ -7,8 +7,6 @@
 #ifndef __INC_HAL8188EPHYCFG_H__
 #define __INC_HAL8188EPHYCFG_H__
 
-
-/*--------------------------Define Parameters-------------------------------*/
 #define LOOP_LIMIT			5
 #define MAX_STALL_TIME			50		/* us */
 #define AntennaDiversityValue		0x80
@@ -17,11 +15,6 @@
 
 #define MAX_AGGR_NUM			0x07
 
-
-/*--------------------------Define Parameters-------------------------------*/
-
-
-/*------------------------------Define structure----------------------------*/
 enum sw_chnl_cmd_id {
 	CmdID_End,
 	CmdID_SetTxPowerLevel,
@@ -145,21 +138,7 @@ struct bb_reg_def {
 				 */
 };
 
-/*------------------------------Define structure----------------------------*/
-
-
-/*------------------------Export global variable----------------------------*/
-/*------------------------Export global variable----------------------------*/
-
-
-/*------------------------Export Marco Definition---------------------------*/
-/*------------------------Export Marco Definition---------------------------*/
-
-
-/*--------------------------Exported Function prototype---------------------*/
-/*  */
 /*  BB and RF register read/write */
-/*  */
 
 /* Read initi reg value for tx power setting. */
 void rtl8192c_PHY_GetHWRegOriginalValue(struct adapter *adapter);
@@ -181,8 +160,6 @@ void PHY_EnableHostClkReq(struct adapter *adapter);
 
 bool SetAntennaConfig92C(struct adapter *adapter, u8 defaultant);
 
-/*--------------------------Exported Function prototype---------------------*/
-
 #define PHY_SetMacReg	PHY_SetBBReg
 
 #define	SIC_HW_SUPPORT			0
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

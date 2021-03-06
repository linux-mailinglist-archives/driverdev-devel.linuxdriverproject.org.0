Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 547DB32F8EC
	for <lists+driverdev-devel@lfdr.de>; Sat,  6 Mar 2021 09:12:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B819D8458D;
	Sat,  6 Mar 2021 08:12:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7wmRZzo5OzjA; Sat,  6 Mar 2021 08:12:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C75DC84547;
	Sat,  6 Mar 2021 08:12:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3325A1BF2E4
 for <devel@linuxdriverproject.org>; Sat,  6 Mar 2021 08:11:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2084784547
 for <devel@linuxdriverproject.org>; Sat,  6 Mar 2021 08:11:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v0Dswe6Ysgvb for <devel@linuxdriverproject.org>;
 Sat,  6 Mar 2021 08:11:53 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com
 [IPv6:2a00:1450:4864:20::52f])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5230684546
 for <devel@driverdev.osuosl.org>; Sat,  6 Mar 2021 08:11:53 +0000 (UTC)
Received: by mail-ed1-x52f.google.com with SMTP id m9so6123589edd.5
 for <devel@driverdev.osuosl.org>; Sat, 06 Mar 2021 00:11:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Hicfc88XYtGQibPZ28ppgt5o+1tgAaCVylXJWyAasds=;
 b=oKYokwY++YPoDhoaha4j4EJXXRyJirxqeF0ayVaapc5KHKHCi+ch3sVzO2RIn8vLrX
 QzJs02Vl/CFBznt1BRpD2fhpAQWbNgQCEWCbMJSCaonmDx9K5CQMBruCFpVf++LwX/gf
 nxwCOoi5+TA99mqZP03+DdWwDDdFu5m1zlf/TnUA2cJeKyYWROydPOVZw5Q5gEAScOG9
 7o/ObWdRZ2GPkEqAGUzT3/mGk9TD5foR/jPXAwhlFzzm+Ca5PDcwzk6d0JScBJG2A/fx
 onnW93PZLPTD6ND32X8pDLQ/zPiKDZvzGa2mn4I/b0lX6f0iUOBrRGwTftrn15GoGqp1
 RPmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Hicfc88XYtGQibPZ28ppgt5o+1tgAaCVylXJWyAasds=;
 b=bNoasm/Wf3MxIU9v3oo0e3jAedbIswhIyeR6AztpSXmnhpIRGp/N8gr50yWNGy7gnF
 wSlUGGLxl1NM+g6jwjy68+2IeMkZXZtmNFfQ2ZG5cDklqGJb0tosEWExniHGMG+17HkD
 UxzMfR1zSuCfqTkV9XMY9E2wAmQ2BclDVYursfZqTXPAiDqsk4Z7UX4L5bIDg4JnRD4C
 VnMZs/GkFHc45QKzsgSa0zfCjWWfOfOytEJmcJOKJlxeYUJGaivBPX2thqKb+nJYs6Mn
 775+sBoIGG/hUj5cE9lhlPlbpPjo3so/IBgKoBu49CZSXT7FgjVJwzIR9d0K8KJoJEIb
 8sog==
X-Gm-Message-State: AOAM532iALGv7MlkRjzz544t6Co7Sgm0AYPpTISyZA9Aovp6tgRxC9D8
 pZcEggVwm3+tvou2HX0rNUY=
X-Google-Smtp-Source: ABdhPJy+esI0OxBpQ+7WnmIxIKoMmtOQN5jOvv+3LtcZSrttMtG+CuWoH2llncOhwz0b5NF2/eUCUA==
X-Received: by 2002:a05:6402:220a:: with SMTP id
 cq10mr12942093edb.345.1615018311413; 
 Sat, 06 Mar 2021 00:11:51 -0800 (PST)
Received: from tumbleweed.fritz.box
 (dslb-002-204-141-079.002.204.pools.vodafone-ip.de. [2.204.141.79])
 by smtp.gmail.com with ESMTPSA id q11sm2814737ejr.36.2021.03.06.00.11.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 06 Mar 2021 00:11:51 -0800 (PST)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 2/2] staging: rtl8188eu: rename parameters of
 odm_phy_status_query()
Date: Sat,  6 Mar 2021 09:11:33 +0100
Message-Id: <20210306081133.1272-2-straube.linux@gmail.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210306081133.1272-1-straube.linux@gmail.com>
References: <20210306081133.1272-1-straube.linux@gmail.com>
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

Rename parameters of odm_phy_status_query() to avoid camel case.

pDM_Odm -> dm_odm
pPhyInfo -> phy_info
pPhyStatus -> phy_status
pPktinfo -> pkt_info

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/hal/odm_hwconfig.c     | 9 ++++-----
 drivers/staging/rtl8188eu/include/odm_hwconfig.h | 8 ++++----
 2 files changed, 8 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/odm_hwconfig.c b/drivers/staging/rtl8188eu/hal/odm_hwconfig.c
index c5af0c559cba..684b6cec0f09 100644
--- a/drivers/staging/rtl8188eu/hal/odm_hwconfig.c
+++ b/drivers/staging/rtl8188eu/hal/odm_hwconfig.c
@@ -386,13 +386,12 @@ static void odm_Process_RSSIForDM(struct odm_dm_struct *dm_odm,
 
 /*  Endianness before calling this API */
 void odm_phy_status_query(struct odm_dm_struct *dm_odm,
-			  struct odm_phy_status_info *pPhyInfo,
-			  u8 *pPhyStatus, struct odm_per_pkt_info *pPktinfo)
+			  struct odm_phy_status_info *phy_info,
+			  u8 *phy_status, struct odm_per_pkt_info *pkt_info)
 {
-	odm_RxPhyStatus92CSeries_Parsing(dm_odm, pPhyInfo, pPhyStatus,
-					 pPktinfo);
+	odm_RxPhyStatus92CSeries_Parsing(dm_odm, phy_info, phy_status, pkt_info);
 	if (dm_odm->RSSI_test)
 		;/*  Select the packets to do RSSI checking for antenna switching. */
 	else
-		odm_Process_RSSIForDM(dm_odm, pPhyInfo, pPktinfo);
+		odm_Process_RSSIForDM(dm_odm, phy_info, pkt_info);
 }
diff --git a/drivers/staging/rtl8188eu/include/odm_hwconfig.h b/drivers/staging/rtl8188eu/include/odm_hwconfig.h
index dc86e4058eff..4f4d3cfb6c77 100644
--- a/drivers/staging/rtl8188eu/include/odm_hwconfig.h
+++ b/drivers/staging/rtl8188eu/include/odm_hwconfig.h
@@ -93,9 +93,9 @@ struct phy_status_rpt {
 #endif
 };
 
-void odm_phy_status_query(struct odm_dm_struct *pDM_Odm,
-			  struct odm_phy_status_info *pPhyInfo,
-			  u8 *pPhyStatus,
-			  struct odm_per_pkt_info *pPktinfo);
+void odm_phy_status_query(struct odm_dm_struct *dm_odm,
+			  struct odm_phy_status_info *phy_info,
+			  u8 *phy_status,
+			  struct odm_per_pkt_info *pkt_info);
 
 #endif
-- 
2.30.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

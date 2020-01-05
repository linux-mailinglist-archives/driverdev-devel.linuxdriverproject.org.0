Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DC9461309B2
	for <lists+driverdev-devel@lfdr.de>; Sun,  5 Jan 2020 20:50:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 275A285D2B;
	Sun,  5 Jan 2020 19:50:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xbGsr63ya2Kt; Sun,  5 Jan 2020 19:50:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 98966857FB;
	Sun,  5 Jan 2020 19:50:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4AE7F1BF405
 for <devel@linuxdriverproject.org>; Sun,  5 Jan 2020 19:50:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4781A8527F
 for <devel@linuxdriverproject.org>; Sun,  5 Jan 2020 19:50:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yFi9Ew0h9Fx5 for <devel@linuxdriverproject.org>;
 Sun,  5 Jan 2020 19:50:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5E5F584D3B
 for <devel@driverdev.osuosl.org>; Sun,  5 Jan 2020 19:50:08 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id q6so47332309wro.9
 for <devel@driverdev.osuosl.org>; Sun, 05 Jan 2020 11:50:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Iij3qjxWkQG+3uOoAuJWUOMDKz1pzUhkPrQmnHM7jWE=;
 b=TB1EOi43+oLzttIYXmzTrmW2QNAvo/lt+JbCbNg1yYzODu/WAGIN8+0Lk/SGfEyzD5
 ZzW59GMyZYoJSknuGE6thHCY1Qp1BBpQsbjAh2WcNNtBcaftxvb9E6kxOvagz/c8lJHK
 W4JmnYF2B2EsAFI6JjrjF+VIhXLXfil1IYyuXgs63lYLNOBNu2DNs/Yu0eQwLJiEBVO4
 gRX7BWesWgPpsduvZc9i6TZykShpgIm1iB6R8p7BT4RogrjOpsZq6s6JZQn73Fvzz0nl
 fnsxp2/ABLW4UTl9DJsEqahmw24MeIbdiUQlM1G8IPfiNudpbPfTdvFHydCm5ek4AmTi
 gW2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Iij3qjxWkQG+3uOoAuJWUOMDKz1pzUhkPrQmnHM7jWE=;
 b=P58g4Y6NmTaHM1LkLUBAtVENQqdVgRw9STnUYZz64c0DeruKgAjBq/ytH1lCa9FXIX
 mt3WzPcEeD991Z0gf+exOsbBpi5xpugcEVRJDQW8xhoT7gMyW39KAFq8lSsxPMOYWrDd
 AQWsuqrWq/Uc7kSRYxk4y4x2I9/jsjXbxxXbfOZ9Dtb1QQPhP1W3QGG0cSLoRZ9yD3Ig
 pfTJ7Qf6NCXUwJeC5qiDCvdEHxzYCVifUj2XXKVv6a70touOh5rzw8sPSoOvBfBuUdEB
 rOX4yVqifCr3Llbn1urk5ilxlJv7oLPqD2EXnwDpweBnonqnG7nDDRYNsA7kqbdKPKJ6
 qukw==
X-Gm-Message-State: APjAAAUQrMhIssCq170URtiMLWBHWQaCT8WZoF4T9p/ry7VlcwCWtBO1
 TYtbsNROdNtX+9FgazVUIDs=
X-Google-Smtp-Source: APXvYqx/LBmFIx3aKR6e+BIKFe0NmngTQ+O2YW74Hev1r14oqUV5TL5+5GmXsLpNPUdbf+XlHZZqjg==
X-Received: by 2002:adf:ef03:: with SMTP id e3mr102874539wro.216.1578253806638; 
 Sun, 05 Jan 2020 11:50:06 -0800 (PST)
Received: from localhost.localdomain
 (dslb-002-204-140-065.002.204.pools.vodafone-ip.de. [2.204.140.65])
 by smtp.gmail.com with ESMTPSA id s3sm20549653wmh.25.2020.01.05.11.50.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 05 Jan 2020 11:50:06 -0800 (PST)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 1/2] staging: rtl8188eu: remove else after return
Date: Sun,  5 Jan 2020 20:49:35 +0100
Message-Id: <20200105194936.5477-1-straube.linux@gmail.com>
X-Mailer: git-send-email 2.24.1
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

Remove else after return in rtl88eu_dm_antenna_diversity() to improve
readability and clear a checkpatch warning.

WARNING: else is not generally useful after a break or return

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/hal/odm_rtl8188e.c | 26 +++++++++++---------
 1 file changed, 14 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/odm_rtl8188e.c b/drivers/staging/rtl8188eu/hal/odm_rtl8188e.c
index 251bd8aba3b1..7bfba7692ab8 100644
--- a/drivers/staging/rtl8188eu/hal/odm_rtl8188e.c
+++ b/drivers/staging/rtl8188eu/hal/odm_rtl8188e.c
@@ -303,6 +303,7 @@ void rtl88eu_dm_antenna_diversity(struct odm_dm_struct *dm_odm)
 
 	if (!(dm_odm->SupportAbility & ODM_BB_ANT_DIV))
 		return;
+
 	if (!dm_odm->bLinked) {
 		ODM_RT_TRACE(dm_odm, ODM_COMP_ANT_DIV, ODM_DBG_LOUD,
 			     ("ODM_AntennaDiversity_88E(): No Link.\n"));
@@ -318,19 +319,20 @@ void rtl88eu_dm_antenna_diversity(struct odm_dm_struct *dm_odm)
 			dm_fat_tbl->bBecomeLinked = dm_odm->bLinked;
 		}
 		return;
-	} else {
-		if (!dm_fat_tbl->bBecomeLinked) {
-			ODM_RT_TRACE(dm_odm, ODM_COMP_ANT_DIV, ODM_DBG_LOUD,
-				     ("Need to Turn on HW AntDiv\n"));
-			phy_set_bb_reg(adapter, ODM_REG_IGI_A_11N, BIT(7), 1);
-			phy_set_bb_reg(adapter, ODM_REG_CCK_ANTDIV_PARA1_11N,
-				       BIT(15), 1);
-			if (dm_odm->AntDivType == CG_TRX_HW_ANTDIV)
-				phy_set_bb_reg(adapter, ODM_REG_TX_ANT_CTRL_11N,
-					       BIT(21), 1);
-			dm_fat_tbl->bBecomeLinked = dm_odm->bLinked;
-		}
 	}
+
+	if (!dm_fat_tbl->bBecomeLinked) {
+		ODM_RT_TRACE(dm_odm, ODM_COMP_ANT_DIV, ODM_DBG_LOUD,
+			     ("Need to Turn on HW AntDiv\n"));
+		phy_set_bb_reg(adapter, ODM_REG_IGI_A_11N, BIT(7), 1);
+		phy_set_bb_reg(adapter, ODM_REG_CCK_ANTDIV_PARA1_11N,
+			       BIT(15), 1);
+		if (dm_odm->AntDivType == CG_TRX_HW_ANTDIV)
+			phy_set_bb_reg(adapter, ODM_REG_TX_ANT_CTRL_11N,
+				       BIT(21), 1);
+		dm_fat_tbl->bBecomeLinked = dm_odm->bLinked;
+	}
+
 	if ((dm_odm->AntDivType == CG_TRX_HW_ANTDIV) ||
 	    (dm_odm->AntDivType == CGCS_RX_HW_ANTDIV))
 		rtl88eu_dm_hw_ant_div(dm_odm);
-- 
2.24.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

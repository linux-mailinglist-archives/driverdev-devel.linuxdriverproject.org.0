Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B23151309B4
	for <lists+driverdev-devel@lfdr.de>; Sun,  5 Jan 2020 20:50:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6F97E203BF;
	Sun,  5 Jan 2020 19:50:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NP4CGJskffXz; Sun,  5 Jan 2020 19:50:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BE2BE203AF;
	Sun,  5 Jan 2020 19:50:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 780321BF405
 for <devel@linuxdriverproject.org>; Sun,  5 Jan 2020 19:50:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 732E2203AC
 for <devel@linuxdriverproject.org>; Sun,  5 Jan 2020 19:50:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id megdhcWNlh4G for <devel@linuxdriverproject.org>;
 Sun,  5 Jan 2020 19:50:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 6C3E82034B
 for <devel@driverdev.osuosl.org>; Sun,  5 Jan 2020 19:50:09 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id w15so34828233wru.4
 for <devel@driverdev.osuosl.org>; Sun, 05 Jan 2020 11:50:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NHs7aC8wKxxQ1KYTS0Lt8AmWzqctfuFR0vRBtJMaHp0=;
 b=u9UGmjI98W4SbE+8AR6XF5UlmeEnahbrKOcABdVsge/5rqrJZ9L9GmsCn9bjockgSe
 e5hHKK61RlZj8/vKNJrSQd3CgojDSFcvDXTAuVZdewzM15+Pl593YSmWF+Gza9VO9+66
 S/K1abLY2ux0jcMaEN/WLshwqUbLXhg3qT2ITBc2zuL84hRJysMNuiz2pO17uNsxwwN7
 XJ3s5AJu9xaG4MhC9QX87Q6Ie3PTfoD7ZC+9HOj7Bo9lk064KCGEf4G1JxiMI4Cf17Fp
 lMCjbJ8yGzzpo0XC2qNrvd5DnjNdSp6/U8uWQcwOYWItefrEgM2AB68sYBTGcByx5bFi
 LXOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NHs7aC8wKxxQ1KYTS0Lt8AmWzqctfuFR0vRBtJMaHp0=;
 b=L95cyM/o7AlVKW66SnMiWtEVqwfM0PrLYkZRvBI4Sem+ZQVoltnSn1TGpy6w/F/Qp8
 b5sKX8fYDeIPAA4RybcXTMcxwN23Pg4Sy6B7cr8r3Pqq2+ozUg9EADC2Po/T1w9dTL5U
 7nAeKz8oQYQz10ijaBRe3Zcjw4rSJ0hGJa6uDM/L2JwjvtAPUwhqItxazW8Gf1P5Xr5L
 6xRpM6CK0+ddbE8bczvGqkD8cTtfH2If8Dz6maWJOwL3GzLb4il5uImLN2zMO1+b7MBM
 x+Skhy+H6hMgTQEROnTnA+WU/jG+r1w5mLxTC533O+kDMPFXGfOPUA+aY7bmBrmpHOdB
 okWw==
X-Gm-Message-State: APjAAAVBWSQDt2OtXbDFf7rY6Pqkil/+rXEuP1lLPKhcpcv4klTOM3ku
 97BHwXYc6HiRBcxxetdY0mU=
X-Google-Smtp-Source: APXvYqyCLkyjUR73TqjhKU80IrH5ADa98gj+c1NFLXI7ZYwKTse0DbqwxBCDe3Oq/BBi5d425rP5Bw==
X-Received: by 2002:adf:f288:: with SMTP id k8mr105177993wro.301.1578253807894; 
 Sun, 05 Jan 2020 11:50:07 -0800 (PST)
Received: from localhost.localdomain
 (dslb-002-204-140-065.002.204.pools.vodafone-ip.de. [2.204.140.65])
 by smtp.gmail.com with ESMTPSA id s3sm20549653wmh.25.2020.01.05.11.50.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 05 Jan 2020 11:50:07 -0800 (PST)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 2/2] staging: rtl8188eu: refactor
 rtl88eu_dm_update_rx_idle_ant()
Date: Sun,  5 Jan 2020 20:49:36 +0100
Message-Id: <20200105194936.5477-2-straube.linux@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200105194936.5477-1-straube.linux@gmail.com>
References: <20200105194936.5477-1-straube.linux@gmail.com>
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

Refactor rtl88eu_dm_update_rx_idle_ant() to reduce indentation level
and clear line over 80 characters checkpatch warnings.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/hal/odm_rtl8188e.c | 56 ++++++++++----------
 1 file changed, 29 insertions(+), 27 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/odm_rtl8188e.c b/drivers/staging/rtl8188eu/hal/odm_rtl8188e.c
index 7bfba7692ab8..a55a0d8b9fb7 100644
--- a/drivers/staging/rtl8188eu/hal/odm_rtl8188e.c
+++ b/drivers/staging/rtl8188eu/hal/odm_rtl8188e.c
@@ -154,35 +154,37 @@ void rtl88eu_dm_update_rx_idle_ant(struct odm_dm_struct *dm_odm, u8 ant)
 	struct adapter *adapter = dm_odm->Adapter;
 	u32 default_ant, optional_ant;
 
-	if (dm_fat_tbl->RxIdleAnt != ant) {
-		if (ant == MAIN_ANT) {
-			default_ant = (dm_odm->AntDivType == CG_TRX_HW_ANTDIV) ?
-				       MAIN_ANT_CG_TRX : MAIN_ANT_CGCS_RX;
-			optional_ant = (dm_odm->AntDivType == CG_TRX_HW_ANTDIV) ?
-					AUX_ANT_CG_TRX : AUX_ANT_CGCS_RX;
-		} else {
-			default_ant = (dm_odm->AntDivType == CG_TRX_HW_ANTDIV) ?
-				       AUX_ANT_CG_TRX : AUX_ANT_CGCS_RX;
-			optional_ant = (dm_odm->AntDivType == CG_TRX_HW_ANTDIV) ?
-					MAIN_ANT_CG_TRX : MAIN_ANT_CGCS_RX;
-		}
+	if (dm_fat_tbl->RxIdleAnt == ant)
+		return;
 
-		if (dm_odm->AntDivType == CG_TRX_HW_ANTDIV) {
-			phy_set_bb_reg(adapter, ODM_REG_RX_ANT_CTRL_11N,
-				       BIT(5) | BIT(4) | BIT(3), default_ant);
-			phy_set_bb_reg(adapter, ODM_REG_RX_ANT_CTRL_11N,
-				       BIT(8) | BIT(7) | BIT(6), optional_ant);
-			phy_set_bb_reg(adapter, ODM_REG_ANTSEL_CTRL_11N,
-				       BIT(14) | BIT(13) | BIT(12), default_ant);
-			phy_set_bb_reg(adapter, ODM_REG_RESP_TX_11N,
-				       BIT(6) | BIT(7), default_ant);
-		} else if (dm_odm->AntDivType == CGCS_RX_HW_ANTDIV) {
-			phy_set_bb_reg(adapter, ODM_REG_RX_ANT_CTRL_11N,
-				       BIT(5) | BIT(4) | BIT(3), default_ant);
-			phy_set_bb_reg(adapter, ODM_REG_RX_ANT_CTRL_11N,
-				       BIT(8) | BIT(7) | BIT(6), optional_ant);
-		}
+	if (ant == MAIN_ANT) {
+		default_ant = (dm_odm->AntDivType == CG_TRX_HW_ANTDIV) ?
+			       MAIN_ANT_CG_TRX : MAIN_ANT_CGCS_RX;
+		optional_ant = (dm_odm->AntDivType == CG_TRX_HW_ANTDIV) ?
+				AUX_ANT_CG_TRX : AUX_ANT_CGCS_RX;
+	} else {
+		default_ant = (dm_odm->AntDivType == CG_TRX_HW_ANTDIV) ?
+			       AUX_ANT_CG_TRX : AUX_ANT_CGCS_RX;
+		optional_ant = (dm_odm->AntDivType == CG_TRX_HW_ANTDIV) ?
+				MAIN_ANT_CG_TRX : MAIN_ANT_CGCS_RX;
 	}
+
+	if (dm_odm->AntDivType == CG_TRX_HW_ANTDIV) {
+		phy_set_bb_reg(adapter, ODM_REG_RX_ANT_CTRL_11N,
+			       BIT(5) | BIT(4) | BIT(3), default_ant);
+		phy_set_bb_reg(adapter, ODM_REG_RX_ANT_CTRL_11N,
+			       BIT(8) | BIT(7) | BIT(6), optional_ant);
+		phy_set_bb_reg(adapter, ODM_REG_ANTSEL_CTRL_11N,
+			       BIT(14) | BIT(13) | BIT(12), default_ant);
+		phy_set_bb_reg(adapter, ODM_REG_RESP_TX_11N,
+			       BIT(6) | BIT(7), default_ant);
+	} else if (dm_odm->AntDivType == CGCS_RX_HW_ANTDIV) {
+		phy_set_bb_reg(adapter, ODM_REG_RX_ANT_CTRL_11N,
+			       BIT(5) | BIT(4) | BIT(3), default_ant);
+		phy_set_bb_reg(adapter, ODM_REG_RX_ANT_CTRL_11N,
+			       BIT(8) | BIT(7) | BIT(6), optional_ant);
+	}
+
 	dm_fat_tbl->RxIdleAnt = ant;
 }
 
-- 
2.24.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

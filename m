Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9055456B84
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Nov 2021 09:17:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 61AB540649;
	Fri, 19 Nov 2021 08:17:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wXBMBam_OrFU; Fri, 19 Nov 2021 08:17:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 056E3401CA;
	Fri, 19 Nov 2021 08:17:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C5CE81BF2B3
 for <devel@linuxdriverproject.org>; Fri, 19 Nov 2021 08:17:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B431161BDC
 for <devel@linuxdriverproject.org>; Fri, 19 Nov 2021 08:17:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bECoWw7P4SJ1 for <devel@linuxdriverproject.org>;
 Fri, 19 Nov 2021 08:17:01 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com
 [IPv6:2a00:1450:4864:20::532])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DD5746077F
 for <devel@driverdev.osuosl.org>; Fri, 19 Nov 2021 08:17:00 +0000 (UTC)
Received: by mail-ed1-x532.google.com with SMTP id x6so27601842edr.5
 for <devel@driverdev.osuosl.org>; Fri, 19 Nov 2021 00:17:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=UVE/SmMvdt/KzBGtQwwI3PvJQT0vr6EuaOqUqEpmdfc=;
 b=XyCQIjyvkYJLvCahvPPMLedBG+/hH/24KhG8Grgh4zgAJWRYGOFaMs93ZafhGAIHE9
 ZzpB4hN8vc9URyGIdz2xvkOttHOvO30/FmoLFIzpa3YRIjO6F+vg4G7CkIU4dywuBNl9
 x3qyALQDJjWPFTUw2FSSslMo+dagQBwmoYJbOy3NTfnZgw9xsS44av8ZiVhs4cPjiuzN
 5LOt3pfpSiG8fm6pp2jJG4dpV9eRoLIgpFo+NuIACi18Xp8PPFYFHHJcQD1bhu8UQtyR
 mg+8Z1NPBhK4sWDBhvSmCnVZKdwRZo1c5VKZ+cpUI1V2bcIQib0J3BiQTeBR3T/0SUGa
 3b+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=UVE/SmMvdt/KzBGtQwwI3PvJQT0vr6EuaOqUqEpmdfc=;
 b=2gb3B9jV7otjP5SRFBdXM4jLM3x4t9Udiv1bExy/KQHMJ+RHjFrjp0x2/oPZ81/BA4
 QSO9fGc5X7uqCpsp+irubOTCarbYJxD+mvp0cHhhvfMA4aBsOUEnVsrIDY/4wTsKPvFR
 gWhbCgNgeVCYH4ax6BO8AHivHEaUZ1TvZ7TFIM0G+baxHOg3pSoM+z/K8cA5YKeV0NW6
 US7IusdH16rc9e8A6saFYmwU+10ZpcIXTmegCvEjcrRHrI0biv7sb6rs15WeTXwM3HUe
 0gnEjAogZBp2BEqCBS9bmUPT8fR+wkWBNR6iI8KKS0W+U4/cWZbwhu5dehIHgJEgMhOb
 2Gig==
X-Gm-Message-State: AOAM5301KW2xOeZVmVdf816vyzJNTHGxKZH4eZFhxGh1t/4iHvNCZrpP
 ozG3MngfepxGz+ok/RXd2uU=
X-Google-Smtp-Source: ABdhPJyfcAj2A+D5ftREj/B1OfArS9a3iZ2Fjrpsq1j+2LAGY4H/26F9u5zJklAwA3H4chGqSkSTDw==
X-Received: by 2002:aa7:d546:: with SMTP id u6mr22379452edr.311.1637309818833; 
 Fri, 19 Nov 2021 00:16:58 -0800 (PST)
Received: from alb3rt0-VirtualBox ([151.22.100.250])
 by smtp.gmail.com with ESMTPSA id r3sm861190ejr.79.2021.11.19.00.16.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Nov 2021 00:16:58 -0800 (PST)
Date: Fri, 19 Nov 2021 09:16:56 +0100
From: Alberto Merciai <alb3rt0.m3rciai@gmail.com>
To: alb3rt0.m3rciai@gmail.com
Subject: [PATCH] staging: vt6655: refactor camelcase byMaxPwrLevel to
 max_pwr_level
Message-ID: <20211119081656.GA12982@alb3rt0-VirtualBox>
MIME-Version: 1.0
Content-Disposition: inline
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 alb3rt0.m3rciai@gmail.com, forest@alittletooquiet.net,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Replace hungarian notated variable "byMaxPwrLevel" with "max_pwr_level"
compliant with linux kernel coding style.

Signed-off-by: Alberto Merciai <alb3rt0.m3rciai@gmail.com>
---
 drivers/staging/vt6655/device.h |  2 +-
 drivers/staging/vt6655/rf.c     | 10 +++++-----
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/vt6655/device.h b/drivers/staging/vt6655/device.h
index f5dee7ad99cd..d2be83b611ae 100644
--- a/drivers/staging/vt6655/device.h
+++ b/drivers/staging/vt6655/device.h
@@ -159,7 +159,7 @@ struct vnt_private {
 	unsigned char byLocalID;
 	unsigned char byRFType;
 
-	unsigned char byMaxPwrLevel;
+	unsigned char max_pwr_level;
 	unsigned char byZoneType;
 	bool bZoneRegExist;
 	unsigned char byOriginalZonetype;
diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
index 747d79265a7c..e8a9444c6833 100644
--- a/drivers/staging/vt6655/rf.c
+++ b/drivers/staging/vt6655/rf.c
@@ -611,11 +611,11 @@ bool RFbInit(struct vnt_private *priv)
 	switch (priv->byRFType) {
 	case RF_AIROHA:
 	case RF_AL2230S:
-		priv->byMaxPwrLevel = AL2230_PWR_IDX_LEN;
+		priv->max_pwr_level = AL2230_PWR_IDX_LEN;
 		ret = RFbAL2230Init(priv);
 		break;
 	case RF_AIROHA7230:
-		priv->byMaxPwrLevel = AL7230_PWR_IDX_LEN;
+		priv->max_pwr_level = AL7230_PWR_IDX_LEN;
 		ret = s_bAL7230Init(priv);
 		break;
 	case RF_NOTHING:
@@ -788,8 +788,8 @@ bool RFbSetPower(struct vnt_private *priv, unsigned int rate, u16 uCH)
 		else
 			byDec = byPwr + 10;
 
-		if (byDec >= priv->byMaxPwrLevel)
-			byDec = priv->byMaxPwrLevel - 1;
+		if (byDec >= priv->max_pwr_level)
+			byDec = priv->max_pwr_level - 1;
 
 		byPwr = byDec;
 		break;
@@ -831,7 +831,7 @@ bool RFbRawSetPower(struct vnt_private *priv, unsigned char byPwr,
 	bool ret = true;
 	unsigned long dwMax7230Pwr = 0;
 
-	if (byPwr >=  priv->byMaxPwrLevel)
+	if (byPwr >= priv->max_pwr_level)
 		return false;
 
 	switch (priv->byRFType) {
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C2743196C59
	for <lists+driverdev-devel@lfdr.de>; Sun, 29 Mar 2020 12:07:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2EDAC862AC;
	Sun, 29 Mar 2020 10:07:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y_-nHScUyqeU; Sun, 29 Mar 2020 10:07:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 825D180868;
	Sun, 29 Mar 2020 10:07:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 692E21BF326
 for <devel@linuxdriverproject.org>; Sun, 29 Mar 2020 10:06:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6627086DB2
 for <devel@linuxdriverproject.org>; Sun, 29 Mar 2020 10:06:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3ygK8dwYjzq4 for <devel@linuxdriverproject.org>;
 Sun, 29 Mar 2020 10:06:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7B84A86D39
 for <devel@driverdev.osuosl.org>; Sun, 29 Mar 2020 10:06:24 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id g62so17844161wme.1
 for <devel@driverdev.osuosl.org>; Sun, 29 Mar 2020 03:06:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=oDlXgGi+Z3+Qe0YXBUomDwVMmX3I0aaEPSRRpRISjUw=;
 b=FJJO4KUejCReB6AwWaE87oh2ahe07+JIy9/igzeJULLN+J9lHc7q/kBD0Tns2R99mM
 UZRsMMx/Ag4SmuDYjLhIKbO14CXAdYvllxG2wtudlCKC4nWW8mjYrPvlOUZeN7a3ANOw
 vVQavMl1L6EDDd/tiUicd5WFy4QkFz4GRitGOXnQx5+Nl3MKN6hC8RXdTezuW00OxtZY
 HvEqcKkWyKHHbe6tJoJmAjte9jGqyiUyawuz/eiYDWQXCZgLU6cdvQoDNR+IX6897cPu
 xg5bHdN5VWn/T3WdqauB0ONkejLvDd8L/S/I32ATN4r+NkQmcevoB3hMyx2MoxKtAXYl
 8xBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=oDlXgGi+Z3+Qe0YXBUomDwVMmX3I0aaEPSRRpRISjUw=;
 b=SZdVOZDKE5Njqr9KqZja6+sVkGvGTnfOfeFmM0aqGFVyAgG00lDkigEfucFO2N1NrX
 gLOffL1QWZdGXBhBgBCq9w6Hx2MyTJyMG0b3lwClCAecuLvkeOt2lcdIusApH5CORnKo
 w+vSUKYqMSzLjFddlhpmOAhYhJzgovRLguQ/gvOjJYJLdrQiDiI333sLud3gJhHC1TGb
 Q+gaegh/xb2b1xtq4SsMmSGG3Jnn1hrHFt7P3c3BrvlTMoAYZIUmviWnlH6qDASf7xm7
 ZKT93/PIJVw78g/xjEkPiteGOZ6aduRXyZBKZSPBL4XlAsFYIhxSXQ46VbcBYcJSrbN4
 j11g==
X-Gm-Message-State: ANhLgQ3f42H9VdwAk9qOvh1kj+0nC8il4QdpwcbR/534i8GZmJafR38m
 SZVd/NLE+rvhrZHZExxZDUU=
X-Google-Smtp-Source: ADFU+vst8vc18G3cSMmIxN49Q+LrGT+rT0taHECMwGJg7eBcezImS7osmI2krGCMP84PX3y1ZYXDag==
X-Received: by 2002:a1c:197:: with SMTP id 145mr7597511wmb.42.1585476382803;
 Sun, 29 Mar 2020 03:06:22 -0700 (PDT)
Received: from localhost.localdomain
 (dslb-178-006-252-227.178.006.pools.vodafone-ip.de. [178.6.252.227])
 by smtp.gmail.com with ESMTPSA id o14sm15725578wmh.22.2020.03.29.03.06.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 29 Mar 2020 03:06:22 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8188eu: refactor Efuse_GetCurrentSize()
Date: Sun, 29 Mar 2020 12:04:50 +0200
Message-Id: <20200329100450.10126-1-straube.linux@gmail.com>
X-Mailer: git-send-email 2.26.0
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

Refactor while loop in Efuse_GetCurrentSize() to reduce indentation
level and clear line over 80 characters checkpatch warnings.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_efuse.c | 33 +++++++++++-----------
 1 file changed, 16 insertions(+), 17 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_efuse.c b/drivers/staging/rtl8188eu/core/rtw_efuse.c
index c525682d0edf..9bb3ec0cd62f 100644
--- a/drivers/staging/rtl8188eu/core/rtw_efuse.c
+++ b/drivers/staging/rtl8188eu/core/rtw_efuse.c
@@ -370,28 +370,27 @@ static u16 Efuse_GetCurrentSize(struct adapter *pAdapter)
 
 	while (efuse_OneByteRead(pAdapter, efuse_addr, &efuse_data) &&
 	       AVAILABLE_EFUSE_ADDR(efuse_addr)) {
-		if (efuse_data != 0xFF) {
-			if ((efuse_data & 0x1F) == 0x0F) {		/* extended header */
-				hoffset = efuse_data;
+		if (efuse_data == 0xFF)
+			break;
+		if ((efuse_data & 0x1F) == 0x0F) { /* extended header */
+			hoffset = efuse_data;
+			efuse_addr++;
+			efuse_OneByteRead(pAdapter, efuse_addr, &efuse_data);
+			if ((efuse_data & 0x0F) == 0x0F) {
 				efuse_addr++;
-				efuse_OneByteRead(pAdapter, efuse_addr, &efuse_data);
-				if ((efuse_data & 0x0F) == 0x0F) {
-					efuse_addr++;
-					continue;
-				} else {
-					hoffset = ((hoffset & 0xE0) >> 5) | ((efuse_data & 0xF0) >> 1);
-					hworden = efuse_data & 0x0F;
-				}
+				continue;
 			} else {
-				hoffset = (efuse_data >> 4) & 0x0F;
-				hworden =  efuse_data & 0x0F;
+				hoffset = ((hoffset & 0xE0) >> 5) |
+					  ((efuse_data & 0xF0) >> 1);
+				hworden = efuse_data & 0x0F;
 			}
-			word_cnts = Efuse_CalculateWordCnts(hworden);
-			/* read next header */
-			efuse_addr = efuse_addr + (word_cnts * 2) + 1;
 		} else {
-			break;
+			hoffset = (efuse_data >> 4) & 0x0F;
+			hworden =  efuse_data & 0x0F;
 		}
+		word_cnts = Efuse_CalculateWordCnts(hworden);
+		/* read next header */
+		efuse_addr = efuse_addr + (word_cnts * 2) + 1;
 	}
 
 	rtw_hal_set_hwreg(pAdapter, HW_VAR_EFUSE_BYTES, (u8 *)&efuse_addr);
-- 
2.26.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DE0E770E4
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Jul 2019 20:05:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 53610251E1;
	Fri, 26 Jul 2019 18:05:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wCeC9WOxIlTn; Fri, 26 Jul 2019 18:05:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5F37F24E83;
	Fri, 26 Jul 2019 18:05:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8B60F1BF3BD
 for <devel@linuxdriverproject.org>; Fri, 26 Jul 2019 18:05:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 851E689991
 for <devel@linuxdriverproject.org>; Fri, 26 Jul 2019 18:05:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wY425QL43CvQ for <devel@linuxdriverproject.org>;
 Fri, 26 Jul 2019 18:05:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A5AB389976
 for <devel@driverdev.osuosl.org>; Fri, 26 Jul 2019 18:05:04 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id s3so48702178wms.2
 for <devel@driverdev.osuosl.org>; Fri, 26 Jul 2019 11:05:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=W/Bdj0w4zilE2dn88/OLN2tRAFIDUIOcrXrBB+fYiPw=;
 b=eIRG9la9xvJMshzZRARYU1QuTIXvhA9ClZDTSeW5KHDsOuuxI02w+kY5Qx0ALZGNDP
 nrxGlG9TRwdc0VrMQdAxOOXo5fnEWv60FCq0GOZsTGZPbPgIu91wbc17VzfmUF5p6czw
 cWANupJNRlOAWejQxmHgRnaW6IVT+vc7cajxCOEzjomM+Q1+IRYWOV5ZoX982rTLCF+f
 wImcUPUjhLhOdUFidygHOlufLakF7eP0891qfdXHGtJznP/YqBa1iSV+WzQc1xXT3qGW
 H+VmTPQK3Q2EADe3ChOifPX70Kwb8eAMYr4QpZpnNra3ywo2KoIyfyIzM8WiONttFhTL
 ScIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=W/Bdj0w4zilE2dn88/OLN2tRAFIDUIOcrXrBB+fYiPw=;
 b=OO/FKB1388TZMGDk4MW6xA21tyinie054+0J/2zkTPD+kkqg93W96HqzMnLIYK52+Y
 dOorZcObgU0V3cDFnzqLCnxTLt4xZoEk8FTTCBHaK+CJszKx9Lui9AQpK0fxUBsvYcVX
 J4N3M/l6cImW+aQAEJ+fGHWtakLA7YrK2RLMgb53x0D7PnYxxXjjbL5qEBu/PpuRsvdb
 u/uKbbO6sx8aTK8FhS5FCNMfS3a+hcV4ZnEtvn0AeGk5ZmTuGCa5tH1xVYLcON5kEFqU
 /+aKJku3v223zuAGOtSLuVDj4skEDKjMEAl/8EhHpn5AJ4mssb0xahQNr/3JIpu7cfkP
 xQ2Q==
X-Gm-Message-State: APjAAAXDdTJdkcfhaBXrZbD1EHm+BIPTgkykA9qdliZE6vvclZq7b9ig
 p9fY3hB8kGDFLGd/hS55Vb8=
X-Google-Smtp-Source: APXvYqyfSP9HphmkChAzSqY7yd6VArjniOZ/FPKkZFq6rexTp4zpejIIp95+4G7/rRVAsg9tylPwDg==
X-Received: by 2002:a7b:c651:: with SMTP id q17mr80142442wmk.136.1564164303026; 
 Fri, 26 Jul 2019 11:05:03 -0700 (PDT)
Received: from localhost.localdomain
 ([2a02:8108:96bf:e0ab:2b68:5d76:a12a:e6ba])
 by smtp.gmail.com with ESMTPSA id p14sm43535931wrx.17.2019.07.26.11.05.02
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 26 Jul 2019 11:05:02 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 4/6] staging: rtl8188eu: add spaces around '<<' and '>>' in
 usb_halinit.c
Date: Fri, 26 Jul 2019 20:04:46 +0200
Message-Id: <20190726180448.2290-4-straube.linux@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190726180448.2290-1-straube.linux@gmail.com>
References: <20190726180448.2290-1-straube.linux@gmail.com>
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

Add spaces around '<<' and '>>' to improve readability and follow
kernel coding style. Reported by checkpatch.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/hal/usb_halinit.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/usb_halinit.c b/drivers/staging/rtl8188eu/hal/usb_halinit.c
index 9fa34c5c11c4..40162f111195 100644
--- a/drivers/staging/rtl8188eu/hal/usb_halinit.c
+++ b/drivers/staging/rtl8188eu/hal/usb_halinit.c
@@ -923,7 +923,7 @@ static void CardDisableRTL8188EU(struct adapter *Adapter)
 	usb_write8(Adapter, GPIO_IO_SEL, 0xFF);/* Reg0x46 */
 
 	val8 = usb_read8(Adapter, REG_GPIO_IO_SEL);
-	usb_write8(Adapter, REG_GPIO_IO_SEL, (val8<<4));
+	usb_write8(Adapter, REG_GPIO_IO_SEL, (val8 << 4));
 	val8 = usb_read8(Adapter, REG_GPIO_IO_SEL + 1);
 	usb_write8(Adapter, REG_GPIO_IO_SEL + 1, val8 | 0x0F);/* Reg0x43 */
 	usb_write32(Adapter, REG_BB_PAD_CTRL, 0x00080808);/* set LNA ,TRSW,EX_PA Pin to output mode */
@@ -1307,7 +1307,7 @@ void rtw_hal_set_hwreg(struct adapter *Adapter, u8 variable, u8 *val)
 			usb_write8(Adapter, REG_BCN_CTRL, usb_read8(Adapter, REG_BCN_CTRL) & (~BIT(3)));
 
 			usb_write32(Adapter, REG_TSFTR, tsf);
-			usb_write32(Adapter, REG_TSFTR + 4, tsf>>32);
+			usb_write32(Adapter, REG_TSFTR + 4, tsf >> 32);
 
 			/* enable related TSF function */
 			usb_write8(Adapter, REG_BCN_CTRL, usb_read8(Adapter, REG_BCN_CTRL) | BIT(3));
@@ -1442,7 +1442,7 @@ void rtw_hal_set_hwreg(struct adapter *Adapter, u8 variable, u8 *val)
 			u8 regTmp;
 			u8 bShortPreamble = *((bool *)val);
 			/*  Joseph marked out for Netgear 3500 TKIP channel 7 issue.(Temporarily) */
-			regTmp = (haldata->nCur40MhzPrimeSC)<<5;
+			regTmp = (haldata->nCur40MhzPrimeSC) << 5;
 			if (bShortPreamble)
 				regTmp |= 0x80;
 
@@ -1480,7 +1480,7 @@ void rtw_hal_set_hwreg(struct adapter *Adapter, u8 variable, u8 *val)
 			for (i = 0; i < CAM_CONTENT_COUNT; i++) {
 				/*  filled id in CAM config 2 byte */
 				if (i == 0)
-					ulContent |= (ucIndex & 0x03) | ((u16)(ulEncAlgo)<<2);
+					ulContent |= (ucIndex & 0x03) | ((u16)(ulEncAlgo) << 2);
 				else
 					ulContent = 0;
 				/*  polling bit, and No Write enable, and address */
@@ -1590,8 +1590,8 @@ void rtw_hal_set_hwreg(struct adapter *Adapter, u8 variable, u8 *val)
 					FactorToSet = 0xf;
 
 				for (index = 0; index < 4; index++) {
-					if ((pRegToSet[index] & 0xf0) > (FactorToSet<<4))
-						pRegToSet[index] = (pRegToSet[index] & 0x0f) | (FactorToSet<<4);
+					if ((pRegToSet[index] & 0xf0) > (FactorToSet << 4))
+						pRegToSet[index] = (pRegToSet[index] & 0x0f) | (FactorToSet << 4);
 
 					if ((pRegToSet[index] & 0x0f) > FactorToSet)
 						pRegToSet[index] = (pRegToSet[index] & 0xf0) | (FactorToSet);
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

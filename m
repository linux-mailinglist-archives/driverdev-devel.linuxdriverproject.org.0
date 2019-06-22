Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BEBBB4F66C
	for <lists+driverdev-devel@lfdr.de>; Sat, 22 Jun 2019 17:15:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 75F2B84C78;
	Sat, 22 Jun 2019 15:15:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0moZwEXVDXHX; Sat, 22 Jun 2019 15:15:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F05F683F31;
	Sat, 22 Jun 2019 15:14:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EE9FF1BF301
 for <devel@linuxdriverproject.org>; Sat, 22 Jun 2019 15:14:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id EB9D487A2F
 for <devel@linuxdriverproject.org>; Sat, 22 Jun 2019 15:14:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0r0DxaxfO844 for <devel@linuxdriverproject.org>;
 Sat, 22 Jun 2019 15:14:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3689387924
 for <devel@driverdev.osuosl.org>; Sat, 22 Jun 2019 15:14:58 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id r16so9301442wrl.11
 for <devel@driverdev.osuosl.org>; Sat, 22 Jun 2019 08:14:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Hlltdd819Z4HVUHqJ9lASsafkzr+pdN9swCMNOEn+uU=;
 b=JMEp6RRyKVagF6YXQZtgcQqe5WLVUPYmZKfxBDy7DjIJNeBtOObNnyV0oBEXlqHu6o
 QsGdEHWuaBJKvinbLbjtPLrUOXOKRFb3lJevOZJwrGsr2qNDtu4COpgoFgv7fkoXvOS7
 +673At4K8ULUXLPGShuwQ6r3WthiNsI+pFHMY+sFsQOiDBmYbaMSTpqF1hm6DTKDgnPF
 1POuuMt9khERXny3SG6T12YOMr/0O8Uv/5e30Kn/8KgBDgrUn7Zj9hGSn5IcOw3DH1+k
 zga+aKy6L5VEPcWuUPJL0KMu+qCLtBejxA67hsgamLfLmayrrKjfwkJEeO/HSQaMn6NW
 fKCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Hlltdd819Z4HVUHqJ9lASsafkzr+pdN9swCMNOEn+uU=;
 b=QXnzcSObap+ZOGL+UeuiEWp6ndNI+8zEq5Y6Rj7INZQQAOLaPF0/GG9LHoSg9Txd2k
 NpfYOwmdaXGr8/u/wmNXAR4yhhMFOLBTuyW6jq9E+jULeI8d2thYbGIcN+Z5p/sy1vQk
 kXhA365xgt1hwRqwUyqNhdwmuIYTYNYeqtO9G0xl+uqdr8OXvK7o1elUF1a+SD35T1tt
 LucqTMXx2cPD++hJ8z5XU5D7tbUyt3zRJzQxFygFIMkJcborBLee9QkgVvdhzr9P9ag1
 p4wTXJ8VfyYm2dHCLQJTparZC7rHRXbRcRVNITntSNEQ6ZN6t28iwT6a8cxykGVHxwHP
 VrCQ==
X-Gm-Message-State: APjAAAU4MddhGzTolMKIiNxX98es48lW5yG6LPV5S8Op/PDpkcJ1Kn2h
 fRkiVCxYyLquBX0/uDWHxRk=
X-Google-Smtp-Source: APXvYqzrBDzoHXcM0oue9IFG8oz5bocZlC3fvcptI5/FtWs3NAX2vXEJGq8oICuh/k0KOoO8+7LJzA==
X-Received: by 2002:adf:de8e:: with SMTP id w14mr25259242wrl.130.1561216496722; 
 Sat, 22 Jun 2019 08:14:56 -0700 (PDT)
Received: from localhost.localdomain
 ([2a02:8108:96bf:e0ab:2b68:5d76:a12a:e6ba])
 by smtp.gmail.com with ESMTPSA id o126sm7099847wmo.1.2019.06.22.08.14.55
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 22 Jun 2019 08:14:56 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 1/2] staging: rtl8188eu: cleanup lines ending with a '('
Date: Sat, 22 Jun 2019 17:14:48 +0200
Message-Id: <20190622151449.32095-1-straube.linux@gmail.com>
X-Mailer: git-send-email 2.22.0
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

Cleanup checkpatch issues in usb_halinit.c.
CHECK: Lines should not end with a '('

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/hal/usb_halinit.c | 21 +++++----------------
 1 file changed, 5 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/usb_halinit.c b/drivers/staging/rtl8188eu/hal/usb_halinit.c
index 70c02c49b177..69008accb015 100644
--- a/drivers/staging/rtl8188eu/hal/usb_halinit.c
+++ b/drivers/staging/rtl8188eu/hal/usb_halinit.c
@@ -469,10 +469,7 @@ static void usb_AggSettingTxUpdate(struct adapter *Adapter)
  *
  *---------------------------------------------------------------------------
  */
-static void
-usb_AggSettingRxUpdate(
-		struct adapter *Adapter
-	)
+static void usb_AggSettingRxUpdate(struct adapter *Adapter)
 {
 	struct hal_data_8188e *haldata = Adapter->HalData;
 	u8 valueDMA;
@@ -1044,10 +1041,7 @@ static void Hal_EfuseParseMACAddr_8188EU(struct adapter *adapt, u8 *hwinfo, bool
 		 eeprom->mac_addr));
 }
 
-static void
-readAdapterInfo_8188EU(
-		struct adapter *adapt
-	)
+static void readAdapterInfo_8188EU(struct adapter *adapt)
 {
 	struct eeprom_priv *eeprom = GET_EEPROM_EFUSE_PRIV(adapt);
 
@@ -1067,9 +1061,7 @@ readAdapterInfo_8188EU(
 	Hal_ReadThermalMeter_88E(adapt, eeprom->efuse_eeprom_data, eeprom->bautoload_fail_flag);
 }
 
-static void _ReadPROMContent(
-	struct adapter *Adapter
-	)
+static void _ReadPROMContent(struct adapter *Adapter)
 {
 	struct eeprom_priv *eeprom = GET_EEPROM_EFUSE_PRIV(Adapter);
 	u8 eeValue;
@@ -1782,11 +1774,8 @@ void rtw_hal_get_hwreg(struct adapter *Adapter, u8 variable, u8 *val)
 /*	Description: */
 /*		Query setting of specified variable. */
 /*  */
-u8 rtw_hal_get_def_var(
-		struct adapter *Adapter,
-		enum hal_def_variable eVariable,
-		void *pValue
-	)
+u8 rtw_hal_get_def_var(struct adapter *Adapter, enum hal_def_variable eVariable,
+		       void *pValue)
 {
 	struct hal_data_8188e *haldata = Adapter->HalData;
 	u8 bResult = _SUCCESS;
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

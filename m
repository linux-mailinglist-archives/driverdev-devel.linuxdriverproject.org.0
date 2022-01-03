Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F134483049
	for <lists+driverdev-devel@lfdr.de>; Mon,  3 Jan 2022 12:13:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 90E5B4054E;
	Mon,  3 Jan 2022 11:13:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bO55xz0lgKfh; Mon,  3 Jan 2022 11:13:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6448440148;
	Mon,  3 Jan 2022 11:13:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4E5C51BF341
 for <devel@linuxdriverproject.org>; Mon,  3 Jan 2022 11:13:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3B4FF813A1
 for <devel@linuxdriverproject.org>; Mon,  3 Jan 2022 11:13:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PkWha2BeUAQD for <devel@linuxdriverproject.org>;
 Mon,  3 Jan 2022 11:13:17 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com
 [IPv6:2a00:1450:4864:20::52b])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 678EC8138F
 for <devel@driverdev.osuosl.org>; Mon,  3 Jan 2022 11:13:17 +0000 (UTC)
Received: by mail-ed1-x52b.google.com with SMTP id y22so134603539edq.2
 for <devel@driverdev.osuosl.org>; Mon, 03 Jan 2022 03:13:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZZXkJPdWljf+/dV3WK0IraDCIyxCUGWBgOH9D0rR91I=;
 b=VWBLxodJfliFelPaL4r3eW3VA8ZGb0ywH9I0BVwXx2yjtGpiQwN8Ww+MwdvHj9n82T
 8mG21L4O1VyXTRiFUyGy21OIhXcmfm0yO8oKDI5mrp+wSN/6lh2PZuysAJbn6S+2L+46
 JvFlNicVMFOQepR963n6OfSVNL4Mzbhw57HHJcqBVTdELg+FAyGReonbbjGTPOfkIkNK
 Cv7KYiRMIhA4Yp3R6PJv9hDXJaIaa657dZmXBC1biMdDAqYy6f7FlzRjVn8m4hBva5Gl
 87dcvUWfaAXc0apAMgW/AohxnBY7gpOkmAZypBCRwrMZSTwDovLUzdyTRsWZl8vqJ1IE
 vS6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZZXkJPdWljf+/dV3WK0IraDCIyxCUGWBgOH9D0rR91I=;
 b=toRctiGTAmqc0OyL0s5Y93G7dCSoeVS40jC8VG2sEAhzAZ6C0wistBtk0M2wwDYh5G
 JGEdybmt0terLLKguurB7HWfJLfTwyeyPrzs5lf5VlVjwFRey0cyh78U/6SWBqO0zrPC
 es3M0S0f+GQgAxZrMj5RHKBBPP6mEwJjGldw37V8bcgUCjAct5FH7FpuysHyUy6TNITO
 f3VHE1xExshVb0r8vpWqmlCRx4LEBReMuHJaLCh7/Qykx1kz5Xm6jYUvhB5wuWVGwxHP
 l7SQpn7bPrQdyv/Y7Xjjus1q3W5qHk10GtzUSSRv7BmAAhpQFJWEFs221eAQh0NsjMmA
 7HOQ==
X-Gm-Message-State: AOAM5332uPse4eDjL8vlvvohbP3hhPzTskhnSD8CYrpdcpbobRetyEFJ
 lGUSav1y/3sUqE23EU4NkzI=
X-Google-Smtp-Source: ABdhPJymq7s8SuzSTRRmYBg5/4GxuUXlOQUW46uBpafvMSUxFcQz2D78ninctslyZDL7QsBI4gp7sg==
X-Received: by 2002:a17:906:2a41:: with SMTP id
 k1mr34433952eje.512.1641208395620; 
 Mon, 03 Jan 2022 03:13:15 -0800 (PST)
Received: from t470p.fritz.box (host-87-18-201-21.retail.telecomitalia.it.
 [87.18.201.21])
 by smtp.gmail.com with ESMTPSA id v8sm13360312edt.10.2022.01.03.03.13.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 03 Jan 2022 03:13:15 -0800 (PST)
From: Alberto Merciai <alb3rt0.m3rciai@gmail.com>
To: 
Subject: [PATCH] staging: rtl8188eu: replace camelcase field CustomerID
Date: Mon,  3 Jan 2022 12:11:32 +0100
Message-Id: <20220103111131.212261-1-alb3rt0.m3rciai@gmail.com>
X-Mailer: git-send-email 2.25.1
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
Cc: devel@driverdev.osuosl.org, alb3rt0.m3rciai@gmail.com,
 linux-kernel@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linuxfancy@googlegroups.com, Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Replace camelcase field CustomerID to customer_id, compliant
with linux kernel coding style.

Signed-off-by: Alberto Merciai <alb3rt0.m3rciai@gmail.com>
---
 drivers/staging/rtl8188eu/hal/rtl8188e_dm.c      | 2 +-
 drivers/staging/rtl8188eu/hal/usb_halinit.c      | 2 +-
 drivers/staging/rtl8188eu/include/rtl8188e_hal.h | 2 +-
 drivers/staging/rtl8188eu/include/rtw_eeprom.h   | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/rtl8188e_dm.c b/drivers/staging/rtl8188eu/hal/rtl8188e_dm.c
index 1af919ff6d93..81d79b39e048 100644
--- a/drivers/staging/rtl8188eu/hal/rtl8188e_dm.c
+++ b/drivers/staging/rtl8188eu/hal/rtl8188e_dm.c
@@ -43,7 +43,7 @@ static void Init_ODM_ComInfo_88E(struct adapter *Adapter)
 	dm_odm->SupportICType = ODM_RTL8188E;
 	dm_odm->CutVersion = ODM_CUT_A;
 	dm_odm->bIsMPChip = hal_data->VersionID.ChipType == NORMAL_CHIP;
-	dm_odm->PatchID = hal_data->CustomerID;
+	dm_odm->PatchID = hal_data->customer_id;
 	dm_odm->bWIFITest = Adapter->registrypriv.wifi_spec;
 
 	dm_odm->AntDivType = hal_data->TRxAntDivType;
diff --git a/drivers/staging/rtl8188eu/hal/usb_halinit.c b/drivers/staging/rtl8188eu/hal/usb_halinit.c
index 16a57b31a439..0fa01549bfa7 100644
--- a/drivers/staging/rtl8188eu/hal/usb_halinit.c
+++ b/drivers/staging/rtl8188eu/hal/usb_halinit.c
@@ -1385,7 +1385,7 @@ void rtw_hal_set_hwreg(struct adapter *Adapter, u8 variable, u8 *val)
 				usb_write32(Adapter, REG_RCR, usb_read32(Adapter, REG_RCR) | RCR_CBSSID_DATA | RCR_CBSSID_BCN);
 
 				if (check_fwstate(pmlmepriv, WIFI_STATION_STATE))
-					RetryLimit = (haldata->CustomerID == RT_CID_CCX) ? 7 : 48;
+					RetryLimit = (haldata->customer_id == RT_CID_CCX) ? 7 : 48;
 				else /*  Ad-hoc Mode */
 					RetryLimit = 0x7;
 			} else if (type == 1) {
diff --git a/drivers/staging/rtl8188eu/include/rtl8188e_hal.h b/drivers/staging/rtl8188eu/include/rtl8188e_hal.h
index eb4655ecf6e0..231800f60583 100644
--- a/drivers/staging/rtl8188eu/include/rtl8188e_hal.h
+++ b/drivers/staging/rtl8188eu/include/rtl8188e_hal.h
@@ -181,7 +181,7 @@ struct txpowerinfo24g {
 
 struct hal_data_8188e {
 	struct HAL_VERSION	VersionID;
-	u16	CustomerID;
+	u16	customer_id;
 	u16	FirmwareVersion;
 	u16	FirmwareVersionRev;
 	u16	FirmwareSubVersion;
diff --git a/drivers/staging/rtl8188eu/include/rtw_eeprom.h b/drivers/staging/rtl8188eu/include/rtw_eeprom.h
index 10525493129b..57b675baf5bc 100644
--- a/drivers/staging/rtl8188eu/include/rtw_eeprom.h
+++ b/drivers/staging/rtl8188eu/include/rtw_eeprom.h
@@ -49,7 +49,7 @@
 /*  EEPROM size consideration. So, we have to perform proper translation
  *  between them.
  */
-/*  Besides, CustomerID of registry has precedence of that of EEPROM. */
+/*  Besides, customer_id of registry has precedence of that of EEPROM. */
 /*  defined below. 060703, by rcnjko. */
 enum RT_CUSTOMER_ID {
 	RT_CID_DEFAULT = 0,
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

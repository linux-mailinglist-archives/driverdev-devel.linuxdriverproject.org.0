Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 174024FD6D
	for <lists+driverdev-devel@lfdr.de>; Sun, 23 Jun 2019 20:00:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 79F218559F;
	Sun, 23 Jun 2019 18:00:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f59F2yehA2zT; Sun, 23 Jun 2019 18:00:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 38F6C85310;
	Sun, 23 Jun 2019 18:00:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 55D1B1BF47A
 for <devel@linuxdriverproject.org>; Sun, 23 Jun 2019 18:00:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5272885230
 for <devel@linuxdriverproject.org>; Sun, 23 Jun 2019 18:00:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gDuu5HI4gCS3 for <devel@linuxdriverproject.org>;
 Sun, 23 Jun 2019 18:00:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 67FD485205
 for <devel@driverdev.osuosl.org>; Sun, 23 Jun 2019 18:00:18 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id f9so11378525wre.12
 for <devel@driverdev.osuosl.org>; Sun, 23 Jun 2019 11:00:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XwY7oF1s2rpAVXJCsz1ECdo2yKOBz2vGMZwE6GybNDE=;
 b=gMjq9R2MKHHjqs9OKYS0aCOUV2sFpbrVHbG6pbzBSiKU8V67PGWeXT+ZlQui40ad7G
 XN2U/tRPSQL99FaRbzn7v5nuOHgZTiMo2i0dMh1yMXNlXtNTezlwsE3TLESbm4Og2yOc
 5LA4Qvfve8ePOBiDAB4vYchm2DuMaQCbLWjabU//ZMrhJaejGMC+BW1elZPSqU14w4oR
 r4cVajtTSR325If+3rHI6joP4u8Cs7wVnHeN277pp+ltMnWTiYaOXNQlDU/DuZWh6b4e
 BPMcqYLQb2JhJ4y+Wr5rokm5QaC2Fi1DsB65tsjGcfPCTGqBBH7udxSc6QlkoUuTIjyi
 zsJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XwY7oF1s2rpAVXJCsz1ECdo2yKOBz2vGMZwE6GybNDE=;
 b=D6al+ImX20YXuV9fyQjd0kME+UfQBvgE/D/+YchBfgwWJvNA2DSIEPe9rRjpc0d24a
 1lZAbP5FoHVw5tcAZNyQSyPdHeLZ7sLoSp5UyxyoedzYoNUvu8qpyoQo7d7kSaMeUMBn
 NJgkl64lV2DES9NPgQ8tllVJ9SoQyt4QenrW8FUYs11L2A9MKrBl9WRnsdlkjKE2xcTb
 iz1tLwY3a0fcV7HeBhOFeUCIoAd8v2KItR/25UVkOfobA5L2qHnPWCtJ0yOdJbGk6yG0
 DBgFn87wU0vSBTQZYUKgY3VKkgIUDsEKrkR3zGchYgXOBTRvoDbkJZTNZe/dfPqvX5iJ
 3hQQ==
X-Gm-Message-State: APjAAAXutEzkWFEj3jj1Olygp2NLyjIrzoFNDOa49igGmrFba7UapZxz
 4xIeG9fsKovuSZYaOUNzH4Q=
X-Google-Smtp-Source: APXvYqyhkzHacP8GvpB/UGe5BNJEowImB7WDuz4lkYbuNelTfLNQjMn1fK2AVjTQd3sNLbii4U1Tww==
X-Received: by 2002:a5d:5303:: with SMTP id e3mr14568750wrv.239.1561312816800; 
 Sun, 23 Jun 2019 11:00:16 -0700 (PDT)
Received: from localhost.localdomain
 ([2a02:8108:96bf:e0ab:2b68:5d76:a12a:e6ba])
 by smtp.gmail.com with ESMTPSA id c4sm8216742wrt.86.2019.06.23.11.00.15
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 23 Jun 2019 11:00:16 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 1/2] staging: rtl8188eu: remove unused function get_bsstype()
Date: Sun, 23 Jun 2019 19:59:56 +0200
Message-Id: <20190623175957.16763-1-straube.linux@gmail.com>
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

Function get_bsstype() is not used in the driver code, so remove it.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_wlan_util.c   | 10 ----------
 drivers/staging/rtl8188eu/include/rtw_mlme_ext.h |  1 -
 2 files changed, 11 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
index d1e99885c8f5..159c46b096cb 100644
--- a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
@@ -346,16 +346,6 @@ void set_channel_bwmode(struct adapter *padapter, unsigned char channel, unsigne
 	SetBWMode(padapter, bwmode, channel_offset);
 }
 
-int get_bsstype(unsigned short capability)
-{
-	if (capability & BIT(0))
-		return WIFI_FW_AP_STATE;
-	else if (capability & BIT(1))
-		return WIFI_FW_ADHOC_STATE;
-	else
-		return 0;
-}
-
 u16 get_beacon_interval(struct wlan_bssid_ex *bss)
 {
 	__le16 val;
diff --git a/drivers/staging/rtl8188eu/include/rtw_mlme_ext.h b/drivers/staging/rtl8188eu/include/rtw_mlme_ext.h
index 1fb2349bd0a0..fa14b6fedf08 100644
--- a/drivers/staging/rtl8188eu/include/rtw_mlme_ext.h
+++ b/drivers/staging/rtl8188eu/include/rtw_mlme_ext.h
@@ -485,7 +485,6 @@ void flush_all_cam_entry(struct adapter *padapter);
 void update_network(struct wlan_bssid_ex *dst, struct wlan_bssid_ex *src,
 		    struct adapter *adapter, bool update_ie);
 
-int get_bsstype(unsigned short capability);
 u16 get_beacon_interval(struct wlan_bssid_ex *bss);
 
 int is_client_associated_to_ap(struct adapter *padapter);
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

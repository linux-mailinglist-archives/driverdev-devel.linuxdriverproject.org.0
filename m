Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 104403AFEA
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Jun 2019 09:47:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B28CB2046E;
	Mon, 10 Jun 2019 07:47:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5RgQbkKEiR9l; Mon, 10 Jun 2019 07:47:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5BEB42046C;
	Mon, 10 Jun 2019 07:47:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 10DA01BF410
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 07:47:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0D6A986E48
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 07:47:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OMAy0+L6-pbe for <devel@linuxdriverproject.org>;
 Mon, 10 Jun 2019 07:47:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 78DBA870F6
 for <devel@driverdev.osuosl.org>; Mon, 10 Jun 2019 07:47:38 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id v11so4579597pgl.5
 for <devel@driverdev.osuosl.org>; Mon, 10 Jun 2019 00:47:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1N54fTA6mDyE08BCQjBmhncHNBVW/KBQIkGpK4hWTRU=;
 b=Vd95fwuhgJXOmKY2dQ0YV5/eV+CqRLs4zDHkmchmuM3GGe0NcjYHN/aIpi8dcBNdIT
 glipUao6HeSGEEqxA2xdbU5wcCFtKm70huLXn69Pl4qtGtsFjeD4BbVifqlUqZuYKigT
 o8CbT8nU4m4esG4RLXrDhqpCVmLAQQVMyAVMXwwlASNLCUH8dNRAN4F6tdLkVvueryeZ
 g0ErLqCrORbTlJ1qdoKMD62NMNlLtU4rmcEsqv7Qhr9y7BmbyQZrgbx2GQJzhB/xcNHj
 REbPiZ1H1nBSEbXov5Y0uDxpfpFhs0pWFjMePY6Z4hfnFqahrBHmRMJLlfAPyv1Qkfsh
 +LoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1N54fTA6mDyE08BCQjBmhncHNBVW/KBQIkGpK4hWTRU=;
 b=LKXRzosJ5msB/2TpMK5gW4MrNPFUZVA1b6Etwp5kdIkXpupV1WpFxX6lfbkJ9Kosc8
 GRnjacN5fVFK3l22sMscoUKzsodcrXrDCZdfw4JXQfbWdIBshnV4x/0+mC3oPULxGnsx
 7AYpTzb36AoieMeqb33I6uowmim/n1kQXbEbIvufeWqrlxvlpOo7cOGNkF7R6rQ80sck
 xym2unT63o8K9fK5XtSv1TW7bJDbfk0/l9HdWhMikiaicSgtH5walQ9HVjUFSN7oMN83
 BF6fVqi24ipQvnbvBl2uad/FjG96mbUYSFnlNb7JYlyC70sdv/aWovZ16w15AClKkafR
 Hhbw==
X-Gm-Message-State: APjAAAVDqXHA19sdwKGOdAsmOKm9d3xMja/yu7usuOCEgrS41HHvTQo9
 fBjrSO+CUM+lFgUgXOPDLtZqwAMC
X-Google-Smtp-Source: APXvYqwFBhSOax51uVXFzAdvGfVPjRzujgQaH4k7rrtDpetOzbro9DzJjEpM05dYTJa0xPE7Sx1ImQ==
X-Received: by 2002:a65:5302:: with SMTP id m2mr14432136pgq.369.1560152858095; 
 Mon, 10 Jun 2019 00:47:38 -0700 (PDT)
Received: from localhost.localdomain ([171.79.92.225])
 by smtp.gmail.com with ESMTPSA id f2sm8120965pgs.83.2019.06.10.00.47.36
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 10 Jun 2019 00:47:37 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH v2 09/10] staging: rtl8723bs: rtw_get_sec_ie(): Change return
 type
Date: Mon, 10 Jun 2019 13:17:09 +0530
Message-Id: <20190610074710.15677-9-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190610074710.15677-1-nishkadg.linux@gmail.com>
References: <20190610074710.15677-1-nishkadg.linux@gmail.com>
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove assignment of return value of function rtw_get_sec_ie as it is
never checked or used.
Remove return statement of rtw_get_sec_ie as its return value is never
stored or checked or used.
Change return type of rtw_get_sec_ie to void.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
Changes in v2:
- Send as part of patch series.

 drivers/staging/rtl8723bs/core/rtw_ieee80211.c | 4 +---
 drivers/staging/rtl8723bs/include/ieee80211.h  | 2 +-
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 3 +--
 3 files changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ieee80211.c b/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
index aaf27438cd81..6018d877a8a6 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
@@ -654,7 +654,7 @@ int rtw_get_wapi_ie(u8 *in_ie, uint in_len, u8 *wapi_ie, u16 *wapi_len)
 }
 /* endif */
 
-int rtw_get_sec_ie(u8 *in_ie, uint in_len, u8 *rsn_ie, u16 *rsn_len, u8 *wpa_ie, u16 *wpa_len)
+void rtw_get_sec_ie(u8 *in_ie, uint in_len, u8 *rsn_ie, u16 *rsn_len, u8 *wpa_ie, u16 *wpa_len)
 {
 	u8 authmode, sec_idx, i;
 	u8 wpa_oui[4] = {0x0, 0x50, 0xf2, 0x01};
@@ -705,8 +705,6 @@ int rtw_get_sec_ie(u8 *in_ie, uint in_len, u8 *rsn_ie, u16 *rsn_len, u8 *wpa_ie,
 			}
 		}
 	}
-
-	return *rsn_len + *wpa_len;
 }
 
 u8 rtw_is_wps_ie(u8 *ie_ptr, uint *wps_ielen)
diff --git a/drivers/staging/rtl8723bs/include/ieee80211.h b/drivers/staging/rtl8723bs/include/ieee80211.h
index 74c028fbe8f7..2110552b8e59 100644
--- a/drivers/staging/rtl8723bs/include/ieee80211.h
+++ b/drivers/staging/rtl8723bs/include/ieee80211.h
@@ -1138,7 +1138,7 @@ int rtw_get_wapi_ie(u8 *in_ie, uint in_len, u8 *wapi_ie, u16 *wapi_len);
 int rtw_parse_wpa_ie(u8 *wpa_ie, int wpa_ie_len, int *group_cipher, int *pairwise_cipher, int *is_8021x);
 int rtw_parse_wpa2_ie(u8 *wpa_ie, int wpa_ie_len, int *group_cipher, int *pairwise_cipher, int *is_8021x);
 
-int rtw_get_sec_ie(u8 *in_ie, uint in_len, u8 *rsn_ie, u16 *rsn_len, u8 *wpa_ie, u16 *wpa_len);
+void rtw_get_sec_ie(u8 *in_ie, uint in_len, u8 *rsn_ie, u16 *rsn_len, u8 *wpa_ie, u16 *wpa_len);
 
 u8 rtw_is_wps_ie(u8 *ie_ptr, uint *wps_ielen);
 u8 *rtw_get_wps_ie(u8 *in_ie, uint in_len, u8 *wps_ie, uint *wps_ielen);
diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index 1d8f1907883f..4c5855bde9ad 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -235,8 +235,7 @@ static char *translate_scan(struct adapter *padapter,
 		u8 wpa_ie[255], rsn_ie[255];
 		u16 wpa_len = 0, rsn_len = 0;
 		u8 *p;
-		sint out_len = 0;
-		out_len =rtw_get_sec_ie(pnetwork->network.IEs , pnetwork->network.IELength, rsn_ie,&rsn_len, wpa_ie,&wpa_len);
+		rtw_get_sec_ie(pnetwork->network.IEs, pnetwork->network.IELength, rsn_ie, &rsn_len, wpa_ie, &wpa_len);
 		RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("rtw_wx_get_scan: ssid =%s\n", pnetwork->network.Ssid.Ssid));
 		RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("rtw_wx_get_scan: wpa_len =%d rsn_len =%d\n", wpa_len, rsn_len));
 
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

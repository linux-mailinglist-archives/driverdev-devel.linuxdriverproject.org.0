Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FDAEE3753
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Oct 2019 17:59:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8D63C228D5;
	Thu, 24 Oct 2019 15:59:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8kSh8WT3q254; Thu, 24 Oct 2019 15:59:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7DED422E3F;
	Thu, 24 Oct 2019 15:59:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 756661BF20D
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 15:59:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7043B21567
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 15:59:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wvBi04QZHjPO for <devel@linuxdriverproject.org>;
 Thu, 24 Oct 2019 15:59:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 1C98421551
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 15:59:33 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id a11so10610963wra.6
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 08:59:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qS1KbH+p9OlpOqB7da3kENa3GN4JhCMKjz4FoW9W5QY=;
 b=FdgmUptiBhTgkUvBTVUjRqWgTHhl29rHtBcRHxIYViGaNOkDFZQ4Nhi5xQeU676eC4
 ga8uwv++NtNpAV7hKRtxkvWMF7hLvVLaMRAmgB4AWksXfvzOV1qqzD+hu60JckVBJSv1
 RATMY92a4CDAua1oA19A74kL6QJ94uyQNtBCQc4Gzah5z3i0kWXStXHZCzay/8+f88Fo
 EZ0iukrfOFwNDBi8QZh8ApwWjEvlALUr0lSNdjovFtexa2DCrybOWi7rj+IfO141CvQX
 7zbNZrzSUlkoMaPJqqVkPop7NAxPGFjnqfW3qKVRD+n32Z1i5HrD1fJDhaijhaVa3mco
 GnCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qS1KbH+p9OlpOqB7da3kENa3GN4JhCMKjz4FoW9W5QY=;
 b=mOMqJRhch6XKUkxICOtANxQT+E7icF87etfiUEQ47oG2CiAYAZdbH9H47Ne7sO/Of0
 3BpP26cEOov9EYku7mofPAsqFArJmiwN27TpKt/KWoh7OjnLv8Hf/1iI6sIhJDSnedXF
 xrcEA4s1QuPkMPXCgsmoDgkR8m4Ek1eqR92X4FxwhPFTVvU7eVDq9+AybbK/hEtNMNDn
 79p83Zf9+gnSV4t0haqJf5GAm/VLE9V2od60Sthhabk4Kdw8yja536F7jUTRNfCVclWg
 rsQYNRJV1ZlHknj5Rl/AIVxcUIRJ6fJvYUgVZXLNZA+khwrLoD0VM/5nlVFkL8oGL8oI
 qIIw==
X-Gm-Message-State: APjAAAUQF+Mb7DEOiSfEr1NDvv/TPOtQb022bAKpZhVDW5Um1eKE9mkH
 Bt/H3IUKNX9k76V5cYkqEB8=
X-Google-Smtp-Source: APXvYqwY4EDnyuX7k0+Hh8zPrdqNYeCWjoTg6QLnKs7oBpy71VyRLqwEN+ZHrWAxNArgPvmhGCTaFQ==
X-Received: by 2002:a5d:640e:: with SMTP id z14mr4451615wru.311.1571932771504; 
 Thu, 24 Oct 2019 08:59:31 -0700 (PDT)
Received: from localhost.localdomain
 ([2a02:8108:96bf:e0ab:2b68:5d76:a12a:e6ba])
 by smtp.gmail.com with ESMTPSA id g5sm3472142wmg.12.2019.10.24.08.59.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 08:59:30 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8188eu: remove code valid only for 5 GHz
Date: Thu, 24 Oct 2019 17:59:18 +0200
Message-Id: <20191024155918.13399-1-straube.linux@gmail.com>
X-Mailer: git-send-email 2.23.0
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

Remove code valid only for 5 GHz, according to the TODO.

- find and remove remaining code valid only for 5 GHz. Most of the obvious
  ones have been removed, but things like channel > 14 still exist.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_ap.c       | 12 ++------
 .../staging/rtl8188eu/os_dep/ioctl_linux.c    | 30 +++++--------------
 2 files changed, 11 insertions(+), 31 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
index 9aa44c921aca..88e42cc1d837 100644
--- a/drivers/staging/rtl8188eu/core/rtw_ap.c
+++ b/drivers/staging/rtl8188eu/core/rtw_ap.c
@@ -440,15 +440,9 @@ static void update_bmc_sta(struct adapter *padapter)
 				tx_ra_bitmap |= rtw_get_bit_value_from_ieee_value(psta->bssrateset[i] & 0x7f);
 		}
 
-		if (pcur_network->Configuration.DSConfig > 14) {
-			/* force to A mode. 5G doesn't support CCK rates */
-			network_type = WIRELESS_11A;
-			tx_ra_bitmap = 0x150; /*  6, 12, 24 Mbps */
-		} else {
-			/* force to b mode */
-			network_type = WIRELESS_11B;
-			tx_ra_bitmap = 0xf;
-		}
+		/* force to b mode */
+		network_type = WIRELESS_11B;
+		tx_ra_bitmap = 0xf;
 
 		raid = networktype_to_raid(network_type);
 		init_rate = get_highest_rate_idx(tx_ra_bitmap & 0x0fffffff) & 0x3f;
diff --git a/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c b/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
index ec5835d1aa8c..710c33fd4965 100644
--- a/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
@@ -148,17 +148,10 @@ static char *translate_scan(struct adapter *padapter,
 		else
 			snprintf(iwe.u.name, IFNAMSIZ, "IEEE 802.11bg");
 	} else {
-		if (pnetwork->network.Configuration.DSConfig > 14) {
-			if (ht_cap)
-				snprintf(iwe.u.name, IFNAMSIZ, "IEEE 802.11an");
-			else
-				snprintf(iwe.u.name, IFNAMSIZ, "IEEE 802.11a");
-		} else {
-			if (ht_cap)
-				snprintf(iwe.u.name, IFNAMSIZ, "IEEE 802.11gn");
-			else
-				snprintf(iwe.u.name, IFNAMSIZ, "IEEE 802.11g");
-		}
+		if (ht_cap)
+			snprintf(iwe.u.name, IFNAMSIZ, "IEEE 802.11gn");
+		else
+			snprintf(iwe.u.name, IFNAMSIZ, "IEEE 802.11g");
 	}
 
 	start = iwe_stream_add_event(info, start, stop, &iwe, IW_EV_CHAR_LEN);
@@ -650,17 +643,10 @@ static int rtw_wx_get_name(struct net_device *dev,
 			else
 				snprintf(wrqu->name, IFNAMSIZ, "IEEE 802.11bg");
 		} else {
-			if (pcur_bss->Configuration.DSConfig > 14) {
-				if (ht_cap)
-					snprintf(wrqu->name, IFNAMSIZ, "IEEE 802.11an");
-				else
-					snprintf(wrqu->name, IFNAMSIZ, "IEEE 802.11a");
-			} else {
-				if (ht_cap)
-					snprintf(wrqu->name, IFNAMSIZ, "IEEE 802.11gn");
-				else
-					snprintf(wrqu->name, IFNAMSIZ, "IEEE 802.11g");
-			}
+			if (ht_cap)
+				snprintf(wrqu->name, IFNAMSIZ, "IEEE 802.11gn");
+			else
+				snprintf(wrqu->name, IFNAMSIZ, "IEEE 802.11g");
 		}
 	} else {
 		snprintf(wrqu->name, IFNAMSIZ, "unassociated");
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 752E641C9C
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Jun 2019 08:50:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A265E87586;
	Wed, 12 Jun 2019 06:50:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m9DT6qg-2TRk; Wed, 12 Jun 2019 06:50:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 118C08759A;
	Wed, 12 Jun 2019 06:50:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 641671BF28D
 for <devel@linuxdriverproject.org>; Wed, 12 Jun 2019 06:50:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D62442044C
 for <devel@linuxdriverproject.org>; Wed, 12 Jun 2019 06:50:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q2-YEpEa+VZc for <devel@linuxdriverproject.org>;
 Wed, 12 Jun 2019 06:50:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by silver.osuosl.org (Postfix) with ESMTPS id F11FF20354
 for <devel@driverdev.osuosl.org>; Wed, 12 Jun 2019 06:50:17 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id d21so6220278plr.3
 for <devel@driverdev.osuosl.org>; Tue, 11 Jun 2019 23:50:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=aEk4J/GiRcwQ05gtZHPM3bsN5f8rQHV12ZyPces84nk=;
 b=n3eI8XV5c26ENMg5NGuMnVYcOpr+WNMrXO8nt1pj5awGiYBTF9envWrP3IBSjzyc9Z
 NNPGelyUrYs7kaQZ5XAWZPvOpSyLmfYcc/yycwgM8o31K80U95d58nLMiY7hVs9BlbB2
 HQrfvG+J1XGXnwrcmpeKAnhFCdprPlDClH03FOzUHZzah/icBXLry1vHWSDW3puk1hs0
 bSK3pVEe0kaOEqSal3wGk6mXyzO5rM6khcCtupkAvg5Azkubv34NWo3GfkIJwgp6zQmc
 uM8a+/UfmoT42QOiHaZDZdrFZqInGz1cC4Z5/+ar0OeOhj8nBp/TAjQktjEtM2x6pOrr
 BTGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=aEk4J/GiRcwQ05gtZHPM3bsN5f8rQHV12ZyPces84nk=;
 b=GUs2r0GQmD/nxNEWKVE//4vmYQwzOmDviLVhFEKvKS+hbcvoGaipgurp1aKuMJptBX
 OKp30Wzj9wm3IgBRQ8pNgmiGeqHXNMgkvK0y2E5pX5J/BBeSQSTzgNm6iEfiHiIvl+6A
 /b3JTPxqknn4qVNPBe8xfbL9Sa7YCK9JfaHM9a74TQjerBzXpE+kaMwX3Dkpx3Ekmurk
 5lU+JB7UrCKkazbUtbzeyNruoBkkgyKcNNGEo3CjcGgcV9/MfEZTVD4ovIcIEQeBBkNa
 qjg1qgbmwRI45NSE9+nOn0qjN/gnTeS8Jb4EUGb6JesEqshgigJrQmU+FECtwhhKTFIn
 ld2Q==
X-Gm-Message-State: APjAAAWDkaasED15wrk6qJ4PYNmF+3McjinnjWVjn+dzl/ZEL+UG66+r
 0OhqJGjxpX8GmQi9kimctFA=
X-Google-Smtp-Source: APXvYqwLUapfRbdDckxH/XHjJnatPiZDbwBPmBd2b5Q0DINBUH92LBbU+ehulrsfxMU13SkKnGp42w==
X-Received: by 2002:a17:902:e582:: with SMTP id
 cl2mr65268775plb.60.1560322217564; 
 Tue, 11 Jun 2019 23:50:17 -0700 (PDT)
Received: from localhost.localdomain ([171.79.92.225])
 by smtp.gmail.com with ESMTPSA id v23sm1356346pju.3.2019.06.11.23.50.15
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 11 Jun 2019 23:50:16 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, gregkh@linuxfoundation.org,
 devel@driverdev.osuosl.org
Subject: [PATCH] staging: rtl8188eu: Change type of rtw_get_sec_ie()
Date: Wed, 12 Jun 2019 12:20:03 +0530
Message-Id: <20190612065003.3786-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
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

Change return type of function rtw_get_sec_ie from int to void and
remove its return statement as the return value is never stored, checked
or otherwise used.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_ieee80211.c | 4 +---
 drivers/staging/rtl8188eu/include/ieee80211.h  | 4 ++--
 2 files changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_ieee80211.c b/drivers/staging/rtl8188eu/core/rtw_ieee80211.c
index 797ffa6e64d5..28b3cdd10397 100644
--- a/drivers/staging/rtl8188eu/core/rtw_ieee80211.c
+++ b/drivers/staging/rtl8188eu/core/rtw_ieee80211.c
@@ -482,7 +482,7 @@ int rtw_parse_wpa2_ie(u8 *rsn_ie, int rsn_ie_len, int *group_cipher, int *pairwi
 	return ret;
 }
 
-int rtw_get_sec_ie(u8 *in_ie, uint in_len, u8 *rsn_ie, u16 *rsn_len, u8 *wpa_ie, u16 *wpa_len)
+void rtw_get_sec_ie(u8 *in_ie, uint in_len, u8 *rsn_ie, u16 *rsn_len, u8 *wpa_ie, u16 *wpa_len)
 {
 	u8 authmode, sec_idx, i;
 	u8 wpa_oui[4] = {0x0, 0x50, 0xf2, 0x01};
@@ -539,8 +539,6 @@ int rtw_get_sec_ie(u8 *in_ie, uint in_len, u8 *rsn_ie, u16 *rsn_len, u8 *wpa_ie,
 			}
 		}
 	}
-
-	return *rsn_len + *wpa_len;
 }
 
 u8 rtw_is_wps_ie(u8 *ie_ptr, uint *wps_ielen)
diff --git a/drivers/staging/rtl8188eu/include/ieee80211.h b/drivers/staging/rtl8188eu/include/ieee80211.h
index 42ee4ebe90eb..d569fe5ed8e6 100644
--- a/drivers/staging/rtl8188eu/include/ieee80211.h
+++ b/drivers/staging/rtl8188eu/include/ieee80211.h
@@ -743,8 +743,8 @@ int rtw_parse_wpa_ie(u8 *wpa_ie, int wpa_ie_len, int *group_cipher,
 int rtw_parse_wpa2_ie(u8 *wpa_ie, int wpa_ie_len, int *group_cipher,
 		      int *pairwise_cipher, int *is_8021x);
 
-int rtw_get_sec_ie(u8 *in_ie, uint in_len, u8 *rsn_ie, u16 *rsn_len,
-		   u8 *wpa_ie, u16 *wpa_len);
+void rtw_get_sec_ie(u8 *in_ie, uint in_len, u8 *rsn_ie, u16 *rsn_len,
+		    u8 *wpa_ie, u16 *wpa_len);
 
 u8 rtw_is_wps_ie(u8 *ie_ptr, uint *wps_ielen);
 u8 *rtw_get_wps_ie(u8 *in_ie, uint in_len, u8 *wps_ie, uint *wps_ielen);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

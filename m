Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 32D864FD6E
	for <lists+driverdev-devel@lfdr.de>; Sun, 23 Jun 2019 20:00:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7096920467;
	Sun, 23 Jun 2019 18:00:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IQzdjbmMxnZM; Sun, 23 Jun 2019 18:00:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4788E2035B;
	Sun, 23 Jun 2019 18:00:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C56091BF47A
 for <devel@linuxdriverproject.org>; Sun, 23 Jun 2019 18:00:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C241A203CC
 for <devel@linuxdriverproject.org>; Sun, 23 Jun 2019 18:00:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id btjj8LibuWUF for <devel@linuxdriverproject.org>;
 Sun, 23 Jun 2019 18:00:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 399D62035B
 for <devel@driverdev.osuosl.org>; Sun, 23 Jun 2019 18:00:19 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id n4so10223592wrs.3
 for <devel@driverdev.osuosl.org>; Sun, 23 Jun 2019 11:00:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=D0yn6X+tzWOuxsBWS/gVrSq2d3W5TzvBszpoVVx2is0=;
 b=nw8R0KYIux/6xSfmFF7RSbcZ64oGgKkWHXOlSpxo4sjtwmUW47CArKzXLFHTufRY7i
 mnOPqB6IUsw3jmNDzIz+MfAsxCJqGmIMwgY6po9MihRisRcUi4OaiJWCvRxI/urDaUVn
 ssMwfuq/n/ui6TQu/pG8xtDbNwOHIjjl5X6hQOUWagqog3kP2cfniTJ12veiNaiI2hbi
 BhUn7kn5E89ro5XZTyopkrDMKBEzubh0pl7hRpUe7hBSGw8CEnw5cz72xobE2hyriGat
 n/oRaEhFFzm5m1C4uWOfTqIn7TnDiB4SYqG6ApF3fdqB/gnoxTu+43YpVL8IffyhM6x+
 o6hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=D0yn6X+tzWOuxsBWS/gVrSq2d3W5TzvBszpoVVx2is0=;
 b=OI0/UJqwW4Rgyx+//pV6CukZNnoFy2QNWVgxqwXUYq+jO/N8EtzP4wlKj8L3hV/YRR
 mVjWrsfmfM3QLDoEltpfS5wRXjJonLKyrhtMfWBKuSAQHrdzGstS90Bn2RMxPtr2JQjY
 xn8Yp8Vyae8aU79/uofaTB8PQy/0oRt6sskk/QLRjjuL+bXSnIapMoPOfd8TC5LrdI6c
 XnF39kRvLVfqhPBmIyQIY0DbdA3hOpMv87QFnjCTH/ZRZDbu+UiicDGH5JLWm4Bzydvt
 lhwaqamfZNQ3YGZWh9VtZ1XyL+MGf3K4+/rxzCHj3PoV2ZA5wV//uu4SJ6EWqO2xtj9V
 tgXw==
X-Gm-Message-State: APjAAAXavZCbk0tmD6zX9Z2iCI5CQSFWnY5FNcVu6oAakSZV7r7CaBmX
 VTL7vN7Np+9vFXEeBfhCaw8=
X-Google-Smtp-Source: APXvYqyiIl/QwAaT+T6qqTIHajLRL2aL3ghwRJ1qXFNmPXH7hvgbHln0863MFYeSliK9ilHWpXKd7A==
X-Received: by 2002:adf:eec2:: with SMTP id a2mr33499119wrp.147.1561312817599; 
 Sun, 23 Jun 2019 11:00:17 -0700 (PDT)
Received: from localhost.localdomain
 ([2a02:8108:96bf:e0ab:2b68:5d76:a12a:e6ba])
 by smtp.gmail.com with ESMTPSA id c4sm8216742wrt.86.2019.06.23.11.00.16
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 23 Jun 2019 11:00:17 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 2/2] staging: rtl8188eu: remove unused function is_ap_in_wep()
Date: Sun, 23 Jun 2019 19:59:57 +0200
Message-Id: <20190623175957.16763-2-straube.linux@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190623175957.16763-1-straube.linux@gmail.com>
References: <20190623175957.16763-1-straube.linux@gmail.com>
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

Function is_ap_in_wep() is not used in the driver code, so remove it.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 .../staging/rtl8188eu/core/rtw_wlan_util.c    | 30 -------------------
 .../staging/rtl8188eu/include/rtw_mlme_ext.h  |  1 -
 2 files changed, 31 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
index 159c46b096cb..7bfc5b7c2757 100644
--- a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
@@ -1074,36 +1074,6 @@ unsigned int is_ap_in_tkip(struct adapter *padapter)
 	}
 }
 
-unsigned int is_ap_in_wep(struct adapter *padapter)
-{
-	u32 i;
-	struct ndis_802_11_var_ie *pIE;
-	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
-	struct mlme_ext_info *pmlmeinfo = &pmlmeext->mlmext_info;
-	struct wlan_bssid_ex *cur_network = &pmlmeinfo->network;
-
-	if (rtw_get_capability((struct wlan_bssid_ex *)cur_network) & WLAN_CAPABILITY_PRIVACY) {
-		for (i = sizeof(struct ndis_802_11_fixed_ie); i < pmlmeinfo->network.ie_length;) {
-			pIE = (struct ndis_802_11_var_ie *)(pmlmeinfo->network.ies + i);
-
-			switch (pIE->ElementID) {
-			case _VENDOR_SPECIFIC_IE_:
-				if (!memcmp(pIE->data, RTW_WPA_OUI, 4))
-					return false;
-				break;
-			case _RSN_IE_2_:
-				return false;
-			default:
-				break;
-			}
-			i += (pIE->Length + 2);
-		}
-		return true;
-	} else {
-		return false;
-	}
-}
-
 static int wifirate2_ratetbl_inx(unsigned char rate)
 {
 	rate = rate & 0x7f;
diff --git a/drivers/staging/rtl8188eu/include/rtw_mlme_ext.h b/drivers/staging/rtl8188eu/include/rtw_mlme_ext.h
index fa14b6fedf08..327f7d1bc20c 100644
--- a/drivers/staging/rtl8188eu/include/rtw_mlme_ext.h
+++ b/drivers/staging/rtl8188eu/include/rtw_mlme_ext.h
@@ -525,7 +525,6 @@ void set_sta_rate(struct adapter *padapter, struct sta_info *psta);
 unsigned char get_highest_rate_idx(u32 mask);
 int support_short_GI(struct adapter *padapter, struct ieee80211_ht_cap *caps);
 unsigned int is_ap_in_tkip(struct adapter *padapter);
-unsigned int is_ap_in_wep(struct adapter *padapter);
 
 void report_join_res(struct adapter *padapter, int res);
 void report_survey_event(struct adapter *padapter,
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

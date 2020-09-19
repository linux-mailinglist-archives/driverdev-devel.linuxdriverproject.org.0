Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71E5C2710A0
	for <lists+driverdev-devel@lfdr.de>; Sat, 19 Sep 2020 23:20:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A41098749D;
	Sat, 19 Sep 2020 21:20:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O7+TrEsvdtxO; Sat, 19 Sep 2020 21:20:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B13C087271;
	Sat, 19 Sep 2020 21:20:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B77F01BF489
 for <devel@linuxdriverproject.org>; Sat, 19 Sep 2020 21:20:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id ACDA2204CF
 for <devel@linuxdriverproject.org>; Sat, 19 Sep 2020 21:20:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9dmYwtmjLjdm for <devel@linuxdriverproject.org>;
 Sat, 19 Sep 2020 21:20:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 79C8B204C5
 for <devel@driverdev.osuosl.org>; Sat, 19 Sep 2020 21:20:15 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id a15so7929136ljk.2
 for <devel@driverdev.osuosl.org>; Sat, 19 Sep 2020 14:20:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ARYlD+mbtcJAUH0Veuj81wsIo6yFsSRfm6bQdfgH0jc=;
 b=YfYk65gx6U4cr7K3Jyg7OTAqSb/FcTmclUnYa4H69kyaQ/89g5oKLanVsBij0Vvn50
 2EhsrQVUog2LZNagcuzCRHoUZN/ebm+Ido4InV05OAtV0/UrxfUPtgJ8bHKiNeFdqLzG
 TbleKHpY/e3ZIUG+OJenas6rV5XagljnSjMpiPu6AAAS5Z2OzTYG944EFfmHoHnZg//F
 2u7mx9DjPaQ5zwUAUHbgIziLIM/4rIfEAK2j4M+a4RfHA8jlnLAtHHoEcNVP0e6PnKiB
 u/5B/BjCN0UUJ5sN9fXd3ZGGGwflaoc59b4ZgHNZF4vIk21/Ip16ut9FrNv8iu4AOR0E
 h9GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ARYlD+mbtcJAUH0Veuj81wsIo6yFsSRfm6bQdfgH0jc=;
 b=NfMHauw41zK2a8iztgdvP1pqXV7aQapx7tHc+P98P90fOXeHzyEmTSQBhLaEnGWnCB
 MmleRF9qwKMZALkjwzHB+E5exlf4LVO8sIcs8Cj6DI5r3ndjOFmPVAY1WZXrnt4usOmO
 0zH/70VboHC3Py1a6D+I0PWkx7voYGuePhqdl9vpgnh9gH+/42kk6mpwNM7CXajXzrk9
 m/UsQ1uypN68dyxTdk/iaJs3ElYOOhdJXrShvGCts+cGdRJvrw9G9UItXaS1uxtXPhoQ
 eePruP6C5RPytK/PhctAvuI+6XorOcMXK2yAJNLs2HzR0d8LiXl0BntnQixevy+711Xz
 IRAQ==
X-Gm-Message-State: AOAM5331VE1OiqQ+yelz9Bt9eYvNmog8FSEnj05aUNRAvF4HdTYzvUdq
 EtoMWbou3yhFbRaksTA1MpU=
X-Google-Smtp-Source: ABdhPJw1Dq47vNEGO0cw9E1XsEihuvszqtiO9a5+k35+2M7WHqbnaVY4e/EqMGIWXdsA39BeiCbHDQ==
X-Received: by 2002:a05:651c:1064:: with SMTP id
 y4mr12694418ljm.107.1600550413566; 
 Sat, 19 Sep 2020 14:20:13 -0700 (PDT)
Received: from alpha (10.177.smarthome.spb.ru. [109.71.177.10])
 by smtp.gmail.com with ESMTPSA id 18sm1447752lfz.141.2020.09.19.14.20.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 19 Sep 2020 14:20:12 -0700 (PDT)
Received: (nullmailer pid 264177 invoked by uid 1000);
 Sat, 19 Sep 2020 21:25:23 -0000
From: Ivan Safonov <insafonov@gmail.com>
To: Larry Finger <Larry.Finger@lwfinger.net>
Subject: [PATCH] staging:r8188eu: replace WIFI_REASON_CODE enum with native
 ieee80211_reasoncode
Date: Sun, 20 Sep 2020 00:24:44 +0300
Message-Id: <20200919212443.264126-1-insafonov@gmail.com>
X-Mailer: git-send-email 2.26.2
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
Cc: devel@driverdev.osuosl.org, Ivan Safonov <insafonov@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Andre Pinto <andrealmeidap1996@gmail.com>, linux-kernel@vger.kernel.org,
 Peilin Ye <yepeilin.cs@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

WIFI_REASON_CODE is duplication of enum ieee80211_reasoncode.

Signed-off-by: Ivan Safonov <insafonov@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c |  4 +--
 drivers/staging/rtl8188eu/include/wifi.h      | 31 -------------------
 2 files changed, 2 insertions(+), 33 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
index 4df790c83d9f..cef15cb937d2 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
@@ -2929,7 +2929,7 @@ static unsigned int OnAssocReq(struct adapter *padapter,
 
 	pstat = rtw_get_stainfo(pstapriv, GetAddr2Ptr(pframe));
 	if (!pstat) {
-		status = _RSON_CLS2_;
+		status = WLAN_REASON_CLASS2_FRAME_FROM_NONAUTH_STA;
 		goto asoc_class2_error;
 	}
 
@@ -2943,7 +2943,7 @@ static unsigned int OnAssocReq(struct adapter *padapter,
 	/*  check if this stat has been successfully authenticated/assocated */
 	if (!((pstat->state) & WIFI_FW_AUTH_SUCCESS)) {
 		if (!((pstat->state) & WIFI_FW_ASSOC_SUCCESS)) {
-			status = _RSON_CLS2_;
+			status = WLAN_REASON_CLASS2_FRAME_FROM_NONAUTH_STA;
 			goto asoc_class2_error;
 		} else {
 			pstat->state &= (~WIFI_FW_ASSOC_SUCCESS);
diff --git a/drivers/staging/rtl8188eu/include/wifi.h b/drivers/staging/rtl8188eu/include/wifi.h
index a549b6d0159a..757c582ba4d9 100644
--- a/drivers/staging/rtl8188eu/include/wifi.h
+++ b/drivers/staging/rtl8188eu/include/wifi.h
@@ -74,37 +74,6 @@ enum WIFI_FRAME_SUBTYPE {
 	WIFI_QOS_DATA_NULL	= (BIT(6) | WIFI_QOS_DATA_TYPE),
 };
 
-enum WIFI_REASON_CODE	{
-	_RSON_RESERVED_			= 0,
-	_RSON_UNSPECIFIED_		= 1,
-	_RSON_AUTH_NO_LONGER_VALID_	= 2,
-	_RSON_DEAUTH_STA_LEAVING_	= 3,
-	_RSON_INACTIVITY_		= 4,
-	_RSON_UNABLE_HANDLE_		= 5,
-	_RSON_CLS2_			= 6,
-	_RSON_CLS3_			= 7,
-	_RSON_DISAOC_STA_LEAVING_	= 8,
-	_RSON_ASOC_NOT_AUTH_		= 9,
-
-	/*  WPA reason */
-	_RSON_INVALID_IE_		= 13,
-	_RSON_MIC_FAILURE_		= 14,
-	_RSON_4WAY_HNDSHK_TIMEOUT_	= 15,
-	_RSON_GROUP_KEY_UPDATE_TIMEOUT_	= 16,
-	_RSON_DIFF_IE_			= 17,
-	_RSON_MLTCST_CIPHER_NOT_VALID_	= 18,
-	_RSON_UNICST_CIPHER_NOT_VALID_	= 19,
-	_RSON_AKMP_NOT_VALID_		= 20,
-	_RSON_UNSUPPORT_RSNE_VER_	= 21,
-	_RSON_INVALID_RSNE_CAP_		= 22,
-	_RSON_IEEE_802DOT1X_AUTH_FAIL_	= 23,
-
-	/* belowing are Realtek definition */
-	_RSON_PMK_NOT_AVAILABLE_	= 24,
-	_RSON_TDLS_TEAR_TOOFAR_		= 25,
-	_RSON_TDLS_TEAR_UN_RSN_		= 26,
-};
-
 enum WIFI_STATUS_CODE {
 	_STATS_SUCCESSFUL_		= 0,
 	_STATS_FAILURE_			= 1,
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

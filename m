Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A73333875C
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Mar 2021 09:30:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D45FC6F9BA;
	Fri, 12 Mar 2021 08:30:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Dd_asr62skOr; Fri, 12 Mar 2021 08:30:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id ADE706067E;
	Fri, 12 Mar 2021 08:30:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2BFFE1BF59B
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 08:27:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 28AB98451C
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 08:27:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FitKhGkGHpfy for <devel@linuxdriverproject.org>;
 Fri, 12 Mar 2021 08:27:01 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com
 [IPv6:2a00:1450:4864:20::432])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 318E98450D
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 08:27:01 +0000 (UTC)
Received: by mail-wr1-x432.google.com with SMTP id e10so4288246wro.12
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 00:27:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=JYA31Hr8FIeM1wDT6IqxOwczTgFLajARUNFFnRlZFz4=;
 b=PTiK4wGyIiIdYqCBztwDn63AY8tXVQHZL8BRII9lv3ZkLm0cxQ413orC7tN9en1saL
 q/RzghHD96urouaLFmsME6K/R8dBW4D3N2lwGw/Qvb4psJRowIT3NvERh0gnytg6W2yO
 dTpIvZA8PCuM2a2g3x5lxYVC/lDAYHKWnODVPTRXECqqGkvMHn7hsmbM88slTxaZi+7m
 lo2fO5piKuSOOYTKHzVAMNmdR/AyzcHMfykH4Ujx7jS0tNVI6LiaQutpOimq5lBTCp1h
 kYcGufiqdHQ2RjdffDuQ/GXDLPxVr6WdOjxJeelFxw+d5SouNckwSWy+MX1zQ/+N9rdZ
 54Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JYA31Hr8FIeM1wDT6IqxOwczTgFLajARUNFFnRlZFz4=;
 b=lU22GWNPl1Rh3wlXKx21j4SzBatkHiK/QWfSUpkpEvWSZ6KfPNaWyCHSgfooUYnzKc
 ln9WFhtKuqg3OhfeA8X+G8nliHu5H2HXclpgTxzRu2ieX5NHy168bXv+y1/Xj7SNVKru
 ZBuHTP1OTtKAnqvV39hj9UA1wH5JPH1rSFotzkAmiL/53asd5xPjl+ZYO+pMCFXq3Dbc
 piIZYoAUZqUdp2EzkhIFMuYKYKXZ/AruJsb9HJIsODxwSrwIRCRfIT+RY7WHX2EzXwxl
 f68C5u9UkLKSCuf8/DlahmDRrt/T0PwjhhclX0HPh02I84LnPmXW0OjSpf1yO3cZltI8
 lyKQ==
X-Gm-Message-State: AOAM532ymDyh/82jHP2XTaJy6xOtVDcF1th/z3rfsrPtEMvzwc7O9nkl
 Fbp89ajgPojeOWVJukxa3HHhG0xPOQE=
X-Google-Smtp-Source: ABdhPJz/L8v06zZw3V3imnp/nn9chbdUkSFkqmRt4BxVmii09l4CLzjyi/fVEYQroRNZCJg6/UaIEw==
X-Received: by 2002:a5d:410b:: with SMTP id l11mr12919595wrp.16.1615537619459; 
 Fri, 12 Mar 2021 00:26:59 -0800 (PST)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id i8sm7743979wry.90.2021.03.12.00.26.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Mar 2021 00:26:59 -0800 (PST)
From: Marco Cesati <marcocesati@gmail.com>
X-Google-Original-From: Marco Cesati <marco.cesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 18/33] staging: rtl8723bs: remove typedefs in rtw_security.h
Date: Fri, 12 Mar 2021 09:26:23 +0100
Message-Id: <20210312082638.25512-19-marco.cesati@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210312082638.25512-1-marco.cesati@gmail.com>
References: <20210312082638.25512-1-marco.cesati@gmail.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This commit fixes the following checkpatch.pl warning:

    WARNING: do not add new typedefs
    #87: FILE: include/rtw_security.h:87:
    +typedef struct _RT_PMKID_LIST {

Signed-off-by: Marco Cesati <marco.cesati@gmail.com>
---
 drivers/staging/rtl8723bs/include/rtw_security.h  | 6 +++---
 drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c | 2 +-
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c    | 2 +-
 drivers/staging/rtl8723bs/os_dep/mlme_linux.c     | 8 ++++----
 4 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/rtw_security.h b/drivers/staging/rtl8723bs/include/rtw_security.h
index 85ffd4ec4ce5..6c1483989ea3 100644
--- a/drivers/staging/rtl8723bs/include/rtw_security.h
+++ b/drivers/staging/rtl8723bs/include/rtw_security.h
@@ -84,14 +84,14 @@ union Keytype {
 };
 
 
-typedef struct _RT_PMKID_LIST {
+struct RT_PMKID_LIST {
 	u8 				bUsed;
 	u8 				Bssid[6];
 	u8 				PMKID[16];
 	u8 				SsidBuf[33];
 	u8 *ssid_octet;
 	u16 					ssid_length;
-} RT_PMKID_LIST, *PRT_PMKID_LIST;
+};
 
 
 struct security_priv {
@@ -166,7 +166,7 @@ struct security_priv {
 	u32 btkip_countermeasure_time;
 
 	/*  For WPA2 Pre-Authentication. */
-	RT_PMKID_LIST		PMKIDList[NUM_PMKID_CACHE];	/*  Renamed from PreAuthKey[NUM_PRE_AUTH_KEY]. Annie, 2006-10-13. */
+	struct RT_PMKID_LIST		PMKIDList[NUM_PMKID_CACHE];	/*  Renamed from PreAuthKey[NUM_PRE_AUTH_KEY]. Annie, 2006-10-13. */
 	u8 		PMKIDIndex;
 
 	u8 bWepDefaultKeyIdxSet;
diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
index ff164a8c8679..f0e38303022d 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
@@ -2346,7 +2346,7 @@ static int cfg80211_rtw_flush_pmksa(struct wiphy *wiphy,
 
 	DBG_871X(FUNC_NDEV_FMT"\n", FUNC_NDEV_ARG(ndev));
 
-	memset(&psecuritypriv->PMKIDList[0], 0x00, sizeof(RT_PMKID_LIST) * NUM_PMKID_CACHE);
+	memset(&psecuritypriv->PMKIDList[0], 0x00, sizeof(struct RT_PMKID_LIST) * NUM_PMKID_CACHE);
 	psecuritypriv->PMKIDIndex = 0;
 
 	return 0;
diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index 78ba2423ed65..e1d168d6ac86 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -999,7 +999,7 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
 	        }
 	} else if (pPMK->cmd == IW_PMKSA_FLUSH) {
 		DBG_871X("[rtw_wx_set_pmkid] IW_PMKSA_FLUSH!\n");
-		memset(&psecuritypriv->PMKIDList[0], 0x00, sizeof(RT_PMKID_LIST) * NUM_PMKID_CACHE);
+		memset(&psecuritypriv->PMKIDList[0], 0x00, sizeof(struct RT_PMKID_LIST) * NUM_PMKID_CACHE);
 		psecuritypriv->PMKIDIndex = 0;
 		intReturn = true;
 	}
diff --git a/drivers/staging/rtl8723bs/os_dep/mlme_linux.c b/drivers/staging/rtl8723bs/os_dep/mlme_linux.c
index 20899b2cff43..ac3ae26fc385 100644
--- a/drivers/staging/rtl8723bs/os_dep/mlme_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/mlme_linux.c
@@ -65,7 +65,7 @@ void rtw_os_indicate_scan_done(struct adapter *padapter, bool aborted)
 	indicate_wx_scan_complete_event(padapter);
 }
 
-static RT_PMKID_LIST   backupPMKIDList[NUM_PMKID_CACHE];
+static struct RT_PMKID_LIST   backupPMKIDList[NUM_PMKID_CACHE];
 void rtw_reset_securitypriv(struct adapter *adapter)
 {
 	u8 backupPMKIDIndex = 0;
@@ -84,7 +84,7 @@ void rtw_reset_securitypriv(struct adapter *adapter)
 		/*  Backup the btkip_countermeasure information. */
 		/*  When the countermeasure is trigger, the driver have to disconnect with AP for 60 seconds. */
 
-		memcpy(&backupPMKIDList[0], &adapter->securitypriv.PMKIDList[0], sizeof(RT_PMKID_LIST) * NUM_PMKID_CACHE);
+		memcpy(&backupPMKIDList[0], &adapter->securitypriv.PMKIDList[0], sizeof(struct RT_PMKID_LIST) * NUM_PMKID_CACHE);
 		backupPMKIDIndex = adapter->securitypriv.PMKIDIndex;
 		backupTKIPCountermeasure = adapter->securitypriv.btkip_countermeasure;
 		backupTKIPcountermeasure_time = adapter->securitypriv.btkip_countermeasure_time;
@@ -96,7 +96,7 @@ void rtw_reset_securitypriv(struct adapter *adapter)
 
 		/*  Added by Albert 2009/02/18 */
 		/*  Restore the PMK information to securitypriv structure for the following connection. */
-		memcpy(&adapter->securitypriv.PMKIDList[0], &backupPMKIDList[0], sizeof(RT_PMKID_LIST) * NUM_PMKID_CACHE);
+		memcpy(&adapter->securitypriv.PMKIDList[0], &backupPMKIDList[0], sizeof(struct RT_PMKID_LIST) * NUM_PMKID_CACHE);
 		adapter->securitypriv.PMKIDIndex = backupPMKIDIndex;
 		adapter->securitypriv.btkip_countermeasure = backupTKIPCountermeasure;
 		adapter->securitypriv.btkip_countermeasure_time = backupTKIPcountermeasure_time;
@@ -127,7 +127,7 @@ void rtw_reset_securitypriv(struct adapter *adapter)
 
 void rtw_os_indicate_disconnect(struct adapter *adapter)
 {
-	/* RT_PMKID_LIST   backupPMKIDList[ NUM_PMKID_CACHE ]; */
+	/* struct RT_PMKID_LIST   backupPMKIDList[ NUM_PMKID_CACHE ]; */
 
 	netif_carrier_off(adapter->pnetdev); /*  Do it first for tx broadcast pkt after disconnection issue! */
 
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

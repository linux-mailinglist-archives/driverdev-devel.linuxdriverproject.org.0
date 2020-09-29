Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AF63027BD30
	for <lists+driverdev-devel@lfdr.de>; Tue, 29 Sep 2020 08:33:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CA3532052A;
	Tue, 29 Sep 2020 06:33:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M6qjGlzTKHEy; Tue, 29 Sep 2020 06:32:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3D4BC2052C;
	Tue, 29 Sep 2020 06:32:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B2C6A1BF981
 for <devel@linuxdriverproject.org>; Tue, 29 Sep 2020 06:32:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AFC2E85F6D
 for <devel@linuxdriverproject.org>; Tue, 29 Sep 2020 06:32:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Kftlpqt-3J-4 for <devel@linuxdriverproject.org>;
 Tue, 29 Sep 2020 06:32:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com
 [209.85.208.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A1AF085810
 for <devel@driverdev.osuosl.org>; Tue, 29 Sep 2020 06:32:35 +0000 (UTC)
Received: by mail-ed1-f67.google.com with SMTP id n13so5062100edo.10
 for <devel@driverdev.osuosl.org>; Mon, 28 Sep 2020 23:32:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=o+oMInjT3TSvaINmgS8ZiHhcqDdzTBuNQa1FFKqPE8A=;
 b=PLFfuZ8BPnjGsK3jSX5DTXl/VkcjS7gQej3vA1Z2eEX1Vdd/RvPd8eFjJ9iGRKSyUl
 y5AfeDsKaAMGf8v1fmi9ETHUS8QrvJNcASRpOQWcKQgvyp8OBR7JK53cUy25Xt/RGpZu
 bCYXaJDi+8QVlMuAdLVB0ptEE2SJvxAabIxjxpWyHoEieDAybdE3yZXooUXMl+bG1y/7
 sU5wRsZ/ErpzQhRtCM+ezLK7dnXK4vl0OJAiCPbwz/WMwP/iDG1gpAH2UvhgFpLYIClA
 qi0qruEQDmQAjA8MH7WZh4uLEF9adafBfe1x2cvFQSoURYCt8uMc3WvptB4+v87S6acV
 kFTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=o+oMInjT3TSvaINmgS8ZiHhcqDdzTBuNQa1FFKqPE8A=;
 b=UtPAmUm9C/Xnf4XbBA2Co8LPhVvQYoF5h7ni1bTEOVF2WEoTsKtTnTDwP5xQOrUolg
 jPyq0n9FaTfu9AH8QX4/O47xS+Tw5wxhy3TVnO965QIWMa4QulJpRvLllAjoECWH9g2J
 d2REqOUfSkqcV6Ku+iQ5f1FqPGvOvVcpBx5HJ/Fw5MkD6kMxzoka1vJaxvNGEToQlO7D
 3VlSjPtbRgti/6r+6cGSa5UorCYpeRBpNXP4AZmJmLj3qa5y8LV62XHyG6nCWvo99I1h
 rHTS3rbPRKuqTtX+4C2RgSdGQimLC1L3njJtPGKOMIWpLQ8XqhiHamt9jw9rsO5VfiDK
 +BPQ==
X-Gm-Message-State: AOAM532wyHzw+Ze0d4A+o2GToURRw6PCh520TjTnCruq3rbZGuZGPFfd
 l/ViQtS2Kz1pj9QDpcoLt3M=
X-Google-Smtp-Source: ABdhPJzHuldJJP/U0lCchrQvvolPG+PDE7VR7UDkJae0O9VVJsO7mtkmMugGWAElrnRVrDAmrwentQ==
X-Received: by 2002:a05:6402:1254:: with SMTP id
 l20mr1582473edw.312.1601361154136; 
 Mon, 28 Sep 2020 23:32:34 -0700 (PDT)
Received: from localhost.localdomain
 (ipservice-092-219-207-039.092.219.pools.vodafone-ip.de. [92.219.207.39])
 by smtp.gmail.com with ESMTPSA id r8sm4730915edy.87.2020.09.28.23.32.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Sep 2020 23:32:33 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 3/8] staging: rtl8188eu: rename struct field Bssid -> bssid
Date: Tue, 29 Sep 2020 08:28:42 +0200
Message-Id: <20200929062847.23985-3-straube.linux@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200929062847.23985-1-straube.linux@gmail.com>
References: <20200929062847.23985-1-straube.linux@gmail.com>
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

Rename field of struct rt_pmkid_list to avoid camel case.

Bssid -> bssid

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_mlme.c        | 2 +-
 drivers/staging/rtl8188eu/include/rtw_security.h | 2 +-
 drivers/staging/rtl8188eu/os_dep/ioctl_linux.c   | 8 ++++----
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme.c b/drivers/staging/rtl8188eu/core/rtw_mlme.c
index 5256817ee12a..d34d46506b50 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme.c
@@ -1673,7 +1673,7 @@ static int SecIsInPMKIDList(struct adapter *Adapter, u8 *bssid)
 
 	do {
 		if ((psecuritypriv->PMKIDList[i].bUsed) &&
-		    (!memcmp(psecuritypriv->PMKIDList[i].Bssid, bssid, ETH_ALEN)))
+		    (!memcmp(psecuritypriv->PMKIDList[i].bssid, bssid, ETH_ALEN)))
 			break;
 	} while (++i < NUM_PMKID_CACHE);
 
diff --git a/drivers/staging/rtl8188eu/include/rtw_security.h b/drivers/staging/rtl8188eu/include/rtw_security.h
index 5f418003647b..bfa080d6a1a9 100644
--- a/drivers/staging/rtl8188eu/include/rtw_security.h
+++ b/drivers/staging/rtl8188eu/include/rtw_security.h
@@ -82,7 +82,7 @@ union Keytype {
 
 struct rt_pmkid_list {
 	u8	bUsed;
-	u8	Bssid[6];
+	u8	bssid[6];
 	u8	PMKID[16];
 	u8	SsidBuf[33];
 	u8	*ssid_octet;
diff --git a/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c b/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
index 7fd8582ba353..9919413b6f7e 100644
--- a/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
@@ -778,7 +778,7 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
 
 		/* overwrite PMKID */
 		for (j = 0; j < NUM_PMKID_CACHE; j++) {
-			if (!memcmp(psecuritypriv->PMKIDList[j].Bssid, strIssueBssid, ETH_ALEN)) {
+			if (!memcmp(psecuritypriv->PMKIDList[j].bssid, strIssueBssid, ETH_ALEN)) {
 				/*  BSSID is matched, the same AP => rewrite with new PMKID. */
 				DBG_88E("[%s] BSSID exists in the PMKList.\n", __func__);
 				memcpy(psecuritypriv->PMKIDList[j].PMKID, pPMK->pmkid, IW_PMKID_LEN);
@@ -794,7 +794,7 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
 			DBG_88E("[%s] Use the new entry index = %d for this PMKID.\n",
 				__func__, psecuritypriv->PMKIDIndex);
 
-			memcpy(psecuritypriv->PMKIDList[psecuritypriv->PMKIDIndex].Bssid, strIssueBssid, ETH_ALEN);
+			memcpy(psecuritypriv->PMKIDList[psecuritypriv->PMKIDIndex].bssid, strIssueBssid, ETH_ALEN);
 			memcpy(psecuritypriv->PMKIDList[psecuritypriv->PMKIDIndex].PMKID, pPMK->pmkid, IW_PMKID_LEN);
 
 			psecuritypriv->PMKIDList[psecuritypriv->PMKIDIndex].bUsed = true;
@@ -806,9 +806,9 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
 		DBG_88E("[%s] IW_PMKSA_REMOVE!\n", __func__);
 		ret = true;
 		for (j = 0; j < NUM_PMKID_CACHE; j++) {
-			if (!memcmp(psecuritypriv->PMKIDList[j].Bssid, strIssueBssid, ETH_ALEN)) {
+			if (!memcmp(psecuritypriv->PMKIDList[j].bssid, strIssueBssid, ETH_ALEN)) {
 				/*  BSSID is matched, the same AP => Remove this PMKID information and reset it. */
-				eth_zero_addr(psecuritypriv->PMKIDList[j].Bssid);
+				eth_zero_addr(psecuritypriv->PMKIDList[j].bssid);
 				psecuritypriv->PMKIDList[j].bUsed = false;
 				break;
 			}
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

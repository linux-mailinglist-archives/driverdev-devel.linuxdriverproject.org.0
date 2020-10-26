Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C216298CC9
	for <lists+driverdev-devel@lfdr.de>; Mon, 26 Oct 2020 13:14:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9E50985FCB;
	Mon, 26 Oct 2020 12:14:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XuoE5BpCjyGQ; Mon, 26 Oct 2020 12:14:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1C43385821;
	Mon, 26 Oct 2020 12:14:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 09C5B1BF40F
 for <devel@linuxdriverproject.org>; Mon, 26 Oct 2020 12:14:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 04460859D9
 for <devel@linuxdriverproject.org>; Mon, 26 Oct 2020 12:14:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5TjYwVH1K4rl for <devel@linuxdriverproject.org>;
 Mon, 26 Oct 2020 12:14:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1F71D85821
 for <devel@driverdev.osuosl.org>; Mon, 26 Oct 2020 12:14:43 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id x7so12227698wrl.3
 for <devel@driverdev.osuosl.org>; Mon, 26 Oct 2020 05:14:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=9XiXFBGQEoweypTgUIFL5kZ+Amj93MlM0t0ZCMvklW0=;
 b=iTKZFezCsqq2n2F4JPAbKdXTaWRh9kTrhFstv9NgLlaNfbTkeeLpyWOp95hc3X1SrX
 E8SD4Ww212pal2CIkC6EB9bc0oNGUIojxrZuo2fLQBvicj3LxX4HiRTGyky+vi7WTYwr
 mYq4X1mZZb82+f6KykkQ0c+hSxkBbh1kexNLcdT8oKLLk2Q2TI1wnYWYQpw1ca4RBNB2
 /zSBtSneE9LOw5+KEu7fn6Rh6SE2ZWxHjlTrzmdmLIfcE1kfePIH2PtNAIGeikfSV9pg
 oE+r2G6b0ahFd53hpM64HeKlEwhpShrtizhpkZgqRB2MZ3pTNloT3+PNYJWmr+uoeQJL
 kd/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=9XiXFBGQEoweypTgUIFL5kZ+Amj93MlM0t0ZCMvklW0=;
 b=UeTxmAJCN3/7ofVwbPcXgFgH41IufMI25HwV6u+btlqNPxY/rSWUVMWSHyTlIW+rjO
 LSahsUZ++PnRQH0mEtPYNu3TxvXPXFMBKWH2CFxDxYV59Jbf36ra7CJXiR029bvgDMBl
 OW9fBM8Rm3qhFUoeXfhd3hN3Lqg4kcH5cGEKhSjOkPv1CcIwpOnQql/wHpLn8fsGY9kY
 dD9vQDOAdVx0AxO+GwZ9zPN+SoODIgZuD1Y28K3OG7dQf8UBDbctJSkqsRcstYeNzA1d
 WSUW7croQdRPq0KEAHJIZV0LEseU6WDbTRj5Hdi2PFRz/x9LqB6MR4kx+tvI9d8yNTu6
 UCBw==
X-Gm-Message-State: AOAM533iXn99mnw+XPQ4P6ZDYp1YsL0jN1kDDf5o8EAs66tuGO/GM2MX
 /1Wjyfpiqvme8NvPi8+nZnM=
X-Google-Smtp-Source: ABdhPJwPpJyXIs3pUGwvBR+/ENMixM97/4OI0vdyYuXXn8soG6754hhxDYQq9ez/zErVZ5L/5ABVdQ==
X-Received: by 2002:a5d:40c3:: with SMTP id b3mr19024728wrq.157.1603714481408; 
 Mon, 26 Oct 2020 05:14:41 -0700 (PDT)
Received: from LEGION ([103.150.154.170])
 by smtp.gmail.com with ESMTPSA id v189sm20241764wmg.14.2020.10.26.05.14.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Oct 2020 05:14:40 -0700 (PDT)
Date: Mon, 26 Oct 2020 17:14:35 +0500
From: Muhammad Usama Anjum <musamaanjum@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8192e, rtl8192u: use correct notation to define
 pointer
Message-ID: <20201026121435.GA782465@LEGION>
MIME-Version: 1.0
Content-Disposition: inline
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
 musamaanjum@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Use pointer notation instead of using array notation as info_element is
a pointer not array.

Warnings from sparse:
drivers/staging/rtl8192u/ieee80211/ieee80211.h:1013:51: warning: array of flexible structures
drivers/staging/rtl8192u/ieee80211/ieee80211.h:985:51: warning: array of flexible structures
drivers/staging/rtl8192u/ieee80211/ieee80211.h:963:51: warning: array of flexible structures
drivers/staging/rtl8192u/ieee80211/ieee80211.h:996:51: warning: array of flexible structures
drivers/staging/rtl8192u/ieee80211/ieee80211.h:974:51: warning: array of flexible structures

drivers/staging/rtl8192e/rtllib.h:832:48: warning: array of flexible structures
drivers/staging/rtl8192e/rtllib.h:851:48: warning: array of flexible structures
drivers/staging/rtl8192e/rtllib.h:805:48: warning: array of flexible structures
drivers/staging/rtl8192e/rtllib.h:843:48: warning: array of flexible structures
drivers/staging/rtl8192e/rtllib.h:821:48: warning: array of flexible structures

Signed-off-by: Muhammad Usama Anjum <musamaanjum@gmail.com>
---
 drivers/staging/rtl8192e/rtllib.h              | 10 +++++-----
 drivers/staging/rtl8192u/ieee80211/ieee80211.h | 12 ++++++------
 2 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtllib.h b/drivers/staging/rtl8192e/rtllib.h
index b84f00b8d18b..1dab9c3d08a8 100644
--- a/drivers/staging/rtl8192e/rtllib.h
+++ b/drivers/staging/rtl8192e/rtllib.h
@@ -802,7 +802,7 @@ struct rtllib_authentication {
 	__le16 transaction;
 	__le16 status;
 	/*challenge*/
-	struct rtllib_info_element info_element[];
+	struct rtllib_info_element *info_element;
 } __packed;
 
 struct rtllib_disauth {
@@ -818,7 +818,7 @@ struct rtllib_disassoc {
 struct rtllib_probe_request {
 	struct rtllib_hdr_3addr header;
 	/* SSID, supported rates */
-	struct rtllib_info_element info_element[];
+	struct rtllib_info_element *info_element;
 } __packed;
 
 struct rtllib_probe_response {
@@ -829,7 +829,7 @@ struct rtllib_probe_response {
 	/* SSID, supported rates, FH params, DS params,
 	 * CF params, IBSS params, TIM (if beacon), RSN
 	 */
-	struct rtllib_info_element info_element[];
+	struct rtllib_info_element *info_element;
 } __packed;
 
 /* Alias beacon for probe_response */
@@ -840,7 +840,7 @@ struct rtllib_assoc_request_frame {
 	__le16 capability;
 	__le16 listen_interval;
 	/* SSID, supported rates, RSN */
-	struct rtllib_info_element info_element[];
+	struct rtllib_info_element *info_element;
 } __packed;
 
 struct rtllib_assoc_response_frame {
@@ -848,7 +848,7 @@ struct rtllib_assoc_response_frame {
 	__le16 capability;
 	__le16 status;
 	__le16 aid;
-	struct rtllib_info_element info_element[]; /* supported rates */
+	struct rtllib_info_element *info_element; /* supported rates */
 } __packed;
 
 struct rtllib_txb {
diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211.h b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
index 39f4ddd86796..37b240dd0b1f 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211.h
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
@@ -960,7 +960,7 @@ struct ieee80211_authentication {
 	__le16 transaction;
 	__le16 status;
 	/*challenge*/
-	struct ieee80211_info_element info_element[];
+	struct ieee80211_info_element *info_element;
 } __packed;
 
 struct ieee80211_disassoc {
@@ -971,7 +971,7 @@ struct ieee80211_disassoc {
 struct ieee80211_probe_request {
 	struct rtl_80211_hdr_3addr header;
 	/* SSID, supported rates */
-	struct ieee80211_info_element info_element[];
+	struct ieee80211_info_element *info_element;
 } __packed;
 
 struct ieee80211_probe_response {
@@ -982,7 +982,7 @@ struct ieee80211_probe_response {
 	/* SSID, supported rates, FH params, DS params,
 	 * CF params, IBSS params, TIM (if beacon), RSN
 	 */
-	struct ieee80211_info_element info_element[];
+	struct ieee80211_info_element *info_element;
 } __packed;
 
 /* Alias beacon for probe_response */
@@ -993,7 +993,7 @@ struct ieee80211_assoc_request_frame {
 	__le16 capability;
 	__le16 listen_interval;
 	/* SSID, supported rates, RSN */
-	struct ieee80211_info_element info_element[];
+	struct ieee80211_info_element *info_element;
 } __packed;
 
 struct ieee80211_reassoc_request_frame {
@@ -1002,7 +1002,7 @@ struct ieee80211_reassoc_request_frame {
 	__le16 listen_interval;
 	u8 current_ap[ETH_ALEN];
 	/* SSID, supported rates, RSN */
-	struct ieee80211_info_element info_element[];
+	struct ieee80211_info_element *info_element;
 } __packed;
 
 struct ieee80211_assoc_response_frame {
@@ -1010,7 +1010,7 @@ struct ieee80211_assoc_response_frame {
 	__le16 capability;
 	__le16 status;
 	__le16 aid;
-	struct ieee80211_info_element info_element[]; /* supported rates */
+	struct ieee80211_info_element *info_element; /* supported rates */
 } __packed;
 
 struct ieee80211_txb {
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

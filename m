Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9101A1CE0C
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 May 2019 19:31:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3C16A30B5F;
	Tue, 14 May 2019 17:31:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VGCSDTiD9r7c; Tue, 14 May 2019 17:31:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7A3F830BDB;
	Tue, 14 May 2019 17:31:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D8C8F1BF5F5
 for <devel@linuxdriverproject.org>; Tue, 14 May 2019 17:31:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D0220860AE
 for <devel@linuxdriverproject.org>; Tue, 14 May 2019 17:31:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JXL1pPnec0Vf for <devel@linuxdriverproject.org>;
 Tue, 14 May 2019 17:31:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CC96386099
 for <devel@driverdev.osuosl.org>; Tue, 14 May 2019 17:31:31 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id y11so9468485pfm.13
 for <devel@driverdev.osuosl.org>; Tue, 14 May 2019 10:31:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=avxTpOdYII96cbVVeHITxV3ueUPb7nmhx0k+T3SSa84=;
 b=IfX9+yQzq5FA6ERRk0q0Qo8wAoMm+evOPwel7F4aWSfF0PKXePxLZa+kFk6xlJ6854
 c5ovKHvLRvZVRAgVGyIJQu7HrnlTOmr+2riAuunCQwy0OksNBf5C+Z/LZp8JnTrQlRbD
 ReBhvm2Cr5jbfQIENEiPNnU4FQp07064Z6s5Hh2UL0OuzPGQbsBjQL4STRHve+tKU3+J
 y99fGSDqnL2ISqGE1jcYgr48o4RBZPaXrtcGDHl7rR7eQthiTM5yN4t3o8y/2JB8BDz2
 KvYA+mMyai3mgs1PYdD4vdNmK+YOTZFiw1jhJOOTdDUpC+Qet6yAuXo6Z3SRO6LLsype
 q2KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=avxTpOdYII96cbVVeHITxV3ueUPb7nmhx0k+T3SSa84=;
 b=r0c5WgnEYas+UQLfc+8KTvNNYH5b/mB+kyW1ACoyJWtJU6OZyxPkztosmjWixqqpE6
 gPItzYIMrgLgCOjBnZL3fWTIdiM3cPnWrEtfQXpN0BeogD7LQV13HiNNC9Uzoygf+l+d
 fQdBQqVWmtGsmeUNpgb3jfqg3mjSJLWARIJ50Zn3S/jImsGoqP/QAhdTnMi76AjEUTOE
 UzGOQGNIHUqGOzyegfcotLBJxj5mf2QvvcdPCduISIKvZ35Qr26/Lo5VshlAxdnFl5mc
 wQrVugxW4bi0YG/DfLM2gW0obMc88HZKzkIqMF0cRPagaDjYLk4PBlh6SaSSoaOrP3an
 eWnw==
X-Gm-Message-State: APjAAAV2WgHMmNLnadMmEbAVF25sl0DsDcn557y6RBo/TfrL6gttElsn
 jvVX643xSbFqQpRuSk8KSE8=
X-Google-Smtp-Source: APXvYqwmXet/mjcKy9v5d+Ji95rbPFG2HNxc/qkfsUEP/crJMF0RFroEJi3JnNidv6bbllqIGzduZw==
X-Received: by 2002:a62:604:: with SMTP id 4mr42071509pfg.38.1557855091420;
 Tue, 14 May 2019 10:31:31 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:7145:24c8:f23d:8e91:fd10:9c55])
 by smtp.googlemail.com with ESMTPSA id n9sm2222485pfq.53.2019.05.14.10.31.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 14 May 2019 10:31:31 -0700 (PDT)
From: Puranjay Mohan <puranjay12@gmail.com>
To: puranjaymohan@gmail.com,
	greg@kroah.com
Subject: [PATCH v2 5/5] Staging: rtl8192u: ieee80211: Use !x in place of NULL
 comparison
Date: Tue, 14 May 2019 23:00:23 +0530
Message-Id: <20190514173023.31146-6-puranjay12@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190514173023.31146-1-puranjay12@gmail.com>
References: <20190514173023.31146-1-puranjay12@gmail.com>
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
Cc: devel@driverdev.osuosl.org, dan.carpenter@oracle.com,
 Puranjay Mohan <puranjay12@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix comparison to NULL, chang to !x operation.
Issue found using checkpatch.pl

Signed-off-by: Puranjay Mohan <puranjay12@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
index 944c8894f9ff..9f54adede230 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
@@ -1796,7 +1796,7 @@ static void ieee80211_process_action(struct ieee80211_device *ieee,
 	u8 *act = ieee80211_get_payload(header);
 	u8 tmp = 0;
 //	IEEE80211_DEBUG_DATA(IEEE80211_DL_DATA|IEEE80211_DL_BA, skb->data, skb->len);
-	if (act == NULL) {
+	if (!act) {
 		IEEE80211_DEBUG(IEEE80211_DL_ERR, "error to get payload of action frame\n");
 		return;
 	}
@@ -1929,7 +1929,7 @@ ieee80211_rx_frame_softmac(struct ieee80211_device *ieee, struct sk_buff *skb,
 						memcpy(ieee->pHTInfo->PeerHTCapBuf, network->bssht.bdHTCapBuf, network->bssht.bdHTCapLen);
 						memcpy(ieee->pHTInfo->PeerHTInfoBuf, network->bssht.bdHTInfoBuf, network->bssht.bdHTInfoLen);
 					}
-					if (ieee->handle_assoc_response != NULL)
+					if (ieee->handle_assoc_response)
 						ieee->handle_assoc_response(ieee->dev, (struct ieee80211_assoc_response_frame *)header, network);
 				}
 				ieee80211_associate_complete(ieee);
@@ -2856,7 +2856,7 @@ static int ieee80211_wpa_set_encryption(struct ieee80211_device *ieee,
 		goto done;
 	}
 
-	if (*crypt == NULL || (*crypt)->ops != ops) {
+	if (!*crypt || (*crypt)->ops != ops) {
 		struct ieee80211_crypt_data *new_crypt;
 
 		ieee80211_crypt_delayed_deinit(ieee, crypt);
@@ -2871,7 +2871,7 @@ static int ieee80211_wpa_set_encryption(struct ieee80211_device *ieee,
 			new_crypt->priv =
 				new_crypt->ops->init(param->u.crypt.idx);
 
-		if (new_crypt->priv == NULL) {
+		if (!new_crypt->priv) {
 			kfree(new_crypt);
 			param->u.crypt.err = IEEE_CRYPT_ERR_CRYPT_INIT_FAILED;
 			ret = -EINVAL;
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

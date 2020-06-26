Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BB0FA20B4C4
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Jun 2020 17:37:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 64EE487E59;
	Fri, 26 Jun 2020 15:37:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jDZ-vF4TFZlD; Fri, 26 Jun 2020 15:37:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6BF0B87E94;
	Fri, 26 Jun 2020 15:37:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5921D1BF295
 for <devel@linuxdriverproject.org>; Fri, 26 Jun 2020 15:37:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 54795200E5
 for <devel@linuxdriverproject.org>; Fri, 26 Jun 2020 15:37:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2o0RtFdODRmw for <devel@linuxdriverproject.org>;
 Fri, 26 Jun 2020 15:37:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qv1-f66.google.com (mail-qv1-f66.google.com
 [209.85.219.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 468562002E
 for <devel@driverdev.osuosl.org>; Fri, 26 Jun 2020 15:37:24 +0000 (UTC)
Received: by mail-qv1-f66.google.com with SMTP id dp10so4654937qvb.10
 for <devel@driverdev.osuosl.org>; Fri, 26 Jun 2020 08:37:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PIv8V6aiMphHJqhfYNfxJUYD+2r3xdbZCzFrzgJJWCw=;
 b=STNDllPjjelrBsIoieiy0INEtKWNlF2uaWkfabX6vdYv8ilr4wSE6LFT8ROW9XNe0+
 10qty50EiFso1CgA2woo1g+I4JQJNtlD/d3l80tAYcYgdwumguTvoTBdE23+c/UhkPjz
 FsYeIFDA76yrQZorEeN+iALi6MYT+qq7ualbKsA7/wsepvDP4eFKepKgBfyW46aNEkUG
 pTto38UOTcRBiYVZQhf9xC6z0jRKv0QWorM/ko3IIy155fTFf9im/p/4r0/r3xo3ow3f
 aE1ySr0hJCx7oIJd+63pFHKT6fQ+/9sJ3fJNYdLPt/bn0Ecb9/koLS9llQa9RydfzlFd
 hMsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PIv8V6aiMphHJqhfYNfxJUYD+2r3xdbZCzFrzgJJWCw=;
 b=rYfoAcKxV9TixZT7xFjqT9dxHrkp182wKe9HAp/xjjc7IwObGOubr2s99tuv+brvFg
 nUnydVh8N4c2SRi5uxMs3JU2IfbiqL2wyejiDd9/mcmBGnoJGzSeLBbE4zkZSDbJ7olH
 GOG+E+TN15tyrZ0R9j3BFUNuGqIjHPfwXqQB+qYSAiele6tOn8YcVfPajyIDKIK/Z5vA
 fAvZ6MvBhORxjprNValKIapHx2t8+/wn5IL3vU37dp6tQaiFCvaL/Y9aWX/qXlARPjXl
 qtNczh2IuZyX7zllyO+P1Kd8A3u0tTN9vC8T0RKtYSbbNO5y8R9KeqRX9FwAX5JlAI3b
 76tQ==
X-Gm-Message-State: AOAM533jyPHJmGDeCGEGDFyeEBezmmABAk5JTgKoUB9PUncY1PpeGyj1
 HEgUmaoPN0q1/cUvCnQBRu4=
X-Google-Smtp-Source: ABdhPJzLJ7jwR4oCRZbzjBD0gRvYeKkpaXYJeYTBy+r1OQFNBmc1DVQaHr4SKs/0rVpC16nttHog/g==
X-Received: by 2002:ad4:4b33:: with SMTP id s19mr3466855qvw.211.1593185843344; 
 Fri, 26 Jun 2020 08:37:23 -0700 (PDT)
Received: from mooncell.myfiosgateway.com
 (pool-173-75-208-99.phlapa.fios.verizon.net. [173.75.208.99])
 by smtp.gmail.com with ESMTPSA id y40sm9719918qtc.29.2020.06.26.08.37.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 26 Jun 2020 08:37:22 -0700 (PDT)
From: Brooke Basile <brookebasile@gmail.com>
To: Larry.Finger@lwfinger.net, gregkh@linuxfoundation.org,
 straube.linux@gmail.com, colin.king@canonical.com
Subject: [PATCH 2/4] staging: rtl8188eu: Fix strings split across lines
Date: Fri, 26 Jun 2020 11:36:38 -0400
Message-Id: <20200626153639.8097-2-brookebasile@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200626153639.8097-1-brookebasile@gmail.com>
References: <20200626153639.8097-1-brookebasile@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Brooke Basile <brookebasile@gmail.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix the following checkpatch warning:
	WARNING: quoted string split across lines

Signed-off-by: Brooke Basile <brookebasile@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_ieee80211.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_ieee80211.c b/drivers/staging/rtl8188eu/core/rtw_ieee80211.c
index a27dce7f30b3..44a25d29f1d3 100644
--- a/drivers/staging/rtl8188eu/core/rtw_ieee80211.c
+++ b/drivers/staging/rtl8188eu/core/rtw_ieee80211.c
@@ -381,8 +381,8 @@ int rtw_parse_wpa_ie(u8 *wpa_ie, int wpa_ie_len, int *group_cipher, int *pairwis
 		left -= 2;
 
 		if (count == 0 || left < count * WPA_SELECTOR_LEN) {
-			RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("%s: ie count botch (pairwise), "
-						"count %u left %u", __func__, count, left));
+			RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("%s: ie count botch (pairwise), count %u left %u",
+						__func__, count, left));
 			return _FAIL;
 		}
 
@@ -448,8 +448,8 @@ int rtw_parse_wpa2_ie(u8 *rsn_ie, int rsn_ie_len, int *group_cipher, int *pairwi
 		left -= 2;
 
 		if (count == 0 || left < count * RSN_SELECTOR_LEN) {
-			RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("%s: ie count botch (pairwise), "
-						 "count %u left %u", __func__, count, left));
+			RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("%s: ie count botch (pairwise), count %u left %u",
+						__func__, count, left));
 			return _FAIL;
 		}
 
@@ -943,8 +943,8 @@ static int rtw_get_cipher_info(struct wlan_network *pnetwork)
 				pnetwork->BcnInfo.pairwise_cipher = pairwise_cipher;
 				pnetwork->BcnInfo.group_cipher = group_cipher;
 				pnetwork->BcnInfo.is_8021x = is8021x;
-				RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("%s: pnetwork->pairwise_cipher: %d,"
-							"pnetwork->group_cipher is %d, is_8021x is %d",	__func__, pnetwork->BcnInfo.pairwise_cipher,
+				RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("%s: pnetwork->pairwise_cipher: %d, pnetwork->group_cipher is %d, is_8021x is %d",
+							__func__, pnetwork->BcnInfo.pairwise_cipher,
 							pnetwork->BcnInfo.group_cipher, pnetwork->BcnInfo.is_8021x));
 				ret = _SUCCESS;
 			}
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8D3E327F22
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Mar 2021 14:13:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 77B5943082;
	Mon,  1 Mar 2021 13:13:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JOczrH3Svc9X; Mon,  1 Mar 2021 13:13:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 10C6442FF8;
	Mon,  1 Mar 2021 13:13:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CDAD01BF372
 for <devel@linuxdriverproject.org>; Mon,  1 Mar 2021 13:13:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BDBDE4306C
 for <devel@linuxdriverproject.org>; Mon,  1 Mar 2021 13:13:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TTqERtSdNA7J for <devel@linuxdriverproject.org>;
 Mon,  1 Mar 2021 13:13:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com
 [209.85.214.171])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AE6C743087
 for <devel@driverdev.osuosl.org>; Mon,  1 Mar 2021 13:13:08 +0000 (UTC)
Received: by mail-pl1-f171.google.com with SMTP id z11so2146447plg.10
 for <devel@driverdev.osuosl.org>; Mon, 01 Mar 2021 05:13:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=LyRA/Un39dSjbtxGJwrPhO6ZvsNP9wAqKBIgSHcU5bY=;
 b=FAMyT59bbeLjXBcmYYPbzEbVUF5IOFNeVwlTSK8hr5SroHyf+2/8G2njv7dTjnWB9V
 YzJlrSOvMLZaj6DT67au+pHeU3s1wVcMvUg5xdjWRvKyMjxXMpCnsb0bZpaLbSLzpbbL
 ZU06oIEAUR8g4szyBZomaXi+RRrjMFVvK8VQEy1IQHgPDS0MbAT4DXHUG4bDBWSKVkiv
 2DngEuS1qy8udbrHzrPliTiGMTUfyD0DnoD7GSj1O2tCkV5lf8csXuCsBYXpuPGfu7NB
 VoQysmZPbAGIsPyHxR23v3rwAB4h+L1368C2qjIRktjZDQWZRGCUCUYgATZ1xdIyGUJs
 p08w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=LyRA/Un39dSjbtxGJwrPhO6ZvsNP9wAqKBIgSHcU5bY=;
 b=QKDo4yQPZvxZvWmvT0t0JY5TwnxEkiNXJJWucCNSygUDCAqo7wzNnHF6ObS5zz9G6F
 yS6gvIT4q9Vl6xKVybWUanEJEo70DykSXWyWWSEiU7/ilhzrjVu0REDvZY1MEu2iqBY9
 OvGVAVl41z4ba1QjdygRj6dekedhJxitpn3TMtGrpZ4s8Hfho8boXO4Q1QPyyBzDHbHV
 5M1OMXGOB1kycfaMgm0oo3vQkQpOOM98GG4ILDFbtEpsFAR6/2oKfu1XaqkJrCThLeWK
 M6KNceovRl75SOYKRxcK2KOccdZE1bN4wfFQTWOoB9Zyt4KYFbICGQY1nAvqUiFyFmJ6
 PmQg==
X-Gm-Message-State: AOAM530xcOk8Zhirbr6/1raSw9eZmrppwD9OPSaQR/OA8L4jREVOIXkv
 9yHyRH5E0IBWfkAqGCE9LQ==
X-Google-Smtp-Source: ABdhPJw1BSKK8KbX9B2glg6LQI9lf97fZeliSepegDQM9MztISmm1M74sQJA9vqCn/c2UPhL2545IQ==
X-Received: by 2002:a17:902:aa49:b029:e4:3825:dcd2 with SMTP id
 c9-20020a170902aa49b02900e43825dcd2mr15362246plr.39.1614604388266; 
 Mon, 01 Mar 2021 05:13:08 -0800 (PST)
Received: from mainframe ([139.193.28.239])
 by smtp.gmail.com with ESMTPSA id mp19sm4277917pjb.2.2021.03.01.05.13.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Mar 2021 05:13:07 -0800 (PST)
Date: Mon, 1 Mar 2021 20:12:59 +0700
From: Candy Febriyanto <cfebriyanto@gmail.com>
To: gregkh@linuxfoundation.org, hdegoede@redhat.com,
 Larry.Finger@lwfinger.net, devel@driverdev.osuosl.org
Subject: [PATCH 1/3] staging: rtl8723bs: core: Replace sprintf with scnprintf
Message-ID: <6c260641164d6856fc4447555fe739124cb27c19.1614603705.git.cfebriyanto@gmail.com>
References: <cover.1614603705.git.cfebriyanto@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1614603705.git.cfebriyanto@gmail.com>
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

The use of sprintf with format string here means that there is a risk
that the writes will go out of bounds, replace it with scnprintf.

In on_action_public_default the variable "cnt" isn't being used for
anything meaningful so remove it.

Signed-off-by: Candy Febriyanto <cfebriyanto@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 3 +--
 drivers/staging/rtl8723bs/core/rtw_pwrctrl.c  | 4 ++--
 2 files changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index fa4b0259c5ae..3443a5764c50 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -2084,7 +2084,6 @@ static unsigned int on_action_public_default(union recv_frame *precv_frame, u8 a
 	u8 *frame_body = pframe + sizeof(struct ieee80211_hdr_3addr);
 	u8 token;
 	struct adapter *adapter = precv_frame->u.hdr.adapter;
-	int cnt = 0;
 	char msg[64];
 
 	token = frame_body[2];
@@ -2092,7 +2091,7 @@ static unsigned int on_action_public_default(union recv_frame *precv_frame, u8 a
 	if (rtw_action_public_decache(precv_frame, token) == _FAIL)
 		goto exit;
 
-	cnt += sprintf((msg+cnt), "%s(token:%u)", action_public_str(action), token);
+	scnprintf(msg, sizeof(msg), "%s(token:%u)", action_public_str(action), token);
 	rtw_cfg80211_rx_action(adapter, pframe, frame_len, msg);
 
 	ret = _SUCCESS;
diff --git a/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c b/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
index 5b05d1eaa328..c9f4a18b24b9 100644
--- a/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
+++ b/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
@@ -554,7 +554,7 @@ void LPS_Enter(struct adapter *padapter, const char *msg)
 		/*  Idle for a while if we connect to AP a while ago. */
 		if (pwrpriv->LpsIdleCount >= 2) { /*   4 Sec */
 			if (pwrpriv->pwr_mode == PS_MODE_ACTIVE) {
-				sprintf(buf, "WIFI-%s", msg);
+				scnprintf(buf, sizeof(buf), "WIFI-%s", msg);
 				pwrpriv->bpower_saving = true;
 				rtw_set_ps_mode(padapter, pwrpriv->power_mgnt, padapter->registrypriv.smart_ps, 0, buf);
 			}
@@ -584,7 +584,7 @@ void LPS_Leave(struct adapter *padapter, const char *msg)
 
 	if (pwrpriv->bLeisurePs) {
 		if (pwrpriv->pwr_mode != PS_MODE_ACTIVE) {
-			sprintf(buf, "WIFI-%s", msg);
+			scnprintf(buf, sizeof(buf), "WIFI-%s", msg);
 			rtw_set_ps_mode(padapter, PS_MODE_ACTIVE, 0, 0, buf);
 
 			if (pwrpriv->pwr_mode == PS_MODE_ACTIVE)
-- 
2.30.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

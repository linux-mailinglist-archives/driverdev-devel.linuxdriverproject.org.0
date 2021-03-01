Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 54361328191
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Mar 2021 15:58:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D5D676F4FA;
	Mon,  1 Mar 2021 14:58:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hg9vApWSBq3Y; Mon,  1 Mar 2021 14:58:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E8F56606D6;
	Mon,  1 Mar 2021 14:58:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B90DE1BF361
 for <devel@linuxdriverproject.org>; Mon,  1 Mar 2021 14:58:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B4C4D83F98
 for <devel@linuxdriverproject.org>; Mon,  1 Mar 2021 14:58:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id phyiRKePcoz2 for <devel@linuxdriverproject.org>;
 Mon,  1 Mar 2021 14:58:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com
 [209.85.208.169])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CBDB483F3E
 for <devel@driverdev.osuosl.org>; Mon,  1 Mar 2021 14:58:29 +0000 (UTC)
Received: by mail-lj1-f169.google.com with SMTP id r23so19757540ljh.1
 for <devel@driverdev.osuosl.org>; Mon, 01 Mar 2021 06:58:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=0MjnnH9Maq09MbpNzmcFfbr0etT+U7G0MJ7kBqo93dk=;
 b=KzTX1xfcKZF1olPLfBq0pQVg0WhF8p5UXuQdPEy5lyoTBGDNCY0UKRJMqAdenbOMGJ
 6UHI05xL3wpXrwyfR01YCR8g/duxzWUfC/fdfLV+KqXjS6GALTt5NtOWZl7IEeOmuzkj
 o3cV2/tecEQ1uYcXai4+2CIb6glUu3S+sn3YTTFS4a+41Iw3eUzuK2h+w6NTkCqwwYMJ
 0knhKLGURIU4iErHh/77iyDfAHgCeFxSyhqZz3uUCyyqqmxVuHW7+wHb+kKK8tFPFmpO
 68A5wAlIZG2v8K/cim5R6ed0GlFubdHE6opTxnqLRnUWFhaT58EHDz3c3qRV1txM5AzI
 tdXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=0MjnnH9Maq09MbpNzmcFfbr0etT+U7G0MJ7kBqo93dk=;
 b=lBylX/GJB+pFxTSxdahR6AEVKwc6lhp7APSNdouC7LwGCgFOcHVqa2mKVRzu7BEuC2
 Ynp4d6jNZysMZF8wE4VZAkqVQdrhLx/hgFNpncB6Mje5iH9WlV2uAmTXuSAC0Kyju5dX
 B9g68DdzjDoRaMfRpLE/iClguJ0IUJ3Dvu85RqwV6Wt2n2X2ZAXXpqqnEGNJOCacdbUK
 24FuY4wa4FDd0LCzmy421kF+bnStkXVqTx+RkOqJE2RAOZids6iQtKbz76h9qUO8LDjp
 pyg435Rioi2i2V+aOI1ufV/pcRalIXQg1GymXE4A9Nx08PLgcXmRWrD0DTmvuJZrXfdE
 lwzQ==
X-Gm-Message-State: AOAM532bfSbY/xBmoOJlFqCUmKhg7jTqZ1NZP0MWQa61Um53qlE85CL3
 p66hezaQ0WxI/gXlX4jHhdh8oPhcYklP
X-Google-Smtp-Source: ABdhPJz0r4g9oS193nIYVsdTcz6ibzUMwkdi6BAlWws7NB+ZDn/EnCMhYd07cpREr18kW029OCoGwA==
X-Received: by 2002:a2e:bc0c:: with SMTP id b12mr9524639ljf.201.1614610707121; 
 Mon, 01 Mar 2021 06:58:27 -0800 (PST)
Received: from mainframe ([139.193.28.239])
 by smtp.gmail.com with ESMTPSA id t200sm772523lff.280.2021.03.01.06.58.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Mar 2021 06:58:26 -0800 (PST)
Date: Mon, 1 Mar 2021 21:58:17 +0700
From: Candy Febriyanto <cfebriyanto@gmail.com>
To: devel@driverdev.osuosl.org
Subject: [PATCH v2 1/3] staging: rtl8723bs: core: Replace sprintf with
 scnprintf
Message-ID: <6c260641164d6856fc4447555fe739124cb27c19.1614610197.git.cfebriyanto@gmail.com>
References: <cover.1614610197.git.cfebriyanto@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1614610197.git.cfebriyanto@gmail.com>
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
Cc: gregkh@linuxfoundation.org, Larry.Finger@lwfinger.net, hdegoede@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The use of sprintf with format string here means that there is a risk
that the writes will go out of bounds, replace it with scnprintf.

In on_action_public_default the variable "cnt" isn't being used for
anything meaningful so remove it.

Signed-off-by: Candy Febriyanto <cfebriyanto@gmail.com>
Reviewed-by: Hans de Goede <hdegoede@redhat.com>
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

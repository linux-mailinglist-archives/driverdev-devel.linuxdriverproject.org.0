Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 998253B0B3
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Jun 2019 10:23:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C33B887364;
	Mon, 10 Jun 2019 08:23:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H0L-NoL3JOrI; Mon, 10 Jun 2019 08:23:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 670BF85472;
	Mon, 10 Jun 2019 08:23:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0496E1BF3CB
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 08:23:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 01B1985472
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 08:23:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Zy7WhlDgfovA for <devel@linuxdriverproject.org>;
 Mon, 10 Jun 2019 08:23:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 693138520A
 for <devel@driverdev.osuosl.org>; Mon, 10 Jun 2019 08:23:24 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id p184so1558324pfp.7
 for <devel@driverdev.osuosl.org>; Mon, 10 Jun 2019 01:23:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qtLwe1Eyg7A0uLFCYn1rS3MZHrMQxGLdQdC+ckwkmqQ=;
 b=ItPMuOTg/19jCrIAEChdghR7gQUCzgrh6CM8WqWUDiqhgJIemGM3vBrq48BRyKqXTr
 xbZ3Ent+HaF4azJrqG+ostLdQSK0TULkcoSJv/zSz45kJexKUYU6gkxAJbRrMKDCVjOP
 +tQEdhoGfQTmQMF/3SCTxkfrfYcUfxcHOruC0lR1aHu6Lu/aeqgrZE4oeI81D8pkuP2I
 SaOw6dsN1jIEnj+Pd3V5qK3goOIX5QaxdfrtYY99A0CMWzT0u4wD07dQ7YopY3hKVb1f
 1C9jyjLsLSPu4hx3o5SUJ12zZvWNJvwS9m6wONPO9DE/pAMLcUQExW2hMVdVj+q/NtHL
 m8ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qtLwe1Eyg7A0uLFCYn1rS3MZHrMQxGLdQdC+ckwkmqQ=;
 b=bJ/F7I1yxxeRXCHXvh0NEpyFUXP8esJefqG4GKbS570nQ5DNHwn56+PiP5ZndbgPNe
 HbN27hLDyZbdju4bq8bZIzAbf+SOT/jz3YvyIsRf3ClFkLFzJDwrg+gPP+SrAOTpthxd
 oQ6pIKwycNirc7stkG6HA9scjAeDmaqaDQXx5xFZfbcS/K49tFiZkqnQgF4fVyzjGpXB
 SyUWfDa8N0fOq67JsNJTeelAnRGPgVF4cGK/BB+BY2Q161bFQIHIueP/7Ha/PElnTw2E
 nOuNKU7WHXGKGjM41WpqW/AjFg+mmdkAJXfqUonV7NO0DD308VtGSjJAerO2O3zsufea
 33eg==
X-Gm-Message-State: APjAAAXJrLwRsdURZH2kxflUDnAl1Y8u5WnwAGO5xg6VPVks/pl/b/QQ
 iB7yEpGdgdHjFJ3YswX5eRE=
X-Google-Smtp-Source: APXvYqzTnvTfVluSNyTbEH6fd2odKJ8s+5A/8m6/wWQwjBB1BpBloMK84xDxD3SFvFrnk+8naSNcsg==
X-Received: by 2002:a62:1c91:: with SMTP id c139mr65616773pfc.25.1560155004122; 
 Mon, 10 Jun 2019 01:23:24 -0700 (PDT)
Received: from localhost.localdomain ([171.79.92.225])
 by smtp.gmail.com with ESMTPSA id y7sm12868197pge.89.2019.06.10.01.23.22
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 10 Jun 2019 01:23:23 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 florian.c.schilhabel@googlemail.com, larry.finger@lwfinger.net
Subject: [PATCH v2 2/2] staging: rtl8712: Change return values of
 r8712_createbss_cmd()
Date: Mon, 10 Jun 2019 13:52:54 +0530
Message-Id: <20190610082254.2343-2-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190610082254.2343-1-nishkadg.linux@gmail.com>
References: <20190610082254.2343-1-nishkadg.linux@gmail.com>
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

Change return values of r8712_createbss_cmd from _SUCCESS and _FAIL to 0
and -ENOMEM respectively.
Change return type of the function from unsigned to int to reflect this.
Change call site to check for 0 instead of _SUCCESS.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
Changes in v2:
- Fix commit subject.

 drivers/staging/rtl8712/rtl871x_cmd.c       | 6 +++---
 drivers/staging/rtl8712/rtl871x_cmd.h       | 2 +-
 drivers/staging/rtl8712/rtl871x_ioctl_set.c | 2 +-
 3 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_cmd.c b/drivers/staging/rtl8712/rtl871x_cmd.c
index e478c031f95f..94ff875d9025 100644
--- a/drivers/staging/rtl8712/rtl871x_cmd.c
+++ b/drivers/staging/rtl8712/rtl871x_cmd.c
@@ -409,7 +409,7 @@ void r8712_readtssi_cmdrsp_callback(struct _adapter *padapter,
 	padapter->mppriv.workparam.bcompleted = true;
 }
 
-u8 r8712_createbss_cmd(struct _adapter *padapter)
+int r8712_createbss_cmd(struct _adapter *padapter)
 {
 	struct cmd_obj *pcmd;
 	struct cmd_priv *pcmdpriv = &padapter->cmdpriv;
@@ -419,7 +419,7 @@ u8 r8712_createbss_cmd(struct _adapter *padapter)
 	padapter->ledpriv.LedControlHandler(padapter, LED_CTL_START_TO_LINK);
 	pcmd = kmalloc(sizeof(*pcmd), GFP_ATOMIC);
 	if (!pcmd)
-		return _FAIL;
+		return -ENOMEM;
 	INIT_LIST_HEAD(&pcmd->list);
 	pcmd->cmdcode = _CreateBss_CMD_;
 	pcmd->parmbuf = (unsigned char *)pdev_network;
@@ -431,7 +431,7 @@ u8 r8712_createbss_cmd(struct _adapter *padapter)
 	pdev_network->IELength = pdev_network->IELength;
 	pdev_network->Ssid.SsidLength =	pdev_network->Ssid.SsidLength;
 	r8712_enqueue_cmd(pcmdpriv, pcmd);
-	return _SUCCESS;
+	return 0;
 }
 
 u8 r8712_joinbss_cmd(struct _adapter  *padapter, struct wlan_network *pnetwork)
diff --git a/drivers/staging/rtl8712/rtl871x_cmd.h b/drivers/staging/rtl8712/rtl871x_cmd.h
index 800216cca2f6..6ea1bafd8acc 100644
--- a/drivers/staging/rtl8712/rtl871x_cmd.h
+++ b/drivers/staging/rtl8712/rtl871x_cmd.h
@@ -712,7 +712,7 @@ u8 r8712_setMacAddr_cmd(struct _adapter *padapter, u8 *mac_addr);
 u8 r8712_setassocsta_cmd(struct _adapter *padapter, u8 *mac_addr);
 u8 r8712_sitesurvey_cmd(struct _adapter *padapter,
 			struct ndis_802_11_ssid *pssid);
-u8 r8712_createbss_cmd(struct _adapter *padapter);
+int r8712_createbss_cmd(struct _adapter *padapter);
 u8 r8712_setstakey_cmd(struct _adapter *padapter, u8 *psta, u8 unicast_key);
 u8 r8712_joinbss_cmd(struct _adapter *padapter,
 		     struct wlan_network *pnetwork);
diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_set.c b/drivers/staging/rtl8712/rtl871x_ioctl_set.c
index 2622d5e3bff9..d0274c65d17e 100644
--- a/drivers/staging/rtl8712/rtl871x_ioctl_set.c
+++ b/drivers/staging/rtl8712/rtl871x_ioctl_set.c
@@ -84,7 +84,7 @@ static u8 do_join(struct _adapter *padapter)
 			       sizeof(struct ndis_802_11_ssid));
 			r8712_update_registrypriv_dev_network(padapter);
 			r8712_generate_random_ibss(pibss);
-			if (r8712_createbss_cmd(padapter) != _SUCCESS)
+			if (r8712_createbss_cmd(padapter))
 				return false;
 			pmlmepriv->to_join = false;
 		} else {
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

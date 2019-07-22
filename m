Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 10D366FC10
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Jul 2019 11:24:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B9386203CC;
	Mon, 22 Jul 2019 09:24:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lkGlwW7EeUDU; Mon, 22 Jul 2019 09:24:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id EBAEA203E3;
	Mon, 22 Jul 2019 09:24:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 425971BF302
 for <devel@linuxdriverproject.org>; Mon, 22 Jul 2019 09:23:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3E810874E0
 for <devel@linuxdriverproject.org>; Mon, 22 Jul 2019 09:23:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xh+5T2mPXgAh for <devel@linuxdriverproject.org>;
 Mon, 22 Jul 2019 09:23:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A4DA086F12
 for <devel@driverdev.osuosl.org>; Mon, 22 Jul 2019 09:23:56 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id t16so17068419pfe.11
 for <devel@driverdev.osuosl.org>; Mon, 22 Jul 2019 02:23:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NL+NFE0FxWIfTvRvdfmttyreHB6XRMwFQxh6/K0ToR4=;
 b=eIYy9ZKdxsDfIXeGa31EGPGtLQdPer9YEMa4C5jStt6fY9PMQ1FHbv1pSLs69xarou
 dIEgQszCdQ9hMuvgbaL3sCML2luSKlSX6AM6ZPXzpg8bcRGY6Ct4DI7FfbVpRGpD68c0
 MP/u+pjE2nuE8SqCtth2/ff0gVvCIqWeEBPes5od6hYhHUXI1KeusUBBs+1ABUYmkmov
 YcDM4VfKld2G/wqDF8rR7H1KOjNSBPA/midSdSu9A7RfM0IVGfyXta/kOoHI8fHPHwA4
 9drHkl4UO+OArNkjLHdGeph/2zoXEUFNTRBH1RBsdFsfTmFDUuGclHOFNpH2JqWQ7gCR
 q10Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NL+NFE0FxWIfTvRvdfmttyreHB6XRMwFQxh6/K0ToR4=;
 b=RERdLVm7yxS8p6nmRNmjI/i+2D1+SRUkWjifHHaDfh8klXSOC2yQoekmQJQ0YxcLfx
 SCopiwB1mQtYaCpSVVJ8jlFuhjEgLdRs+QICpzp3N3ZHc9BIh4GDzg0SSRSv70PEO8mM
 NUqUsRI8GfhumgiCSzPCQ3OqIu1C5olPtoRAs/HQaBFB6PbaoWWj8lfdBaPRqCXQlM3O
 DDwJo1wfXPT6rKlKHNi7yK7thgy8wtmbm5acvm7W6xIaftwmFcB6FuNfa8FHE7jCGRb2
 hZ/DHMTrtAJtX6pwuUFl01bFN9lDRXZ72ilt066LlZB/2KIdAZtZzttEvW9alQmdLnRG
 HZ5g==
X-Gm-Message-State: APjAAAUiqYFcwiOH7WyQEGNNwGEjsjl40hQGd6Z0tO0WnfmHqQ5PP/ip
 3DqAFoS9awj+7EHejBwyl/drIOOk
X-Google-Smtp-Source: APXvYqyH2ip7QUb06RqquAUJHJdQwh5nAuu3MmMu5hgWyQ6bJ36oq/kPvsFCdFkA9Y2DUuQAdEPusA==
X-Received: by 2002:a65:4489:: with SMTP id l9mr72787324pgq.207.1563787436297; 
 Mon, 22 Jul 2019 02:23:56 -0700 (PDT)
Received: from localhost.localdomain ([122.163.0.39])
 by smtp.gmail.com with ESMTPSA id f19sm52010125pfk.180.2019.07.22.02.23.53
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 02:23:56 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org
Subject: [PATCH 2/8] staging: rtl8712: r8712_set_auth(): Change return values
Date: Mon, 22 Jul 2019 14:53:35 +0530
Message-Id: <20190722092341.21030-2-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190722092341.21030-1-nishkadg.linux@gmail.com>
References: <20190722092341.21030-1-nishkadg.linux@gmail.com>
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

Change return values of r8712_set_auth from _SUCCESS/_FAIL to 0/-ENOMEM
respectively. Modify call site accordingly. Also change return type of
the function from sint to int.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_ioctl_set.c |  6 +++---
 drivers/staging/rtl8712/rtl871x_mlme.c      | 10 +++++-----
 drivers/staging/rtl8712/rtl871x_mlme.h      |  4 ++--
 3 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_set.c b/drivers/staging/rtl8712/rtl871x_ioctl_set.c
index f3c0a9348f56..c12adb9a6c37 100644
--- a/drivers/staging/rtl8712/rtl871x_ioctl_set.c
+++ b/drivers/staging/rtl8712/rtl871x_ioctl_set.c
@@ -320,10 +320,10 @@ u8 r8712_set_802_11_authentication_mode(struct _adapter *padapter,
 	psecuritypriv->ndisauthtype = authmode;
 	if (psecuritypriv->ndisauthtype > 3)
 		psecuritypriv->AuthAlgrthm = 2; /* 802.1x */
-	if (r8712_set_auth(padapter, psecuritypriv) == _SUCCESS)
-		ret = true;
-	else
+	if (r8712_set_auth(padapter, psecuritypriv))
 		ret = false;
+	else
+		ret = true;
 	return ret;
 }
 
diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
index a4922af61acd..9c373a84ca0d 100644
--- a/drivers/staging/rtl8712/rtl871x_mlme.c
+++ b/drivers/staging/rtl8712/rtl871x_mlme.c
@@ -1144,8 +1144,8 @@ int r8712_select_and_join_from_scan(struct mlme_priv *pmlmepriv)
 	return r8712_joinbss_cmd(adapter, pnetwork);
 }
 
-sint r8712_set_auth(struct _adapter *adapter,
-		    struct security_priv *psecuritypriv)
+int r8712_set_auth(struct _adapter *adapter,
+		   struct security_priv *psecuritypriv)
 {
 	struct cmd_priv	*pcmdpriv = &adapter->cmdpriv;
 	struct cmd_obj *pcmd;
@@ -1153,12 +1153,12 @@ sint r8712_set_auth(struct _adapter *adapter,
 
 	pcmd = kmalloc(sizeof(*pcmd), GFP_ATOMIC);
 	if (!pcmd)
-		return _FAIL;
+		return -ENOMEM;
 
 	psetauthparm = kzalloc(sizeof(*psetauthparm), GFP_ATOMIC);
 	if (!psetauthparm) {
 		kfree(pcmd);
-		return _FAIL;
+		return -ENOMEM;
 	}
 	psetauthparm->mode = (u8)psecuritypriv->AuthAlgrthm;
 	pcmd->cmdcode = _SetAuth_CMD_;
@@ -1168,7 +1168,7 @@ sint r8712_set_auth(struct _adapter *adapter,
 	pcmd->rspsz = 0;
 	INIT_LIST_HEAD(&pcmd->list);
 	r8712_enqueue_cmd(pcmdpriv, pcmd);
-	return _SUCCESS;
+	return 0;
 }
 
 sint r8712_set_key(struct _adapter *adapter,
diff --git a/drivers/staging/rtl8712/rtl871x_mlme.h b/drivers/staging/rtl8712/rtl871x_mlme.h
index a160107e9801..47499e879688 100644
--- a/drivers/staging/rtl8712/rtl871x_mlme.h
+++ b/drivers/staging/rtl8712/rtl871x_mlme.h
@@ -175,8 +175,8 @@ void r8712_free_mlme_priv(struct mlme_priv *pmlmepriv);
 int r8712_select_and_join_from_scan(struct mlme_priv *pmlmepriv);
 sint r8712_set_key(struct _adapter *adapter,
 		   struct security_priv *psecuritypriv, sint keyid);
-sint r8712_set_auth(struct _adapter *adapter,
-		    struct security_priv *psecuritypriv);
+int r8712_set_auth(struct _adapter *adapter,
+		   struct security_priv *psecuritypriv);
 uint r8712_get_wlan_bssid_ex_sz(struct wlan_bssid_ex *bss);
 void r8712_generate_random_ibss(u8 *pibss);
 u8 *r8712_get_capability_from_ie(u8 *ie);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

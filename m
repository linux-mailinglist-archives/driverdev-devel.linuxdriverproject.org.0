Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D502B6FC11
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Jul 2019 11:24:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D537887A15;
	Mon, 22 Jul 2019 09:24:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Nd9Smf+bSlyy; Mon, 22 Jul 2019 09:24:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id F07BF8735C;
	Mon, 22 Jul 2019 09:24:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E1B701BF302
 for <devel@linuxdriverproject.org>; Mon, 22 Jul 2019 09:23:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DAAA3874E0
 for <devel@linuxdriverproject.org>; Mon, 22 Jul 2019 09:23:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gmi2CqWYxgWu for <devel@linuxdriverproject.org>;
 Mon, 22 Jul 2019 09:23:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 47B5486F12
 for <devel@driverdev.osuosl.org>; Mon, 22 Jul 2019 09:23:59 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id c14so18889675plo.0
 for <devel@driverdev.osuosl.org>; Mon, 22 Jul 2019 02:23:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nEBg6EgJWkSFi6JcLq6YP+D26f/aikryNNNZyxZtNQ0=;
 b=swpgFGP0EnWE7aqaZudzqay2gFOtQuHAcluzyO/ySuK0sZ/nL+cFiu5lr4RNR9ePgA
 ZQxaqibkwne7mtWHIsUGmas7IqSfLd8fWOC1IoidqHeKIzT4q36gzG2D8bvqjFxNGnX+
 7NOBZ4dzPlJxx9sXJf8OgYOeqxrCQfyljYTEIO/C+pWAn18WnhDWSHjuxX6QMNm+S0Y8
 seTxVJ4Wjm3iBXw9awFoqtbhMu08kLt/aSp+0D2S6JJh7PFnaz2OZRab1fHWKXsartQS
 WcE2JuCCDEBeFS+YZebq+FICMJHzavlepfYc4PId9Do9tHxDvlsbtvus0sQxAGVApv6N
 F9kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nEBg6EgJWkSFi6JcLq6YP+D26f/aikryNNNZyxZtNQ0=;
 b=egI0swnrSkvr7oh4u5xm7xyokbEZ/Z/fzT6CaeRoZ8cp9Hho3pqGx2b3q1NSQYNKnR
 izFMI/2KATRyIcNfpyDqxHkx0/Eam0Y68Y0TdMHjmaorO9jiTtqt3n9fXpUl+SiseVwW
 1q2T94gp+SNCeSLRRSxVL/AVOlRO74NnufCaDpPKVERzyuhpJu+XBf8eAGLm1dTikKB1
 NhgwzOcPPo/nuJZWHpjnbjauoMcXv8Kvc+e2NbV2/Pw1XzCvwzaCCu4FkRTdcTnkBcyX
 45pz4hQlhdGc6dHSL77p1wraCtI9ce1G4wtj86vgAUe87nm+kG43LdNPNbNGtQBug5CV
 xagQ==
X-Gm-Message-State: APjAAAVDBabwKIEZjBpB6rZmHlm4psHw986iaZhoh3qQOGRI5as1UR9W
 Rm5oNPI6KKipuINIKyq1wQQ=
X-Google-Smtp-Source: APXvYqyT4zohxU3ZV4/bCeGfM+2wtw3EzEGXpA5LriwPKAop04JQUASvi3vQAu63hyYTHnHA8e3Tbw==
X-Received: by 2002:a17:902:9689:: with SMTP id
 n9mr75371171plp.241.1563787438983; 
 Mon, 22 Jul 2019 02:23:58 -0700 (PDT)
Received: from localhost.localdomain ([122.163.0.39])
 by smtp.gmail.com with ESMTPSA id f19sm52010125pfk.180.2019.07.22.02.23.56
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 02:23:58 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org
Subject: [PATCH 3/8] staging: rtl8712: r8712_set_key(): Change return values
Date: Mon, 22 Jul 2019 14:53:36 +0530
Message-Id: <20190722092341.21030-3-nishkadg.linux@gmail.com>
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

Change return values of r8712_set_key from _SUCCESS and _FAIL to 0 and
-ENOMEM or -EINVAL, as the case may require.
Modify return statements and return variable accordingly.
Change return type from sint to int.
As there is only one site where the return value is used, update that
call site according to the change in the return values.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_ioctl_set.c |  2 +-
 drivers/staging/rtl8712/rtl871x_mlme.c      | 20 ++++++++++----------
 drivers/staging/rtl8712/rtl871x_mlme.h      |  4 ++--
 3 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_set.c b/drivers/staging/rtl8712/rtl871x_ioctl_set.c
index c12adb9a6c37..54b16bc41465 100644
--- a/drivers/staging/rtl8712/rtl871x_ioctl_set.c
+++ b/drivers/staging/rtl8712/rtl871x_ioctl_set.c
@@ -351,7 +351,7 @@ u8 r8712_set_802_11_add_wep(struct _adapter *padapter,
 		wep->KeyLength);
 	psecuritypriv->DefKeylen[keyid] = wep->KeyLength;
 	psecuritypriv->PrivacyKeyIndex = keyid;
-	if (r8712_set_key(padapter, psecuritypriv, keyid) == _FAIL)
+	if (r8712_set_key(padapter, psecuritypriv, keyid))
 		return false;
 	return _SUCCESS;
 }
diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
index 9c373a84ca0d..cabdb3549a5a 100644
--- a/drivers/staging/rtl8712/rtl871x_mlme.c
+++ b/drivers/staging/rtl8712/rtl871x_mlme.c
@@ -1171,22 +1171,22 @@ int r8712_set_auth(struct _adapter *adapter,
 	return 0;
 }
 
-sint r8712_set_key(struct _adapter *adapter,
-		   struct security_priv *psecuritypriv,
-	     sint keyid)
+int r8712_set_key(struct _adapter *adapter,
+		  struct security_priv *psecuritypriv,
+		  sint keyid)
 {
 	struct cmd_priv *pcmdpriv = &adapter->cmdpriv;
 	struct cmd_obj *pcmd;
 	struct setkey_parm *psetkeyparm;
 	u8 keylen;
-	sint ret = _SUCCESS;
+	int ret;
 
 	pcmd = kmalloc(sizeof(*pcmd), GFP_ATOMIC);
 	if (!pcmd)
-		return _FAIL;
+		return -ENOMEM;
 	psetkeyparm = kzalloc(sizeof(*psetkeyparm), GFP_ATOMIC);
 	if (!psetkeyparm) {
-		ret = _FAIL;
+		ret = -ENOMEM;
 		goto err_free_cmd;
 	}
 	if (psecuritypriv->AuthAlgrthm == 2) { /* 802.1X */
@@ -1211,7 +1211,7 @@ sint r8712_set_key(struct _adapter *adapter,
 		break;
 	case _TKIP_:
 		if (keyid < 1 || keyid > 2) {
-			ret = _FAIL;
+			ret = -EINVAL;
 			goto err_free_parm;
 		}
 		keylen = 16;
@@ -1221,7 +1221,7 @@ sint r8712_set_key(struct _adapter *adapter,
 		break;
 	case _AES_:
 		if (keyid < 1 || keyid > 2) {
-			ret = _FAIL;
+			ret = -EINVAL;
 			goto err_free_parm;
 		}
 		keylen = 16;
@@ -1230,7 +1230,7 @@ sint r8712_set_key(struct _adapter *adapter,
 		psetkeyparm->grpkey = 1;
 		break;
 	default:
-		ret = _FAIL;
+		ret = -EINVAL;
 		goto err_free_parm;
 	}
 	pcmd->cmdcode = _SetKey_CMD_;
@@ -1240,7 +1240,7 @@ sint r8712_set_key(struct _adapter *adapter,
 	pcmd->rspsz = 0;
 	INIT_LIST_HEAD(&pcmd->list);
 	r8712_enqueue_cmd(pcmdpriv, pcmd);
-	return ret;
+	return 0;
 
 err_free_parm:
 	kfree(psetkeyparm);
diff --git a/drivers/staging/rtl8712/rtl871x_mlme.h b/drivers/staging/rtl8712/rtl871x_mlme.h
index 47499e879688..46effb469fd4 100644
--- a/drivers/staging/rtl8712/rtl871x_mlme.h
+++ b/drivers/staging/rtl8712/rtl871x_mlme.h
@@ -173,8 +173,8 @@ void r8712_free_network_queue(struct _adapter *adapter);
 int r8712_init_mlme_priv(struct _adapter *adapter);
 void r8712_free_mlme_priv(struct mlme_priv *pmlmepriv);
 int r8712_select_and_join_from_scan(struct mlme_priv *pmlmepriv);
-sint r8712_set_key(struct _adapter *adapter,
-		   struct security_priv *psecuritypriv, sint keyid);
+int r8712_set_key(struct _adapter *adapter,
+		  struct security_priv *psecuritypriv, sint keyid);
 int r8712_set_auth(struct _adapter *adapter,
 		   struct security_priv *psecuritypriv);
 uint r8712_get_wlan_bssid_ex_sz(struct wlan_bssid_ex *bss);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

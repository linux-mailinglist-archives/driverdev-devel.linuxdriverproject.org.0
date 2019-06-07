Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B869538C32
	for <lists+driverdev-devel@lfdr.de>; Fri,  7 Jun 2019 16:07:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C3EB8867A5;
	Fri,  7 Jun 2019 14:07:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9ZYd-W6lch-5; Fri,  7 Jun 2019 14:07:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BDE6586745;
	Fri,  7 Jun 2019 14:07:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D40371BF5DA
 for <devel@linuxdriverproject.org>; Fri,  7 Jun 2019 14:07:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CF75D8798F
 for <devel@linuxdriverproject.org>; Fri,  7 Jun 2019 14:07:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MFDhOs4BC4xq for <devel@linuxdriverproject.org>;
 Fri,  7 Jun 2019 14:07:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 47FF386747
 for <devel@driverdev.osuosl.org>; Fri,  7 Jun 2019 14:07:18 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id e5so868641pls.13
 for <devel@driverdev.osuosl.org>; Fri, 07 Jun 2019 07:07:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dN/Vg8VmpZ2MdQzZ8FBtvf2tGAMIAAsE9edwuUKNnNU=;
 b=MeyCzVWAzQPRCgD7BC4afNMiWnt++zxzpcmIpt6Ip91tKpHwQNdoSWQxlSGrkICLBg
 rzJYZ14EmLn7AqgaxECwqZkfuOiQt5J7Q2dGBbfcqdSQhlC4KoBc7frlMwSDclWpcHRb
 DDzCRDPL2IKuOf8P7NTSCDwgUnJLYIM21+0/jNElfAEunPgb5JJzSNYEMNCT6hlmC4es
 BxCfaYVHIfCRQ4+nwcjJUc30Ue2VaufhxDP6WrxyY5ctIZLXkZ/OYinQ/XBnCRK2LByK
 zuu3nTN6QToQLqOhrNSEIEbduivFc/+WHu/bhoREMwX9/93AxxKiZm/SP5gIjJLSmVBP
 SVfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dN/Vg8VmpZ2MdQzZ8FBtvf2tGAMIAAsE9edwuUKNnNU=;
 b=aWTBFAEWqjOjbj6yK5vWjPx1yaFd5FIBR3C9f8Co+QGhC6Oh7kruOCuv6v5EcqhApf
 Wqqq5z/RDNZtO274dwHeb75szfW4905AcKHxcok+JeCaHcRukVZxaI482W3i5KXufC5L
 X6TXg3/S0ZW6xrklmfjxsrMR3G6+4jwKTjFsF9wGyOeCoAPopj26nc6BtkIwBqfysmK2
 khFoFRUk0BFSRSxeQ5yrpxMYUNlQYXywR/AMmFKsgbvPKScwfxwvJWCQfjIrgKRSJBgg
 QlNbnKiP/4yohdq+rVuJ1ktocyfTY+IiIOqGaEdIrqSpV89vJuyCumcQYCXsPwmlpydV
 0TNg==
X-Gm-Message-State: APjAAAX7b5g+bDY3D993XFJGWBIFwUxH20NzBot601+EXquV92g6C+J9
 yPygpLvqkQEozWECAEFMlIQ=
X-Google-Smtp-Source: APXvYqz18+sGwBta6VjMgL4HrcHyt8lJDGDyybdXd+t/BjpPHb2jsU5i0Tu9X4Bc9dCRZGcfvJY85Q==
X-Received: by 2002:a17:902:e490:: with SMTP id
 cj16mr54799243plb.136.1559916437964; 
 Fri, 07 Jun 2019 07:07:17 -0700 (PDT)
Received: from localhost.localdomain ([110.227.95.145])
 by smtp.gmail.com with ESMTPSA id j7sm7071983pjb.26.2019.06.07.07.07.14
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 07 Jun 2019 07:07:17 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, straube.linux@gmail.com,
 larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 colin.king@canonical.com, valdis.kletnieks@vt.edu, tiny.windzz@gmail.com
Subject: [PATCH 2/2] staging: rtl8712: r8712_createbss_cmd(): Change
Date: Fri,  7 Jun 2019 19:36:58 +0530
Message-Id: <20190607140658.11932-2-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190607140658.11932-1-nishkadg.linux@gmail.com>
References: <20190607140658.11932-1-nishkadg.linux@gmail.com>
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
(Instead of !=0, simply passing the function output to the conditional
will do.)

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
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

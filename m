Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C93104CD2D
	for <lists+driverdev-devel@lfdr.de>; Thu, 20 Jun 2019 13:53:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0B0828602D;
	Thu, 20 Jun 2019 11:53:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hxV4Kfd45YZX; Thu, 20 Jun 2019 11:53:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 78DC485FAE;
	Thu, 20 Jun 2019 11:53:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 48A591BF578
 for <devel@linuxdriverproject.org>; Thu, 20 Jun 2019 11:53:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 45DAC87E40
 for <devel@linuxdriverproject.org>; Thu, 20 Jun 2019 11:53:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y6lczyGrV6xm for <devel@linuxdriverproject.org>;
 Thu, 20 Jun 2019 11:53:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A6E9687E09
 for <devel@driverdev.osuosl.org>; Thu, 20 Jun 2019 11:53:20 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id n2so1452998pgp.11
 for <devel@driverdev.osuosl.org>; Thu, 20 Jun 2019 04:53:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=miXB1dr+UIfSFRqWZ1WDfQYc6fBypMg6Zics4m44lcs=;
 b=ZnaSUPVGxgoP+cL/meEDuLb8uN/D/vblSvVcjk3sB7ryyBD+UcepilvS8ysITbnrWe
 xdGeVNiQNSOlFjTR3jDtS50eHYnlZvJra0UJtQ4DTtsj1vJPptbFI5KRLYq7SxTFtXXe
 T7BHKdzCvikaMUr5ob18lWtIIhg3BVXJ0STizq+OExhMbHrl17wwr76OLqm0X2MGmuv2
 V8f1LtNglG5rHX71rswSdnphie00JGXQuyglaUNCqywRid5uotkMnn4BTmxll3aLeLuP
 Yvy3bNTldGc/bKMutRQepWh1rhABnCaDbjsUWACThDOVxaP2mH6AA/SQE/9gzKtvAAVf
 iGug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=miXB1dr+UIfSFRqWZ1WDfQYc6fBypMg6Zics4m44lcs=;
 b=CJ+QzcESJwBVRvStvggkbGbtmrmEsLjI5+y6A0QxV6CZ8M0nuIOx0lRYr2e8b/NoUs
 AlTnuNKNUpnqHUSVj628HrPmXr0KgoZJPBNLhO6YgEanLm3kcoAAmqlciS+OWlM7W2yD
 nEUmwfkJ+vVXOFOd6oTN1KIMYGtsfzLB+r/7QVklLQ52zgV/pM5pftLwvVScbFFUDQje
 U5yUu6tAwZi3izZuToRi6m9MskjxsrKDkxS56MLvuxXvgotKuu2W0jNWJQdyAZ+xsn68
 Qeq36dyQ+3IZqZJgg3cNdbc3if0GyuNSg+5QVdQQTF9Uk8t3lB6f1EDvljVur3vhs86W
 kh9g==
X-Gm-Message-State: APjAAAU+5/huvTYlJ1mbxzJ/XxCHdc28VkAZ2Hf8w0PVhRirP9NW1fAp
 Bs749lybFEH1caQf1yYJl/g=
X-Google-Smtp-Source: APXvYqyQT2dpOCmf1adDrRf6nkslGBXnat3rLZiQH/nkiSLBdGhPUvPaJw5duhPDs+91w+rYsgh71A==
X-Received: by 2002:a63:6146:: with SMTP id v67mr7604512pgb.116.1561031600253; 
 Thu, 20 Jun 2019 04:53:20 -0700 (PDT)
Received: from localhost.localdomain ([122.163.71.137])
 by smtp.gmail.com with ESMTPSA id c124sm21738079pfa.115.2019.06.20.04.53.17
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 20 Jun 2019 04:53:19 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org
Subject: [PATCH 01/10] staging: rtl8712: mlme_linux.c: Remove leading p from
 variable names
Date: Thu, 20 Jun 2019 17:22:55 +0530
Message-Id: <20190620115304.3210-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
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

Remove leading p from the names of the following pointer variables:
- padapter
- pmlmepriv
- psec_priv.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/mlme_linux.c | 34 ++++++++++++++--------------
 1 file changed, 17 insertions(+), 17 deletions(-)

diff --git a/drivers/staging/rtl8712/mlme_linux.c b/drivers/staging/rtl8712/mlme_linux.c
index 4d473f008aa4..23b87ccf4d07 100644
--- a/drivers/staging/rtl8712/mlme_linux.c
+++ b/drivers/staging/rtl8712/mlme_linux.c
@@ -66,16 +66,16 @@ static void wdg_timeout_handler (struct timer_list *t)
 		  jiffies + msecs_to_jiffies(2000));
 }
 
-void r8712_init_mlme_timer(struct _adapter *padapter)
+void r8712_init_mlme_timer(struct _adapter *adapter)
 {
-	struct	mlme_priv *pmlmepriv = &padapter->mlmepriv;
+	struct	mlme_priv *mlmepriv = &adapter->mlmepriv;
 
-	timer_setup(&pmlmepriv->assoc_timer, join_timeout_handler, 0);
-	timer_setup(&pmlmepriv->sitesurveyctrl.sitesurvey_ctrl_timer,
+	timer_setup(&mlmepriv->assoc_timer, join_timeout_handler, 0);
+	timer_setup(&mlmepriv->sitesurveyctrl.sitesurvey_ctrl_timer,
 		    sitesurvey_ctrl_handler, 0);
-	timer_setup(&pmlmepriv->scan_to_timer, _scan_timeout_handler, 0);
-	timer_setup(&pmlmepriv->dhcp_timer, dhcp_timeout_handler, 0);
-	timer_setup(&pmlmepriv->wdg_timer, wdg_timeout_handler, 0);
+	timer_setup(&mlmepriv->scan_to_timer, _scan_timeout_handler, 0);
+	timer_setup(&mlmepriv->dhcp_timer, dhcp_timeout_handler, 0);
+	timer_setup(&mlmepriv->wdg_timer, wdg_timeout_handler, 0);
 }
 
 void r8712_os_indicate_connect(struct _adapter *adapter)
@@ -119,16 +119,16 @@ void r8712_os_indicate_disconnect(struct _adapter *adapter)
 		adapter->securitypriv.btkip_countermeasure =
 					 backupTKIPCountermeasure;
 	} else { /*reset values in securitypriv*/
-		struct security_priv *psec_priv = &adapter->securitypriv;
-
-		psec_priv->AuthAlgrthm = 0; /*open system*/
-		psec_priv->PrivacyAlgrthm = _NO_PRIVACY_;
-		psec_priv->PrivacyKeyIndex = 0;
-		psec_priv->XGrpPrivacy = _NO_PRIVACY_;
-		psec_priv->XGrpKeyid = 1;
-		psec_priv->ndisauthtype = Ndis802_11AuthModeOpen;
-		psec_priv->ndisencryptstatus = Ndis802_11WEPDisabled;
-		psec_priv->wps_phase = false;
+		struct security_priv *sec_priv = &adapter->securitypriv;
+
+		sec_priv->AuthAlgrthm = 0; /*open system*/
+		sec_priv->PrivacyAlgrthm = _NO_PRIVACY_;
+		sec_priv->PrivacyKeyIndex = 0;
+		sec_priv->XGrpPrivacy = _NO_PRIVACY_;
+		sec_priv->XGrpKeyid = 1;
+		sec_priv->ndisauthtype = Ndis802_11AuthModeOpen;
+		sec_priv->ndisencryptstatus = Ndis802_11WEPDisabled;
+		sec_priv->wps_phase = false;
 	}
 }
 
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

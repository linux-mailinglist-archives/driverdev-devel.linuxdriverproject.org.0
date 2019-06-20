Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 771124CD38
	for <lists+driverdev-devel@lfdr.de>; Thu, 20 Jun 2019 13:53:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1D03D86031;
	Thu, 20 Jun 2019 11:53:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LI2dCZehkFo4; Thu, 20 Jun 2019 11:53:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0AE1C85FC9;
	Thu, 20 Jun 2019 11:53:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6358E1BF578
 for <devel@linuxdriverproject.org>; Thu, 20 Jun 2019 11:53:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5E0CB203D5
 for <devel@linuxdriverproject.org>; Thu, 20 Jun 2019 11:53:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZjSBsezNlwSI for <devel@linuxdriverproject.org>;
 Thu, 20 Jun 2019 11:53:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 87DA92038A
 for <devel@driverdev.osuosl.org>; Thu, 20 Jun 2019 11:53:43 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id q10so1536112pff.9
 for <devel@driverdev.osuosl.org>; Thu, 20 Jun 2019 04:53:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IdW/yKlvlqEtFAYxffZyMT88nD0W73wXNaTkpR0bvZE=;
 b=I5sXPSh1jlcZ8E/7jDsW/Otx4gp0GAD8qCKpMsIawPHfVQ5EGmPFyWdPVSbiD76xes
 MMHc2JQBMR14lEZpT/7rrm+nKX3w8zlYZeG+eGZY4tAq5O8cW7T7JYxydDjMSltmOGbU
 DqL0P2e5JlC3Whk+BsngLaSe8HooTYnGGTJpmrw/335VDZDOw+ms9f9eAyVDr5zLysY0
 iJsRFiqfWdDMvbEAB9WSx3riMsZQ1Uurd9J6lXVzVfV4ip2EK6uYTX/3DJdFPZENeJU0
 C7Kb6U81B+dI3rF3MNmjiP1ctPNZC5wyPWxaLvotP9+E4fyL+lXLhGfRwd9bWCBpaQTx
 gMBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IdW/yKlvlqEtFAYxffZyMT88nD0W73wXNaTkpR0bvZE=;
 b=mUZpoEyJeQDa1uSeCSaGYH1Ufk2sFdUWafr86RrOUlBPNt0GoVGwqdY/pHcMt9/VRA
 M+9qCSeDIl+FWQ7A6UbLP95QNKZvUFQJpLaauKfAbUOvw25PSEfvKFnv6Gz9j5tRt1OQ
 CcUdE9T2mv6V/wEq/AaSHe8ixhBlCXqIVjv7yB2OrMWP3Xxgwyv5ifSIWK0B84UZuWi5
 Uj1JcgZqMHJUtBoLRI0NlOC0y+91zzcF54u6afQLo/f7FtUqPmerx2wKojQamSkJ/u5Q
 rdfnXwhMueLI/jVMz/rkOQXSCNpoZgtrSnSZ8+VsgtdoqRpkuK9yu2WeyxHbu022UbzS
 XC2g==
X-Gm-Message-State: APjAAAVWtDo2xqEF3TgaakFA5yfZ1YBm0U6TYXVONVVJ43v2FDMbUB1j
 bZFCwgJU/Vh5viGQaDMh0ig=
X-Google-Smtp-Source: APXvYqwaKQXuBuMlzhQZbfmTPk5yV0FHjb2IIeEc3cL02PFcHZQVsNPOCB4zi35p38kFT+XtOl8gcg==
X-Received: by 2002:a63:ca0f:: with SMTP id n15mr12032274pgi.197.1561031623189; 
 Thu, 20 Jun 2019 04:53:43 -0700 (PDT)
Received: from localhost.localdomain ([122.163.71.137])
 by smtp.gmail.com with ESMTPSA id c124sm21738079pfa.115.2019.06.20.04.53.40
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 20 Jun 2019 04:53:42 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org
Subject: [PATCH 09/10] staging: rtl8712: r8712_setstakey_cmd(): Change return
 type
Date: Thu, 20 Jun 2019 17:23:03 +0530
Message-Id: <20190620115304.3210-9-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190620115304.3210-1-nishkadg.linux@gmail.com>
References: <20190620115304.3210-1-nishkadg.linux@gmail.com>
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

Change return type of function r8712_setstakey_cmd() to void as its
return value is never stored, checked, or otherwise used.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_cmd.c | 9 ++++-----
 drivers/staging/rtl8712/rtl871x_cmd.h | 2 +-
 2 files changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_cmd.c b/drivers/staging/rtl8712/rtl871x_cmd.c
index 48f7d21221e1..9832230ba0b8 100644
--- a/drivers/staging/rtl8712/rtl871x_cmd.c
+++ b/drivers/staging/rtl8712/rtl871x_cmd.c
@@ -604,7 +604,7 @@ void r8712_setopmode_cmd(struct _adapter *padapter,
 	r8712_enqueue_cmd(pcmdpriv, ph2c);
 }
 
-u8 r8712_setstakey_cmd(struct _adapter *padapter, u8 *psta, u8 unicast_key)
+void r8712_setstakey_cmd(struct _adapter *padapter, u8 *psta, u8 unicast_key)
 {
 	struct cmd_obj *ph2c;
 	struct set_stakey_parm *psetstakey_para;
@@ -616,17 +616,17 @@ u8 r8712_setstakey_cmd(struct _adapter *padapter, u8 *psta, u8 unicast_key)
 
 	ph2c = kmalloc(sizeof(*ph2c), GFP_ATOMIC);
 	if (!ph2c)
-		return _FAIL;
+		return;
 	psetstakey_para = kmalloc(sizeof(*psetstakey_para), GFP_ATOMIC);
 	if (!psetstakey_para) {
 		kfree(ph2c);
-		return _FAIL;
+		return;
 	}
 	psetstakey_rsp = kmalloc(sizeof(*psetstakey_rsp), GFP_ATOMIC);
 	if (!psetstakey_rsp) {
 		kfree(ph2c);
 		kfree(psetstakey_para);
-		return _FAIL;
+		return;
 	}
 	init_h2fwcmd_w_parm_no_rsp(ph2c, psetstakey_para, _SetStaKey_CMD_);
 	ph2c->rsp = (u8 *) psetstakey_rsp;
@@ -645,7 +645,6 @@ u8 r8712_setstakey_cmd(struct _adapter *padapter, u8 *psta, u8 unicast_key)
 			&psecuritypriv->XGrpKey[
 			psecuritypriv->XGrpKeyid - 1]. skey, 16);
 	r8712_enqueue_cmd(pcmdpriv, ph2c);
-	return _SUCCESS;
 }
 
 u8 r8712_setrfintfs_cmd(struct _adapter *padapter, u8 mode)
diff --git a/drivers/staging/rtl8712/rtl871x_cmd.h b/drivers/staging/rtl8712/rtl871x_cmd.h
index d296ace542b3..814659d5d755 100644
--- a/drivers/staging/rtl8712/rtl871x_cmd.h
+++ b/drivers/staging/rtl8712/rtl871x_cmd.h
@@ -713,7 +713,7 @@ u8 r8712_setassocsta_cmd(struct _adapter *padapter, u8 *mac_addr);
 u8 r8712_sitesurvey_cmd(struct _adapter *padapter,
 			struct ndis_802_11_ssid *pssid);
 int r8712_createbss_cmd(struct _adapter *padapter);
-u8 r8712_setstakey_cmd(struct _adapter *padapter, u8 *psta, u8 unicast_key);
+void r8712_setstakey_cmd(struct _adapter *padapter, u8 *psta, u8 unicast_key);
 int r8712_joinbss_cmd(struct _adapter *padapter,
 		      struct wlan_network *pnetwork);
 void r8712_disassoc_cmd(struct _adapter *padapter);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

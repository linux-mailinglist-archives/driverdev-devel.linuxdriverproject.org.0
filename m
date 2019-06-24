Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EB655017F
	for <lists+driverdev-devel@lfdr.de>; Mon, 24 Jun 2019 07:49:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8224486FCD;
	Mon, 24 Jun 2019 05:49:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DOGIL2QAv7zQ; Mon, 24 Jun 2019 05:49:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9F9EC87032;
	Mon, 24 Jun 2019 05:49:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AB2EC1BF470
 for <devel@linuxdriverproject.org>; Mon, 24 Jun 2019 05:49:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A877484C99
 for <devel@linuxdriverproject.org>; Mon, 24 Jun 2019 05:49:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uz0edpToSjWX for <devel@linuxdriverproject.org>;
 Mon, 24 Jun 2019 05:49:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3699184AB8
 for <devel@driverdev.osuosl.org>; Mon, 24 Jun 2019 05:49:39 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id p10so6509523pgn.1
 for <devel@driverdev.osuosl.org>; Sun, 23 Jun 2019 22:49:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VBkA2Mi67bJBEO/UyuGDl3XFIo32OlFw2+Vaf12B89w=;
 b=hEHOIgIyyVc+IvbHUD3L7SSeBd5ScG6MRN/aXmf8sWRn3ubiEl81InuyseCBfAOP+s
 Mwoz+Ydmfs7ZIW9TCRxFrV4lqa8Od6vsoGTabzVa4aL366d6+ukCtefjJ051Qa2lV/8O
 P/tPbG3du7sF/kDBBgkOp/l9qLdZYhAk63Gm9FiijMXpR5dZAjDWd6SIUo+h3RsiS+3C
 qZ0rCAJyjTR0op1d+1ycgKESgV1SZOAE2BA38HpuFHSUdNHvsqW4ZD6vzhXBinvFsYzq
 o3Ymz4gWQV0ojgOLCAJO4Glt+Yjip6DIK9wvOsZ+zqHy/r1U7cqoXoaM5bnz48beLSt/
 WNYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VBkA2Mi67bJBEO/UyuGDl3XFIo32OlFw2+Vaf12B89w=;
 b=TbHJpRkItwmso4JPho7tFBZXlhojjLBkRNMgRHwHM5XBhWQA0zzKYfeAQn9Wq+aVpW
 uOrA5bo+Iw9e8u+Txyhcvv0HmkLJqStQEwaDJ5DrjQooyT/ldhK9T7CZd4pfvZ5d+rqP
 YzPSCS58hryEBUxLxy3Z50n1JXtTvpmmyXaU0bnvW2dX1UQw62xjEjKAlD+IaYcjqdiV
 OTaCKh2XXn35SQvs9FdmPL1AkjbgnYatvwXQdAmDYsXIGxnnDT6xTOWjD43WYLhuu/BP
 qdMp5qPZSsB3boK2k9KBjIuKnoKowUDR+4yUPGzFsar2yK5emc//cCYtgVdUnfzqWpmV
 6CtQ==
X-Gm-Message-State: APjAAAVvPD/NkubVSUG5L5TFTJtFJcVuTvsJXk+hbZHOzXOcmYUIIvhT
 yqnDmjs4M3MzrKEBrzRei2yXYP4GHrk=
X-Google-Smtp-Source: APXvYqxSEd2ekBf3oR6J09y6JQpSI3FZ1YpMpXBwUzDwTS5obNz5ioOGFlE3DLFlLTsdY1+s52nLCA==
X-Received: by 2002:a63:d354:: with SMTP id u20mr30186509pgi.129.1561355378881; 
 Sun, 23 Jun 2019 22:49:38 -0700 (PDT)
Received: from localhost.localdomain ([122.163.71.137])
 by smtp.gmail.com with ESMTPSA id s43sm11908182pjb.10.2019.06.23.22.49.36
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 23 Jun 2019 22:49:38 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com
Subject: [PATCH 09/10] staging: rtl8712: Remove r8712_setassocsta_cmd()
Date: Mon, 24 Jun 2019 11:19:02 +0530
Message-Id: <20190624054903.2673-9-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190624054903.2673-1-nishkadg.linux@gmail.com>
References: <20190624054903.2673-1-nishkadg.linux@gmail.com>
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

Remove function r8712_setassocsta_cmd as it is only called by
mp_start_joinbss, which was removed in the previous patch.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_cmd.c | 29 ---------------------------
 drivers/staging/rtl8712/rtl871x_cmd.h |  1 -
 2 files changed, 30 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_cmd.c b/drivers/staging/rtl8712/rtl871x_cmd.c
index 1f090394bc84..8af1574e7753 100644
--- a/drivers/staging/rtl8712/rtl871x_cmd.c
+++ b/drivers/staging/rtl8712/rtl871x_cmd.c
@@ -585,35 +585,6 @@ void r8712_setMacAddr_cmd(struct _adapter *padapter, u8 *mac_addr)
 	r8712_enqueue_cmd(pcmdpriv, ph2c);
 }
 
-u8 r8712_setassocsta_cmd(struct _adapter *padapter, u8 *mac_addr)
-{
-	struct cmd_priv			*pcmdpriv = &padapter->cmdpriv;
-	struct cmd_obj			*ph2c;
-	struct set_assocsta_parm	*psetassocsta_para;
-	struct set_assocsta_rsp		*psetassocsta_rsp = NULL;
-
-	ph2c = kmalloc(sizeof(*ph2c), GFP_ATOMIC);
-	if (!ph2c)
-		return _FAIL;
-	psetassocsta_para = kmalloc(sizeof(*psetassocsta_para), GFP_ATOMIC);
-	if (!psetassocsta_para) {
-		kfree(ph2c);
-		return _FAIL;
-	}
-	psetassocsta_rsp = kmalloc(sizeof(*psetassocsta_rsp), GFP_ATOMIC);
-	if (!psetassocsta_rsp) {
-		kfree(ph2c);
-		kfree(psetassocsta_para);
-		return _FAIL;
-	}
-	init_h2fwcmd_w_parm_no_rsp(ph2c, psetassocsta_para, _SetAssocSta_CMD_);
-	ph2c->rsp = (u8 *) psetassocsta_rsp;
-	ph2c->rspsz = sizeof(struct set_assocsta_rsp);
-	ether_addr_copy(psetassocsta_para->addr, mac_addr);
-	r8712_enqueue_cmd(pcmdpriv, ph2c);
-	return _SUCCESS;
-}
-
 void r8712_addbareq_cmd(struct _adapter *padapter, u8 tid)
 {
 	struct cmd_priv		*pcmdpriv = &padapter->cmdpriv;
diff --git a/drivers/staging/rtl8712/rtl871x_cmd.h b/drivers/staging/rtl8712/rtl871x_cmd.h
index 1234ae5e7614..b582f2cbe0ef 100644
--- a/drivers/staging/rtl8712/rtl871x_cmd.h
+++ b/drivers/staging/rtl8712/rtl871x_cmd.h
@@ -709,7 +709,6 @@ struct DisconnectCtrlEx_param {
 #define H2C_RESERVED			0x07
 
 void r8712_setMacAddr_cmd(struct _adapter *padapter, u8 *mac_addr);
-u8 r8712_setassocsta_cmd(struct _adapter *padapter, u8 *mac_addr);
 u8 r8712_sitesurvey_cmd(struct _adapter *padapter,
 			struct ndis_802_11_ssid *pssid);
 int r8712_createbss_cmd(struct _adapter *padapter);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

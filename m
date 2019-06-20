Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id ED66C4CD39
	for <lists+driverdev-devel@lfdr.de>; Thu, 20 Jun 2019 13:53:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 696E385FC9;
	Thu, 20 Jun 2019 11:53:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Mop742w4pRzq; Thu, 20 Jun 2019 11:53:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AACF285FC1;
	Thu, 20 Jun 2019 11:53:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AD94E1BF578
 for <devel@linuxdriverproject.org>; Thu, 20 Jun 2019 11:53:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A7C3686A40
 for <devel@linuxdriverproject.org>; Thu, 20 Jun 2019 11:53:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4HtpxwSEPlrI for <devel@linuxdriverproject.org>;
 Thu, 20 Jun 2019 11:53:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0A71A869BF
 for <devel@driverdev.osuosl.org>; Thu, 20 Jun 2019 11:53:47 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id 19so1549851pfa.4
 for <devel@driverdev.osuosl.org>; Thu, 20 Jun 2019 04:53:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=T4WFouSAXJlblszJq8PQTgn468IhR75UYy9S3pLZMp4=;
 b=GPmYjoikEJBv3+QnQ6cKZau1BgJyN/7BRmBmuXyrcI7yUekIUElx0PNQLbh4uWwv6q
 KeCjDnAQZySAsvulhyzo0TckkjhyBP8LYM7dnoTuQDFv+BLlp9Y6kVbWyw6WON3Qv0ID
 v9lxKsK8sllCbNI8+xfLJUlbvv6sHijS2DnDR2oGkJnKdFXKhE/udTLEBUCVJAfQia/I
 KLcZy6lay+a/d5wNCECNlwsmkpgE4scFhaOXwPL8ulPL911J1PKnBHOeX2iwV3a4SWYV
 DuJ+vddhNAOY4JzZKl92ebvCsORlse4kWb6kqozgmyeu8a86mA74/sr9Czl167EIwCKi
 ZXuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=T4WFouSAXJlblszJq8PQTgn468IhR75UYy9S3pLZMp4=;
 b=XWWBnPKY3m6agFQER4zPFgKa/iXbDxbdSCdTxAVxpwcgtpPtQjBT1mz/RJvCIMKxYa
 xeN/YjkbJydyKiPhsSQmKMYO4iAEhg4D1ZL7/fbLBemoHQqKNLJYia1vBaJnX2L8HroY
 bWVLyTFJ7orFhKZQmXsjk6GV8au6I09pXeHkOznoS/X4F68dlOrrujx7iQzHEcV2/PJb
 49IXnUrcZkrS9CO6AqViHEhl7M1TsfsgJ+jiHFIXlZ54trDUTbRHolgEn+K3vW4BnPky
 EpVjVRuSPrn8ka1uyhxbAPDi+tpYgNJdF/8HgxcOD6EsSEq0/hIwy56afIV3swqHXGtr
 DW1w==
X-Gm-Message-State: APjAAAXDs/cvId+3O/RkfuYEZjivDg4XXYOSKRPVTSNWBqYGsl+EH4zd
 F+hfmIsLlJUlGv4BgFv2CQk=
X-Google-Smtp-Source: APXvYqyCbjB7bS8BAKwTorXD/3WYE39mPg5XrSCJJU2N83JZqLqXgGo3NTjIVK8dEP4ulFDclipdGQ==
X-Received: by 2002:a63:d84e:: with SMTP id k14mr12611267pgj.234.1561031626678; 
 Thu, 20 Jun 2019 04:53:46 -0700 (PDT)
Received: from localhost.localdomain ([122.163.71.137])
 by smtp.gmail.com with ESMTPSA id c124sm21738079pfa.115.2019.06.20.04.53.44
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 20 Jun 2019 04:53:46 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org
Subject: [PATCH 10/10] staging: rtl8712: r8712_setMacAddr_cmd(): Change return
 type
Date: Thu, 20 Jun 2019 17:23:04 +0530
Message-Id: <20190620115304.3210-10-nishkadg.linux@gmail.com>
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

Change return type of function r8712_setMacAddr_cmd() to void as its
return value is never stored, checked, or otherwise used. Modify its
return statements accordingly.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_cmd.c | 7 +++----
 drivers/staging/rtl8712/rtl871x_cmd.h | 2 +-
 2 files changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_cmd.c b/drivers/staging/rtl8712/rtl871x_cmd.c
index 9832230ba0b8..cc55fa5bd494 100644
--- a/drivers/staging/rtl8712/rtl871x_cmd.c
+++ b/drivers/staging/rtl8712/rtl871x_cmd.c
@@ -690,7 +690,7 @@ u8 r8712_setrttbl_cmd(struct _adapter *padapter,
 	return _SUCCESS;
 }
 
-u8 r8712_setMacAddr_cmd(struct _adapter *padapter, u8 *mac_addr)
+void r8712_setMacAddr_cmd(struct _adapter *padapter, u8 *mac_addr)
 {
 	struct cmd_priv	*pcmdpriv = &padapter->cmdpriv;
 	struct cmd_obj *ph2c;
@@ -698,17 +698,16 @@ u8 r8712_setMacAddr_cmd(struct _adapter *padapter, u8 *mac_addr)
 
 	ph2c = kmalloc(sizeof(*ph2c), GFP_ATOMIC);
 	if (!ph2c)
-		return _FAIL;
+		return;
 	psetMacAddr_para = kmalloc(sizeof(*psetMacAddr_para), GFP_ATOMIC);
 	if (!psetMacAddr_para) {
 		kfree(ph2c);
-		return _FAIL;
+		return;
 	}
 	init_h2fwcmd_w_parm_no_rsp(ph2c, psetMacAddr_para,
 				   _SetMacAddress_CMD_);
 	ether_addr_copy(psetMacAddr_para->MacAddr, mac_addr);
 	r8712_enqueue_cmd(pcmdpriv, ph2c);
-	return _SUCCESS;
 }
 
 u8 r8712_setassocsta_cmd(struct _adapter *padapter, u8 *mac_addr)
diff --git a/drivers/staging/rtl8712/rtl871x_cmd.h b/drivers/staging/rtl8712/rtl871x_cmd.h
index 814659d5d755..d9aab41c0299 100644
--- a/drivers/staging/rtl8712/rtl871x_cmd.h
+++ b/drivers/staging/rtl8712/rtl871x_cmd.h
@@ -708,7 +708,7 @@ struct DisconnectCtrlEx_param {
 #define H2C_CMD_OVERFLOW		0x06
 #define H2C_RESERVED			0x07
 
-u8 r8712_setMacAddr_cmd(struct _adapter *padapter, u8 *mac_addr);
+void r8712_setMacAddr_cmd(struct _adapter *padapter, u8 *mac_addr);
 u8 r8712_setassocsta_cmd(struct _adapter *padapter, u8 *mac_addr);
 u8 r8712_sitesurvey_cmd(struct _adapter *padapter,
 			struct ndis_802_11_ssid *pssid);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

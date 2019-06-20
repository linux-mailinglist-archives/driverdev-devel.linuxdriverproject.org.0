Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C7104CD35
	for <lists+driverdev-devel@lfdr.de>; Thu, 20 Jun 2019 13:53:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CC00D86BC6;
	Thu, 20 Jun 2019 11:53:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I2Vv3kEiIaZy; Thu, 20 Jun 2019 11:53:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B95E9869BF;
	Thu, 20 Jun 2019 11:53:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F18321BF578
 for <devel@linuxdriverproject.org>; Thu, 20 Jun 2019 11:53:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D0783869BF
 for <devel@linuxdriverproject.org>; Thu, 20 Jun 2019 11:53:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YKcgscPuwxjt for <devel@linuxdriverproject.org>;
 Thu, 20 Jun 2019 11:53:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A582A86BB7
 for <devel@driverdev.osuosl.org>; Thu, 20 Jun 2019 11:53:35 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id i2so1318634plt.1
 for <devel@driverdev.osuosl.org>; Thu, 20 Jun 2019 04:53:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ra2iucWEYIKOvju/7xo2uhOqzjo3EYhOX2pbnjejl20=;
 b=nDm0d/6NDAKoIdf01nORzmaw9ohJd9yhib2+uqDFnGXrJxzOj+zuuv5K7kDIXqGg3A
 S4MRJzBYECA8iTll3P6Pwcp411GV3bL93gNX9KgacuDDWu57YsxGPSzA66jpzqDj5lbS
 taj7Up91RxWF8ke1Qf70CHxTeHl2nPSG2/HSsUnMUvLoPjxevNDMvBnOu6yYS1z4Khvi
 mwTycL9a25ABoBbjdROhyJ6OcLUtRntx2WtHPWlnapG0kl14KtfDzB5lQ8ZmZMRbiQ5L
 arVfe67xi0mEMNdwGqO2ya/Gw52LYDtEOhmJFm2iT8uBCWaHLhw0Dr4ajanwrtANzjmF
 sQmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ra2iucWEYIKOvju/7xo2uhOqzjo3EYhOX2pbnjejl20=;
 b=K7zjycESoHQ8I50EEyZ2mUQMIlvly0Loc0pSXp2TXU+bT8cz9/I3JsunQgs8pUnlDO
 LfLpLpabWMomA6/RVa/8lzhy54yTDQJ+vyfizR+h3kcGK4sRCi8F6qeBMm2a9SFtMD1/
 83IrIUnicCRnkYYGNc8IT0p0hCbSUshYpG3zkVxzpHQrurPz4I04eUCSTWcFmcub7fw+
 wqqsTkqzN5XNhJrigk2ZDBfi9Cii4j2Fa3ojoNhtt3CF7A9MrDSwOdMi1IgEY+rkGftO
 N00f6KCvI6FKeYD+ot7BYkZR5W3pFOMoeeuzbQa4NLvwRi3oMAWLJq31HJirFIhgYN8w
 ODgg==
X-Gm-Message-State: APjAAAUc+FkmPurWbu7iO9IN8XwZUOVVMQ/ODtGb7uP1GPdlDnljeb2I
 TpMTZFxLc6rQUw6HuxSEXPg=
X-Google-Smtp-Source: APXvYqwFSYJjrBZc0kbZgVZwkWm/+7ygurytz1A0TQj8HteiN/Upu7Rmy1VngkPVO+4jyu6+O6aegA==
X-Received: by 2002:a17:902:f81:: with SMTP id 1mr1512518plz.191.1561031615364; 
 Thu, 20 Jun 2019 04:53:35 -0700 (PDT)
Received: from localhost.localdomain ([122.163.71.137])
 by smtp.gmail.com with ESMTPSA id c124sm21738079pfa.115.2019.06.20.04.53.33
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 20 Jun 2019 04:53:35 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org
Subject: [PATCH 06/10] staging: rtl8712: r8712_set_chplan_cmd(): Change return
 type
Date: Thu, 20 Jun 2019 17:23:00 +0530
Message-Id: <20190620115304.3210-6-nishkadg.linux@gmail.com>
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

Change return type of function r8712_set_chplan_cmd from u8 to void as
its return value is never stored, checked or otherwise used. Change the
return statements accordingly.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_cmd.c | 7 +++----
 drivers/staging/rtl8712/rtl871x_cmd.h | 2 +-
 2 files changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_cmd.c b/drivers/staging/rtl8712/rtl871x_cmd.c
index 74a351788c2a..a17a35537a3b 100644
--- a/drivers/staging/rtl8712/rtl871x_cmd.c
+++ b/drivers/staging/rtl8712/rtl871x_cmd.c
@@ -260,7 +260,7 @@ int r8712_setdatarate_cmd(struct _adapter *padapter, u8 *rateset)
 	return 0;
 }
 
-u8 r8712_set_chplan_cmd(struct _adapter *padapter, int chplan)
+void r8712_set_chplan_cmd(struct _adapter *padapter, int chplan)
 {
 	struct cmd_obj *ph2c;
 	struct SetChannelPlan_param *psetchplanpara;
@@ -268,17 +268,16 @@ u8 r8712_set_chplan_cmd(struct _adapter *padapter, int chplan)
 
 	ph2c = kmalloc(sizeof(*ph2c), GFP_ATOMIC);
 	if (!ph2c)
-		return _FAIL;
+		return;
 	psetchplanpara = kmalloc(sizeof(*psetchplanpara), GFP_ATOMIC);
 	if (!psetchplanpara) {
 		kfree(ph2c);
-		return _FAIL;
+		return;
 	}
 	init_h2fwcmd_w_parm_no_rsp(ph2c, psetchplanpara,
 				GEN_CMD_CODE(_SetChannelPlan));
 	psetchplanpara->ChannelPlan = chplan;
 	r8712_enqueue_cmd(pcmdpriv, ph2c);
-	return _SUCCESS;
 }
 
 u8 r8712_setbasicrate_cmd(struct _adapter *padapter, u8 *rateset)
diff --git a/drivers/staging/rtl8712/rtl871x_cmd.h b/drivers/staging/rtl8712/rtl871x_cmd.h
index 2e30c359e0a2..44594022ec4b 100644
--- a/drivers/staging/rtl8712/rtl871x_cmd.h
+++ b/drivers/staging/rtl8712/rtl871x_cmd.h
@@ -720,7 +720,7 @@ u8 r8712_disassoc_cmd(struct _adapter *padapter);
 u8 r8712_setopmode_cmd(struct _adapter *padapter,
 		 enum NDIS_802_11_NETWORK_INFRASTRUCTURE networktype);
 int r8712_setdatarate_cmd(struct _adapter *padapter, u8 *rateset);
-u8 r8712_set_chplan_cmd(struct _adapter  *padapter, int chplan);
+void r8712_set_chplan_cmd(struct _adapter  *padapter, int chplan);
 u8 r8712_setbasicrate_cmd(struct _adapter *padapter, u8 *rateset);
 u8 r8712_getrfreg_cmd(struct _adapter *padapter, u8 offset, u8 *pval);
 u8 r8712_setrfintfs_cmd(struct _adapter *padapter, u8 mode);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

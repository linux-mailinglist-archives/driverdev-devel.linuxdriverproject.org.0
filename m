Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 19C6B5017A
	for <lists+driverdev-devel@lfdr.de>; Mon, 24 Jun 2019 07:49:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 910AD8488E;
	Mon, 24 Jun 2019 05:49:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BrpPLBArKLPT; Mon, 24 Jun 2019 05:49:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 185F480C04;
	Mon, 24 Jun 2019 05:49:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 893381BF470
 for <devel@linuxdriverproject.org>; Mon, 24 Jun 2019 05:49:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8641D84C2A
 for <devel@linuxdriverproject.org>; Mon, 24 Jun 2019 05:49:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UUQYRhnC-ZiX for <devel@linuxdriverproject.org>;
 Mon, 24 Jun 2019 05:49:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C748C84C20
 for <devel@driverdev.osuosl.org>; Mon, 24 Jun 2019 05:49:31 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id p1so6250759plo.2
 for <devel@driverdev.osuosl.org>; Sun, 23 Jun 2019 22:49:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vMsMhaIAAxv3w9ar/8BOLWqqs09IjlowjEgLZoeHZ6Y=;
 b=PBLBJ7AakbEMuan+Q7rgOl0jLjzP/kDC3EwaIwNvPCR/P07GzyU+7/dvrSMucN3ft9
 ed6N9nQNsKT5S0WOiYC35VSMAo91dB03uwCMlQGecjKZhFLjVJ8hb9bc6VDOk1flF9KZ
 EnYwaykl/VcR3k8lWrMGXGp1RAXOtN8SDAd3ncBhS1uVuZ5y/gedQdV12yp0F+4xqzCl
 grkBt7Q5cgnAa8jUSAvUN6kyXcQhRaQuKCgRZy//jebsL3X23aOfO6P7k/Ud5AqUGUAn
 ILYOdnnvvTG2AiN6vyS2nXvljtdfBk4GsuR/W9sSBf1fBLBCeczRwAg3XqbBlGxXT2ek
 weMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vMsMhaIAAxv3w9ar/8BOLWqqs09IjlowjEgLZoeHZ6Y=;
 b=b0rgonWvcnCS2x/n8rxi6Va4xrVXh2zasjM6xkt9wKNTQxmr6QL6MB1Qngvim+2Nh7
 ZKw+GuxeU8mk3uxW7bOms3o829A9aKwRHbp4E2Dff9LH484BIjfMkgeCIVVSNGQdgF6X
 llRmiA4qRCtqwa1ajX5vkKnZ4n+4WgOOjbXTksY1QBBMZfIFRvk2DE9CaFflb/be+au+
 xk/d3CC+LdRQpyy/onG8aAuON1UPsiAGu3AUK1leA4fsYrWOenaK7bUuzLLtSNLzzcRh
 l0Xwi60+++kI21s9loryowePOGmmnAtN0LHs56bSPTHtbmId1dco/sDgeEYEKTLPtMc7
 6MWA==
X-Gm-Message-State: APjAAAXPwHFj3UNMAUTev8LOe2VAmON3uTMV0nviBEvup3/m4Afl1C0F
 75BzEqP7KGRRSlwnN8dO3s8=
X-Google-Smtp-Source: APXvYqw0mOJqE7ZynyJ4Hd04rDyOSYiABPS3WBAFlu18/vkGXWc2PvdZW8vng4cwLxHw46PNowhDTw==
X-Received: by 2002:a17:902:4e25:: with SMTP id
 f34mr4654906ple.305.1561355371460; 
 Sun, 23 Jun 2019 22:49:31 -0700 (PDT)
Received: from localhost.localdomain ([122.163.71.137])
 by smtp.gmail.com with ESMTPSA id s43sm11908182pjb.10.2019.06.23.22.49.29
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 23 Jun 2019 22:49:31 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com
Subject: [PATCH 06/10] staging: rtl8712: Remove r8712_setrttbl_cmd()
Date: Mon, 24 Jun 2019 11:18:59 +0530
Message-Id: <20190624054903.2673-6-nishkadg.linux@gmail.com>
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

Remove unused function r8712_setrttbl_cmd.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_cmd.c | 22 ----------------------
 drivers/staging/rtl8712/rtl871x_cmd.h |  2 --
 2 files changed, 24 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_cmd.c b/drivers/staging/rtl8712/rtl871x_cmd.c
index b793edba5505..1f090394bc84 100644
--- a/drivers/staging/rtl8712/rtl871x_cmd.c
+++ b/drivers/staging/rtl8712/rtl871x_cmd.c
@@ -565,28 +565,6 @@ void r8712_setstakey_cmd(struct _adapter *padapter, u8 *psta, u8 unicast_key)
 	r8712_enqueue_cmd(pcmdpriv, ph2c);
 }
 
-u8 r8712_setrttbl_cmd(struct _adapter *padapter,
-		      struct setratable_parm *prate_table)
-{
-	struct cmd_obj *ph2c;
-	struct setratable_parm *psetrttblparm;
-	struct cmd_priv	*pcmdpriv = &padapter->cmdpriv;
-
-	ph2c = kmalloc(sizeof(*ph2c), GFP_ATOMIC);
-	if (!ph2c)
-		return _FAIL;
-	psetrttblparm = kmalloc(sizeof(*psetrttblparm), GFP_ATOMIC);
-	if (!psetrttblparm) {
-		kfree(ph2c);
-		return _FAIL;
-	}
-	init_h2fwcmd_w_parm_no_rsp(ph2c, psetrttblparm,
-				   GEN_CMD_CODE(_SetRaTable));
-	memcpy(psetrttblparm, prate_table, sizeof(struct setratable_parm));
-	r8712_enqueue_cmd(pcmdpriv, ph2c);
-	return _SUCCESS;
-}
-
 void r8712_setMacAddr_cmd(struct _adapter *padapter, u8 *mac_addr)
 {
 	struct cmd_priv	*pcmdpriv = &padapter->cmdpriv;
diff --git a/drivers/staging/rtl8712/rtl871x_cmd.h b/drivers/staging/rtl8712/rtl871x_cmd.h
index 4ccd329ae7d5..1234ae5e7614 100644
--- a/drivers/staging/rtl8712/rtl871x_cmd.h
+++ b/drivers/staging/rtl8712/rtl871x_cmd.h
@@ -723,8 +723,6 @@ int r8712_setdatarate_cmd(struct _adapter *padapter, u8 *rateset);
 void r8712_set_chplan_cmd(struct _adapter  *padapter, int chplan);
 u8 r8712_getrfreg_cmd(struct _adapter *padapter, u8 offset, u8 *pval);
 u8 r8712_setrfreg_cmd(struct _adapter  *padapter, u8 offset, u32 val);
-u8 r8712_setrttbl_cmd(struct _adapter  *padapter,
-		      struct setratable_parm *prate_table);
 void r8712_addbareq_cmd(struct _adapter *padapter, u8 tid);
 void r8712_wdg_wk_cmd(struct _adapter *padapter);
 void r8712_survey_cmd_callback(struct _adapter  *padapter,
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

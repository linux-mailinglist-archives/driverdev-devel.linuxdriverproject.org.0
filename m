Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C54E54E049
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Jun 2019 08:08:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7392E82146;
	Fri, 21 Jun 2019 06:08:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YjQ29odp5PBU; Fri, 21 Jun 2019 06:08:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2D8CF80114;
	Fri, 21 Jun 2019 06:08:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6D3451BF2C8
 for <devel@linuxdriverproject.org>; Fri, 21 Jun 2019 06:08:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6A93787ED2
 for <devel@linuxdriverproject.org>; Fri, 21 Jun 2019 06:08:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lefX7tNHxCya for <devel@linuxdriverproject.org>;
 Fri, 21 Jun 2019 06:08:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8A91F87EAD
 for <devel@driverdev.osuosl.org>; Fri, 21 Jun 2019 06:08:40 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id p184so3012404pfp.7
 for <devel@driverdev.osuosl.org>; Thu, 20 Jun 2019 23:08:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bZtV6XZfiVsLVpk3oSLcq30cx9sr60/BQNlAHNorGdA=;
 b=JGHisjf8NoMJgjx3SeAHbhNCxnB9267a/7ZuGgY4AqzCyr7Hbz7E7zwDepRWeleYH4
 KecdtjQPMJKEtC7oiRXi8hv+3ssDSc/PHSoPFFH0Dig13dcXS3efaOWu6PNUsqJtoHX9
 eUysOKqAWLLBbfxfbqOXF4pyrpJMR6q1cPn99YfrDybgEZO7qEs8fp3zVnZD7LQpND0z
 kHP2fnFBK9JNI0yGiLqp4B+aLuGjjOKlHDGnwgZRoKme2ZskdvnylQfvwgFQmUqLM4rE
 eEvSOGw7U0d5Omfgp2QC58zJ+/LULVIR8w+QXBChYK6hA1zpL3MmKswuckNfLcrJw1hl
 zZFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bZtV6XZfiVsLVpk3oSLcq30cx9sr60/BQNlAHNorGdA=;
 b=fo4iZxry3B1Xha/gZddytZAB4MdydIYLgCygpuFvlPa+cw+c5LW5uO0c2fUHzSTZQN
 XJAfmuOOiraLZZS69+qtmlDBw5pg7hWvGmXoteby+RFjf54eq9KS76VDbu6Nl3nXLz3d
 juNZoxpg3126rnJkARKPBwPA/cfT/ib21/37pJx91wnT2gGqDj9Kf0OxjpWQU3FLjrwk
 qzCeEQ585rO8zmc0QFUx0nHvncCxxPyF8pchPQIfHYgY6alHnVPu61nB9WUiqnCMA+j4
 pqTioIPnoCvw0lvv6HgykrapRAEK1YQ/83tzsPHcFZKF3V5XOu0gUuUIKN5fbi8U8QvQ
 gurg==
X-Gm-Message-State: APjAAAXXtkr2zzi1KCu5IXF8zZoh1HP06m4usUk9cgcNZ2Q7q6X3AnER
 uSRXhH3cecCiA/uWU8rIiJ4=
X-Google-Smtp-Source: APXvYqyrjb3cqFWXs58ipmYig3qrbv5/z5ky1e/puU3nTxTxvfbE4flzjgZKy1Ru2XfOPlyrbZd07w==
X-Received: by 2002:a63:490b:: with SMTP id w11mr16562563pga.127.1561097320167; 
 Thu, 20 Jun 2019 23:08:40 -0700 (PDT)
Received: from localhost.localdomain ([122.163.71.137])
 by smtp.gmail.com with ESMTPSA id j23sm1479203pgb.63.2019.06.20.23.08.38
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 20 Jun 2019 23:08:39 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org
Subject: [PATCH 03/10] staging: rtl8712: r8712_wdg_wk_cmd(): Change return type
Date: Fri, 21 Jun 2019 11:38:09 +0530
Message-Id: <20190621060816.2030-3-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190621060816.2030-1-nishkadg.linux@gmail.com>
References: <20190621060816.2030-1-nishkadg.linux@gmail.com>
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

Change return type of function r8712_wdg_wk_cmd from u8 to void as its
return value is never stored, checked or otherwise used. Modify its
return statements accordingly.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_cmd.c | 7 +++----
 drivers/staging/rtl8712/rtl871x_cmd.h | 2 +-
 2 files changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_cmd.c b/drivers/staging/rtl8712/rtl871x_cmd.c
index 516047a074d6..163eadba789c 100644
--- a/drivers/staging/rtl8712/rtl871x_cmd.c
+++ b/drivers/staging/rtl8712/rtl871x_cmd.c
@@ -759,7 +759,7 @@ void r8712_addbareq_cmd(struct _adapter *padapter, u8 tid)
 	r8712_enqueue_cmd_ex(pcmdpriv, ph2c);
 }
 
-u8 r8712_wdg_wk_cmd(struct _adapter *padapter)
+void r8712_wdg_wk_cmd(struct _adapter *padapter)
 {
 	struct cmd_obj *ph2c;
 	struct drvint_cmd_parm  *pdrvintcmd_param;
@@ -767,18 +767,17 @@ u8 r8712_wdg_wk_cmd(struct _adapter *padapter)
 
 	ph2c = kmalloc(sizeof(*ph2c), GFP_ATOMIC);
 	if (!ph2c)
-		return _FAIL;
+		return;
 	pdrvintcmd_param = kmalloc(sizeof(*pdrvintcmd_param), GFP_ATOMIC);
 	if (!pdrvintcmd_param) {
 		kfree(ph2c);
-		return _FAIL;
+		return;
 	}
 	pdrvintcmd_param->i_cid = WDG_WK_CID;
 	pdrvintcmd_param->sz = 0;
 	pdrvintcmd_param->pbuf = NULL;
 	init_h2fwcmd_w_parm_no_rsp(ph2c, pdrvintcmd_param, _DRV_INT_CMD_);
 	r8712_enqueue_cmd_ex(pcmdpriv, ph2c);
-	return _SUCCESS;
 }
 
 void r8712_survey_cmd_callback(struct _adapter *padapter, struct cmd_obj *pcmd)
diff --git a/drivers/staging/rtl8712/rtl871x_cmd.h b/drivers/staging/rtl8712/rtl871x_cmd.h
index 2aa50e6f1297..5d0a8568003f 100644
--- a/drivers/staging/rtl8712/rtl871x_cmd.h
+++ b/drivers/staging/rtl8712/rtl871x_cmd.h
@@ -730,7 +730,7 @@ u8 r8712_setrttbl_cmd(struct _adapter  *padapter,
 u8 r8712_setfwdig_cmd(struct _adapter *padapter, u8 type);
 u8 r8712_setfwra_cmd(struct _adapter *padapter, u8 type);
 void r8712_addbareq_cmd(struct _adapter *padapter, u8 tid);
-u8 r8712_wdg_wk_cmd(struct _adapter *padapter);
+void r8712_wdg_wk_cmd(struct _adapter *padapter);
 void r8712_survey_cmd_callback(struct _adapter  *padapter,
 			       struct cmd_obj *pcmd);
 void r8712_disassoc_cmd_callback(struct _adapter  *padapter,
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

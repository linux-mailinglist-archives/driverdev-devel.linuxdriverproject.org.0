Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 69ED94E046
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Jun 2019 08:08:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 54951203EE;
	Fri, 21 Jun 2019 06:08:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p1bHnMqRC3K7; Fri, 21 Jun 2019 06:08:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B86F920032;
	Fri, 21 Jun 2019 06:08:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B60751BF2C8
 for <devel@linuxdriverproject.org>; Fri, 21 Jun 2019 06:08:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AB6072010E
 for <devel@linuxdriverproject.org>; Fri, 21 Jun 2019 06:08:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WfEfrslFlJHh for <devel@linuxdriverproject.org>;
 Fri, 21 Jun 2019 06:08:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 1170520032
 for <devel@driverdev.osuosl.org>; Fri, 21 Jun 2019 06:08:35 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id d126so3025189pfd.2
 for <devel@driverdev.osuosl.org>; Thu, 20 Jun 2019 23:08:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cADPe0NdTA8WbGNwc+sX4mFLPWUXdJzCnFbydowBDzE=;
 b=lBFD173AVISi2nxULHlPtkt3kIotMk6EX9F044amybxBqzf5V1bP/2vvl0Hlnq4Lu8
 v637R8N0NrHd2XpgVojgDQgBHY9uwMxTk9CfHOrGwgTuodF0VZzoVzYVE1VN7zgw2pHj
 JLDFnbHCd10iJc9LeoCR5Te8lus5e38XPyJogpQ74Zz2JBtlTz5WSP0LUfodSwfeSpJS
 i+7IeqrJGMGDCqBvBZSuOhY3uYETeU8KyzD6wU53OWBLekCP5NHTdzeTSfjtLy4g0v2v
 G+NN8ENiRCFi2m5T1GD4s2y7h2szy5cSYueZObNmNK9qv5gx99U2Vfvw7KiTW9XNBxmZ
 BFPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cADPe0NdTA8WbGNwc+sX4mFLPWUXdJzCnFbydowBDzE=;
 b=VFwv/+srMy7I6MrCd8Yaig9agX2iHdKbSkrZTZZHql9EEx6ioOIdhHcZjM14b1wYqq
 4wOegF+Sraiu8RcN4RuAgXOGT4ShCoNO+ma0ZdW1Oo4xzGPajZUZZF+3r0hGwxE4Xsau
 U6s40u4V28EYEeISpkYr7ZA0+vN5DcMJuZjtg1gGM1Ns6Lm1Xk+jyPHxNQMZdiML/AD4
 7OmXWvExD9VA8FX/neYo625bX9KdisW4KHhxG+rcCPvo+uejLMnokpC3HN1HMk/7mMjh
 dXCF2VBlm+kSvYShsoQ3mDgupUZdRl9JosZcknvNKNeDdA3CLp3a2sYpM5oBYyJCAw63
 sDHQ==
X-Gm-Message-State: APjAAAWBP/3v9+gy5xL1izpuVTL5fF1ka8evfwolkgbTDX7T/TViIwZ0
 nImVQJmJreKlkgpu2EuuowQ=
X-Google-Smtp-Source: APXvYqwDgqqEuz6UaLQxB0PkVHsVwE3PPbJuTMdUC4RmFLKO+4J+FFaHGAwlpLbHDs6QFbk+TefRoQ==
X-Received: by 2002:a17:90a:8a91:: with SMTP id
 x17mr4260265pjn.95.1561097314651; 
 Thu, 20 Jun 2019 23:08:34 -0700 (PDT)
Received: from localhost.localdomain ([122.163.71.137])
 by smtp.gmail.com with ESMTPSA id j23sm1479203pgb.63.2019.06.20.23.08.32
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 20 Jun 2019 23:08:34 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org
Subject: [PATCH 01/10] staging: rtl8712: r8712_addbareq_cmd(): Change return
 type
Date: Fri, 21 Jun 2019 11:38:07 +0530
Message-Id: <20190621060816.2030-1-nishkadg.linux@gmail.com>
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

Change return type of the function r8712_addbareq_cmd from u8 to void as
its return value is not stored, checked or otherwise used. Also modify
its return statements accordingly.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_cmd.c | 7 +++----
 drivers/staging/rtl8712/rtl871x_cmd.h | 2 +-
 2 files changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_cmd.c b/drivers/staging/rtl8712/rtl871x_cmd.c
index cc55fa5bd494..8d110cc23b9a 100644
--- a/drivers/staging/rtl8712/rtl871x_cmd.c
+++ b/drivers/staging/rtl8712/rtl871x_cmd.c
@@ -739,7 +739,7 @@ u8 r8712_setassocsta_cmd(struct _adapter *padapter, u8 *mac_addr)
 	return _SUCCESS;
 }
 
-u8 r8712_addbareq_cmd(struct _adapter *padapter, u8 tid)
+void r8712_addbareq_cmd(struct _adapter *padapter, u8 tid)
 {
 	struct cmd_priv		*pcmdpriv = &padapter->cmdpriv;
 	struct cmd_obj		*ph2c;
@@ -747,17 +747,16 @@ u8 r8712_addbareq_cmd(struct _adapter *padapter, u8 tid)
 
 	ph2c = kmalloc(sizeof(*ph2c), GFP_ATOMIC);
 	if (!ph2c)
-		return _FAIL;
+		return;
 	paddbareq_parm = kmalloc(sizeof(*paddbareq_parm), GFP_ATOMIC);
 	if (!paddbareq_parm) {
 		kfree(ph2c);
-		return _FAIL;
+		return;
 	}
 	paddbareq_parm->tid = tid;
 	init_h2fwcmd_w_parm_no_rsp(ph2c, paddbareq_parm,
 				   GEN_CMD_CODE(_AddBAReq));
 	r8712_enqueue_cmd_ex(pcmdpriv, ph2c);
-	return _SUCCESS;
 }
 
 u8 r8712_wdg_wk_cmd(struct _adapter *padapter)
diff --git a/drivers/staging/rtl8712/rtl871x_cmd.h b/drivers/staging/rtl8712/rtl871x_cmd.h
index d9aab41c0299..8448dd05fa4c 100644
--- a/drivers/staging/rtl8712/rtl871x_cmd.h
+++ b/drivers/staging/rtl8712/rtl871x_cmd.h
@@ -729,7 +729,7 @@ u8 r8712_setrttbl_cmd(struct _adapter  *padapter,
 		      struct setratable_parm *prate_table);
 u8 r8712_setfwdig_cmd(struct _adapter *padapter, u8 type);
 u8 r8712_setfwra_cmd(struct _adapter *padapter, u8 type);
-u8 r8712_addbareq_cmd(struct _adapter *padapter, u8 tid);
+void r8712_addbareq_cmd(struct _adapter *padapter, u8 tid);
 u8 r8712_wdg_wk_cmd(struct _adapter *padapter);
 void r8712_survey_cmd_callback(struct _adapter  *padapter,
 			       struct cmd_obj *pcmd);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

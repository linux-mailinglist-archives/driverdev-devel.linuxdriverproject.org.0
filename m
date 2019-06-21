Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C3F304E04D
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Jun 2019 08:09:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B48A482D5F;
	Fri, 21 Jun 2019 06:09:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L+KSFZGYzrE6; Fri, 21 Jun 2019 06:09:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id AEE11812BE;
	Fri, 21 Jun 2019 06:09:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 940AB1BF2C8
 for <devel@linuxdriverproject.org>; Fri, 21 Jun 2019 06:08:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9082C811DB
 for <devel@linuxdriverproject.org>; Fri, 21 Jun 2019 06:08:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YTyuLfHwd8Be for <devel@linuxdriverproject.org>;
 Fri, 21 Jun 2019 06:08:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1654A8113F
 for <devel@driverdev.osuosl.org>; Fri, 21 Jun 2019 06:08:59 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id p10so2842048pgn.1
 for <devel@driverdev.osuosl.org>; Thu, 20 Jun 2019 23:08:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=uitUIVPDjE3ol2fGY7YOwPZN3Fust8HOkH6yV7/P1Bo=;
 b=c4yyi7ExinjwnOPl3GOqIVrdHK/Jx3hBe/dxGDeSCINC5bR0MQg0gbsNN8Xw6q3HP8
 I1reVUqoQpvhPTZsA8P5Mft3kt+z5UaSUsv9uV6dABqlODE2GBLYvWmR68t1qtaq0lqj
 4jVkW512LkTbvYN+yyxBVdrDjojyazUz7bSXXBq8NCpbYrjbXPdG9MSJHtKLxd8cNC8d
 jdjMLi5ToLgEiqMFnE4mJRuIA1yzD7FKbodTajx8wau5kPllvmMNGDYXnLxBZQ9gPQTR
 +ZSqvMleCMI0iiZU1fsDJzDFZcd7mCONuohrb/vfx7LcefDZ6f01ZLanuegB7nnxr36U
 q7eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=uitUIVPDjE3ol2fGY7YOwPZN3Fust8HOkH6yV7/P1Bo=;
 b=jx4qTkvINvUBZnkyxU/6HFfhcMssxYpcFg6otC/9MN2wjRBOJBaThGAd/xjZ8+KG1Y
 rhAkEp2UFZ1IpgtRgIuhvUA9T1301ETVIYylmawwdmVVQWGstvefeSApou3xgcUqID8a
 0EmfTHND+aTffKamRurCPKSHO9d5ysa1Bk3ih/NXp28CkNXsAgohfra7UcEjoRd6YfVH
 PMbnI6rnxOSZbiVIfmQCqm7dh0wxmMxokYgpw/qD/LUQl2ICBGGnvAr874+PiMKiptsx
 IF2ApfJo0/T6UXVR3kZywjij+Q3mPkHlk+Xzvy1lXpU00J7A2HDqpc9Pup93RpTWv/Ju
 hQ0A==
X-Gm-Message-State: APjAAAVrAP3uHVct4aGwZhexPygTB/hxmgqC/A67IMIM2ZZlN4msuS2h
 jxgPc9ZWu0NQf3FDiL2g/wU=
X-Google-Smtp-Source: APXvYqwGarUIHxSQdSV4oDOHd2JexagfC5s8GXO/QzdGrUZ4S/P0TGCdtwOZq7gJKbla6mKx0h3LMw==
X-Received: by 2002:a17:90a:d3d7:: with SMTP id
 d23mr4055024pjw.26.1561097338742; 
 Thu, 20 Jun 2019 23:08:58 -0700 (PDT)
Received: from localhost.localdomain ([122.163.71.137])
 by smtp.gmail.com with ESMTPSA id j23sm1479203pgb.63.2019.06.20.23.08.56
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 20 Jun 2019 23:08:58 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org
Subject: [PATCH 10/10] staging: rtl8712: Replace function r8712_init_cmd_priv()
Date: Fri, 21 Jun 2019 11:38:16 +0530
Message-Id: <20190621060816.2030-10-nishkadg.linux@gmail.com>
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

Remove function r8712_init_cmd_priv as all it does is call
_init_cmd_priv.
Rename _init_cmd_priv to r8712_init_cmd_priv to maintain compatibility
with call sites.
Change type of new r8712_init_cmd_priv from static to non-static as
original r8712_init_cmd_priv was non-static.
Change return type of new r8712_init_cmd_priv to int as original had
return type u32 but new (formerly _init_cmd_priv) had return type sint.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_cmd.c | 7 +------
 drivers/staging/rtl8712/rtl871x_cmd.h | 2 +-
 2 files changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_cmd.c b/drivers/staging/rtl8712/rtl871x_cmd.c
index 752418692be0..c6643c371271 100644
--- a/drivers/staging/rtl8712/rtl871x_cmd.c
+++ b/drivers/staging/rtl8712/rtl871x_cmd.c
@@ -43,7 +43,7 @@
  * No irqsave is necessary.
  */
 
-static sint _init_cmd_priv(struct cmd_priv *pcmdpriv)
+int r8712_init_cmd_priv(struct cmd_priv *pcmdpriv)
 {
 	init_completion(&pcmdpriv->cmd_queue_comp);
 	init_completion(&pcmdpriv->terminate_cmdthread_comp);
@@ -135,11 +135,6 @@ static struct cmd_obj *_dequeue_cmd(struct  __queue *queue)
 	return obj;
 }
 
-u32 r8712_init_cmd_priv(struct cmd_priv *pcmdpriv)
-{
-	return _init_cmd_priv(pcmdpriv);
-}
-
 u32 r8712_init_evt_priv(struct evt_priv *pevtpriv)
 {
 	return _init_evt_priv(pevtpriv);
diff --git a/drivers/staging/rtl8712/rtl871x_cmd.h b/drivers/staging/rtl8712/rtl871x_cmd.h
index efca88b4ea99..0203037adb7f 100644
--- a/drivers/staging/rtl8712/rtl871x_cmd.h
+++ b/drivers/staging/rtl8712/rtl871x_cmd.h
@@ -84,7 +84,7 @@ void r8712_enqueue_cmd_ex(struct cmd_priv *pcmdpriv, struct cmd_obj *obj);
 struct cmd_obj *r8712_dequeue_cmd(struct  __queue *queue);
 void r8712_free_cmd_obj(struct cmd_obj *pcmd);
 int r8712_cmd_thread(void *context);
-u32 r8712_init_cmd_priv(struct cmd_priv *pcmdpriv);
+int r8712_init_cmd_priv(struct cmd_priv *pcmdpriv);
 void r8712_free_cmd_priv(struct cmd_priv *pcmdpriv);
 u32 r8712_init_evt_priv(struct evt_priv *pevtpriv);
 void r8712_free_evt_priv(struct evt_priv *pevtpriv);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

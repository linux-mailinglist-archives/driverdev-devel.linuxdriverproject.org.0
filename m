Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BFD850179
	for <lists+driverdev-devel@lfdr.de>; Mon, 24 Jun 2019 07:49:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 32E412048E;
	Mon, 24 Jun 2019 05:49:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rp5ply-AJpKa; Mon, 24 Jun 2019 05:49:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3B25D204A3;
	Mon, 24 Jun 2019 05:49:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C853A1BF470
 for <devel@linuxdriverproject.org>; Mon, 24 Jun 2019 05:49:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C5B8E86FE7
 for <devel@linuxdriverproject.org>; Mon, 24 Jun 2019 05:49:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mCfHOx77Dua1 for <devel@linuxdriverproject.org>;
 Mon, 24 Jun 2019 05:49:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6059886EC0
 for <devel@driverdev.osuosl.org>; Mon, 24 Jun 2019 05:49:29 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id n2so6473431pgp.11
 for <devel@driverdev.osuosl.org>; Sun, 23 Jun 2019 22:49:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mmlCBQAA+mIQadgemW4Cfqpu+lwpo9X7qyFoSc8tDAY=;
 b=oen8yJx7PquABC8Uto2rGMpUEwD0AguvjOzVOI7ZP5MzwNbaaf3QdvEQY8oOM7qWSU
 V3IqzuwDhT94Lp/da+e8gCXE6iaIuK/NVPooe/OkPjD7XyDmoXjnDUoguJSTzM/DeG4r
 pTHSbH2CkVkfWo/id0DptZgFRKO8mYBowAhozdLhB76gI9an3vrw0djU9JfZs48Ws4Yw
 Bt51m6HFEPyfGiTO/Jpm5x0vb1h3nPbGbj21qde6JmY5ghfKYiGPuIdxpm5mA++ud5DA
 jOjlkyQj15kLklSE10KJVMTXnpCWaPaFKUSOZ13n49sRC9Hmw2LaZc6NUnoZWW4BMZLd
 NP6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mmlCBQAA+mIQadgemW4Cfqpu+lwpo9X7qyFoSc8tDAY=;
 b=TTYyfJAojAbIA8G1ikgJvu9ZYNeV42VT//92sXojxuJNpjjsmFFbQkcEl+3vNRuLm8
 XX+rJmvGtXE95DbOa3FtzzOZp3vPN50Op6NUQAlksxcSkNzcadcljJNwnCBd0m93QVnC
 gxIh221UwLJcsdGtQI/UIsgliIbSvNhAA0RSHJAR0urvwI1R4ESfBptppBJBdRBgJPBs
 ZUThQneNP2ptFzqqLG5Ab+idYTKhGXzLWdBzZVoQqQ1lwNedKqCATxX2+tMDTwDNc3Kz
 uCdo4+myt8RcPJVduiOCTQAloYdJZtTDZGTv7PCTljs4N9CyxTpOfM0nWkLSlLV1nbjc
 Iuuw==
X-Gm-Message-State: APjAAAVWUOMWWxNUFJsWODU7ukYlzBFNqgT7vBTQYbW9ktZvSWblwc4a
 EB8EFj/oIHDfzMblU6uSOcE=
X-Google-Smtp-Source: APXvYqxmYVWC3z7vgQkMrIcFsmGTq8xIDJPM4rW3g/Voetk2ud64mecbyg6aqi4hZi+KnWPN1DpR7A==
X-Received: by 2002:a17:90a:2627:: with SMTP id
 l36mr23254257pje.71.1561355369051; 
 Sun, 23 Jun 2019 22:49:29 -0700 (PDT)
Received: from localhost.localdomain ([122.163.71.137])
 by smtp.gmail.com with ESMTPSA id s43sm11908182pjb.10.2019.06.23.22.49.26
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 23 Jun 2019 22:49:28 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com
Subject: [PATCH 05/10] staging: rtl8712: Replace r8712_free_evt_priv()
Date: Mon, 24 Jun 2019 11:18:58 +0530
Message-Id: <20190624054903.2673-5-nishkadg.linux@gmail.com>
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

Remove function r8712_free_evt_priv as all it does is call
_free_evt_priv.
Rename _free_evt_priv to r8712_free_evt_priv to maintain compatibility
with call sites.
Change type of new r8712_free_evt_priv from static to non-static to
match old definition.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_cmd.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_cmd.c b/drivers/staging/rtl8712/rtl871x_cmd.c
index 269afe8cfd2a..b793edba5505 100644
--- a/drivers/staging/rtl8712/rtl871x_cmd.c
+++ b/drivers/staging/rtl8712/rtl871x_cmd.c
@@ -87,7 +87,7 @@ int r8712_init_evt_priv(struct evt_priv *pevtpriv)
 	return 0;
 }
 
-static void _free_evt_priv(struct evt_priv *pevtpriv)
+void r8712_free_evt_priv(struct evt_priv *pevtpriv)
 {
 	kfree(pevtpriv->evt_allocated_buf);
 }
@@ -135,11 +135,6 @@ static struct cmd_obj *_dequeue_cmd(struct  __queue *queue)
 	return obj;
 }
 
-void r8712_free_evt_priv(struct evt_priv *pevtpriv)
-{
-	_free_evt_priv(pevtpriv);
-}
-
 void r8712_enqueue_cmd(struct cmd_priv *pcmdpriv, struct cmd_obj *obj)
 {
 	if (pcmdpriv->padapter->eeprompriv.bautoload_fail_flag)
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

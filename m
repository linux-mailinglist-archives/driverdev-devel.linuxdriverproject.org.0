Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DE28B50178
	for <lists+driverdev-devel@lfdr.de>; Mon, 24 Jun 2019 07:49:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1C4912049F;
	Mon, 24 Jun 2019 05:49:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d8aYwg2P6GbW; Mon, 24 Jun 2019 05:49:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8447720494;
	Mon, 24 Jun 2019 05:49:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 79EFB1BF470
 for <devel@linuxdriverproject.org>; Mon, 24 Jun 2019 05:49:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7544484C20
 for <devel@linuxdriverproject.org>; Mon, 24 Jun 2019 05:49:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G1+q-vbI7tL0 for <devel@linuxdriverproject.org>;
 Mon, 24 Jun 2019 05:49:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id F1EF68475D
 for <devel@driverdev.osuosl.org>; Mon, 24 Jun 2019 05:49:26 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id p10so6509269pgn.1
 for <devel@driverdev.osuosl.org>; Sun, 23 Jun 2019 22:49:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MA6IwfgWbTH1ooa5Kbx+/GCkV00Arm0c2ge5k00b1ME=;
 b=j8eIgJb2eQZbPtGijtDYAR36CeKSvSk00+zs3UXcDmsQHYWaTUZQW58LnusIkNCFgE
 yY0TxgTYMS4pEaym2ZqupqjtSPeou8xmoA+dY2CQ2fAoP/KYOK8ud6U4s8POiD3SlniZ
 iV1Ga1GLAIq3H+Rzcr/QVFBVeFSnMEnk/B0rNfsDwknQnwnqB2gwi36FlVnWMx2UCCIn
 IIUQZFiRSSSeR0cTFGdWp2F2atoKIYu1JW4JUor8JWSpHkmcdZHVfQmAUk00jsxILwDB
 lAIURoU8AkZBTr4qRETGJ1WiNf9CMqqJr/OFBiTnn3VJ75k+Q/PwGQD9v+qR8xiGyixR
 9uvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MA6IwfgWbTH1ooa5Kbx+/GCkV00Arm0c2ge5k00b1ME=;
 b=eV1pJQl0TlbjOaPiLWc8EsiwzXOAMGsuxg2w4zlo1ptX/nh0Uxi/27f7uKGTh6lK1+
 ur750dipyhv3kJ0tbl6ywyJG/tyqzOrpYMgkGaxXHpCQ0BzVRYO820Mi4pBfikvN8Z8O
 mgBS09BIKlvwQ27s14CDyTwkATbGejnPqaXACoxqdmnZhP7wuaIqHx5afqQQuAnQic6n
 DD9PqOklm78U9FP5JB+AXVaQUeFxwah1M7Wx2BKi3USFw0EGklpQ89b48p6oczZfycMV
 EfdpqcM2SxlgpcyfSOxf1BJA7Zioxo8NP6IT9570riTwyLaY35kj3sV70ijk5k0cS1FW
 0DuQ==
X-Gm-Message-State: APjAAAXx0nPKLD25TiRzErg6E3mwxiR34t7/uOIuzVbWtUkHb5+Ld7Q1
 btPK4Qc+/nkDqc/l3R4weZc=
X-Google-Smtp-Source: APXvYqzO58pVow+MMs+/10+mmA0lEojfypETW9AEsKHwaU9Rz81wfHSYOVCUzj4ks0JaePEiqzKSAg==
X-Received: by 2002:a63:4e58:: with SMTP id o24mr2823511pgl.366.1561355366590; 
 Sun, 23 Jun 2019 22:49:26 -0700 (PDT)
Received: from localhost.localdomain ([122.163.71.137])
 by smtp.gmail.com with ESMTPSA id s43sm11908182pjb.10.2019.06.23.22.49.24
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 23 Jun 2019 22:49:26 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com
Subject: [PATCH 04/10] staging: rtl8712: Replace r8712_free_cmd_priv()
Date: Mon, 24 Jun 2019 11:18:57 +0530
Message-Id: <20190624054903.2673-4-nishkadg.linux@gmail.com>
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

Remove function r8712_free_cmd_priv as all it does is call
_free_cmd_priv.
Change type of new r8712_free_cmd_priv from static to non-static to
match definition of original r8712_free_cmd_priv.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_cmd.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_cmd.c b/drivers/staging/rtl8712/rtl871x_cmd.c
index bf44f37e773d..269afe8cfd2a 100644
--- a/drivers/staging/rtl8712/rtl871x_cmd.c
+++ b/drivers/staging/rtl8712/rtl871x_cmd.c
@@ -92,7 +92,7 @@ static void _free_evt_priv(struct evt_priv *pevtpriv)
 	kfree(pevtpriv->evt_allocated_buf);
 }
 
-static void _free_cmd_priv(struct cmd_priv *pcmdpriv)
+void r8712_free_cmd_priv(struct cmd_priv *pcmdpriv)
 {
 	if (pcmdpriv) {
 		kfree(pcmdpriv->cmd_allocated_buf);
@@ -140,11 +140,6 @@ void r8712_free_evt_priv(struct evt_priv *pevtpriv)
 	_free_evt_priv(pevtpriv);
 }
 
-void r8712_free_cmd_priv(struct cmd_priv *pcmdpriv)
-{
-	_free_cmd_priv(pcmdpriv);
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

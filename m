Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BA49598E5
	for <lists+driverdev-devel@lfdr.de>; Fri, 28 Jun 2019 12:59:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 408D885C08;
	Fri, 28 Jun 2019 10:59:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Nvt6HbO5OEEr; Fri, 28 Jun 2019 10:59:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EDA4F85C00;
	Fri, 28 Jun 2019 10:59:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4E0571BF407
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 10:59:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 48DCB8817F
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 10:59:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gLbhwmr48hPI for <devel@linuxdriverproject.org>;
 Fri, 28 Jun 2019 10:58:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id EAA2588189
 for <devel@driverdev.osuosl.org>; Fri, 28 Jun 2019 10:58:59 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id w10so2431401pgj.7
 for <devel@driverdev.osuosl.org>; Fri, 28 Jun 2019 03:58:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8d6fcJuoLfcCXjP83MMsbmq0mVvPWNSQ40B8UNCGpK8=;
 b=XTiq9Xq3/U0F78868zTGYTdUx78hE0DSpxuxYazjTImXfEcWmwYPqYkI7Otc6/D+C7
 NJxBAddDdqdPpoby+DjKEriKPmyFfxXnCgiT1riMsif3Ui9s54NWldN60iYJU8anoofN
 RBEKpiijDWnYsE6pNSjkaOjyKhFmJ+Ziq1M471sieac9O5M5syl6d2NbNbzHgVpBncUx
 NcY9HerhaZa7QCrNdL5880l3IrmJYFKcSvUdfRhYCJHfGF55wNgptnnXBHf5XqFoOlVF
 hCcnwTvsrhdoKDV3CfIoRsPy/ZODeNF/ImlfX18qXe9DLbOjlbJsSDylds75c7kYsYge
 ciAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8d6fcJuoLfcCXjP83MMsbmq0mVvPWNSQ40B8UNCGpK8=;
 b=gbUwVaWHzLm/rT6550K00WOn/rfJkGieyhPnFAAr4BD6dWAtEhgt+UUK7C195JUVmj
 tuoZ1X4F5VDXh3sMRcpUlRW2WrZ7+/5WKHI+qDkgueyhcj6ImMYSy6q9mzIzmKeHauC+
 S071FNhrxzyCxs1fdAkoZQ5j7sBGUdZwplfR6TinRQTU0ekSpgoVEo+mnW9S7tu3C8vP
 f8gA8xAZQWeU0ToUlgu7Mwv1aTznhvU5BFR5SVjEdJuq8VV44g2+y7kaj4zk8+P7t1QK
 G4nA/N/emuyDObMmyx9CJUhJYU/o0SYmMreJSNrUcidDqAwG2PGMgquUNFHw34NNCNfv
 0cLw==
X-Gm-Message-State: APjAAAX8ONYvxqDnc+9yXpYIaGivMWnwNGjUnE7GMvT8phE0RGdCtl66
 uUyVmgZu8Tu/UsDiMTwnM/7tQck9
X-Google-Smtp-Source: APXvYqxoSQjSXqR3Q06MNQSnbGeplEC3sYkRNoxQCfHLYc3VKrbIEiC7FeGUQs9i8q89Ws7jv+RxFQ==
X-Received: by 2002:a17:90a:2627:: with SMTP id
 l36mr12662296pje.71.1561719539610; 
 Fri, 28 Jun 2019 03:58:59 -0700 (PDT)
Received: from localhost.localdomain ([110.227.94.173])
 by smtp.gmail.com with ESMTPSA id j14sm1908043pfe.10.2019.06.28.03.58.57
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 28 Jun 2019 03:58:59 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 05/10] staging: rtl8723bs: core: Remove function
 wait_eeprom_cmd_done()
Date: Fri, 28 Jun 2019 16:28:30 +0530
Message-Id: <20190628105835.6931-5-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190628105835.6931-1-nishkadg.linux@gmail.com>
References: <20190628105835.6931-1-nishkadg.linux@gmail.com>
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

Remove unused function wait_eeprom_cmd_done.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_eeprom.c | 19 -------------------
 1 file changed, 19 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_eeprom.c b/drivers/staging/rtl8723bs/core/rtw_eeprom.c
index a707c2534a65..3cbd65dee741 100644
--- a/drivers/staging/rtl8723bs/core/rtw_eeprom.c
+++ b/drivers/staging/rtl8723bs/core/rtw_eeprom.c
@@ -118,25 +118,6 @@ _func_enter_;
 _func_exit_;
 }
 
-u16 wait_eeprom_cmd_done(_adapter *padapter)
-{
-	u8 x;
-	u16 i, res = false;
-_func_enter_;
-	standby(padapter);
-	for (i = 0; i < 200; i++) {
-		x = rtw_read8(padapter, EE_9346CR);
-		if (x & _EEDO) {
-			res = true;
-			goto exit;
-			}
-		udelay(CLOCK_RATE);
-	}
-exit:
-_func_exit_;
-	return res;
-}
-
 void eeprom_clean(_adapter *padapter)
 {
 	u16 x;
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

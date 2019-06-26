Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5088A56216
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Jun 2019 08:11:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 348B68606C;
	Wed, 26 Jun 2019 06:11:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kwb7gxrF8zYW; Wed, 26 Jun 2019 06:11:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4605985FA4;
	Wed, 26 Jun 2019 06:11:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 086E01BF3CC
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 06:10:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 02EAA81AEC
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 06:10:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pFUJmN2DFS+r for <devel@linuxdriverproject.org>;
 Wed, 26 Jun 2019 06:10:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E37758139D
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 06:10:11 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id k13so663081pgq.9
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 23:10:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Rt8ZFGQs7PPZOaDPHXCGJ7CBsyBmXC7d/Wu5Hl9GoSA=;
 b=Z619hllWo3nucRvuMwx0JKJ9s6woaxcVFT/HBIzO1A7uz/LA4dkbdE55QkDnQF5k9i
 fZo2svEhzl/f5gmErKeN/7C+TQbuqEgZ+vxTpYn/INWoZ8/LrGKK/i8LimVa4MJWGfPA
 bzBFssDitV7bfsgvLLgH8fbO+6HsE6n/tjbxYHJvEHXSqB8m6yfCkjHhLK0oC9jagQiH
 pO6wyhHHJso7c9rUFF7fDBMymmDvf75bcsFvPQc91HemdptIUKjpdVuTs+7oFD84ATxm
 13z0chQRg5mUFJg7sjnJSPO6ySF9PkJSZrk7LtRnSjhXOHzCFIxbjIQgMMcBEBZpSEbr
 +nOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Rt8ZFGQs7PPZOaDPHXCGJ7CBsyBmXC7d/Wu5Hl9GoSA=;
 b=NrPWYYafwNBzW+CpUihkRpr4qOt9L+3HR9Zx+corWtrQA5qxkLQt1f1XFhS8xDl9S7
 kiJT0bs61UJrrmEHjT5tyhDcGF1uuHH/rIhR7VxiIvcYvJfWwxwRGyWCVBpYFjdEhHr9
 M1aOk0S8LGRBEZ+HwqoBHOAoMV70xEbAUWBfBNITp7ZyMEM3aFp+K2/eC5+CHVZYaJa3
 aSsMUDb1wJgOxv7XdqacvJKDLEZAPB61fiqA9AjaIF+QqBls89T8X278D4RU+nFRslqK
 pUnOVy6JG1MxziqUUo2m+RD0H+26imW9rkTNIZYKNGg+SLyw9hWVlcZbQ6me3jj4IFPA
 yi1w==
X-Gm-Message-State: APjAAAUmw3f+X08vC+uvnRNbMYJF4Lnop/3KTtH/BpOhETFpqhqE0SOC
 uUxMZrtIFFrEhNKIQcGeesU=
X-Google-Smtp-Source: APXvYqzSC3/QBpPu9vlHe4HSXgbIz0fgIVuB7gIcT05jTAjksBgenwefbeQZSq5Aeam3PghxOkRPKg==
X-Received: by 2002:a63:d551:: with SMTP id v17mr1205575pgi.365.1561529411557; 
 Tue, 25 Jun 2019 23:10:11 -0700 (PDT)
Received: from localhost.localdomain ([110.227.94.173])
 by smtp.gmail.com with ESMTPSA id v13sm17613407pfe.105.2019.06.25.23.10.09
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 25 Jun 2019 23:10:11 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org, larry.finger@lwfinger.net,
 florian.c.schilhabel@googlemail.com, devel@driverdev.osuosl.org
Subject: [PATCH 6/9] staging: rtl8712: _r8712_init_sta_priv(): Change return
 values
Date: Wed, 26 Jun 2019 11:39:38 +0530
Message-Id: <20190626060941.2441-6-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190626060941.2441-1-nishkadg.linux@gmail.com>
References: <20190626060941.2441-1-nishkadg.linux@gmail.com>
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

Add check for the return value of function _r8712_init_sta_priv at call
site.
Change return values of the function from _SUCCESS/_FAIL to 0/-ENOMEM
respectively.
Change return type of the function from u32 to int to enable return of
-ENOMEM.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/os_intfs.c        | 3 ++-
 drivers/staging/rtl8712/rtl871x_sta_mgt.c | 6 +++---
 drivers/staging/rtl8712/sta_info.h        | 2 +-
 3 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8712/os_intfs.c b/drivers/staging/rtl8712/os_intfs.c
index 85a43fd67ca5..b554cf8bd679 100644
--- a/drivers/staging/rtl8712/os_intfs.c
+++ b/drivers/staging/rtl8712/os_intfs.c
@@ -310,7 +310,8 @@ u8 r8712_init_drv_sw(struct _adapter *padapter)
 	       sizeof(struct security_priv));
 	timer_setup(&padapter->securitypriv.tkip_timer,
 		    r8712_use_tkipkey_handler, 0);
-	_r8712_init_sta_priv(&padapter->stapriv);
+	if (_r8712_init_sta_priv(&padapter->stapriv))
+		return _FAIL;
 	padapter->stapriv.padapter = padapter;
 	r8712_init_bcmc_stainfo(padapter);
 	r8712_init_pwrctrl_priv(padapter);
diff --git a/drivers/staging/rtl8712/rtl871x_sta_mgt.c b/drivers/staging/rtl8712/rtl871x_sta_mgt.c
index b549ab37f2dc..653812c5d5a8 100644
--- a/drivers/staging/rtl8712/rtl871x_sta_mgt.c
+++ b/drivers/staging/rtl8712/rtl871x_sta_mgt.c
@@ -34,7 +34,7 @@ static void _init_stainfo(struct sta_info *psta)
 	INIT_LIST_HEAD(&psta->auth_list);
 }
 
-u32 _r8712_init_sta_priv(struct	sta_priv *pstapriv)
+int _r8712_init_sta_priv(struct	sta_priv *pstapriv)
 {
 	struct sta_info *psta;
 	s32 i;
@@ -42,7 +42,7 @@ u32 _r8712_init_sta_priv(struct	sta_priv *pstapriv)
 	pstapriv->pallocated_stainfo_buf = kmalloc(sizeof(struct sta_info) *
 						   NUM_STA + 4, GFP_ATOMIC);
 	if (!pstapriv->pallocated_stainfo_buf)
-		return _FAIL;
+		return -ENOMEM;
 	pstapriv->pstainfo_buf = pstapriv->pallocated_stainfo_buf + 4 -
 		((addr_t)(pstapriv->pallocated_stainfo_buf) & 3);
 	_init_queue(&pstapriv->free_sta_queue);
@@ -59,7 +59,7 @@ u32 _r8712_init_sta_priv(struct	sta_priv *pstapriv)
 	}
 	INIT_LIST_HEAD(&pstapriv->asoc_list);
 	INIT_LIST_HEAD(&pstapriv->auth_list);
-	return _SUCCESS;
+	return 0;
 }
 
 /* this function is used to free the memory of lock || sema for all stainfos */
diff --git a/drivers/staging/rtl8712/sta_info.h b/drivers/staging/rtl8712/sta_info.h
index fc32dc0bed00..d042d900f30c 100644
--- a/drivers/staging/rtl8712/sta_info.h
+++ b/drivers/staging/rtl8712/sta_info.h
@@ -119,7 +119,7 @@ static inline u32 wifi_mac_hash(u8 *mac)
 	return x;
 }
 
-u32 _r8712_init_sta_priv(struct sta_priv *pstapriv);
+int _r8712_init_sta_priv(struct sta_priv *pstapriv);
 void _r8712_free_sta_priv(struct sta_priv *pstapriv);
 struct sta_info *r8712_alloc_stainfo(struct sta_priv *pstapriv,
 				     u8 *hwaddr);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

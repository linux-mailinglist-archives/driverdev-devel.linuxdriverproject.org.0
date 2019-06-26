Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 984ED5621B
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Jun 2019 08:11:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3A01D86838;
	Wed, 26 Jun 2019 06:11:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vxYv6q5aylTT; Wed, 26 Jun 2019 06:11:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4CA1186745;
	Wed, 26 Jun 2019 06:11:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4C3FE1BF3CC
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 06:10:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8E93C84F98
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 06:10:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b3Njn7LEmUoY for <devel@linuxdriverproject.org>;
 Wed, 26 Jun 2019 06:10:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 133D584ED0
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 06:10:09 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id g4so815894plb.5
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 23:10:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tLpVN7LzYPcMJR829rSf7/2IndE2IPdyXytBvNV9xKo=;
 b=f7C4Z452VxLZRizSVHJK+0zUJGdGq3aumuv9VbgvdrneKoM70O+TwnvA0FLYjnctlW
 vlfIPi5NN0xAPdmZxVL/rmD5gSECgp3fCtaK4xuaGoOKIwisUY0Dlauyb5k6cBNfUbj3
 ci9uynqyNnRRe3sPh3k5NAq0neUBUs6jiFgO03Igq0ZFw/j9JkXV4ptTXQjxH1sKZbAH
 NXv1Q1KGM/M51C6JOp3nHef/XdBklWWUW7/uwP9752+yosMr27AQMeW6bLXF4Y34p8iS
 3OlxtRXTx8cmmcFoTMZRtrExyQEC7HRHF0XM3Zh7oMBYyZGxM4WoO9i1e152O48EpFSA
 x6jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tLpVN7LzYPcMJR829rSf7/2IndE2IPdyXytBvNV9xKo=;
 b=mDnnQo6s5YgQwDJaP6iRBMjmUMqUfpaV9B21acL7DXE+rBSjG88TO+VxxAqJxs5fIg
 OfxU7FXWVmSKdq4dLAT4m6y5ZIIF8Tu7vbeV9E8UwcmIz99niWrDLts0v9aS+QEjUMv9
 rVDJ+nOrK6QM02zlD4b9UaR7J3xjd1u/RrbeyCYSFvYjpyurmWtweVhNlMSJQeDuh7hO
 Rr2kNwTxxExfOJxD9IrpEpfbBsj3nsTBHmzIitTkPhKyYGODkpt2kNH29w7nQ4GV+CkZ
 Ngu9oqBR2D1dzmW/7B/L3wHVuV7rfUhNt0/9fw4iURTOWeawatZTukConTzXLFVtMChr
 IYFg==
X-Gm-Message-State: APjAAAWKmnnhHLdPjRj/FTKrhlWEfaiSeJDq+GX16zdsssIvFo1i0BXw
 MLAvX3BbMu6lcVWxRB4KwsM=
X-Google-Smtp-Source: APXvYqzaFE5CVjzRPCrRBqakRsn7FAUaGsouAvvaS83qq+nKZvn5Sih6ZHr/Gon3BBaAkbHUPFoR/g==
X-Received: by 2002:a17:902:704c:: with SMTP id
 h12mr3372272plt.214.1561529408780; 
 Tue, 25 Jun 2019 23:10:08 -0700 (PDT)
Received: from localhost.localdomain ([110.227.94.173])
 by smtp.gmail.com with ESMTPSA id v13sm17613407pfe.105.2019.06.25.23.10.06
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 25 Jun 2019 23:10:08 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org, larry.finger@lwfinger.net,
 florian.c.schilhabel@googlemail.com, devel@driverdev.osuosl.org
Subject: [PATCH 5/9] staging: rtl8712: _r8712_free_sta_priv(): Change return
 type
Date: Wed, 26 Jun 2019 11:39:37 +0530
Message-Id: <20190626060941.2441-5-nishkadg.linux@gmail.com>
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

Change return type of function _r8712_free_sta_priv from u32 to void as
it always returns _SUCCESS and this return value is never used.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_sta_mgt.c | 3 +--
 drivers/staging/rtl8712/sta_info.h        | 2 +-
 2 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_sta_mgt.c b/drivers/staging/rtl8712/rtl871x_sta_mgt.c
index 7c30b9e68e70..b549ab37f2dc 100644
--- a/drivers/staging/rtl8712/rtl871x_sta_mgt.c
+++ b/drivers/staging/rtl8712/rtl871x_sta_mgt.c
@@ -77,14 +77,13 @@ static void mfree_all_stainfo(struct sta_priv *pstapriv)
 	spin_unlock_irqrestore(&pstapriv->sta_hash_lock, irqL);
 }
 
-u32 _r8712_free_sta_priv(struct sta_priv *pstapriv)
+void _r8712_free_sta_priv(struct sta_priv *pstapriv)
 {
 	if (pstapriv) {
 		/* be done before free sta_hash_lock */
 		mfree_all_stainfo(pstapriv);
 		kfree(pstapriv->pallocated_stainfo_buf);
 	}
-	return _SUCCESS;
 }
 
 struct sta_info *r8712_alloc_stainfo(struct sta_priv *pstapriv, u8 *hwaddr)
diff --git a/drivers/staging/rtl8712/sta_info.h b/drivers/staging/rtl8712/sta_info.h
index 45dbed10295f..fc32dc0bed00 100644
--- a/drivers/staging/rtl8712/sta_info.h
+++ b/drivers/staging/rtl8712/sta_info.h
@@ -120,7 +120,7 @@ static inline u32 wifi_mac_hash(u8 *mac)
 }
 
 u32 _r8712_init_sta_priv(struct sta_priv *pstapriv);
-u32 _r8712_free_sta_priv(struct sta_priv *pstapriv);
+void _r8712_free_sta_priv(struct sta_priv *pstapriv);
 struct sta_info *r8712_alloc_stainfo(struct sta_priv *pstapriv,
 				     u8 *hwaddr);
 void r8712_free_stainfo(struct _adapter *padapter, struct sta_info *psta);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

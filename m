Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 15E6C50177
	for <lists+driverdev-devel@lfdr.de>; Mon, 24 Jun 2019 07:49:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0C5278550D;
	Mon, 24 Jun 2019 05:49:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TGtHu45TyuNw; Mon, 24 Jun 2019 05:49:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 630AF84C2A;
	Mon, 24 Jun 2019 05:49:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6D4F61BF470
 for <devel@linuxdriverproject.org>; Mon, 24 Jun 2019 05:49:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5691387001
 for <devel@linuxdriverproject.org>; Mon, 24 Jun 2019 05:49:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wzUyusRH7uB4 for <devel@linuxdriverproject.org>;
 Mon, 24 Jun 2019 05:49:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6207C86FCD
 for <devel@driverdev.osuosl.org>; Mon, 24 Jun 2019 05:49:24 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id w10so6480556pgj.7
 for <devel@driverdev.osuosl.org>; Sun, 23 Jun 2019 22:49:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=64+3FCKidPj+i55PYdrslLxH23E+aFz9lFniisAFgpg=;
 b=aL+vMzCCrCIg7YOkUDd4A5slM21XMRBOxDWju0xPo8NkW0h/LbfXYfRjiDwzt3vRMf
 JJ5eMNI/puURvl4FiZSakeLLpc633kX/cdnjGvdQtlQP7DtdCRT/70CUZYm8DdCa3c6I
 gqvh2SLmV4yzvBdLU1UkoayNnfqT4CwHV0I0rbTbEEid/1A8rF/PoWs5zyqft7GzkIdq
 ZbM0OqtB2gVwct032pssgndbtahzDDgouud4n40KMbZfLLnHF9LwajeCdW3DIvlPos+o
 2huQuCZx0reHhIWwgl0eyhbWvNguMJYHdBEWyzL/rQ+iCDPySyDCjNiOXex+1VNIqIs+
 KoAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=64+3FCKidPj+i55PYdrslLxH23E+aFz9lFniisAFgpg=;
 b=IZjjZ7am8Cqec4oxp2FchQGLn6BaJe2SD6TwKuruFeimtfBhKGhx6a7MYpaIKvhwb6
 VQ9RxgekLQh/o5R42B1lWDlCR/LUP1hqxaMyVXT6VDakblIN2n6lcsb5RCb4lFwMytF4
 Gu22VvE5t7K5mw3L5VNtQjx4ufjj77tQOaZJtYRX5X00TuslgqXoiodVwSC6lhrqpWu9
 MsVKXbBRqkFhn9ITdUKkpUUbJRDSnttr/aPIcDeqWKO0c9akfvS+a+pZUBj4s+QNTVtN
 Mdla6f1P7vk4oxPAmsQJpCqUXgheIj/kL8ew3yRL1Urborz7y0X0p593FupDXvWF2yw8
 cdPQ==
X-Gm-Message-State: APjAAAWRVNVK0c4TpJQC1HHK2oEFCfAARoUMt9dTk2KBd2oPAmTH/r3s
 0ZpkKI+EWx2dVgIq1kF42et40z5kB1o=
X-Google-Smtp-Source: APXvYqy8AQRD8USqJ5EnoaDKsvA4Z9BNtEOYuzXLuUqSUqDHQh+1wpat9K0B6VnKyMWPIh0A8tyMWw==
X-Received: by 2002:a63:d354:: with SMTP id u20mr30185793pgi.129.1561355364057; 
 Sun, 23 Jun 2019 22:49:24 -0700 (PDT)
Received: from localhost.localdomain ([122.163.71.137])
 by smtp.gmail.com with ESMTPSA id s43sm11908182pjb.10.2019.06.23.22.49.21
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 23 Jun 2019 22:49:23 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com
Subject: [PATCH 03/10] staging: rtl8712: Change return values of
 r8712_init_evt_priv()
Date: Mon, 24 Jun 2019 11:18:56 +0530
Message-Id: <20190624054903.2673-3-nishkadg.linux@gmail.com>
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

Change return values of the function r8712_init_evt_priv from
_SUCCESS/_FAIL to 0/-ENOMEM. Modify call site accordingly.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/os_intfs.c    | 2 +-
 drivers/staging/rtl8712/rtl871x_cmd.c | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8712/os_intfs.c b/drivers/staging/rtl8712/os_intfs.c
index ef9e9634b298..85a43fd67ca5 100644
--- a/drivers/staging/rtl8712/os_intfs.c
+++ b/drivers/staging/rtl8712/os_intfs.c
@@ -300,7 +300,7 @@ u8 r8712_init_drv_sw(struct _adapter *padapter)
 	if (r8712_init_cmd_priv(&padapter->cmdpriv))
 		return _FAIL;
 	padapter->cmdpriv.padapter = padapter;
-	if ((r8712_init_evt_priv(&padapter->evtpriv)) == _FAIL)
+	if (r8712_init_evt_priv(&padapter->evtpriv))
 		return _FAIL;
 	if (r8712_init_mlme_priv(padapter) == _FAIL)
 		return _FAIL;
diff --git a/drivers/staging/rtl8712/rtl871x_cmd.c b/drivers/staging/rtl8712/rtl871x_cmd.c
index baceb5dbf328..bf44f37e773d 100644
--- a/drivers/staging/rtl8712/rtl871x_cmd.c
+++ b/drivers/staging/rtl8712/rtl871x_cmd.c
@@ -80,11 +80,11 @@ int r8712_init_evt_priv(struct evt_priv *pevtpriv)
 	pevtpriv->evt_allocated_buf = kmalloc(MAX_EVTSZ + 4, GFP_ATOMIC);
 
 	if (!pevtpriv->evt_allocated_buf)
-		return _FAIL;
+		return -ENOMEM;
 	pevtpriv->evt_buf = pevtpriv->evt_allocated_buf  +  4 -
 			    ((addr_t)(pevtpriv->evt_allocated_buf) & 3);
 	pevtpriv->evt_done_cnt = 0;
-	return _SUCCESS;
+	return 0;
 }
 
 static void _free_evt_priv(struct evt_priv *pevtpriv)
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

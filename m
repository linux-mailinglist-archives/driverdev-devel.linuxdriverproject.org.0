Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCA8350176
	for <lists+driverdev-devel@lfdr.de>; Mon, 24 Jun 2019 07:49:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AFA92870D7;
	Mon, 24 Jun 2019 05:49:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T+leSD-ydIZg; Mon, 24 Jun 2019 05:49:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id F325086FE7;
	Mon, 24 Jun 2019 05:49:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5A7E21BF470
 for <devel@linuxdriverproject.org>; Mon, 24 Jun 2019 05:49:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4CB0885507
 for <devel@linuxdriverproject.org>; Mon, 24 Jun 2019 05:49:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c-3SvWtFhBnD for <devel@linuxdriverproject.org>;
 Mon, 24 Jun 2019 05:49:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id EBB3E854C9
 for <devel@driverdev.osuosl.org>; Mon, 24 Jun 2019 05:49:21 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id cl9so6216666plb.10
 for <devel@driverdev.osuosl.org>; Sun, 23 Jun 2019 22:49:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=T3yTGBblTS4c64HK8xXkYWtyShfHDLEszEIdDwn6Qi0=;
 b=F9V5cseKeQTpASllhyJ7Aw+bE/BwvZCww5kqq/80mjF7I2voYfFOIFB3zgYi5QslBr
 aXNPUdqA1F6xceVLf8bbrkHDMewH61+oU1lzRqYQKe9fPnsq0ZX6qdlSPi5hVTqhPwFg
 Tcj/LNBxTOw6BtsimxZZUQgxlepbsBi0zYzDCt5qtoLxu/cm3A0cFzG3vRxXI+KBgfu4
 CwoNO1Fz/mcItsJnJuoCBbFZXu0uaxWIIwcyCf90NFOexnuC8Wh8HymnBxfnzAUBoR0R
 ai6Akz1haA2lpqMbc3I0Y3NkRGZIsXbW1VEWDKqFuM+iYpdjgiPGYrlQGezY2dqVxu3K
 GPkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=T3yTGBblTS4c64HK8xXkYWtyShfHDLEszEIdDwn6Qi0=;
 b=lSvvnGa+TPOd33r8G6/f+Cg2hj3NTKh+ONu1RzQzL2ykqJq8Ng9e1gVmBBwC8IymuA
 wDaMjglqfC1vkxWCjZQKA5bzh+xH/jHoAp006r+vWJAP/lLBt1e6lJ1aY5Y3smMfc5XT
 2k7vIP2hgvrFVXyp7zyZIwh0VHgSSU1t8cG4ezlKT5kPthQSE/jNzHrnjzSnkRcYi76Q
 JxWglsOVuVRjSQi6veKRyX5lpMQN/9p7qtJi/nchqeO67amVhC0qHN12ZEdT/830MhR5
 jRey4a4ZtHNCTKxgu8CeV51hYZcHkSLdtmLmAGnvIve1IAUT53h7bybZ2wE1Epmc9bJv
 /geQ==
X-Gm-Message-State: APjAAAVNzwqDE0zmECg1qu8MyrHI8wsqDFmGL83E9ClBBPT1Xy+GDVGL
 kvcflyPlW5bbl9jg6Hx0lMc=
X-Google-Smtp-Source: APXvYqwQKjALa7tLacLtLZWYxjdkyQoKV8VGQNuQOYnqU/hk2Zymw11nNLrUUWgFHgDgz0qrfg8QAw==
X-Received: by 2002:a17:902:74c7:: with SMTP id
 f7mr10463040plt.329.1561355361612; 
 Sun, 23 Jun 2019 22:49:21 -0700 (PDT)
Received: from localhost.localdomain ([122.163.71.137])
 by smtp.gmail.com with ESMTPSA id s43sm11908182pjb.10.2019.06.23.22.49.19
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 23 Jun 2019 22:49:21 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com
Subject: [PATCH 02/10] staging: rtl8712: Replace function r8712_init_evt_priv()
Date: Mon, 24 Jun 2019 11:18:55 +0530
Message-Id: <20190624054903.2673-2-nishkadg.linux@gmail.com>
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

Remove function r8712_init_evt_priv as all it does is call
_init_evt_priv.
Rename _init_evt_priv to r8712_init_evt_priv to maintain compatibility
with call sites.
Change type of new r8712_init_evt_priv from static to non-static as
original r8712_init_evt_priv was non-static.
Change return type of new r8712_init_evt_priv to int as original had
return type u32 but new (formerly _init_evt_priv) had return type sint.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_cmd.c | 7 +------
 drivers/staging/rtl8712/rtl871x_cmd.h | 2 +-
 2 files changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_cmd.c b/drivers/staging/rtl8712/rtl871x_cmd.c
index 68efba177ab4..baceb5dbf328 100644
--- a/drivers/staging/rtl8712/rtl871x_cmd.c
+++ b/drivers/staging/rtl8712/rtl871x_cmd.c
@@ -73,7 +73,7 @@ int r8712_init_cmd_priv(struct cmd_priv *pcmdpriv)
 	return 0;
 }
 
-static sint _init_evt_priv(struct evt_priv *pevtpriv)
+int r8712_init_evt_priv(struct evt_priv *pevtpriv)
 {
 	/* allocate DMA-able/Non-Page memory for cmd_buf and rsp_buf */
 	pevtpriv->event_seq = 0;
@@ -135,11 +135,6 @@ static struct cmd_obj *_dequeue_cmd(struct  __queue *queue)
 	return obj;
 }
 
-u32 r8712_init_evt_priv(struct evt_priv *pevtpriv)
-{
-	return _init_evt_priv(pevtpriv);
-}
-
 void r8712_free_evt_priv(struct evt_priv *pevtpriv)
 {
 	_free_evt_priv(pevtpriv);
diff --git a/drivers/staging/rtl8712/rtl871x_cmd.h b/drivers/staging/rtl8712/rtl871x_cmd.h
index 0203037adb7f..4ccd329ae7d5 100644
--- a/drivers/staging/rtl8712/rtl871x_cmd.h
+++ b/drivers/staging/rtl8712/rtl871x_cmd.h
@@ -86,7 +86,7 @@ void r8712_free_cmd_obj(struct cmd_obj *pcmd);
 int r8712_cmd_thread(void *context);
 int r8712_init_cmd_priv(struct cmd_priv *pcmdpriv);
 void r8712_free_cmd_priv(struct cmd_priv *pcmdpriv);
-u32 r8712_init_evt_priv(struct evt_priv *pevtpriv);
+int r8712_init_evt_priv(struct evt_priv *pevtpriv);
 void r8712_free_evt_priv(struct evt_priv *pevtpriv);
 
 enum rtl871x_drvint_cid {
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

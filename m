Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AA1856217
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Jun 2019 08:11:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 77DCC87B3C;
	Wed, 26 Jun 2019 06:11:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pt7rk8hGBgm4; Wed, 26 Jun 2019 06:11:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5CC5387B47;
	Wed, 26 Jun 2019 06:11:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1536D1BF3CC
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 06:10:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 126D886483
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 06:10:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DZj4jqecPrBx for <devel@linuxdriverproject.org>;
 Wed, 26 Jun 2019 06:10:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 785508647A
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 06:10:17 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id y8so677632pgl.4
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 23:10:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=A3QbhHfYoB5wkcsiaKljZQZ4PSse7qF73I+8HK3goc0=;
 b=WrCpVJHWOd2VfKe98pbdRRd8AQK/yB8RsFiUSblBFqW13zO7ANzdvebKG3zjXrghmb
 FsFKEQ5enVCqKUhBrk8cDMysfPKHjEx17MmBCHMNKn2YhRoIR8ZAR12aN/VhGVYN4dz8
 EvgbCV6CjzKZ+C7QL9LpppkFB5/Vv66A/et71AVBsg6sgE10p4/BODlGbQcmbgLsZucd
 jWS+wKcoLnh1CUgE7Ra1id5IvlZJmhUtpG32GzC/5kzRC5fTvyNlmaa6N3ylOIU4R0oE
 764H2iYkVSjuJvonT5e1KidK/0eR2PSPRS1fQpchv1M49j/XhD8JfAuAB1MOI3a9fiql
 3byA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=A3QbhHfYoB5wkcsiaKljZQZ4PSse7qF73I+8HK3goc0=;
 b=AraQSVP5Bxstl8txryF79iU8vguLED2kNTVqglSzGVke5zBGRZaL0WNEw8dPfgOWNk
 4owVXHhY0kTZ25qc+PNMsA3Y3/4+Ng5HwwVX6itXTbpu1lrJLkhAERWDM0QHrQdnvXuJ
 zr4LVGeYT130FUwUwAGiDGna7y+53t2bo87+BCnHfmiMW85Dq4WEkmOsr+kX+TAhTcPh
 qiC+csomowsZtNYbCd7JHMT4azSjiyNmM3kC3XUNzm80drsTxOdDGcK7ZtY2hp53Tlx+
 l2/bg30EfOt8MbDh9jLOtWDLfLOZytQXIY9Gpvm1vWaVX6Ua3NJb8btdXr1W2YFXl2EI
 yWpA==
X-Gm-Message-State: APjAAAU36yzVfSRLSTkfCoFf3TiDHvqgiQMcmigtL9oX/B+8be1Ip+z5
 21LSijLZ9ShnKisRB6ytGwo=
X-Google-Smtp-Source: APXvYqwbcPWFw5MAvlKWY3alyq0oHsewaspKnyWIFxqTThAphm5IoePeoI8ygdqOm4kfbk1Xmn6oVA==
X-Received: by 2002:a63:1658:: with SMTP id 24mr1227984pgw.167.1561529417116; 
 Tue, 25 Jun 2019 23:10:17 -0700 (PDT)
Received: from localhost.localdomain ([110.227.94.173])
 by smtp.gmail.com with ESMTPSA id v13sm17613407pfe.105.2019.06.25.23.10.14
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 25 Jun 2019 23:10:16 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org, larry.finger@lwfinger.net,
 florian.c.schilhabel@googlemail.com, devel@driverdev.osuosl.org
Subject: [PATCH 8/9] staging: rtl8712: Replace function r8712_enqueue_cmd()
Date: Wed, 26 Jun 2019 11:39:40 +0530
Message-Id: <20190626060941.2441-8-nishkadg.linux@gmail.com>
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

Merge function _enqueue_cmd into function r8712_enqueue_cmd as
_enqueue_cmd is only called by r8712_enqueue_cmd, and then only once.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_cmd.c | 17 +++++++----------
 1 file changed, 7 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_cmd.c b/drivers/staging/rtl8712/rtl871x_cmd.c
index 436b5ee619e7..37cc18581e84 100644
--- a/drivers/staging/rtl8712/rtl871x_cmd.c
+++ b/drivers/staging/rtl8712/rtl871x_cmd.c
@@ -103,22 +103,27 @@ void r8712_free_cmd_priv(struct cmd_priv *pcmdpriv)
 /*
  * Calling Context:
  *
- * _enqueue_cmd can only be called between kernel thread,
+ * r8712_enqueue_cmd can only be called between kernel thread,
  * since only spin_lock is used.
  *
  * ISR/Call-Back functions can't call this sub-function.
  *
  */
 
-static void _enqueue_cmd(struct  __queue *queue, struct cmd_obj *obj)
+void r8712_enqueue_cmd(struct cmd_priv *pcmdpriv, struct cmd_obj *obj)
 {
+	struct __queue *queue;
 	unsigned long irqL;
 
+	if (pcmdpriv->padapter->eeprompriv.bautoload_fail_flag)
+		return;
 	if (!obj)
 		return;
+	queue = &pcmdpriv->cmd_queue;
 	spin_lock_irqsave(&queue->lock, irqL);
 	list_add_tail(&obj->list, &queue->queue);
 	spin_unlock_irqrestore(&queue->lock, irqL);
+	complete(&pcmdpriv->cmd_queue_comp);
 }
 
 static struct cmd_obj *_dequeue_cmd(struct  __queue *queue)
@@ -135,14 +140,6 @@ static struct cmd_obj *_dequeue_cmd(struct  __queue *queue)
 	return obj;
 }
 
-void r8712_enqueue_cmd(struct cmd_priv *pcmdpriv, struct cmd_obj *obj)
-{
-	if (pcmdpriv->padapter->eeprompriv.bautoload_fail_flag)
-		return;
-	_enqueue_cmd(&pcmdpriv->cmd_queue, obj);
-	complete(&pcmdpriv->cmd_queue_comp);
-}
-
 void r8712_enqueue_cmd_ex(struct cmd_priv *pcmdpriv, struct cmd_obj *obj)
 {
 	unsigned long irqL;
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C65D04CD34
	for <lists+driverdev-devel@lfdr.de>; Thu, 20 Jun 2019 13:53:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3E1E387E56;
	Thu, 20 Jun 2019 11:53:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZPBaODQ8Dq8Q; Thu, 20 Jun 2019 11:53:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CB93687E40;
	Thu, 20 Jun 2019 11:53:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DA9651BF578
 for <devel@linuxdriverproject.org>; Thu, 20 Jun 2019 11:53:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D6ABA87E40
 for <devel@linuxdriverproject.org>; Thu, 20 Jun 2019 11:53:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Zp06dMMFNL4i for <devel@linuxdriverproject.org>;
 Thu, 20 Jun 2019 11:53:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3364387E09
 for <devel@driverdev.osuosl.org>; Thu, 20 Jun 2019 11:53:33 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id bi6so1293847plb.12
 for <devel@driverdev.osuosl.org>; Thu, 20 Jun 2019 04:53:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8CbIyJB2BqSl1sumTg4HRrHOqh5HrTlvunIDnYmSkhA=;
 b=A8yJ1WhPUqVkAiIfbPrtKhGTyuxqg5ynLajCyTVTV3aJszIpWKODofnaRYGBBcXuoz
 uApGJ0vWI6OpuKrrnoutRpljzuv0p9eAbgeDHuVNIElNBAMyUzS6ARJKro0j5YkdCoXc
 9xzD1kstWksWg+wOiSxOf8+6h/GqnEhN/7As91T7MF8JVFqShQzYqPa8IHd2gQ7ap8hL
 1y2Z1c2N9PBMewKyLq/K2AQwozHcNIUzf2+x6mnvr3uSWmfTLdCcCj+GKeCrvjoT1Fbg
 PPUTpxwJnYYd22R92zLKmjko3z8yHSKwSYEzYkfZkS4Fw0kOnppORKoLs1h8TY9tn0ne
 mgYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8CbIyJB2BqSl1sumTg4HRrHOqh5HrTlvunIDnYmSkhA=;
 b=U/ujcNrhFuGeRZJ0YxK8pVKaDbL6HAZxlV3GPYCtnuE23il8QQl++Y9PegXRvQ/qyY
 c8LFmAycSF1iixb3GXNxzXUN2tlhf/VoX2lNEFFhU8xf1kRvlmW+JkaJJuNJvx/djzED
 a3kuvK8QCh2IA6xzIB0gOG4uBxSCNFwCsd3BP6mmtSLSZrTjEIyn/F6HukcoTOEwEy4D
 FgrK9DRaQg+fKbDmMNj8koIs2T9P3nbQdCUrcrb79aLglVfSBA/Y+tU/h5rgRvPtRa9G
 txM4sTP1Zr9L6+bytSsPycrQBbTIQGdpV5cMwDdTFkeI+ldQrL/2GP1SiN7EbLnB3vNW
 NMhg==
X-Gm-Message-State: APjAAAX4e0E+nOlxHW88v8Y16Dgp6s24XLIsUqg5OvfKtvaRMT3p+GPu
 QD88C5wTH/in1y7P9WmsKaA=
X-Google-Smtp-Source: APXvYqwH025G2BoUTO523QUr/rA40/WKPjnpFPalwtvvwopSVZBM4vTFvmHe8LhV/CCvpLoJtDNrEA==
X-Received: by 2002:a17:902:a986:: with SMTP id
 bh6mr123303164plb.100.1561031612865; 
 Thu, 20 Jun 2019 04:53:32 -0700 (PDT)
Received: from localhost.localdomain ([122.163.71.137])
 by smtp.gmail.com with ESMTPSA id c124sm21738079pfa.115.2019.06.20.04.53.30
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 20 Jun 2019 04:53:32 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org
Subject: [PATCH 05/10] staging: rtl8712: Change (r8712)_enqueue_cmd to void
Date: Thu, 20 Jun 2019 17:22:59 +0530
Message-Id: <20190620115304.3210-5-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190620115304.3210-1-nishkadg.linux@gmail.com>
References: <20190620115304.3210-1-nishkadg.linux@gmail.com>
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

Change the return types of r8712_enqueue_cmd to void as the return value
of r8712_enqueue_cmd is never stored, checked, or otherwise used.
Also change the return type of _enqueue_cmd to void as it is only called
by r8712_enqueue_cmd which does not do anything with the return value
except return it itself.
Modify return statements in both functions accordingly.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_cmd.c | 14 +++++---------
 drivers/staging/rtl8712/rtl871x_cmd.h |  2 +-
 2 files changed, 6 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_cmd.c b/drivers/staging/rtl8712/rtl871x_cmd.c
index 9cc6a370102b..74a351788c2a 100644
--- a/drivers/staging/rtl8712/rtl871x_cmd.c
+++ b/drivers/staging/rtl8712/rtl871x_cmd.c
@@ -110,16 +110,15 @@ static void _free_cmd_priv(struct cmd_priv *pcmdpriv)
  *
  */
 
-static sint _enqueue_cmd(struct  __queue *queue, struct cmd_obj *obj)
+static void _enqueue_cmd(struct  __queue *queue, struct cmd_obj *obj)
 {
 	unsigned long irqL;
 
 	if (!obj)
-		return _SUCCESS;
+		return;
 	spin_lock_irqsave(&queue->lock, irqL);
 	list_add_tail(&obj->list, &queue->queue);
 	spin_unlock_irqrestore(&queue->lock, irqL);
-	return _SUCCESS;
 }
 
 static struct cmd_obj *_dequeue_cmd(struct  __queue *queue)
@@ -156,15 +155,12 @@ void r8712_free_cmd_priv(struct cmd_priv *pcmdpriv)
 	_free_cmd_priv(pcmdpriv);
 }
 
-u32 r8712_enqueue_cmd(struct cmd_priv *pcmdpriv, struct cmd_obj *obj)
+void r8712_enqueue_cmd(struct cmd_priv *pcmdpriv, struct cmd_obj *obj)
 {
-	int res;
-
 	if (pcmdpriv->padapter->eeprompriv.bautoload_fail_flag)
-		return _FAIL;
-	res = _enqueue_cmd(&pcmdpriv->cmd_queue, obj);
+		return;
+	_enqueue_cmd(&pcmdpriv->cmd_queue, obj);
 	complete(&pcmdpriv->cmd_queue_comp);
-	return res;
 }
 
 u32 r8712_enqueue_cmd_ex(struct cmd_priv *pcmdpriv, struct cmd_obj *obj)
diff --git a/drivers/staging/rtl8712/rtl871x_cmd.h b/drivers/staging/rtl8712/rtl871x_cmd.h
index 7d4da8ea95ec..2e30c359e0a2 100644
--- a/drivers/staging/rtl8712/rtl871x_cmd.h
+++ b/drivers/staging/rtl8712/rtl871x_cmd.h
@@ -79,7 +79,7 @@ do {\
 	pcmd->rspsz = 0;\
 } while (0)
 
-u32 r8712_enqueue_cmd(struct cmd_priv *pcmdpriv, struct cmd_obj *obj);
+void r8712_enqueue_cmd(struct cmd_priv *pcmdpriv, struct cmd_obj *obj);
 u32 r8712_enqueue_cmd_ex(struct cmd_priv *pcmdpriv, struct cmd_obj *obj);
 struct cmd_obj *r8712_dequeue_cmd(struct  __queue *queue);
 void r8712_free_cmd_obj(struct cmd_obj *pcmd);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

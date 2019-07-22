Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 444446FC12
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Jul 2019 11:24:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BB9A72041B;
	Mon, 22 Jul 2019 09:24:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U9P45BymeX6W; Mon, 22 Jul 2019 09:24:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D6E6A20454;
	Mon, 22 Jul 2019 09:24:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 105FD1BF302
 for <devel@linuxdriverproject.org>; Mon, 22 Jul 2019 09:24:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 04A5E85629
 for <devel@linuxdriverproject.org>; Mon, 22 Jul 2019 09:24:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WG5U_DNxt70t for <devel@linuxdriverproject.org>;
 Mon, 22 Jul 2019 09:24:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5387585570
 for <devel@driverdev.osuosl.org>; Mon, 22 Jul 2019 09:24:02 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id f17so13098407pfn.6
 for <devel@driverdev.osuosl.org>; Mon, 22 Jul 2019 02:24:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=c5PtNrpqKzF+03QO0nrhDdbxfSemJKtfhuHvqYzMDCo=;
 b=Ab7rN4d/PZ6XIFg52PTW2HIE7p4GbRXkAls/D5T1kY5PkiMGHSo63Lez1NaCTceyWS
 szWmuo2iYXY2oNA0nxNZ6bEXLwRKZXqBQNRDAzXzWRRqpyGj9rmjoijQLXA7djOHXfj2
 gJYBoQYrG6HbZSBSlwY1gH1NrqZrNIXICeOlydKVrwfvqbuJJHUrYYEWfscwLRw4fqeX
 1pQB9Ih+C63kn9bPbbxQjqKgnV3snxj5ApmxDuVFRxOHOQPp6ej49gQIxleVI22NHpeJ
 QSFcudt2Ft1XWVEQMQl3J4G+jz8aeeBTmxblf/nMfJWGGIwkwGbQ1eWbD81Ac4gU7W7v
 5cog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=c5PtNrpqKzF+03QO0nrhDdbxfSemJKtfhuHvqYzMDCo=;
 b=RcARRKMSwGvzTDguBEiGOkFdGtugt0LmhVlG8ar2P8BaYi8qdRUfpi0MjAimfcHUT1
 q9cqOg/Odb+DBGcLXsWAQUp2TiV+i/eb4wH4anA04SpGwfgicxBkzlz4C8ba0ygKhpMH
 BbVR8jQyGeWIHJvLCuzfLk1tpEpbmJS/6FKOiKmFMBAEKLSNPOlUrq1mnCue8Or5deTy
 9ah0zyQXdmhYVR/763ZizmVIqfcZnr/AO5137V26QYRse67CnLR29ZBOlhxInJn4ocpr
 Ilq7qwOmpd7CoV9pQcDvHSJuKBHNbt+/5Eu9Q2YrfJEC+2R0JSPCHRY/Go7pwMw3kWPd
 oTeA==
X-Gm-Message-State: APjAAAX5SjF2hCIR8i9XYiiBOlbsreSbrdUvkq2JlT/dMnl/hwN2QbQ8
 vjmZjvgMS8LlpzJ7sWp+j9pCQg4M
X-Google-Smtp-Source: APXvYqzwDPVEb9wpKUhUXQsaAvg6RWVpm7E92SnVvkO9UmKZBDpU0CvOlRLnTK0txIHJl7JlaBrb/g==
X-Received: by 2002:a63:394:: with SMTP id 142mr70992582pgd.43.1563787441980; 
 Mon, 22 Jul 2019 02:24:01 -0700 (PDT)
Received: from localhost.localdomain ([122.163.0.39])
 by smtp.gmail.com with ESMTPSA id f19sm52010125pfk.180.2019.07.22.02.23.59
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 02:24:01 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org
Subject: [PATCH 4/8] staging: rtl8712: r8712_register_cmd_alive(): Change
 return values
Date: Mon, 22 Jul 2019 14:53:37 +0530
Message-Id: <20190722092341.21030-4-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190722092341.21030-1-nishkadg.linux@gmail.com>
References: <20190722092341.21030-1-nishkadg.linux@gmail.com>
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

Change return values of r8712_register_cmd_alive from _SUCCESS and _FAIL
to 0 and -EINVAL.
Change the return type of this function from sint to int.
Modify its call site to check for 0 instead of _SUCCESS.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_cmd.c     |  2 +-
 drivers/staging/rtl8712/rtl871x_pwrctrl.c | 10 +++++-----
 drivers/staging/rtl8712/rtl871x_pwrctrl.h |  2 +-
 3 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_cmd.c b/drivers/staging/rtl8712/rtl8712_cmd.c
index 6a72a4ad176a..f99fd7cfa445 100644
--- a/drivers/staging/rtl8712/rtl8712_cmd.c
+++ b/drivers/staging/rtl8712/rtl8712_cmd.c
@@ -311,7 +311,7 @@ int r8712_cmd_thread(void *context)
 			break;
 		if (padapter->driver_stopped || padapter->surprise_removed)
 			break;
-		if (r8712_register_cmd_alive(padapter) != _SUCCESS)
+		if (r8712_register_cmd_alive(padapter))
 			continue;
 _next:
 		pcmd = r8712_dequeue_cmd(&pcmdpriv->cmd_queue);
diff --git a/drivers/staging/rtl8712/rtl871x_pwrctrl.c b/drivers/staging/rtl8712/rtl871x_pwrctrl.c
index 2beafc7742b3..23cff43437e2 100644
--- a/drivers/staging/rtl8712/rtl871x_pwrctrl.c
+++ b/drivers/staging/rtl8712/rtl871x_pwrctrl.c
@@ -184,19 +184,19 @@ void r8712_init_pwrctrl_priv(struct _adapter *padapter)
  * will raise the cpwm to be greater than or equal to P2.
  * Calling Context: Passive
  * Return Value:
- * _SUCCESS: r8712_cmd_thread can issue cmds to firmware afterwards.
- * _FAIL: r8712_cmd_thread can not do anything.
+ * 0:	    r8712_cmd_thread can issue cmds to firmware afterwards.
+ * -EINVAL: r8712_cmd_thread can not do anything.
  */
-sint r8712_register_cmd_alive(struct _adapter *padapter)
+int r8712_register_cmd_alive(struct _adapter *padapter)
 {
-	uint res = _SUCCESS;
+	int res = 0;
 	struct pwrctrl_priv *pwrctrl = &padapter->pwrctrlpriv;
 
 	mutex_lock(&pwrctrl->mutex_lock);
 	register_task_alive(pwrctrl, CMD_ALIVE);
 	if (pwrctrl->cpwm < PS_STATE_S2) {
 		r8712_set_rpwm(padapter, PS_STATE_S3);
-		res = _FAIL;
+		res = -EINVAL;
 	}
 	mutex_unlock(&pwrctrl->mutex_lock);
 	return res;
diff --git a/drivers/staging/rtl8712/rtl871x_pwrctrl.h b/drivers/staging/rtl8712/rtl871x_pwrctrl.h
index 11b5034f203d..dd5a79f90b1a 100644
--- a/drivers/staging/rtl8712/rtl871x_pwrctrl.h
+++ b/drivers/staging/rtl8712/rtl871x_pwrctrl.h
@@ -104,7 +104,7 @@ struct	pwrctrl_priv {
 };
 
 void r8712_init_pwrctrl_priv(struct _adapter *adapter);
-sint r8712_register_cmd_alive(struct _adapter *padapter);
+int r8712_register_cmd_alive(struct _adapter *padapter);
 void r8712_unregister_cmd_alive(struct _adapter *padapter);
 void r8712_cpwm_int_hdl(struct _adapter *padapter,
 			struct reportpwrstate_parm *preportpwrstate);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

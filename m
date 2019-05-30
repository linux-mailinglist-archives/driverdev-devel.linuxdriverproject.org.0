Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BAC91303C9
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 May 2019 23:07:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 27B41203E0;
	Thu, 30 May 2019 21:06:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AfotElA1uDPy; Thu, 30 May 2019 21:06:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id DC1381FD45;
	Thu, 30 May 2019 21:06:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5C1E41BF867
 for <devel@linuxdriverproject.org>; Thu, 30 May 2019 21:06:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 57D471FD7D
 for <devel@linuxdriverproject.org>; Thu, 30 May 2019 21:06:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mf+C8CGq6V9g for <devel@linuxdriverproject.org>;
 Thu, 30 May 2019 21:06:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by silver.osuosl.org (Postfix) with ESMTPS id AA2B81FD45
 for <devel@driverdev.osuosl.org>; Thu, 30 May 2019 21:06:53 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id 196so2713800pgc.6
 for <devel@driverdev.osuosl.org>; Thu, 30 May 2019 14:06:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DxmOz58/0StlKEibwrCYgGMkPyTrKsPAkT1wgfSCh0A=;
 b=lPw6/+BZnZp0BOUotnoU1MeyuJQwsyrA321feVb/7MXXacRgSmjox3pHL/H8CO+f3p
 imdp8c0qX1FWzrwob6k4izI59UKId2T3mqDABMRTLfh01+74kbrKZ7T7Whi2eta3abb1
 vQRJ8Kr56vB28hFfHtg/5Vf5Ha05EyhrotvxQgaMmw1rnl+a4gu5DGJMMbfelsYYM3zw
 Pfremua9e5oi510HZZKQO241rWg3PsscfMwRm54/3wxKC6dg1qoyqY5nAbFjgGJAFji8
 dTuXqO7Uz2lM65zzg525zN+fPTZ49nOldpzMLKMPyTLCNNlpzc8/yZgGZEqEQJJmGS0n
 3JyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DxmOz58/0StlKEibwrCYgGMkPyTrKsPAkT1wgfSCh0A=;
 b=lnlf/ObD5bAccbwkUQguvM0dqQJoBrJmz6oJB1FqSuIiPir3XnebM5eXCDkizwj3SO
 Hnfr7J8gRMXJ/xV5H4YnyGOW1+i6T3Gij3fbp8Asg5H+VYSS6D19RvvfSwiTzQ5R0sIz
 cEUDWy5/rfK9rylqkhXutSEgEgOqz0/fhy81IK0yGvUZefdwRjpWH1DSr3S/qfehxFyT
 /h7L94rG5ZhB6i9G97CjIhZWOBiCRQncgObr7fZq1DsVbHYBVJFZ70lRLJ7GjPdW2D3P
 frGzJCS7/ycnsJ8pR75S9yWEn2dAEjyJOehBJab0UkrjtFB84E0nq1zmw3d4yQSXk9Gq
 A/0A==
X-Gm-Message-State: APjAAAWWmQ486FjSuedb6qmo6w1ZS+Wz185px74uyp2VSjuKTipDqrga
 6AhCHnQGNvZzcDZiYoRzJnaKj4wQ
X-Google-Smtp-Source: APXvYqyu1BJ4IxDhFu/YN1BDSVzMQhD3CJxdO23KJDNS4pGJ9TN74IVMryUCyQG9FsRPLXQo03Ob8g==
X-Received: by 2002:a17:90a:9305:: with SMTP id
 p5mr5307493pjo.33.1559250413396; 
 Thu, 30 May 2019 14:06:53 -0700 (PDT)
Received: from localhost.localdomain ([47.15.209.13])
 by smtp.gmail.com with ESMTPSA id r2sm3134580pgb.62.2019.05.30.14.06.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 30 May 2019 14:06:52 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, straube.linux@gmail.com,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8712: Change _SUCCESS/_FAIL to 0/-ENOMEM
Date: Fri, 31 May 2019 02:36:38 +0530
Message-Id: <20190530210638.30343-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
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

Change return values _SUCCESS and _FAIL to 0 and -ENOMEM respectively,
to match the convention in the drivers (and also because the return
value of this changed function is never checked anyway).
Change return type of the function to int (from u8) to allow the return
of -ENOMEM.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_cmd.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_cmd.c b/drivers/staging/rtl8712/rtl871x_cmd.c
index 8220829b5c82..e408b15102ce 100644
--- a/drivers/staging/rtl8712/rtl871x_cmd.c
+++ b/drivers/staging/rtl8712/rtl871x_cmd.c
@@ -773,7 +773,7 @@ u8 r8712_addbareq_cmd(struct _adapter *padapter, u8 tid)
 	return _SUCCESS;
 }
 
-u8 r8712_wdg_timeout_handler(struct _adapter *padapter)
+int r8712_wdg_timeout_handler(struct _adapter *padapter)
 {
 	struct cmd_obj *ph2c;
 	struct drvint_cmd_parm  *pdrvintcmd_param;
@@ -781,18 +781,18 @@ u8 r8712_wdg_timeout_handler(struct _adapter *padapter)
 
 	ph2c = kmalloc(sizeof(*ph2c), GFP_ATOMIC);
 	if (!ph2c)
-		return _FAIL;
+		return -ENOMEM;
 	pdrvintcmd_param = kmalloc(sizeof(*pdrvintcmd_param), GFP_ATOMIC);
 	if (!pdrvintcmd_param) {
 		kfree(ph2c);
-		return _FAIL;
+		return -ENOMEM;
 	}
 	pdrvintcmd_param->i_cid = WDG_WK_CID;
 	pdrvintcmd_param->sz = 0;
 	pdrvintcmd_param->pbuf = NULL;
 	init_h2fwcmd_w_parm_no_rsp(ph2c, pdrvintcmd_param, _DRV_INT_CMD_);
 	r8712_enqueue_cmd_ex(pcmdpriv, ph2c);
-	return _SUCCESS;
+	return 0;
 }
 
 void r8712_survey_cmd_callback(struct _adapter *padapter, struct cmd_obj *pcmd)
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

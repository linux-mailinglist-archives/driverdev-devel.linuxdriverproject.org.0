Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D6C24CD36
	for <lists+driverdev-devel@lfdr.de>; Thu, 20 Jun 2019 13:53:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A3E688680D;
	Thu, 20 Jun 2019 11:53:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zT+yFy+Kd7aA; Thu, 20 Jun 2019 11:53:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B5ABB86BC9;
	Thu, 20 Jun 2019 11:53:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1AA901BF578
 for <devel@linuxdriverproject.org>; Thu, 20 Jun 2019 11:53:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 13F9F85FAE
 for <devel@linuxdriverproject.org>; Thu, 20 Jun 2019 11:53:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dSjJLti6KvrO for <devel@linuxdriverproject.org>;
 Thu, 20 Jun 2019 11:53:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DA5CC85FAA
 for <devel@driverdev.osuosl.org>; Thu, 20 Jun 2019 11:53:40 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id r7so1552870pfl.3
 for <devel@driverdev.osuosl.org>; Thu, 20 Jun 2019 04:53:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=N0D2dt8+Tt/SDRnYn6Tc5JQw986CDt6d4zyzhiEJmz8=;
 b=Fk+7b372O9q/Qpo3y9YqTfI6J8OVl/1U0/rjCZgtHzE11SEqRTI8pX/2qgSySXuDrs
 nvMehqERmLMTIx/qWSbiikgyzgYyp/o+ynq0RUQYbxLecO2kGef3jDdBbLVInBmYoBZO
 cXHbpvAFJVJJNOa+J5WZ+MYz5y0VztjkGLXGYRafgDRJTZURs5iPwjh0bLwa0XvO6JsS
 oOuo2IwmTObPCZPEQmQWjYipDJA0iUU94yxbRIq+wjR18neB4ejilrRrm12GB1XsburS
 Jh097Hpv9C75T6zal1fBEafrcWMkHW8EFZz6baRB24JOOEdrF31VZkdWgAiepENTL4lq
 Bixg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=N0D2dt8+Tt/SDRnYn6Tc5JQw986CDt6d4zyzhiEJmz8=;
 b=dnFUu2wzuRYl7CKjh5VDI5lzYz18qIj+9//aOvhaKcAvRXlEKpX8OdSrFdujAdMxud
 EYvBGPOt2gtwjaPxcoGSFYh9k1sLzCQ8RgrvZ4bKPzrOYMWNbpNeeq3L+bO/9YhB8W/F
 j/uQPcxhUl7EoXvqTlB6BdK19jb12OemRAA9qQVBmRpgO95FFKpH54UNm3/iNeZygCg7
 2MSLmvooYQFtbgW/RcZaUBcRVn7pSxUHK33H99pg4iSk+DX52UpMgzl91EKpV/BIk4mA
 0Cj6HIluCQt9YKu8ll4VD8svfbtLUOMkH8INK+kgtECQx8F4a6ceyuXkKOALIcYGBmu1
 dsMw==
X-Gm-Message-State: APjAAAU7v6GU/OPNrsehxv4tDstFPiYTzaCI3LUXgXD/QbF3etC0HKBi
 gmnpjds3m/NCk5CnaUCbWPs=
X-Google-Smtp-Source: APXvYqxRx5nCu4DT8U0i828QWc2HLKTxIZUaAoRY+4tdgveoIp+ITH5EnmslcLvlh81gunN7TohCMQ==
X-Received: by 2002:a17:90a:8d04:: with SMTP id
 c4mr314624pjo.126.1561031620589; 
 Thu, 20 Jun 2019 04:53:40 -0700 (PDT)
Received: from localhost.localdomain ([122.163.71.137])
 by smtp.gmail.com with ESMTPSA id c124sm21738079pfa.115.2019.06.20.04.53.38
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 20 Jun 2019 04:53:40 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org
Subject: [PATCH 08/10] staging: rtl8712: r8712_setopmode_cmd(): Change return
 type
Date: Thu, 20 Jun 2019 17:23:02 +0530
Message-Id: <20190620115304.3210-8-nishkadg.linux@gmail.com>
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

Change return type of function r8712_setopmode_cmd() from u8 to void as
its return value is never stored or checked or otherwise used.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_cmd.c | 7 +++----
 drivers/staging/rtl8712/rtl871x_cmd.h | 2 +-
 2 files changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_cmd.c b/drivers/staging/rtl8712/rtl871x_cmd.c
index c1d032d47608..48f7d21221e1 100644
--- a/drivers/staging/rtl8712/rtl871x_cmd.c
+++ b/drivers/staging/rtl8712/rtl871x_cmd.c
@@ -583,7 +583,7 @@ void r8712_disassoc_cmd(struct _adapter *padapter) /* for sta_mode */
 	r8712_enqueue_cmd(pcmdpriv, pdisconnect_cmd);
 }
 
-u8 r8712_setopmode_cmd(struct _adapter *padapter,
+void r8712_setopmode_cmd(struct _adapter *padapter,
 		 enum NDIS_802_11_NETWORK_INFRASTRUCTURE networktype)
 {
 	struct cmd_obj *ph2c;
@@ -593,16 +593,15 @@ u8 r8712_setopmode_cmd(struct _adapter *padapter,
 
 	ph2c = kmalloc(sizeof(*ph2c), GFP_ATOMIC);
 	if (!ph2c)
-		return _FAIL;
+		return;
 	psetop = kmalloc(sizeof(*psetop), GFP_ATOMIC);
 	if (!psetop) {
 		kfree(ph2c);
-		return _FAIL;
+		return;
 	}
 	init_h2fwcmd_w_parm_no_rsp(ph2c, psetop, _SetOpMode_CMD_);
 	psetop->mode = (u8)networktype;
 	r8712_enqueue_cmd(pcmdpriv, ph2c);
-	return _SUCCESS;
 }
 
 u8 r8712_setstakey_cmd(struct _adapter *padapter, u8 *psta, u8 unicast_key)
diff --git a/drivers/staging/rtl8712/rtl871x_cmd.h b/drivers/staging/rtl8712/rtl871x_cmd.h
index 9ad364f2296d..d296ace542b3 100644
--- a/drivers/staging/rtl8712/rtl871x_cmd.h
+++ b/drivers/staging/rtl8712/rtl871x_cmd.h
@@ -717,7 +717,7 @@ u8 r8712_setstakey_cmd(struct _adapter *padapter, u8 *psta, u8 unicast_key);
 int r8712_joinbss_cmd(struct _adapter *padapter,
 		      struct wlan_network *pnetwork);
 void r8712_disassoc_cmd(struct _adapter *padapter);
-u8 r8712_setopmode_cmd(struct _adapter *padapter,
+void r8712_setopmode_cmd(struct _adapter *padapter,
 		 enum NDIS_802_11_NETWORK_INFRASTRUCTURE networktype);
 int r8712_setdatarate_cmd(struct _adapter *padapter, u8 *rateset);
 void r8712_set_chplan_cmd(struct _adapter  *padapter, int chplan);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

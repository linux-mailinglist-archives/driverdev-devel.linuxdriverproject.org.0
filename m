Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 786C2303A8
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 May 2019 22:58:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5E64A877A4;
	Thu, 30 May 2019 20:58:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mJma0mtSLtZF; Thu, 30 May 2019 20:58:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 528498777F;
	Thu, 30 May 2019 20:58:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0E8741BF867
 for <devel@linuxdriverproject.org>; Thu, 30 May 2019 20:58:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0A0FD8841F
 for <devel@linuxdriverproject.org>; Thu, 30 May 2019 20:58:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0xuy8MyiN4dx for <devel@linuxdriverproject.org>;
 Thu, 30 May 2019 20:58:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 92F348841A
 for <devel@driverdev.osuosl.org>; Thu, 30 May 2019 20:58:12 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id q17so4713442pfq.8
 for <devel@driverdev.osuosl.org>; Thu, 30 May 2019 13:58:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wrn+OjD0NH0CBGOOqEW6q+WwOM9u3GkanTSs5LtKkI4=;
 b=tGzM1Wd/daunUqXAddDeCwk6f2c2gFHWrAOy6ckX0aqqryO04RDdyaqZzmaVUaOu/g
 iK1uMYUXCEX1fP5kIyFBmNWPxI7F5MjOg25MS1gmAza9oH3+5ZHmghwuA/azJasU6U73
 gUIMTaK2LuOlF0lciL/oHXDuZC4kGh0SOS9/zCA17DCgjMgAoq+b+MI+31bK+j+IMAu2
 iye/EmdnWizux3TnJFJXkTpMXK3R70z0I75d9MALrtSgPm7HwWSed/RBuqkqq36HcuPB
 coJBNutnvqm+VH//GWlXouTW3yELFJWTz8+g1GTvctUNj+hpVvgQt6/82V74FfkR6Ovo
 Sy3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wrn+OjD0NH0CBGOOqEW6q+WwOM9u3GkanTSs5LtKkI4=;
 b=STlAMN97dS2gdcdxeHuosSpswQdApfyfIuwGgrhTwV0f2SLXRFsRm4AmlZfFd4dTnc
 OAVBNGZojYdeKo/Pqcq1Hi1MLxb9OEPAZs66oUwXlvThP9g9sBWbebPlbtEQuxRCEVLg
 yZuyBN0GWRGu7EGg82R7hr8LUh13B6tNNfRH+wZqx/Q/Cpj7qNVkQoxDVE5KSQTpk2BF
 adkN3TB32/xuD1l2u5TwPSo2CDAB9bsrUa9ITvnabfOVO6MaBBs57UlTD8rNcRazqQNG
 cOYDYBQQx7g/6a/5mJKfPlZNY3ouwHLltPYRGLSMTD60AUKd0H/x2xJw3V5BH9GYP2Vk
 4Qyg==
X-Gm-Message-State: APjAAAUQyK2uYxv50gfig/f+ibgBgIeCVVWGxaWdKaL4wJmY8MFDd+AS
 M2oWoouhSQYyc5BFBDOFr9Y=
X-Google-Smtp-Source: APXvYqxdQMyVgDWXr+3LNuqCQNbWTAZv/boMwZTiB6sgyZEgxvni0BdYohBaSWGvQ5HfiF2RjvvCiA==
X-Received: by 2002:a62:2e46:: with SMTP id u67mr5702732pfu.206.1559249892319; 
 Thu, 30 May 2019 13:58:12 -0700 (PDT)
Received: from localhost.localdomain ([47.15.209.13])
 by smtp.gmail.com with ESMTPSA id s5sm3194982pgj.60.2019.05.30.13.58.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 30 May 2019 13:58:11 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, himadri18.07@gmail.com,
 colin.king@canonical.com, straube.linux@gmail.com, yangx92@hotmail.com,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8712: Replace function r8712_free_network_queue
Date: Fri, 31 May 2019 02:27:55 +0530
Message-Id: <20190530205755.30096-1-nishkadg.linux@gmail.com>
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

Remove function r8712_free_network_queue as it does nothing except call
_free_network_queue.
Rename _free_network_queue to r8712_free_network_queue (and change its
type to static) for continued use of the original functionality.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_mlme.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
index 57d8e7dceef7..f6ba3e865a30 100644
--- a/drivers/staging/rtl8712/rtl871x_mlme.c
+++ b/drivers/staging/rtl8712/rtl871x_mlme.c
@@ -151,7 +151,7 @@ static struct wlan_network *_r8712_find_network(struct  __queue *scanned_queue,
 	return pnetwork;
 }
 
-static void _free_network_queue(struct _adapter *padapter)
+void r8712_free_network_queue(struct _adapter *padapter)
 {
 	unsigned long irqL;
 	struct list_head *phead, *plist;
@@ -215,11 +215,6 @@ static struct	wlan_network *alloc_network(struct mlme_priv *pmlmepriv)
 	return _r8712_alloc_network(pmlmepriv);
 }
 
-void r8712_free_network_queue(struct _adapter *dev)
-{
-	_free_network_queue(dev);
-}
-
 /*
  * return the wlan_network with the matching addr
  * Shall be called under atomic context...
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

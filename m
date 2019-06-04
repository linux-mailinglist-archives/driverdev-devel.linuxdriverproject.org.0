Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FD193401E
	for <lists+driverdev-devel@lfdr.de>; Tue,  4 Jun 2019 09:29:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BB25226C1D;
	Tue,  4 Jun 2019 07:29:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JhBmwl9tusX1; Tue,  4 Jun 2019 07:29:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id ED39420356;
	Tue,  4 Jun 2019 07:29:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 98B7D1BF2B1
 for <devel@linuxdriverproject.org>; Tue,  4 Jun 2019 07:29:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 95D7E87B39
 for <devel@linuxdriverproject.org>; Tue,  4 Jun 2019 07:29:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YMNe7kAKcYOZ for <devel@linuxdriverproject.org>;
 Tue,  4 Jun 2019 07:29:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2829187A15
 for <devel@driverdev.osuosl.org>; Tue,  4 Jun 2019 07:29:40 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id a3so2430851pgb.3
 for <devel@driverdev.osuosl.org>; Tue, 04 Jun 2019 00:29:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nrKtzgwsFX1PUmXu/7B43BStSve4zFN2R+Q+Z9Etw+w=;
 b=pbzFG4SnJoI7oaSquK9yetWqxxzHGXWMyGlWA7JSEn4z4q5sl8ca4oOXK4DZLmhAea
 kD/sVKZFs+ASGtjDjkycPRCYrHCeK+J8SHdSmnTDrkRcD1gGohJE/yWFxSsTpwUcxeSN
 fAPyJAn+v+f6pkGrjHIn9Xb2opkLrJUVO8yTe9vZT8rf3HeID6Zb3/1hk4KacMZ4Ay9J
 HdbEfbr+0woI5BlLc3MYnHtYgz/beI/al2XdXPw2D2nscRGoRWzyHo5ZLzTxHN+MC9Am
 +EWIbZ6iQ9Y1HZuYQSuc3yv86GW8siZfNuRNxPIlyoaBajBnVLCfPYnnIHcYw+AhBpPk
 x7XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nrKtzgwsFX1PUmXu/7B43BStSve4zFN2R+Q+Z9Etw+w=;
 b=PCoqA84wvTqStCsNV3Qh/IViibKYuOHXEAw7QHhLASjweNsH2ra44fRfVbg1f8Arlr
 WYmsPhfsOp7GGFtfGKExQK/UlOXBAa3bVO+oTil83Jj3wztIwvUaveSHTVX+H1Mz5HY7
 c9eCdrR2BrcxAzjWBAilHSl6cI4Vl88OZa+cFHosZm/Cr4JAY/2j1RPoAg3QO0Q1Zehd
 hO9Zs3sX4qGVcS7L6NWVSQ+ONhm5fDlMUfO6sTW9o4w38DaTBYjQyXL3YrMJEF1sypHw
 43QGs22yzB/FppdPJUkXAiRoCKmYuzOcpTomnpaPlgC9zhZBh7F74sKk5oDCZeUbIZ0U
 3rKg==
X-Gm-Message-State: APjAAAUnKZIMDQ0Mam+WjxMQQP8JlTdoTAIYtn8TqwOYvGE01KuY/puk
 oCgUDobdklszOksyAELP7Dw=
X-Google-Smtp-Source: APXvYqwV0ORhfQ4UxlV9Ses3tVJ8a//PDsmTJdRs30qBLI6S8XvaeOaaTzk5pn1PmhozZrZNa2vTAA==
X-Received: by 2002:aa7:910e:: with SMTP id 14mr36434739pfh.153.1559633379878; 
 Tue, 04 Jun 2019 00:29:39 -0700 (PDT)
Received: from localhost.localdomain ([110.227.95.145])
 by smtp.gmail.com with ESMTPSA id e124sm23053953pfa.135.2019.06.04.00.29.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 04 Jun 2019 00:29:39 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org, larry.finger@lwfinger.net,
 florian.c.schilhabel@googlemail.com, straube.linux@gmail.com,
 himadri18.07@gmail.com, yangx92@hotmail.com, colin.king@canonical.com,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2] staging: rtl8712: Replace function r8712_free_network_queue
Date: Tue,  4 Jun 2019 12:59:24 +0530
Message-Id: <20190604072924.10866-1-nishkadg.linux@gmail.com>
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

Remove function r8712_free_network_queue, as it does nothing but call
_free_network queue; rename _free_network_queue to
r8712_free_network_queue to enable continued functionality; change the
type of r8712_free_network_queue (formerly _free_network_queue) from
static to non-static to match the type of the old
r8712_free_network_queue.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
Changes in v2:
- Amend commit message for accuracy.

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

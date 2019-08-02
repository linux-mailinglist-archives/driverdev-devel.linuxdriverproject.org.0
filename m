Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E3967ECCD
	for <lists+driverdev-devel@lfdr.de>; Fri,  2 Aug 2019 08:42:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 891A8869A9;
	Fri,  2 Aug 2019 06:42:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dcZaEKfsqgkY; Fri,  2 Aug 2019 06:42:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1498C868DC;
	Fri,  2 Aug 2019 06:42:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EA3DD1BF27A
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 06:42:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E7949878EA
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 06:42:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2-VvqjnIdQob for <devel@linuxdriverproject.org>;
 Fri,  2 Aug 2019 06:42:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EDD2087943
 for <devel@driverdev.osuosl.org>; Fri,  2 Aug 2019 06:42:32 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id i18so35563798pgl.11
 for <devel@driverdev.osuosl.org>; Thu, 01 Aug 2019 23:42:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IbY8Tn9tHSUwIlYUtzUl57HkEg8Zt4hdYlhZi0V9TfI=;
 b=NLhXnTGpwl8LIz6zbUokNejKCSPAMFtDhgPmJaRQLjdbwH8qQcXyaL61XEVJ0Giul1
 izBN3qIHNRScFofd1Ca87PX5CbV7X3rz71pL5DwUWCGysgEqKreL791v4wRrgKuhpZtn
 eT9VVIhBpThS03nqHe7xQPJwTHlpJcyzRmvqTDjgoz/A5jt/FlwNW1eiu8q1BcA2VwcD
 SzuES6AQZ2MsqonsqXXQuk+wk3eRhU6JxfCP41IvunmUPb0ENy+R4Q8LQFPJSmIMyPQr
 WnaS2IWMG93FjN3Qx69w4zHRfQa+aqz5geyBjMBj6Pi+juzeEP7MoDibsWrluYRM7W9/
 SPsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IbY8Tn9tHSUwIlYUtzUl57HkEg8Zt4hdYlhZi0V9TfI=;
 b=rIlBR3eYGpIqCbom+7F/FIC4Df9TWgjwrQWlxju1/Sw8csvdAHY2bN0Gmi2xcsbtsn
 5vo2vDoMRzfqstBYgY5Kgho5oyS51PRj+ClXgUaAM1+TSnSmfiXr6mEJh+m8OEzy4zzr
 F8rTSQC5u2mANHPS1zbsyZGQP9pElzBxDztBYpYeeljgDjO20qOBVMk4J4uD8VK2EOGh
 tib+Ye1sbO4XDC/N8/LdNSoukIX4FOiRvpwKojfNwty5LeqYdpaLOdV6Qg5qiPlsBABU
 /Bx+veZWG3zBmw7kQw9YSnlY+o9voL0NykoY3LkBt7yLA4JR7/bnR1Md/AXAv6ldIIxf
 H26Q==
X-Gm-Message-State: APjAAAUACkgbgdf8fjWz6hFiVXk7oB13clS6EJaQpu4igjvg5kJMIbLn
 iH0XrS74z3kcqp/pXSHZaVk=
X-Google-Smtp-Source: APXvYqw+4xrxlbJKD0j41DEce25mrKF7kMaVai4lSM/iRdXsCk6PVL7WqCpMwmUdsV+p98NpavmEvg==
X-Received: by 2002:a63:6c7:: with SMTP id 190mr121468374pgg.7.1564728152649; 
 Thu, 01 Aug 2019 23:42:32 -0700 (PDT)
Received: from localhost.localdomain ([122.163.105.8])
 by smtp.gmail.com with ESMTPSA id v138sm84934268pfc.15.2019.08.01.23.42.30
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 01 Aug 2019 23:42:32 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org
Subject: [PATCH 4/9] staging: rtl8712: r8712_os_recvbuf_resource_alloc():
 Change return values
Date: Fri,  2 Aug 2019 12:12:07 +0530
Message-Id: <20190802064212.30476-4-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190802064212.30476-1-nishkadg.linux@gmail.com>
References: <20190802064212.30476-1-nishkadg.linux@gmail.com>
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

Change return values of r8712_os_recvbuf_resource_alloc from
_SUCCESS/_FAIL to 0/-ENOMEM respectively.
Modify check at call site to check for non-zero return value instead of
_FAIL. Thereafter remove variable at call site that stored the return
value and perform the check directly.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/recv_linux.c   | 4 ++--
 drivers/staging/rtl8712/rtl8712_recv.c | 6 ++----
 2 files changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8712/recv_linux.c b/drivers/staging/rtl8712/recv_linux.c
index aaa77823115a..682f5b2802ee 100644
--- a/drivers/staging/rtl8712/recv_linux.c
+++ b/drivers/staging/rtl8712/recv_linux.c
@@ -40,12 +40,12 @@ void r8712_os_recv_resource_alloc(struct _adapter *padapter,
 int r8712_os_recvbuf_resource_alloc(struct _adapter *padapter,
 				    struct recv_buf *precvbuf)
 {
-	int res = _SUCCESS;
+	int res = 0;
 
 	precvbuf->irp_pending = false;
 	precvbuf->purb = usb_alloc_urb(0, GFP_KERNEL);
 	if (!precvbuf->purb)
-		res = _FAIL;
+		res = -ENOMEM;
 	precvbuf->pskb = NULL;
 	precvbuf->pallocated_buf = NULL;
 	precvbuf->pbuf = NULL;
diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
index bb0407cac1ae..eb9a4a5ed740 100644
--- a/drivers/staging/rtl8712/rtl8712_recv.c
+++ b/drivers/staging/rtl8712/rtl8712_recv.c
@@ -39,7 +39,6 @@ void r8712_init_recv_priv(struct recv_priv *precvpriv, struct _adapter *padapter
 {
 	int i;
 	struct recv_buf *precvbuf;
-	int res = _SUCCESS;
 	addr_t tmpaddr = 0;
 	int alignment = 0;
 	struct sk_buff *pskb = NULL;
@@ -49,15 +48,14 @@ void r8712_init_recv_priv(struct recv_priv *precvpriv, struct _adapter *padapter
 	precvpriv->pallocated_recv_buf =
 		kzalloc(NR_RECVBUFF * sizeof(struct recv_buf) + 4, GFP_ATOMIC);
 	if (!precvpriv->pallocated_recv_buf)
-		return _FAIL;
+		return;
 	precvpriv->precv_buf = precvpriv->pallocated_recv_buf + 4 -
 			      ((addr_t)(precvpriv->pallocated_recv_buf) & 3);
 	precvbuf = (struct recv_buf *)precvpriv->precv_buf;
 	for (i = 0; i < NR_RECVBUFF; i++) {
 		INIT_LIST_HEAD(&precvbuf->list);
 		spin_lock_init(&precvbuf->recvbuf_lock);
-		res = r8712_os_recvbuf_resource_alloc(padapter, precvbuf);
-		if (res == _FAIL)
+		if (r8712_os_recvbuf_resource_alloc(padapter, precvbuf))
 			break;
 		precvbuf->ref_cnt = 0;
 		precvbuf->adapter = padapter;
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

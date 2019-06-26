Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 74D095621C
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Jun 2019 08:11:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E080986856;
	Wed, 26 Jun 2019 06:11:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dOvwt8V4MJWi; Wed, 26 Jun 2019 06:11:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id ABB66868AD;
	Wed, 26 Jun 2019 06:11:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 33B451BF3CC
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 06:10:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 302C721514
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 06:10:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mUIEzB5xBh3e for <devel@linuxdriverproject.org>;
 Wed, 26 Jun 2019 06:10:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 981A020489
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 06:10:14 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id k8so824710plt.3
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 23:10:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NRQxBL7qTeeWhekXtmYYGYZ3zUe/fYT9sSd7bOzPYB0=;
 b=dLBHMtGZGUJS0D0/vtVSFrHVesm9uqWYAbb/4ncD6E1+lYtsYludr8vZaPmJFQxjVh
 GCaC7BOuIkUe2ltJ+w0gClJ2l2+mgCUQhAJlzp7wq/eyvXYMMkYm3cxAsSO0eRXtNO+A
 PAP73eCrWcVPD3eQTEUkthBm28YHfsxKgBoPILT7VY5UqGKuUh/FW9JYhFVGnx4g0VMR
 3M5V43hFiXPV1C7aGL9uBL/K3Smu48R+PVZu3+msZ4rstxA9LT29+AJrS+WZJr5EJkcA
 I+W5vsUUF3ajTrBZ6lJb5asKBrjK9BU0WGRMWDE5AV/O3/5zpW5mF+lGy20wEYhtw6Ih
 RVbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NRQxBL7qTeeWhekXtmYYGYZ3zUe/fYT9sSd7bOzPYB0=;
 b=mvEXZny6fZIB45h0kXRLPaAEpyFGG5+yFmdGleYJFvPjvTu9wyZwKQGhQsD0QTavHV
 0H4StCPxc/juZpdifdMaBWHpMrRKXopmZYhXYdsgSkzC2+Mjs+3NT4VdUrzyc6tD9USS
 0WCWdYU/1BmZMTkeFw+ZYi1i40TFspqjDG4NpuqOtV9I6G/cssKLkzW+BZ6MX8O1yEdx
 PRLrN4iCcP1S4eK/jzyJ8xo/r30TO5468tK6ZNHmXxCb+NZ6/tvViTiU1mU2/9nCkSKe
 AVXsAendnJBVgvdYgAVdUDw3U3DX+WvsNha0BCvT3x++gaE2YKJCdD/zhknJGFiKb9iM
 ae0g==
X-Gm-Message-State: APjAAAUjSp7W/SzAk7J2HRIQkM5tZZntcHtQYrIeNoUJvC5o4SaNUoaV
 sfwq8TUWqIQcLMz1QEC7cjc=
X-Google-Smtp-Source: APXvYqzQq/4hZfLEL+O4LPWreZIptq1S5sIHAVq82RZLwM5Wh5J88vQOjguxd5cvackmS/HEe77+tg==
X-Received: by 2002:a17:902:bd05:: with SMTP id
 p5mr3284328pls.92.1561529414347; 
 Tue, 25 Jun 2019 23:10:14 -0700 (PDT)
Received: from localhost.localdomain ([110.227.94.173])
 by smtp.gmail.com with ESMTPSA id v13sm17613407pfe.105.2019.06.25.23.10.11
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 25 Jun 2019 23:10:13 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org, larry.finger@lwfinger.net,
 florian.c.schilhabel@googlemail.com, devel@driverdev.osuosl.org
Subject: [PATCH 7/9] staging: rtl8712: r8712_xmit_resource_alloc(): Change
 return values
Date: Wed, 26 Jun 2019 11:39:39 +0530
Message-Id: <20190626060941.2441-7-nishkadg.linux@gmail.com>
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

Change call site of function r8712_xmit_resource_alloc to add a check
for its return value.
Change return values of r8712_xmit_resource_alloc from
_SUCCESS/_FAIL to 0/-ENOMEM.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_xmit.c | 3 ++-
 drivers/staging/rtl8712/xmit_linux.c   | 4 ++--
 2 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_xmit.c b/drivers/staging/rtl8712/rtl871x_xmit.c
index 5d63d2721eb6..0a26d71e5340 100644
--- a/drivers/staging/rtl8712/rtl871x_xmit.c
+++ b/drivers/staging/rtl8712/rtl871x_xmit.c
@@ -133,7 +133,8 @@ sint _r8712_init_xmit_priv(struct xmit_priv *pxmitpriv,
 		pxmitbuf->pbuf = pxmitbuf->pallocated_buf + XMITBUF_ALIGN_SZ -
 				 ((addr_t) (pxmitbuf->pallocated_buf) &
 				 (XMITBUF_ALIGN_SZ - 1));
-		r8712_xmit_resource_alloc(padapter, pxmitbuf);
+		if (r8712_xmit_resource_alloc(padapter, pxmitbuf))
+			return _FAIL;
 		list_add_tail(&pxmitbuf->list,
 				 &(pxmitpriv->free_xmitbuf_queue.queue));
 		pxmitbuf++;
diff --git a/drivers/staging/rtl8712/xmit_linux.c b/drivers/staging/rtl8712/xmit_linux.c
index dc03f0d0c85d..01d713d027b0 100644
--- a/drivers/staging/rtl8712/xmit_linux.c
+++ b/drivers/staging/rtl8712/xmit_linux.c
@@ -120,11 +120,11 @@ int r8712_xmit_resource_alloc(struct _adapter *padapter,
 		pxmitbuf->pxmit_urb[i] = usb_alloc_urb(0, GFP_KERNEL);
 		if (!pxmitbuf->pxmit_urb[i]) {
 			netdev_err(padapter->pnetdev, "pxmitbuf->pxmit_urb[i] == NULL\n");
-			return _FAIL;
+			return -ENOMEM;
 		}
 		kmemleak_not_leak(pxmitbuf->pxmit_urb[i]);
 	}
-	return _SUCCESS;
+	return 0;
 }
 
 void r8712_xmit_resource_free(struct _adapter *padapter,
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

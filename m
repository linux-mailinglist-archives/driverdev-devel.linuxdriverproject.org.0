Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E261666FE
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Jul 2019 08:28:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DA5F8864B3;
	Fri, 12 Jul 2019 06:28:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PNe_RSKBRamB; Fri, 12 Jul 2019 06:28:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 762F586472;
	Fri, 12 Jul 2019 06:28:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 281551BF44C
 for <devel@linuxdriverproject.org>; Fri, 12 Jul 2019 06:28:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2470886472
 for <devel@linuxdriverproject.org>; Fri, 12 Jul 2019 06:28:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g3fF25RG9KaN for <devel@linuxdriverproject.org>;
 Fri, 12 Jul 2019 06:28:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 90B3D86469
 for <devel@driverdev.osuosl.org>; Fri, 12 Jul 2019 06:28:33 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id o13so4051873pgp.12
 for <devel@driverdev.osuosl.org>; Thu, 11 Jul 2019 23:28:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=t3Rcc5mC88i3xu+nqVL4d+w9lnXCAhPMfQFYyczzfAY=;
 b=hJj3pFiHj1MEkKvso1AZoKl74ea6NfxcKqvh2+feOtYNdIDaHmBroDg7Uq6BJV3QDs
 lIw20iydy29NwJ+uVY6hpcWRRN+0xg6CdwTJSigE7jDo4mb3JOV5t6X6RZgF1Sfjo+eg
 s7chSbnfuGcZ1kwB59Cv2bRxUv7/lzjFzCYn9cGy91OQVvwn7DW1UqgOmvuLKwYCSuVm
 UL5kiR5gL/2JG4+kGc7KKoC22OZNyzWqR6aUWAPiMrJDR+p8Hdt95t9ScrJnY0RLdwoN
 xcfNbDdRjFUKT2KU7iz0mzDEtHyouMzTAFstqCQ3wRYr1Vm0Yu5vbq63VZphom8/bfiI
 cKLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=t3Rcc5mC88i3xu+nqVL4d+w9lnXCAhPMfQFYyczzfAY=;
 b=NVQYYTequpWuJsxuVm5E/Mx55QOBjPuJR+yHo0VQsn8F2bzmSwxRPP8SM5GShkHl57
 5YQfKsTFCPBQ5+iS3MChBoqKa+jBsAyS/CdVxnANy7ltl7qZluQb1nrfMis5t4YkvoRF
 BFNNHBVX2rGvYpfPUix4a53W3np3sYiZXSw/QUoQ+n1EWw7CKkUjpsTXCSmtAcr56jMy
 DS++phCEFAsqT06bs088Ff+zjOiTTo5Ia2AAkMO9yEjz4EfNAXJ0DVMSJZ0Fbzxdrsym
 eXYvCmYted/8KGITWXOFbxTawvwM0o0Fz8O1jFaOyiLfkQIyO1ftOasWAo0YviSXhtdI
 Lpsg==
X-Gm-Message-State: APjAAAUWr1NqVFirTRJHd00cyizdMgweSbcjsMWbOW+XLoiT3jcrBpOY
 QSpqQpVSDYQ5xPcGp1opIM0265nR
X-Google-Smtp-Source: APXvYqykMeYlOArKpADCR9U8ahRnQIkE6ZH4bWwGMOIQI3nz7sJ6Ft4KPfoaQ744Y3XmjG1j1LWG2g==
X-Received: by 2002:a17:90a:b011:: with SMTP id
 x17mr9704373pjq.113.1562912913251; 
 Thu, 11 Jul 2019 23:28:33 -0700 (PDT)
Received: from localhost.localdomain ([110.227.64.207])
 by smtp.gmail.com with ESMTPSA id p1sm8830629pff.74.2019.07.11.23.28.31
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 11 Jul 2019 23:28:32 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 06/10] staging: wlan-ng: Remove function hfa384x_dowmem_async()
Date: Fri, 12 Jul 2019 11:58:03 +0530
Message-Id: <20190712062807.9361-6-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190712062807.9361-1-nishkadg.linux@gmail.com>
References: <20190712062807.9361-1-nishkadg.linux@gmail.com>
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

Remove unused function hfa384x_dowmem_async.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/wlan-ng/hfa384x_usb.c | 14 --------------
 1 file changed, 14 deletions(-)

diff --git a/drivers/staging/wlan-ng/hfa384x_usb.c b/drivers/staging/wlan-ng/hfa384x_usb.c
index 95dae0b271fc..20ac2dbd8a00 100644
--- a/drivers/staging/wlan-ng/hfa384x_usb.c
+++ b/drivers/staging/wlan-ng/hfa384x_usb.c
@@ -850,20 +850,6 @@ hfa384x_dowmem_wait(struct hfa384x *hw,
 			      page, offset, data, len, NULL, NULL, NULL);
 }
 
-static inline int
-hfa384x_dowmem_async(struct hfa384x *hw,
-		     u16 page,
-		     u16 offset,
-		     void *data,
-		     unsigned int len,
-		     ctlx_cmdcb_t cmdcb,
-		     ctlx_usercb_t usercb, void *usercb_data)
-{
-	return hfa384x_dowmem(hw, DOASYNC,
-			      page, offset, data, len,
-			      cmdcb, usercb, usercb_data);
-}
-
 /*----------------------------------------------------------------
  * hfa384x_cmd_initialize
  *
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

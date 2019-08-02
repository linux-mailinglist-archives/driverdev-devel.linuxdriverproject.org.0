Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B7B5F8015C
	for <lists+driverdev-devel@lfdr.de>; Fri,  2 Aug 2019 21:50:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BA1AA234B3;
	Fri,  2 Aug 2019 19:50:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pU-IEmC3UmQL; Fri,  2 Aug 2019 19:50:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 412DE204DD;
	Fri,  2 Aug 2019 19:50:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 67B781BF2A3
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 19:50:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 61FAB86C2B
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 19:50:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4Eb1V3iCO3g9 for <devel@linuxdriverproject.org>;
 Fri,  2 Aug 2019 19:50:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com
 [209.85.222.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5575986C28
 for <devel@driverdev.osuosl.org>; Fri,  2 Aug 2019 19:50:23 +0000 (UTC)
Received: by mail-qk1-f194.google.com with SMTP id s22so55785633qkj.12
 for <devel@driverdev.osuosl.org>; Fri, 02 Aug 2019 12:50:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=66NG3t8KGp5O2jbLHUXg4aRXKowYCNhtlwtdc5s4n4c=;
 b=LRwiku12x71QjV/t58PIvVEND2ubsG3jRpxjli3jlUl3CUlhSHh1f1qrg1aa3eZHPf
 Nt3qCFhv6QPhk8YQfiiZdUzpyXpBrVlRiCoZ6cnvcA8kQ4Lj3Tqtvt6tjoVSZLqhI4Kt
 2TIS4TAyorT5vY7knUniwqySKTRUUrOGdloyaplF0dVfmwia2Ojf+4OIsCr/95hGgwBZ
 9nicj3MxmURFL/qCqkqQ94+PnPSqDzyeiG6kh6tQCZ2bNfCRoOrIKFAavcI23ZA2jDWp
 c80pxd3g7OGFnCuXHRbFrQifV+eqwPIo087rJ7/2lS2iVnEAHKOuMbG5PuJ7gIWya2ON
 YGHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=66NG3t8KGp5O2jbLHUXg4aRXKowYCNhtlwtdc5s4n4c=;
 b=Mcj51vlj3Vcw+OWaZ1v2/cvqTKsBjsX/DhRcBY8EVrXXFHK+2nzPXP4sra/2kJqt+U
 /AiPaVaEUPqofzfKJtOYSxp3EV8cF+a+/28XPEyZoR1ZKdged6nAWrYD35CG9OJo89UV
 x3ybttVp1WvWFXMbT7fOFjIm4hobi8f01887nuoT/sV3JJKtRPmJLPFyeiI0NeDT0XLc
 kJ5nZZqVIbeujAibFaBtESjUJKvgIVaGUi0eVUwZuRXfvZKlmZj5XMU/OjvL9LaewNq8
 tMjULQBkVf4ZTpZMUF5CDL+v+JHpx5laGVpF354iUeVHovCYA3EBr0uyoJgD2XXAk6Jn
 Bi9w==
X-Gm-Message-State: APjAAAWfQoXjSjdhBfjVF2m4o2l1Sux4tBbNaKE5lV3vnmSpHLbLOcCy
 e4M4aSB188/yG3K1X5fXnH8=
X-Google-Smtp-Source: APXvYqxxi5StJ+CoZWd0WeQcyAYwg9+dgEw7II4ipdcZIhI84QNbArtqVVvfOR6XvEMEKXGytFxZ7g==
X-Received: by 2002:a05:620a:1034:: with SMTP id
 a20mr93591604qkk.165.1564775422005; 
 Fri, 02 Aug 2019 12:50:22 -0700 (PDT)
Received: from 1e0f21a0da20.ime.usp.br ([143.107.45.1])
 by smtp.gmail.com with ESMTPSA id h18sm31198996qkk.93.2019.08.02.12.50.19
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 02 Aug 2019 12:50:21 -0700 (PDT)
From: Ricardo Bruno Lopes da Silva <ricardo6142@gmail.com>
To: isdn@linux-pingi.de
Subject: [PATCH] isdn: hysdn: fix code style error from checkpatch
Date: Fri,  2 Aug 2019 19:50:17 +0000
Message-Id: <20190802195017.27845-1-ricardo6142@gmail.com>
X-Mailer: git-send-email 2.20.1
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 lkcamp@lists.libreplanetbr.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix error bellow from checkpatch.

WARNING: Block comments use * on subsequent lines
+/***********************************************************
+

Signed-off-by: Ricardo Bruno Lopes da Silva <ricardo6142@gmail.com>
---
 Hi! This is my first patch, I am learning how to contribute to Linux
kernel. Let me know if you have any suggestions.

Thanks, 
Ricardo Bruno

 drivers/staging/isdn/hysdn/hycapi.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/isdn/hysdn/hycapi.c b/drivers/staging/isdn/hysdn/hycapi.c
index a2c15cd7b..b7ba28d40 100644
--- a/drivers/staging/isdn/hysdn/hycapi.c
+++ b/drivers/staging/isdn/hysdn/hycapi.c
@@ -107,11 +107,8 @@ hycapi_remove_ctr(struct capi_ctr *ctrl)
 	card->hyctrlinfo = NULL;
 }
 
-/***********************************************************
-
-Queue a CAPI-message to the controller.
+/* Queue a CAPI-message to the controller. */
 
-***********************************************************/
 
 static void
 hycapi_sendmsg_internal(struct capi_ctr *ctrl, struct sk_buff *skb)
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

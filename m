Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2973D67C2B
	for <lists+driverdev-devel@lfdr.de>; Sat, 13 Jul 2019 23:47:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3B82685785;
	Sat, 13 Jul 2019 21:47:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yccmOuHMJ8n5; Sat, 13 Jul 2019 21:47:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0C3D08545B;
	Sat, 13 Jul 2019 21:47:32 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CBE4C1BF2F0
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 13 Jul 2019 21:47:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C526A863E8
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 13 Jul 2019 21:47:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PuCs77fbc5YH
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 13 Jul 2019 21:47:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com
 [209.85.222.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2118F81F34
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 13 Jul 2019 21:47:30 +0000 (UTC)
Received: by mail-qk1-f194.google.com with SMTP id m14so8997136qka.10
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 13 Jul 2019 14:47:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=W9699SJUByx/wIENlUfVbzYCWIrfoaXaFf4zW01gwLM=;
 b=JpCBb/5hzfkRaHO1t/VwYcTu/e8sibaK+95I7KbVXvryZgABtCy+E7f8b+Q+ih5DaY
 1x/WJlib1IH+OC0ZvucyOsewYVjMIdhb4w2dZDdsw/6sQRRni5RSkEIGkkvvk1P5wpSz
 jmiKQ2+93KOSDIXfPdlq43Ur4Tg/yJAU9Kga7snzgyO6ddOZ+VYyQYpQYcEskfPRJeJP
 cG+ZhrD57Uu2MqhpVhk3Q7bFyjdQaQmBS6jF5qyPelAouVJV8SOVMTkBsnKX7zbEemz5
 KUi3IywsZVDCE0aagqutW21XY90HLN0FP+VzK7I4T4njkXj7F+CBxG0YPtIkDaKJyvzS
 Vstw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=W9699SJUByx/wIENlUfVbzYCWIrfoaXaFf4zW01gwLM=;
 b=UM15JTV5b4tivdDgXXUs8x4CBDMMjJgQRnGC+TtdqIUrep+nxMxsmQ/yXoo07zDnsx
 kS4OKn7OO9CsBsfRUSo2drnK5PmNXdTu3wW0eSzGWxjrTZSteThJ43DtRptcobp18zAX
 FkMfqvolNS67ak3FcGsrT3FfT7oYUmNnyP669YI9R5+6b+PTcU33MtWG6Mi63oXsawDu
 PK7fm/eLxwKXE47Hyjg8VWOYaw4Et463G/Dwh/kRdio9YuIRtdYW74M0OTIMbbRrg4Gz
 A0hh1Xa8J8LEqV/sPctQb+J17O7pDVoikyCq3uJlzWE5sI+6Xdw+D9o6+8cjITlwCHCv
 w8lQ==
X-Gm-Message-State: APjAAAXAFwbnOSaneaUMT6hyJV5my84byzUq84nUo9pdCN1Di5+axFKW
 iqbfpbQfxwQW5ceMBtG6Ty0=
X-Google-Smtp-Source: APXvYqyfT2EN9ahXBCuwYI+sjpzDZHwwkHir7fWmkwtJ6pOjYf063E5rDf77OREyf6aesmgcFQ557w==
X-Received: by 2002:a05:620a:4:: with SMTP id
 j4mr11326168qki.269.1563054449273; 
 Sat, 13 Jul 2019 14:47:29 -0700 (PDT)
Received: from localhost.localdomain ([181.31.106.136])
 by smtp.gmail.com with ESMTPSA id p59sm6101060qtd.75.2019.07.13.14.47.27
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 13 Jul 2019 14:47:28 -0700 (PDT)
From: christianluciano.m@gmail.com
To: gregkh@linuxfoundation.org, Larry.Finger@lwfinger.net,
 florian.c.schilhabel@googlemail.com,
 driverdev-devel@linuxdriverproject.org, christianluciano.m@gmail.com
Subject: [PATCH] staging: rtl8712: Fix Alignment CHECK
Date: Sat, 13 Jul 2019 18:47:20 -0300
Message-Id: <20190713214720.11683-1-christianluciano.m@gmail.com>
X-Mailer: git-send-email 2.22.0
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Christian Luciano Moreno <christianluciano.m@gmail.com>

Fix alignment check reported by checkpatch.

Signed-off-by: Christian Luciano Moreno <christianluciano.m@gmail.com>
---
 drivers/staging/rtl8712/recv_linux.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/recv_linux.c b/drivers/staging/rtl8712/recv_linux.c
index 4e20cbafa9fb..97c980a039bd 100644
--- a/drivers/staging/rtl8712/recv_linux.c
+++ b/drivers/staging/rtl8712/recv_linux.c
@@ -61,7 +61,7 @@ int r8712_os_recvbuf_resource_alloc(struct _adapter *padapter,
 
 /*free os related resource in struct recv_buf*/
 int r8712_os_recvbuf_resource_free(struct _adapter *padapter,
-			     struct recv_buf *precvbuf)
+				   struct recv_buf *precvbuf)
 {
 	if (precvbuf->pskb)
 		dev_kfree_skb_any(precvbuf->pskb);
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

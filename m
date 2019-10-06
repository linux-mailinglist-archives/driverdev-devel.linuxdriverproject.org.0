Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DA9FCD940
	for <lists+driverdev-devel@lfdr.de>; Sun,  6 Oct 2019 22:51:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 497F487874;
	Sun,  6 Oct 2019 20:51:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hJVp40ifAx8o; Sun,  6 Oct 2019 20:51:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 48D33877E6;
	Sun,  6 Oct 2019 20:51:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5EDE41BF47A
 for <devel@linuxdriverproject.org>; Sun,  6 Oct 2019 20:51:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5942F856CB
 for <devel@linuxdriverproject.org>; Sun,  6 Oct 2019 20:51:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kJsE25akiGQ2 for <devel@linuxdriverproject.org>;
 Sun,  6 Oct 2019 20:51:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com
 [209.85.160.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2FFF185618
 for <devel@driverdev.osuosl.org>; Sun,  6 Oct 2019 20:51:44 +0000 (UTC)
Received: by mail-qt1-f196.google.com with SMTP id 3so16430427qta.1
 for <devel@driverdev.osuosl.org>; Sun, 06 Oct 2019 13:51:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=QkysCBSB9fGqKPV8g/1PIAYcEKj+5HCVtkPSug6S7x4=;
 b=cOcOfoux4Df7/s9EkUQGrbPexSBOt3WXuQ6fU4InY9ASkZfOT1H4oszYBQao6riw/k
 VXTm3ZxkLndtrobWYJ6Wpm2gLJtAPc+YeDdEU+Vzea9fblEzy8iPj25BZtesJ3Ym0iYU
 oelu7zpxaomQ0gRsFoW7JhZbb+sLgJgpfMykiu1tRPDtIs9bb482IsrozXiDSKZFdzNc
 0llDAebPCIEeb6kNpWPRnSR8KRk14Vb+7cNCMLhJULK+PfNS6LGwgvgOul0UqBTL/nKs
 UX1himK/rZtQPOMeIbSr56wvOpIUGvy737VYgOB+puIXTKwoHvSUNXoso2N3zdTWPaID
 qanQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=QkysCBSB9fGqKPV8g/1PIAYcEKj+5HCVtkPSug6S7x4=;
 b=iXXGWGEN3xDT+Uzg6Q4w+8wrRb+eKM/SMlTQuPe0VG5ySpk7b8IufqE1IvktEpdr4E
 tzNqUhX+RNuGRpUDqkl2a5oGmCvruEg07kTTqGFBaorXtsHcdn78K7fT5hUcWdLlbs6D
 S10jQRmOLcbjBai4Cj/TvG/asZXnGNKBBWhliZkEy8Pkj7TX0Mtgxspto3C1kdiwORmf
 oxm263dwAr3lDAQPZPTE+wiJuVQByx9RrNsAe5cUdNsrmf2S6jYJ74KQ3TYd97RnDzR8
 4f65cgwlfYZpNf05ZWZ4VYoQQZ0QYubU6ofhafzBSd4qI6XC1c21EzHgFi76fR1ZR1Vj
 iVzg==
X-Gm-Message-State: APjAAAWtc//4cDstva+kwpLWS1w0XWCa7fl8mxhTPE8CQgjJW4MQjmVP
 RY4NcW11bX6TeKZ7l19IIfM=
X-Google-Smtp-Source: APXvYqwR0q1/blUrqYR+XMlkhidWKj/s2ojzVV8263BY2FCeizUcrqO88TL/aFATj4L8kqpsqpyA4g==
X-Received: by 2002:aed:2448:: with SMTP id s8mr27213725qtc.173.1570395102993; 
 Sun, 06 Oct 2019 13:51:42 -0700 (PDT)
Received: from GBdebian.terracota.local ([177.103.155.130])
 by smtp.gmail.com with ESMTPSA id a36sm6949492qtk.21.2019.10.06.13.51.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 06 Oct 2019 13:51:42 -0700 (PDT)
From: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
To: outreachy-kernel@googlegroups.com, Larry.Finger@lwfinger.net,
 florian.c.schilhabel@googlemail.com, gregkh@linuxfoundation.org,
 nishkadg.linux@gmail.com, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, lkcamp@lists.libreplanetbr.org,
 trivial@kernel.org
Subject: [PATCH] staging: rtl8712: align arguments with open parenthesis
Date: Sun,  6 Oct 2019 17:51:35 -0300
Message-Id: <20191006205135.11791-1-gabrielabittencourt00@gmail.com>
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
Cc: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Cleans up checks of "Alignment should match open parenthesis"

Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
---
 drivers/staging/rtl8712/recv_linux.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/recv_linux.c b/drivers/staging/rtl8712/recv_linux.c
index 70a4dcd4a1e5..808f21c5767a 100644
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
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

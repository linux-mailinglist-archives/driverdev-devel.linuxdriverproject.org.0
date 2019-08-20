Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B61E96486
	for <lists+driverdev-devel@lfdr.de>; Tue, 20 Aug 2019 17:34:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2D6EB2287D;
	Tue, 20 Aug 2019 15:34:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gcWIgETdeNjX; Tue, 20 Aug 2019 15:34:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C0F4A2285E;
	Tue, 20 Aug 2019 15:34:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6B89E1BF2F8
 for <devel@linuxdriverproject.org>; Tue, 20 Aug 2019 15:34:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 689DF8698D
 for <devel@linuxdriverproject.org>; Tue, 20 Aug 2019 15:34:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nAkJsgXP4vV4 for <devel@linuxdriverproject.org>;
 Tue, 20 Aug 2019 15:34:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0F375868CF
 for <devel@driverdev.osuosl.org>; Tue, 20 Aug 2019 15:34:12 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id w16so3603043pfn.7
 for <devel@driverdev.osuosl.org>; Tue, 20 Aug 2019 08:34:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dPHNmTe4Qd6sGNb6G6+TQiW7l0R1WKyJpGI4kCBBgLU=;
 b=R+12pmEPP36+qTGpBxTfi+7XXsKJd23bmEEKqznjUXPyVRhGmSQ3tO15ETAl5a65xs
 udovK9MUPsc/LeqJJ3OtO/8UmZIc7utKbKpH3VxsHwTWuTn4P/aEQFJzpR9yuzQ0yjx6
 ktPV8+ySpuJt4r4KVubB3s0Kttb8/J5lb/ktY6gk92aWvnHCw0J3FTBZiflkUL9zs/T6
 FU2KWd/sb424pco+quhOXUsVJxTFH8VKvD7QFyyTQQL8n7yKqXb56Djp5AfSt1TOH050
 RqfzXmM4BvnABddyQb/cUwLf/IgeKoQlOjfFTxG4xPd5icurBVOQgS9RdJWKhi2iJUUn
 1EXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dPHNmTe4Qd6sGNb6G6+TQiW7l0R1WKyJpGI4kCBBgLU=;
 b=kEmqsNuHNHnQaGIHbWDuaoQwgzXLugXYFf6MVLt6dwYJZMw5lHQcps5TquAzTFIv8e
 eWfp7XPXc86Sct5Pv9bBFpitb4AYy+p4Nb+5D0aEgGWInhDmKU2CE8g4ZmnR1EddGnK5
 pndmH+jIQZ8UZEE1jlXuUW5ahx0aQRVIQednu1zVZ6jbr4p2OK1hUUYSaLUcyL66Ysdd
 SvTHjSELjS8Gi4+VB2kWtXL21kyTFwNd54coHgYcMRy7zG4TGUch6SWZOCTIFTjGtyX7
 S/0jVU4RsWHpQXtAhMTAVWSij4Z6ySln9yoI7j/Y4t3vwKdyL5CnN9RoYXClHaD/u/0u
 98CQ==
X-Gm-Message-State: APjAAAW4lKiAxHAKaBN2zEXUEVbq3RzjHuAHMy9qAGFJdgV489gDIpOF
 3XNrGFvpvEJ0eKYIfdHkfm5fhMeCdbs=
X-Google-Smtp-Source: APXvYqzHRKRyg7+7CoVECVrHvDxtLshKsTIe4TgL6o5OZVN72oUf3TOpd2aOox7UbbYlhK/bpuuiHg==
X-Received: by 2002:a17:90a:c086:: with SMTP id o6mr668903pjs.2.1566315251498; 
 Tue, 20 Aug 2019 08:34:11 -0700 (PDT)
Received: from masabert (i118-21-156-233.s30.a048.ap.plala.or.jp.
 [118.21.156.233])
 by smtp.gmail.com with ESMTPSA id bt18sm276897pjb.1.2019.08.20.08.34.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 20 Aug 2019 08:34:10 -0700 (PDT)
Received: by masabert (Postfix, from userid 1000)
 id 43C312011CC; Wed, 21 Aug 2019 00:33:58 +0900 (JST)
From: Masanari Iida <standby24x7@gmail.com>
To: linux-kernel@vger.kernel.org, gregkh@linuxfoundation.org,
 devel@driverdev.osuosl.org, abbotti@mev.co.uk, hsweeten@visionengravers.com
Subject: [PATCH] staging: comedi: ni_mio_common: Fix a typo in ni_mio_common.c
Date: Wed, 21 Aug 2019 00:33:56 +0900
Message-Id: <20190820153356.25189-1-standby24x7@gmail.com>
X-Mailer: git-send-email 2.23.0
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

This patch fix a spelling typo in ni_mio_common.c

Signed-off-by: Masanari Iida <standby24x7@gmail.com>
---
 drivers/staging/comedi/drivers/ni_mio_common.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/comedi/drivers/ni_mio_common.c b/drivers/staging/comedi/drivers/ni_mio_common.c
index c175227009f1..f98e3ae27bff 100644
--- a/drivers/staging/comedi/drivers/ni_mio_common.c
+++ b/drivers/staging/comedi/drivers/ni_mio_common.c
@@ -596,7 +596,7 @@ static int ni_request_ao_mite_channel(struct comedi_device *dev)
 	if (!mite_chan) {
 		spin_unlock_irqrestore(&devpriv->mite_channel_lock, flags);
 		dev_err(dev->class_dev,
-			"failed to reserve mite dma channel for analog outut\n");
+			"failed to reserve mite dma channel for analog output\n");
 		return -EBUSY;
 	}
 	mite_chan->dir = COMEDI_OUTPUT;
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AF2FF1A5EFC
	for <lists+driverdev-devel@lfdr.de>; Sun, 12 Apr 2020 16:25:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B5B5F863DC;
	Sun, 12 Apr 2020 14:25:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EEeQK6xvJ4xc; Sun, 12 Apr 2020 14:25:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C1FD48626C;
	Sun, 12 Apr 2020 14:25:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E17531BF336
 for <devel@linuxdriverproject.org>; Sun, 12 Apr 2020 14:25:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D99B120425
 for <devel@linuxdriverproject.org>; Sun, 12 Apr 2020 14:25:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F9Q9Tlh9vpEJ for <devel@linuxdriverproject.org>;
 Sun, 12 Apr 2020 14:25:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by silver.osuosl.org (Postfix) with ESMTPS id C882B203AA
 for <devel@driverdev.osuosl.org>; Sun, 12 Apr 2020 14:25:31 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id a201so7236989wme.1
 for <devel@driverdev.osuosl.org>; Sun, 12 Apr 2020 07:25:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=S3d8GL8Hziepj2Ir5FLPVA9Tz/TkbgUVI34I8xIlOvI=;
 b=QDRUidQh2JuD2piovteluotX6uaVsXNBTwPV8W2GC+WHbbmp+tL7GzgEhhHjdcd+FI
 sWjrFKoWj0lX/UJ2FUNPXVB2iV1J/wmtFRNK0F/N30OGB/mUvoKKC4o3k72lyKk0L5wl
 18Z9MMgudylzbWF5P/Mss1keJAKPQ8NfRXpOoKFrJ7uPFr8FLdi3ZjEIPHIWZB1RV0jE
 T/ECcOV1Jg3eyiyk9mpQcjofWyYfp4AM9J1iLQ0+qqfcg3rdtlTM/80kpiJlmRcDM88D
 FpwvaF+mtHMo8uazyAlktuBqkbwenYU1jdSSoARMqEXmsNfr+3rWdAmAB+BJnjVJrG7t
 8piQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=S3d8GL8Hziepj2Ir5FLPVA9Tz/TkbgUVI34I8xIlOvI=;
 b=SC8UQ1CrBgg56lO75L0eoaX0DBwwIzjxGCNqsl1kTLEGMFGGuocDnknnSxmlPF8yUp
 ek858sDxJ4DP3aq1XERqC71/xTkRjBf0Ev8KWZ00v2Pos+7CpVuWnexr1VA9TfgINro+
 AM66pRzFEhvi6krKIcAgvT6Xcl1ltLCWWytiqejaIm0VUMt9Ik8FbVYyaMGg6WCkSMrt
 4OA98J/YXO4d30R9Ncl2qpg2TWeGJjgKLrL0djtWdPbZMcknRopKxu8NpLs+KweGIO9/
 dihj2mmRSqnel2TuLrcgLsuFrqUKEW+ThkeFWw4s4KEgeRImRaXyhfJStrh46N720amg
 V45A==
X-Gm-Message-State: AGi0PuaZ6I+Zsve3Vfnh7VW8o6X+RFVn0sHHGhesafE5SH4RGojT0Scs
 QLKrOBZkjGtFAZ/10Wg/HKc=
X-Google-Smtp-Source: APiQypKCF740WjrxWdNr5PZO/1+70c6CpLSrLwxtyUyD3M5HUYON3NEAYfJ0zjvk1HYeO+9IjrKCEA==
X-Received: by 2002:a7b:cdf7:: with SMTP id p23mr14764855wmj.33.1586701509335; 
 Sun, 12 Apr 2020 07:25:09 -0700 (PDT)
Received: from localhost.localdomain ([31.4.236.231])
 by smtp.gmail.com with ESMTPSA id y10sm6771334wma.5.2020.04.12.07.25.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 12 Apr 2020 07:25:08 -0700 (PDT)
From: carlosteniswarrior@gmail.com
To: gregkh@linuxfoundation.org
Subject: [PATCH] Staging: comedi: drivers: jr3_pci: fixed two warnings
Date: Sun, 12 Apr 2020 16:25:08 +0200
Message-Id: <20200412142508.327-1-carlosteniswarrior@gmail.com>
X-Mailer: git-send-email 2.26.0
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
Cc: devel@driverdev.osuosl.org,
 Carlos Guerrero Alvarez <carlosteniswarrior@gmail.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixed two checkpatch warnings.

Signed-off-by: Carlos Guerrero Alvarez <carlosteniswarrior@gmail.com>
---
 drivers/staging/comedi/drivers/jr3_pci.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/comedi/drivers/jr3_pci.c b/drivers/staging/comedi/drivers/jr3_pci.c
index c3c88e6d298f..6bc87d3c6c3b 100644
--- a/drivers/staging/comedi/drivers/jr3_pci.c
+++ b/drivers/staging/comedi/drivers/jr3_pci.c
@@ -91,8 +91,8 @@ struct jr3_pci_dev_private {
 };
 
 union jr3_pci_single_range {
-	struct comedi_lrange l;
-	char _reserved[offsetof(struct comedi_lrange, range[1])];
+	const comedi_lrange l;
+	char _reserved[offsetof(const comedi_lrange, range[1])];
 };
 
 enum jr3_pci_poll_state {
-- 
2.26.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

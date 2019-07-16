Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 557866AD18
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Jul 2019 18:47:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3BABF87E68;
	Tue, 16 Jul 2019 16:47:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wIqczYQ5PbL9; Tue, 16 Jul 2019 16:47:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9110C87A4F;
	Tue, 16 Jul 2019 16:47:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D88171BF853
 for <devel@linuxdriverproject.org>; Tue, 16 Jul 2019 16:47:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D53BE860DB
 for <devel@linuxdriverproject.org>; Tue, 16 Jul 2019 16:47:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n6s-FN-fjLRA for <devel@linuxdriverproject.org>;
 Tue, 16 Jul 2019 16:47:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com
 [209.85.160.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5221382D5F
 for <devel@driverdev.osuosl.org>; Tue, 16 Jul 2019 16:47:51 +0000 (UTC)
Received: by mail-qt1-f196.google.com with SMTP id n11so20274300qtl.5
 for <devel@driverdev.osuosl.org>; Tue, 16 Jul 2019 09:47:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=q0NqtvmYr3QBS5nmSx2KYKqSfKQXLB/8EIDh7naBj98=;
 b=utexAQn4HQZwG3SUUpmbEFlYkvK1IOuANj/Zc7xChzgYe/BKh3eDOIax43Dn2cfhwk
 +aIYCGi5CKtsXpQIaxu1hYXnqhoIVwGBucDM4EfbQXqz2zewYhO71vtq9S3E5ADOKfkQ
 VyWGmJEfhr0rTpU18WOJJHAFk8MOlAfSqii/cS6oIN9a2CDwFzJeZDG4h8f3idFaKn5q
 RtClP4wErXHp2hzZzuTdhbCiLs8mAKjYV71Z4p1JBZ8dNrQzEMgc6iJ26rgvC5lVTwpz
 yp5exTISYOIgMXbxO/8N8mqC6er9l07ftY8q6MhdThupwr9SMwKB5dVFGRx4BESBtJ4R
 wDIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=q0NqtvmYr3QBS5nmSx2KYKqSfKQXLB/8EIDh7naBj98=;
 b=H4taSTQT27/bnKDu/zpHAZNoeFgulBZH4V6GpdlQj2ZKa7a3qz/oq8G+nhlgMNKRJc
 wPVudsdSX40aFSw2DtT7N39zH+FqXsj/9Q97QtgGk3+p0RpZVgheODwZK6zACC0OV8QR
 3BilwQEdOEC9MVdR4I1PyuFKW2dDssnwwdriP/urDl+wxYUFtWDu4nqeAkqaoaqXaO1m
 gLDfVKTS/vunpgcY37LGmmZyRCAYoaWZGvRTz7hrnRGNkYuYnhs0jTFpREDFfY8wyF2V
 qpKTiXFtriwutt3qMMP40bTtGqZRgxP6inc4KLyT1EctqdooMeOd3U6CiTTx80imVE+2
 xr/w==
X-Gm-Message-State: APjAAAWVBoeFaIBgXVOe7LY3QVZ8mZNjIayTEYPwEX4QoZ5Ug05WPagy
 lKo6zxVW5xD813puRIN25K8=
X-Google-Smtp-Source: APXvYqyJ5vDUm1pRGTGVuykBQkTnEo3d0FkPfbmU89w9S4TAyp3kfdJsa0cpbX8O3j8rEfOGcJJUAg==
X-Received: by 2002:a0c:baa1:: with SMTP id x33mr25319608qvf.200.1563295670388; 
 Tue, 16 Jul 2019 09:47:50 -0700 (PDT)
Received: from maquinola.fibertel.com.ar ([181.31.154.224])
 by smtp.gmail.com with ESMTPSA id i5sm8813414qtp.20.2019.07.16.09.47.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 16 Jul 2019 09:47:50 -0700 (PDT)
From: Karen Palacio <karen.palacio.1994@gmail.com>
To: linux-erofs@lists.ozlabs.org,
	gaoxiang25@huawei.com,
	yucha0@huawei.com
Subject: [PATCH] staging: erofs: fix typo
Date: Tue, 16 Jul 2019 13:47:43 -0300
Message-Id: <1563295663-312-1-git-send-email-karen.palacio.1994@gmail.com>
X-Mailer: git-send-email 2.7.4
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
 Karen Palacio <karen.palacio.1994@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Signed-off-by: Karen Palacio <karen.palacio.1994@gmail.com>
---
 drivers/staging/erofs/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/erofs/Kconfig b/drivers/staging/erofs/Kconfig
index d04b798..0dcefac 100644
--- a/drivers/staging/erofs/Kconfig
+++ b/drivers/staging/erofs/Kconfig
@@ -88,7 +88,7 @@ config EROFS_FS_IO_MAX_RETRIES
 	  If unsure, leave the default value (5 retries, 6 IOs at most).
 
 config EROFS_FS_ZIP
-	bool "EROFS Data Compresssion Support"
+	bool "EROFS Data Compression Support"
 	depends on EROFS_FS
 	select LZ4_DECOMPRESS
 	help
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

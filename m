Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8940926390
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 May 2019 14:15:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 23B8830AF6;
	Wed, 22 May 2019 12:15:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ioVVfP07wKEF; Wed, 22 May 2019 12:14:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5FF723019D;
	Wed, 22 May 2019 12:14:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DAAB31BF973
 for <devel@linuxdriverproject.org>; Wed, 22 May 2019 12:14:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CFD4A86DBD
 for <devel@linuxdriverproject.org>; Wed, 22 May 2019 12:14:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SakXPPDjMRD5 for <devel@linuxdriverproject.org>;
 Wed, 22 May 2019 12:14:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f193.google.com (mail-qk1-f193.google.com
 [209.85.222.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C1F6C86B53
 for <devel@driverdev.osuosl.org>; Wed, 22 May 2019 12:14:53 +0000 (UTC)
Received: by mail-qk1-f193.google.com with SMTP id c15so1290185qkl.2
 for <devel@driverdev.osuosl.org>; Wed, 22 May 2019 05:14:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=eIEcDIHKJwEp18hnndikeLlhOBy2trJmJWiZcL9j2Ok=;
 b=QQC+LDvAy47svZpaqkuyugiJWSDGnq43An/Ip1DjODVIW8zkSpkO3FJMV2k5BJJf1n
 YH55KanIfLbCqk/hYL8HHVvCBL+4y90l2/jrmcxlE8GBG2usvs2o01d9hy0deYkU4FAd
 2DW93OwwjHJyEe4bicIPqgptRbyExNOFw9NQUVghCq0NzUObLVGIc2ZdBCSj1nRzfSng
 VwB4zOglsxG2qLIplCBelDgEIqTI79cpKEQ4WeRrqd75D16perlLF/ogA/YGOUSZ1zZk
 WWSYszgvt950AW8VrnScABqUAbuWZsB8AftUFpd9ldq9VJicDzn/GZ47RdJA1SqrY2YX
 h/JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=eIEcDIHKJwEp18hnndikeLlhOBy2trJmJWiZcL9j2Ok=;
 b=row4tEoA2clrRybzGsb/Qj7YhUUEq2rbZMw6HkEG+r5pShSfHWYlX6C889TS+tpW5k
 Vqnh3fr8O7FNm66hamQ7XYHfuv7zgkg6C6T73e8AEJ2jd3amb6vpbmlzw91ybo+nxNxq
 5ZnbiN6oKorUoy2TlxnDi0c5R3QjO4rvbUmbxkGkMHjeP9EsoSC/T8UmvS/G/gqe9r79
 pdbXR2c4mZpu/uPZsT/o4Sut5e81KexueX8kvM0bi2lN/hCNimh/i3mCOcFgGaj26UYE
 OC0vIJP28TWWrfgRmkVwbLbO0WAr9DVTHHmHcOuBCD0G6MJTYcqcAT0YNSTw+egGpKck
 XwBw==
X-Gm-Message-State: APjAAAU2829H6zDMzMZnbR1GCvSzT8XD7tOCP7vxc3wrOyyQMq2OMlAm
 Q6BrXle35qjxVpZaaVFRTUuqcPL7FtI=
X-Google-Smtp-Source: APXvYqzwUtiwb0sA4Xlb6GlJ9h7DMqTouWxXSModJlyjwShrd8E056iRalp7cwCAEohL0HTrNf1lwQ==
X-Received: by 2002:a37:b287:: with SMTP id b129mr60006366qkf.20.1558527292935; 
 Wed, 22 May 2019 05:14:52 -0700 (PDT)
Received: from arch-01.home (c-73-132-202-198.hsd1.dc.comcast.net.
 [73.132.202.198])
 by smtp.gmail.com with ESMTPSA id w2sm8742070qto.19.2019.05.22.05.14.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 22 May 2019 05:14:51 -0700 (PDT)
From: Geordan Neukum <gneukum1@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH 4/6] staging: kpc2000: kpc_i2c: use <linux/io.h> instead of
 <asm/io.h>
Date: Wed, 22 May 2019 12:14:00 +0000
Message-Id: <5631017d1920d4bdcfdff252ba2fcda80b6f2d7b.1558526487.git.gneukum1@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.1558526487.git.gneukum1@gmail.com>
References: <cover.1558526487.git.gneukum1@gmail.com>
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
Cc: Geordan Neukum <gneukum1@gmail.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Rather than include asm/io.h, include linux/io.h. Issue reported
by the script checkpatch.pl.

Signed-off-by: Geordan Neukum <gneukum1@gmail.com>
---
 drivers/staging/kpc2000/kpc2000_i2c.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/kpc2000/kpc2000_i2c.c b/drivers/staging/kpc2000/kpc2000_i2c.c
index a1ebc2386d70..5d98ed54c05c 100644
--- a/drivers/staging/kpc2000/kpc2000_i2c.c
+++ b/drivers/staging/kpc2000/kpc2000_i2c.c
@@ -19,7 +19,7 @@
 #include <linux/init.h>
 #include <linux/module.h>
 #include <linux/types.h>
-#include <asm/io.h>
+#include <linux/io.h>
 #include <linux/io-64-nonatomic-lo-hi.h>
 #include <linux/export.h>
 #include <linux/slab.h>
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 97BBC918ED
	for <lists+driverdev-devel@lfdr.de>; Sun, 18 Aug 2019 20:36:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C00F6856ED;
	Sun, 18 Aug 2019 18:36:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hPbW1XNsv8am; Sun, 18 Aug 2019 18:36:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 10350854D8;
	Sun, 18 Aug 2019 18:36:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6766F1BF406
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 18:36:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 62D068547B
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 18:36:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VXXDh1x0iK97 for <devel@linuxdriverproject.org>;
 Sun, 18 Aug 2019 18:36:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f193.google.com (mail-qk1-f193.google.com
 [209.85.222.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CE81685456
 for <devel@driverdev.osuosl.org>; Sun, 18 Aug 2019 18:36:06 +0000 (UTC)
Received: by mail-qk1-f193.google.com with SMTP id 125so8847797qkl.6
 for <devel@driverdev.osuosl.org>; Sun, 18 Aug 2019 11:36:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=e7TlGCUf1JSTI6LOCtMDPWUdsew/XXSqNWQ0500csFk=;
 b=VwjzuuA1cEGqSdsoBXdYxZEdXn/gzNCGfoGU4iMtPqvugKpO6f6UYPWFqPJxMvubLr
 Kk3tmqJ0nDztM1w74kpyAqqFtDCtYJGkGeWlrBvXAypJLuzw7hqVURAHHPHMScKQdHF3
 6tDQIfCuz9lzPHoj9AM8AEeg/LcGrh4IiOr6a3x8ZdQo9msPTl8w7JJR8HQScvgWw7WM
 fPv9CKoljAxl0oG56NqFpSkH3qngVh1wkjR2MEYgl03jxq7Vv014+hje7LFzqJtt6kA1
 tJnkLZQnuzKN+Zxb/3wxcXldNvcVFee7zCPZZjMIqFyC3qJ4jdgRdag0moLEItw3b8di
 ii6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=e7TlGCUf1JSTI6LOCtMDPWUdsew/XXSqNWQ0500csFk=;
 b=o4qwcQb7ojPuS7g2HR0EJqcy/9DY3PUNcv5PraD8kIZhfiK3yOTMRsvKOzjxSLvnGT
 Z6V7scia/QCMPIQ6Ba3Fm2CCGr6JLmv3890NX0W6W56sYHODQp2vSHcb6Hqzx8lQYoFm
 lgrkKd4zUtjOdngX+01Cf1v86k3uDT/4n/0IZSFdm6bEgZ6tHAV1pPCDC54xv169OxCP
 fnTsfDGJbASWIc+dzzyrNfixAPn7lSv+xVfFSg4OzFhmztnfLHqR3SDl4/LJ9zYMHKXJ
 NTl4Al4WzgvtR8os259U/HP+WsjZYcn1NTIuKawYroVrdWSos90qys6uxnZjuGYMDgZO
 TRuQ==
X-Gm-Message-State: APjAAAXz/Otfk9XVvzh2bGW2EWSpJYiaTMeXLcqbgaxqT2OBQLleuFgz
 hP6CnvZen9Se+OrNmHlVCwg=
X-Google-Smtp-Source: APXvYqzjyDFtqHr5NHdj4nZFP5FTz9f9Erl3Y00N3/EznOCzKCnQe0hZk13W8DTSxbNqL01uzjrVHg==
X-Received: by 2002:a37:c206:: with SMTP id i6mr10763120qkm.384.1566153365724; 
 Sun, 18 Aug 2019 11:36:05 -0700 (PDT)
Received: from localhost.localdomain ([2804:431:c7d2:f9b3:a288:b4ff:fe9b:37cc])
 by smtp.gmail.com with ESMTPSA id a6sm5987094qkd.135.2019.08.18.11.36.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 18 Aug 2019 11:36:05 -0700 (PDT)
From: Eduardo Barretto <edusbarretto@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: kpc2000: kpc2000_i2c: Fix different address spaces
 warnings
Date: Sun, 18 Aug 2019 15:35:55 -0300
Message-Id: <20190818183555.7167-1-edusbarretto@gmail.com>
X-Mailer: git-send-email 2.22.1
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fixes the following sparse warnings:

kpc2000_i2c.c:137: warning: incorrect type in argument 1
                                   (different address spaces)
kpc2000_i2c.c:137:    expected void const volatile [noderef] <asn:2> *addr
kpc2000_i2c.c:137:    got void *
kpc2000_i2c.c:146: warning: incorrect type in argument 2
                                   (different address spaces)
kpc2000_i2c.c:146:    expected void volatile [noderef] <asn:2> *addr
kpc2000_i2c.c:146:    got void *
kpc2000_i2c.c:147: warning: incorrect type in argument 1
                                   (different address spaces)
kpc2000_i2c.c:147:    expected void const volatile [noderef] <asn:2> *addr
kpc2000_i2c.c:147:    got void *
kpc2000_i2c.c:166: warning: incorrect type in argument 1
                                   (different address spaces)
kpc2000_i2c.c:166:    expected void const volatile [noderef] <asn:2> *addr
kpc2000_i2c.c:166:    got void *
kpc2000_i2c.c:166: warning: incorrect type in argument 2
                                  (different address spaces)
kpc2000_i2c.c:166:    expected void volatile [noderef] <asn:2> *addr
kpc2000_i2c.c:166:    got void *
kpc2000_i2c.c:168: warning: incorrect type in argument 1
                                   (different address spaces)
kpc2000_i2c.c:168:    expected void const volatile [noderef] <asn:2> *addr
kpc2000_i2c.c:168:    got void *
kpc2000_i2c.c:168: warning: incorrect type in argument 2
                                   (different address spaces)
kpc2000_i2c.c:168:    expected void volatile [noderef] <asn:2> *addr
kpc2000_i2c.c:168:    got void *
kpc2000_i2c.c:171: warning: incorrect type in argument 1
                                   (different address spaces)
kpc2000_i2c.c:171:    expected void const volatile [noderef] <asn:2> *addr
kpc2000_i2c.c:171:    got void *
kpc2000_i2c.c:174: warning: incorrect type in argument 2
                                   (different address spaces)
kpc2000_i2c.c:174:    expected void volatile [noderef] <asn:2> *addr
kpc2000_i2c.c:174:    got void *
kpc2000_i2c.c:193: warning: incorrect type in argument 2
                                   (different address spaces)
kpc2000_i2c.c:193:    expected void volatile [noderef] <asn:2> *addr
kpc2000_i2c.c:193:    got void *
kpc2000_i2c.c:194: warning: incorrect type in argument 1
                                   (different address spaces)
kpc2000_i2c.c:194:    expected void const volatile [noderef] <asn:2> *addr
kpc2000_i2c.c:194:    got void *
kpc2000_i2c.c:214: warning: incorrect type in argument 2
                                  (different address spaces)
kpc2000_i2c.c:214:    expected void volatile [noderef] <asn:2> *addr
kpc2000_i2c.c:214:    got void *
kpc2000_i2c.c:219: warning: incorrect type in argument 1
                                  (different address spaces)
kpc2000_i2c.c:219:    expected void const volatile [noderef] <asn:2> *addr
kpc2000_i2c.c:219:    got void *
kpc2000_i2c.c:226: warning: incorrect type in argument 2
                                  (different address spaces)
kpc2000_i2c.c:226:    expected void volatile [noderef] <asn:2> *addr
kpc2000_i2c.c:226:    got void *
kpc2000_i2c.c:238: warning: incorrect type in argument 1
                                   (different address spaces)
kpc2000_i2c.c:238:    expected void const volatile [noderef] <asn:2> *addr
kpc2000_i2c.c:238:    got void *
kpc2000_i2c.c:244: warning: incorrect type in argument 2
                                  (different address spaces)
kpc2000_i2c.c:244:    expected void volatile [noderef] <asn:2> *addr
kpc2000_i2c.c:244:    got void *
kpc2000_i2c.c:252: warning: incorrect type in argument 1
                                  (different address spaces)
kpc2000_i2c.c:252:    expected void const volatile [noderef] <asn:2> *addr
kpc2000_i2c.c:252:    got void *
kpc2000_i2c.c:257: warning: incorrect type in argument 2
                                  (different address spaces)
kpc2000_i2c.c:257:    expected void volatile [noderef] <asn:2> *addr
kpc2000_i2c.c:257:    got void *
kpc2000_i2c.c:259: warning: incorrect type in argument 2
				   (different address spaces)
kpc2000_i2c.c:259:    expected void volatile [noderef] <asn:2> *addr
kpc2000_i2c.c:259:    got void *
kpc2000_i2c.c:267: warning: incorrect type in argument 1
                                   (different address spaces)
kpc2000_i2c.c:267:    expected void const volatile [noderef] <asn:2> *addr
kpc2000_i2c.c:267:    got void *
kpc2000_i2c.c:273: warning: incorrect type in argument 1
                                   (different address spaces)
kpc2000_i2c.c:273:    expected void const volatile [noderef] <asn:2> *addr
kpc2000_i2c.c:273:    got void *
kpc2000_i2c.c:293: warning: incorrect type in argument 2
                                   (different address spaces)
kpc2000_i2c.c:293:    expected void volatile [noderef] <asn:2> *addr
kpc2000_i2c.c:293:    got void *
kpc2000_i2c.c:294: warning: incorrect type in argument 2
                                   (different address spaces)
kpc2000_i2c.c:294:    expected void volatile [noderef] <asn:2> *addr
kpc2000_i2c.c:294:    got void *
kpc2000_i2c.c:309: warning: incorrect type in argument 2
                                   (different address spaces)
kpc2000_i2c.c:309:    expected void volatile [noderef] <asn:2> *addr
kpc2000_i2c.c:309:    got void *
kpc2000_i2c.c:312: warning: incorrect type in argument 2
                                   (different address spaces)
kpc2000_i2c.c:312:    expected void volatile [noderef] <asn:2> *addr
kpc2000_i2c.c:312:    got void *
kpc2000_i2c.c:317: warning: incorrect type in argument 1
                                   (different address spaces)
kpc2000_i2c.c:317:    expected void const volatile [noderef] <asn:2> *addr
kpc2000_i2c.c:317:    got void *
kpc2000_i2c.c:324: warning: incorrect type in argument 1
                                   (different address spaces)
kpc2000_i2c.c:324:    expected void const volatile [noderef] <asn:2> *addr
kpc2000_i2c.c:324:    got void *
kpc2000_i2c.c:328: warning: incorrect type in argument 1
                                   (different address spaces)
kpc2000_i2c.c:328:    expected void const volatile [noderef] <asn:2> *addr
kpc2000_i2c.c:328:    got void *
kpc2000_i2c.c:329: warning: incorrect type in argument 2
                                   (different address spaces)
kpc2000_i2c.c:329:    expected void volatile [noderef] <asn:2> *addr
kpc2000_i2c.c:329:    got void *
kpc2000_i2c.c:330: warning: incorrect type in argument 2
                                   (different address spaces)
kpc2000_i2c.c:330:    expected void volatile [noderef] <asn:2> *addr
kpc2000_i2c.c:330:    got void *
kpc2000_i2c.c:338: warning: incorrect type in argument 1
                                   (different address spaces)
kpc2000_i2c.c:338:    expected void const volatile [noderef] <asn:2> *addr
kpc2000_i2c.c:338:    got void *
kpc2000_i2c.c:340: warning: incorrect type in argument 2
                                   (different address spaces)
kpc2000_i2c.c:340:    expected void volatile [noderef] <asn:2> *addr
kpc2000_i2c.c:340:    got void *
kpc2000_i2c.c:342: warning: incorrect type in argument 2
                                   (different address spaces)
kpc2000_i2c.c:342:    expected void volatile [noderef] <asn:2> *addr
kpc2000_i2c.c:342:    got void *
kpc2000_i2c.c:350: warning: incorrect type in argument 1
                                  (different address spaces)
kpc2000_i2c.c:350:    expected void const volatile [noderef] <asn:2> *addr
kpc2000_i2c.c:350:    got void *
kpc2000_i2c.c:350: warning: incorrect type in argument 2
                                  (different address spaces)
kpc2000_i2c.c:350:    expected void volatile [noderef] <asn:2> *addr
kpc2000_i2c.c:350:    got void *
kpc2000_i2c.c:351: warning: incorrect type in argument 1
                                   (different address spaces)
kpc2000_i2c.c:351:    expected void const volatile [noderef] <asn:2> *addr
kpc2000_i2c.c:351:    got void *
kpc2000_i2c.c:414: warning: incorrect type in argument 2
                                   (different address spaces)
kpc2000_i2c.c:414:    expected void volatile [noderef] <asn:2> *addr
kpc2000_i2c.c:414:    got void *
kpc2000_i2c.c:420: warning: incorrect type in argument 2
                                   (different address spaces)
kpc2000_i2c.c:420:    expected void volatile [noderef] <asn:2> *addr
kpc2000_i2c.c:420:    got void *
kpc2000_i2c.c:422: warning: incorrect type in argument 2
                                   (different address spaces)
kpc2000_i2c.c:422:    expected void volatile [noderef] <asn:2> *addr
kpc2000_i2c.c:422:    got void *
kpc2000_i2c.c:427: warning: incorrect type in argument 2
                                   (different address spaces)
kpc2000_i2c.c:427:    expected void volatile [noderef] <asn:2> *addr
kpc2000_i2c.c:427:    got void *
kpc2000_i2c.c:428: warning: incorrect type in argument 2
                                   (different address spaces)
kpc2000_i2c.c:428:    expected void volatile [noderef] <asn:2> *addr
kpc2000_i2c.c:428:    got void *
kpc2000_i2c.c:430: warning: incorrect type in argument 2
                                   (different address spaces)
kpc2000_i2c.c:430:    expected void volatile [noderef] <asn:2> *addr
kpc2000_i2c.c:430:    got void *
kpc2000_i2c.c:435: warning: incorrect type in argument 2
                                   (different address spaces)
kpc2000_i2c.c:435:    expected void volatile [noderef] <asn:2> *addr
kpc2000_i2c.c:435:    got void *
kpc2000_i2c.c:436: warning: incorrect type in argument 2
                                   (different address spaces)
kpc2000_i2c.c:436:    expected void volatile [noderef] <asn:2> *addr
kpc2000_i2c.c:436:    got void *
kpc2000_i2c.c:438: warning: incorrect type in argument 2
                                   (different address spaces)
kpc2000_i2c.c:438:    expected void volatile [noderef] <asn:2> *addr
kpc2000_i2c.c:438:    got void *
kpc2000_i2c.c:439: warning: incorrect type in argument 2
                                   (different address spaces)
kpc2000_i2c.c:439:    expected void volatile [noderef] <asn:2> *addr
kpc2000_i2c.c:439:    got void *
kpc2000_i2c.c:445: warning: incorrect type in argument 2
                                   (different address spaces)
kpc2000_i2c.c:445:    expected void volatile [noderef] <asn:2> *addr
kpc2000_i2c.c:445:    got void *
kpc2000_i2c.c:446: warning: incorrect type in argument 2
                                   (different address spaces)
kpc2000_i2c.c:446:    expected void volatile [noderef] <asn:2> *addr
kpc2000_i2c.c:446:    got void *
kpc2000_i2c.c:454: warning: incorrect type in argument 2
                                   (different address spaces)
kpc2000_i2c.c:454:    expected void volatile [noderef] <asn:2> *addr
kpc2000_i2c.c:454:    got void *
kpc2000_i2c.c:459: warning: incorrect type in argument 2
                                   (different address spaces)
kpc2000_i2c.c:459:    expected void volatile [noderef] <asn:2> *addr
kpc2000_i2c.c:459:    got void *
kpc2000_i2c.c:461: warning: incorrect type in argument 2
                                   (different address spaces)
kpc2000_i2c.c:461:    expected void volatile [noderef] <asn:2> *addr
kpc2000_i2c.c:461:    got void *
kpc2000_i2c.c:472: warning: incorrect type in argument 1
                                   (different address spaces)
kpc2000_i2c.c:472:    expected void const volatile [noderef] <asn:2> *addr
kpc2000_i2c.c:472:    got void *
kpc2000_i2c.c:472: warning: incorrect type in argument 2
                                   (different address spaces)
kpc2000_i2c.c:472:    expected void volatile [noderef] <asn:2> *addr
kpc2000_i2c.c:472:    got void *
kpc2000_i2c.c:475: warning: incorrect type in argument 1
                                   (different address spaces)
kpc2000_i2c.c:475:    expected void const volatile [noderef] <asn:2> *addr
kpc2000_i2c.c:475:    got void *
kpc2000_i2c.c:475: warning: incorrect type in argument 2
                                   (different address spaces)
kpc2000_i2c.c:475:    expected void volatile [noderef] <asn:2> *addr
kpc2000_i2c.c:475:    got void *
kpc2000_i2c.c:493: warning: incorrect type in argument 1
                                   (different address spaces)
kpc2000_i2c.c:493:    expected void const volatile [noderef] <asn:2> *addr
kpc2000_i2c.c:493:    got void *
kpc2000_i2c.c:493: warning: incorrect type in argument 2
                                   (different address spaces)
kpc2000_i2c.c:493:    expected void volatile [noderef] <asn:2> *addr
kpc2000_i2c.c:493:    got void *
kpc2000_i2c.c:512: warning: incorrect type in argument 1
                                   (different address spaces)
kpc2000_i2c.c:512:    expected void const volatile [noderef] <asn:2> *addr
kpc2000_i2c.c:512:    got void *
kpc2000_i2c.c:516: warning: incorrect type in argument 1
                                   (different address spaces)
kpc2000_i2c.c:516:    expected void const volatile [noderef] <asn:2> *addr
kpc2000_i2c.c:516:    got void *
kpc2000_i2c.c:516: warning: incorrect type in argument 1
                                   (different address spaces)
kpc2000_i2c.c:516:    expected void const volatile [noderef] <asn:2> *addr
kpc2000_i2c.c:516:    got void *

Signed-off-by: Eduardo Barretto <edusbarretto@gmail.com>
---
 drivers/staging/kpc2000/kpc2000_i2c.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000_i2c.c b/drivers/staging/kpc2000/kpc2000_i2c.c
index b108da4ac633..bc02534d8dc3 100644
--- a/drivers/staging/kpc2000/kpc2000_i2c.c
+++ b/drivers/staging/kpc2000/kpc2000_i2c.c
@@ -123,9 +123,9 @@ struct i2c_device {
 
 // FIXME!
 #undef inb_p
-#define inb_p(a) readq((void *)a)
+#define inb_p(a) readq((void __iomem *)a)
 #undef outb_p
-#define outb_p(d, a) writeq(d, (void *)a)
+#define outb_p(d, a) writeq(d, (void __iomem *)a)
 
 /* Make sure the SMBus host is ready to start transmitting.
  * Return 0 if it is, -EBUSY if it is not.
-- 
2.22.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 63B4C1F9960
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Jun 2020 15:56:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9A4F5880CB;
	Mon, 15 Jun 2020 13:56:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OzjCJnlnB+AB; Mon, 15 Jun 2020 13:56:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9452387F76;
	Mon, 15 Jun 2020 13:56:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3296E1BF379
 for <devel@linuxdriverproject.org>; Mon, 15 Jun 2020 13:56:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2D51587F76
 for <devel@linuxdriverproject.org>; Mon, 15 Jun 2020 13:56:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qeOScApJE6YJ for <devel@linuxdriverproject.org>;
 Mon, 15 Jun 2020 13:56:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4D2EE87929
 for <devel@driverdev.osuosl.org>; Mon, 15 Jun 2020 13:56:16 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id f185so14934025wmf.3
 for <devel@driverdev.osuosl.org>; Mon, 15 Jun 2020 06:56:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wdvx1su6bKunDecIvKuI9PV2uM0XohlRpfvjW4aRkXI=;
 b=VpxRIyQ5zOQ6ge+KlfLGKWh9LUJOc6XbiE6mycAiARI3X3UTEXWCaNXW/Vx51WagZK
 h2lRW2Fg50cKEyLqHT1T/EtusvfwREkyHihrrzqGE4SLKxYGSPExk7yz6rHe0M7wOJw1
 Yg30/oZaubsm1JYX0xsy0JHaLoJyZNgivAhxappEq0AdvNnSUxEkv2MyGPjzNgXruVay
 ykCgxs1j/2urnzDhQQMSXUDBIhidBugH6qXCh8pFewWElhGIyusHYEFmd+5twI0Jsp/q
 d7zYzsfraxqzZytfctI9IEdQWW+7qO0uJiu37fXogEo276WjT9ghWEyYIOtVmAQLfHQw
 dNvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wdvx1su6bKunDecIvKuI9PV2uM0XohlRpfvjW4aRkXI=;
 b=N3uvWsEGsmyIJhnHiY1DDe1edNc5tc78DO1bZam7VX8OLR6ZnfNfgjUmlV2AlFyYcv
 S049Ewqul9uIGfr9n0n3ahdcwTtRTQmUV+Dip6Q7QW0arH8dM7K9soi1P3LNcmL/gGEs
 ya1np9uNIOB8VyOa01v47WpP7B21+KLqA+jMjCh4EzkN4g3cL1sszh7Zsz0IAJPhnPoN
 V5Aw/F33nkTfgvckzg9VZeP16ATOUhatsd6ogNxRndRl3AY9GEqd/LzS52/vq6a8tteQ
 aGMPWfSQ+WEPtbjvn2Ipt8doTrO7U2Xx6dRmxUPatgjvFeBSy9rwkTuHFscHZLxaY08u
 9jpQ==
X-Gm-Message-State: AOAM533zFtSDLjOgTA98lXFdGN+jY1k1Fnr8K2suF60M1lQENctXgD7W
 no/PN/LBcN9twezLDhJL5fI=
X-Google-Smtp-Source: ABdhPJzfqGe2fLGJP0HzvJyLtHRmK5FLbebKnAlCAmEOjYdQtNujGCAjVqAf6ZRD9DSCc7JoeqSkuA==
X-Received: by 2002:a7b:c007:: with SMTP id c7mr13649403wmb.165.1592229374541; 
 Mon, 15 Jun 2020 06:56:14 -0700 (PDT)
Received: from garrit-VirtualBox.fritz.box ([94.31.102.44])
 by smtp.gmail.com with ESMTPSA id a14sm25479261wrv.20.2020.06.15.06.56.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 06:56:13 -0700 (PDT)
From: Garrit Franke <garritfranke@gmail.com>
To: abbotti@mev.co.uk, hsweeten@visionengravers.com,
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 kernel-janitors@vger.kernel.org
Subject: [PATCH] staging: comedi: fix up missing whitespace in comment
Date: Mon, 15 Jun 2020 15:55:41 +0200
Message-Id: <20200615135541.46986-1-garritfranke@gmail.com>
X-Mailer: git-send-email 2.25.1
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
Cc: Garrit Franke <garritfranke+kernel@gmail.com>,
 Garrit Franke <garritfranke@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Garrit Franke <garritfranke+kernel@gmail.com>

I noticed this missing whitespace in a comment inside ni_mio_common.c

Signed-off-by: Garrit Franke <garritfranke@gmail.com>
---
 drivers/staging/comedi/drivers/ni_mio_common.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/comedi/drivers/ni_mio_common.c b/drivers/staging/comedi/drivers/ni_mio_common.c
index d99f4065b96d..9266e13f6271 100644
--- a/drivers/staging/comedi/drivers/ni_mio_common.c
+++ b/drivers/staging/comedi/drivers/ni_mio_common.c
@@ -2390,7 +2390,7 @@ static int ni_ai_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
 #endif
 			break;
 		case AIMODE_SAMPLE:
-			/*generate FIFO interrupts on non-empty */
+			/* generate FIFO interrupts on non-empty */
 			ni_stc_writew(dev, NISTC_AI_MODE3_FIFO_MODE_NE,
 				      NISTC_AI_MODE3_REG);
 			break;
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

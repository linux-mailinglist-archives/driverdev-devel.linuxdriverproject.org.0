Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 456F0354E1
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 Jun 2019 03:10:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EBF7E85EC4;
	Wed,  5 Jun 2019 01:10:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G1QPQrnuPC9Z; Wed,  5 Jun 2019 01:10:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CDABA85E7C;
	Wed,  5 Jun 2019 01:10:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EF0681BF366
 for <devel@linuxdriverproject.org>; Wed,  5 Jun 2019 01:10:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C23E586092
 for <devel@linuxdriverproject.org>; Wed,  5 Jun 2019 01:10:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id voLYFbQftROT for <devel@linuxdriverproject.org>;
 Wed,  5 Jun 2019 01:10:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com
 [209.85.222.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3B6D286C46
 for <devel@driverdev.osuosl.org>; Wed,  5 Jun 2019 01:10:09 +0000 (UTC)
Received: by mail-qk1-f195.google.com with SMTP id a132so4121443qkb.13
 for <devel@driverdev.osuosl.org>; Tue, 04 Jun 2019 18:10:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=uYuZk3WfkaKX49xvAd+SIaFxKGOozQxDXCkeJBh9dxI=;
 b=g9JKg/oNEjc8gCZny9L+JKTZ8IXlkOb51oA5UCsAk79uHj9HxL0oJj2T093uVL7U3W
 tZaNJOL1EEnXV4E8dyhLzfNhkFSjmBojQG3rfhszbSwx9mFqXkbAjQBh+j4MewBbn8HD
 VbMUwl99PQ/FRT6A/sMFPO9v6vzSKa2DEDi1bHidQjB2cRAgQE9yvrMtx0BIkYBsm796
 vD9qFJ3339QGhxRMCDVCLQYo0AEIljJOqawv29YvvpQMeSIZdDvW2uWPNcJLT01MZduy
 Tw+3DH+cPK5FlS8H4d9VovuS9XKhN1vAjbL9yTiTiGRduStKYceXbbvXqciOqY8LWyEG
 d7tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=uYuZk3WfkaKX49xvAd+SIaFxKGOozQxDXCkeJBh9dxI=;
 b=HTeS588UWU9DjsLwtPDlBnM2KV2c84Hp3/36SQyilqBoEomxN3bevzBBQ2qrPV1nQ1
 QcOlR77tgcLm880r4Nvq04w9jhGsDvc2+jBqhljSWKOHIdBqujuU8kmGhuic2ZLg0o3o
 cQNDnqyjxcYP5lvdc5B71NKdW9q9iCbZtxNjk37X848cGMatZO88vIj9lYjNtt47NTf5
 6gTWkUllRosMwfWHq6rUX/7XnEB6JE4t2DRPkRkjE8NnmO9PBvZ/aSyehss4HEvx31XY
 Q2iMq3wmKBs2n/lC+QvApPUxJpQLbl3PGMQwXnaREje/lmT99acZo2Zl/yzVUfoGh17W
 45qw==
X-Gm-Message-State: APjAAAXLfF+c8vJitlYzRL0IN7SGSyj5Kh1+TvNioIEbhUp7kZXY5ocH
 snC7XHcQ4hWA9TuEuZadxtc=
X-Google-Smtp-Source: APXvYqxaaBOsP/tJ5p9FEY7HcHhhanA8z99jbfvf4pfydxtj/y3fVkTaELzh94+xa25rVwaoUK5JMA==
X-Received: by 2002:ae9:f20c:: with SMTP id m12mr29856938qkg.58.1559697008489; 
 Tue, 04 Jun 2019 18:10:08 -0700 (PDT)
Received: from arch-01.home (c-73-132-202-198.hsd1.md.comcast.net.
 [73.132.202.198])
 by smtp.gmail.com with ESMTPSA id v41sm7169401qta.78.2019.06.04.18.10.07
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 04 Jun 2019 18:10:08 -0700 (PDT)
From: Geordan Neukum <gneukum1@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 4/6] staging: kpc2000: kpc_spi: remove unnecessary struct
 member chip_select
Date: Wed,  5 Jun 2019 01:09:11 +0000
Message-Id: <1980fe831f6444a6bf47928bdc9e09c8fe3b6da1.1559696611.git.gneukum1@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.1559696611.git.gneukum1@gmail.com>
References: <cover.1559696611.git.gneukum1@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Geordan Neukum <gneukum1@gmail.com>,
 Mao Wenan <maowenan@huawei.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The structure kp_spi_controller_state, defined in the kpc2000_spi
driver, contains a member named chip_select which is never used after
initialization. Therefore, it should be removed for simplicity's sake.

Signed-off-by: Geordan Neukum <gneukum1@gmail.com>
---
 drivers/staging/kpc2000/kpc2000_spi.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000_spi.c b/drivers/staging/kpc2000/kpc2000_spi.c
index 61296335313b..07b0327d8bef 100644
--- a/drivers/staging/kpc2000/kpc2000_spi.c
+++ b/drivers/staging/kpc2000/kpc2000_spi.c
@@ -109,7 +109,6 @@ struct kp_spi {
 
 struct kp_spi_controller_state {
 	void __iomem   *base;
-	unsigned char   chip_select;
 	s64             conf_cache;
 };
 
@@ -267,7 +266,6 @@ kp_spi_setup(struct spi_device *spidev)
 			return -ENOMEM;
 		}
 		cs->base = kpspi->base;
-		cs->chip_select = spidev->chip_select;
 		cs->conf_cache = -1;
 		spidev->controller_state = cs;
 	}
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 67A6F12647
	for <lists+driverdev-devel@lfdr.de>; Fri,  3 May 2019 04:06:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4AFBB868D1;
	Fri,  3 May 2019 02:06:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nD3SRYkYKiBv; Fri,  3 May 2019 02:06:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 02C15868A8;
	Fri,  3 May 2019 02:06:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 08F831C163A
 for <devel@linuxdriverproject.org>; Fri,  3 May 2019 02:06:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 03DFF8829A
 for <devel@linuxdriverproject.org>; Fri,  3 May 2019 02:06:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d5yWf5ZU53dJ for <devel@linuxdriverproject.org>;
 Fri,  3 May 2019 02:06:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f68.google.com (mail-ed1-f68.google.com
 [209.85.208.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1BC7F88296
 for <devel@driverdev.osuosl.org>; Fri,  3 May 2019 02:06:46 +0000 (UTC)
Received: by mail-ed1-f68.google.com with SMTP id a8so4195755edx.3
 for <devel@driverdev.osuosl.org>; Thu, 02 May 2019 19:06:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=a0/yRu5j7ZF+Lt95v7/Jvim+tVtOqpccPGnEgakBwiE=;
 b=W9pt7WysYY0LTFMVa1ci+xiQOenUtRkjaPN+HVX35M9KHtJk2vXpm34vOX0gPmT4Rn
 OQ6VUhZKylZmluqTqeg7qW/78VjsllbdWrBIT2Kr+G2q0eYYIcfMLYUY69ajn1j2QkHV
 wxBhfvo1/hjCiUuHTQDiJtx3WFLbK9PZb6SUUdQ4jwzm0f1OqSZKCymZFdz9Sje/hwGD
 9Zalij6DZdr2S3WUrhPTQ5c24JfhKOEkl6Aqwt2QHvSdqtT7K1xpWQplooxclWO5zDEY
 cEQx1dwfMO2mYaOq+gSzRN+Z9CTgEvcgodnzwa20HrOXsP3wRp/f767FHDc6aUYLGM5l
 9KBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=a0/yRu5j7ZF+Lt95v7/Jvim+tVtOqpccPGnEgakBwiE=;
 b=e2algcUlkq/p6dHJnC1NM0Te04mRBId/TA9apT9dsqWq1xq731Eqrk1a/NJ3Xrn8Te
 gOt9yIS0sMMb4wr/Z45pVVqmGeFiS3eH3ZZYkaetIiVF/0Fg+eLb7APvtxcp1Ro6hxuJ
 1rmYjo0IZv4dqUuct5nHl399S32oMRh3t4XZDDfv4c+/ECMsAsbRbWB8ZUKMmo8VoeTa
 aApMy3Y9S+wOkIO3uNgtVh1IJA8w0BiuK/MQTfqmEknaV3NokM+cef5B8a3NQ8xv4Kr4
 4cqsEPQyE6peIdCMOapPxmv/+Qwc3X0LurllgW4Y8o3jdIXX6LifpVtNIEeSM+6NedeB
 9QTg==
X-Gm-Message-State: APjAAAXlgVUyfZ9iEVjMUhGe/7GwSFgElB6CHmMeMi6EPEtlu/k6meoJ
 sqqc15uc6hk/pJFYxFHtra4=
X-Google-Smtp-Source: APXvYqyciZpEt8Qjy/TiE4NZyY4Tjnxc7zQviLNLZrWEDn623WwdLU+P7QldPPXuPhzGlsSsbz6x1w==
X-Received: by 2002:a17:906:4f18:: with SMTP id
 t24mr3816584eju.43.1556849204342; 
 Thu, 02 May 2019 19:06:44 -0700 (PDT)
Received: from localhost.localdomain ([2a01:4f9:2b:2b84::2])
 by smtp.gmail.com with ESMTPSA id j55sm226417ede.27.2019.05.02.19.06.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 May 2019 19:06:43 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: kpc2000: kpc_spi: Fix build error for {read,write}q
Date: Thu,  2 May 2019 19:06:30 -0700
Message-Id: <20190503020630.15778-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
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
Cc: devel@driverdev.osuosl.org, Nathan Chancellor <natechancellor@gmail.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

drivers/staging/kpc2000/kpc_spi/spi_driver.c:158:11: error: implicit
declaration of function 'readq' [-Werror,-Wimplicit-function-declaration]
drivers/staging/kpc2000/kpc_spi/spi_driver.c:167:5: error: implicit
declaration of function 'writeq' [-Werror,-Wimplicit-function-declaration]

Same as commit 91b6cb7216cd ("staging: kpc2000: fix up build problems
with readq()").

Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/staging/kpc2000/kpc_spi/spi_driver.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/kpc2000/kpc_spi/spi_driver.c b/drivers/staging/kpc2000/kpc_spi/spi_driver.c
index 074a578153d0..3ace4e5c1284 100644
--- a/drivers/staging/kpc2000/kpc_spi/spi_driver.c
+++ b/drivers/staging/kpc2000/kpc_spi/spi_driver.c
@@ -10,6 +10,7 @@
 #include <linux/kernel.h>
 #include <linux/init.h>
 #include <linux/interrupt.h>
+#include <linux/io-64-nonatomic-lo-hi.h>
 #include <linux/module.h>
 #include <linux/device.h>
 #include <linux/delay.h>
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

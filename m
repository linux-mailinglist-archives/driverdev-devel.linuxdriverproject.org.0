Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A8205279EE4
	for <lists+driverdev-devel@lfdr.de>; Sun, 27 Sep 2020 08:39:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 53098867D7;
	Sun, 27 Sep 2020 06:39:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZYjyBTTuUBlJ; Sun, 27 Sep 2020 06:39:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 704AF86092;
	Sun, 27 Sep 2020 06:39:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8BD7D1BF3EE
 for <devel@linuxdriverproject.org>; Sun, 27 Sep 2020 06:39:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 85FA086124
 for <devel@linuxdriverproject.org>; Sun, 27 Sep 2020 06:39:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XT6ShhF15fPK for <devel@linuxdriverproject.org>;
 Sun, 27 Sep 2020 06:39:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E895386092
 for <devel@driverdev.osuosl.org>; Sun, 27 Sep 2020 06:39:43 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id e18so1995847pgd.4
 for <devel@driverdev.osuosl.org>; Sat, 26 Sep 2020 23:39:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=MTiTHadi/nHgC5LvCcfwAGdh6E0z8YNmPT7uOrkAcuU=;
 b=RUKwgJ5VnPoNDRaHVCTwOKF38tRZ3EMMJ/0ikPifFbEVl1UPetFrqyr8rTy14hfjcS
 AU4j55odb5UgGctrVDVVqWxRwCvSln+a7wlPGOkDU7JTeDJon35x4J7Yb4Ao69zP5DGU
 1KpoUu9lwUeLtK10PS40VybPmto7vvHpN9IPsI4sJ2lS/8bfvQ60b/aVP8hy9ybL/x50
 BfIvKaUEJjwIIrUjnI9PCb7bvhLnosE+zaJZyRVqVJMny5K7qfq9lPH+csJnPEMWCHTq
 uYoDZs7gy04K4g56KPXuYDC/Hrp58elrdVA+TwnuQ7fl3s6v9/Q6NS5VtD9MCS9o3DwH
 RGCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=MTiTHadi/nHgC5LvCcfwAGdh6E0z8YNmPT7uOrkAcuU=;
 b=PJ2n+kaY/gYNkINb7aM5SZfnnN4L0HOVLI7VowvakbavJcBk4wI7IQa3DGYDyT1dSW
 MOYiT6lxhCvnYJKUKKBnOeATCwiqikkooC5QSjzJccOOgX4pK22s8pDQX1vXUOnasYPu
 OWQ13bzPI9ZJ5E9zSp4bPU8kYOxGXIqPyeq3bIH0+K/twsaHJD1figR9yiuA9FLFYOCF
 1EIHavk7xd90IRPP4POkhj8x8HVsqtKjxXBE/yVPhUJO+YcSB/iodrAKhhZTnw2UQjxi
 3iz6aLFwj3Hruvtqw6rlG/oQiHmGAmO5Q0FTCtYk4XttSEluyGXzJrZbJNZS91aXyM0w
 aQfg==
X-Gm-Message-State: AOAM53338ibDyMTH4PIlHDYGdBzsYlYDfM0o9GAhz0lxyQpbVPJII3jJ
 JHclogKkbsTas8+plO9+wGc=
X-Google-Smtp-Source: ABdhPJwE1IF/AzfvEKpfFlfzMsmPTo6wXC2N4AGL7zeIpPleIExsmgINrC/ivYJ+C01rr1JEPNP9MA==
X-Received: by 2002:a63:fc41:: with SMTP id r1mr4846352pgk.179.1601188783643; 
 Sat, 26 Sep 2020 23:39:43 -0700 (PDT)
Received: from localhost.localdomain (cpe-70-95-82-187.san.res.rr.com.
 [70.95.82.187])
 by smtp.gmail.com with ESMTPSA id b20sm7748072pfb.198.2020.09.26.23.39.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 26 Sep 2020 23:39:43 -0700 (PDT)
From: Ryan Kosta <ryanpkosta@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] fix double next comment in drivers/staging/nvec/nvec.c
Date: Sat, 26 Sep 2020 23:39:37 -0700
Message-Id: <20200927063937.14614-1-ryanpkosta@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Ryan Kosta <ryanpkosta@gmail.com>,
 linux-kernel@vger.kernel.org, marvin24@gmx.de, p.zabel@pengutronix.de,
 linux-tegra@vger.kernel.org, ac100@lists.launchpad.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Signed-off-by: Ryan Kosta <ryanpkosta@gmail.com>
---
 drivers/staging/nvec/nvec.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/nvec/nvec.c b/drivers/staging/nvec/nvec.c
index 360ec040774..a80996b2f5c 100644
--- a/drivers/staging/nvec/nvec.c
+++ b/drivers/staging/nvec/nvec.c
@@ -289,7 +289,7 @@ EXPORT_SYMBOL(nvec_write_async);
  * interrupt handlers.
  *
  * Returns: 0 on success, a negative error code on failure.
- * The response message is returned in @msg. Shall be freed with
+ * The response message is returned in @msg. Shall be freed
  * with nvec_msg_free() once no longer used.
  *
  */
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

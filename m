Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F0D04A9433
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Sep 2019 22:56:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8C49A87BFE;
	Wed,  4 Sep 2019 20:56:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x6hGZ2S2Q4e6; Wed,  4 Sep 2019 20:56:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 84DFF834E6;
	Wed,  4 Sep 2019 20:56:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 52F701BF3D1
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2019 20:56:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4CB53203F1
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2019 20:56:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JUnGIC+apGZe for <devel@linuxdriverproject.org>;
 Wed,  4 Sep 2019 20:56:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
 [209.85.160.195])
 by silver.osuosl.org (Postfix) with ESMTPS id A87F3203DC
 for <devel@driverdev.osuosl.org>; Wed,  4 Sep 2019 20:56:16 +0000 (UTC)
Received: by mail-qt1-f195.google.com with SMTP id r5so170965qtd.0
 for <devel@driverdev.osuosl.org>; Wed, 04 Sep 2019 13:56:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1QaddsCLQh46Q9EX1SzXxpSpkDTuxvATR1ZZECPWevo=;
 b=cpEY8onH+66PmROo6FfSYd2t9qhQqTUCfB8ecNbQ0QrLmY+XMYybIMnsSgqmWKi0t/
 I4tsokd+CnAbDflDCj8iS95whEKAEvs0qZ/ebVNJQEbJOceh+u9+jHi1XDEmuIoRpogR
 WF0teQBi924p/laP6m1LY0Rkb0YiFnU0Pdxheusy0X3QDdN78UMz07ZlzQM2YiJwM5LB
 QAAoCny2YbP8UtaB4PgHCOUAzGCO5EgKBttnUmc8LHcYoqog2y69Cwbsg1y6xrBG2HVA
 6Ggu3PiWUHJ9ElxI2RSgGmAyUkPj7oo1mz6KnYXDRtSxozmOhJAKLe/ppOa39YrDY21p
 eCtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1QaddsCLQh46Q9EX1SzXxpSpkDTuxvATR1ZZECPWevo=;
 b=rSjwXTvz1pSL/IP7S8yc+rBtr0pMic9AQEu8dtCt9LacIdi6cj55LZfE924c1KwtlH
 il9lQ3i3p6SHaEKl8MPn+5P/VelqGRQdFYHFEhZ8IBHlqNLfOXdv9reHujxV7UpdiSsd
 +FYlDDfsOJLdmGKY8lX1R1dEEMFmI6mvmJ9pf3ycdsCAyqsErEVgiX/FxxPHOCzhRDVk
 JQwseTFJHg1Zw43hIk+7ttGCrodKsRRNJY0KgHfQoS98p91jCfXLiiMkedXAu7ieKiFg
 GKgb5vFjI0xSw55XyxJM6iyQiZTzc9dGa3/ILAMgGay4MBTqR3ahG1yW3uhh67WoH8cf
 RXrg==
X-Gm-Message-State: APjAAAVw6UTdWmbY2Sj2ptgdZDWLKD4K0UWBNMAOg+nOOhbWlsGdM6Yq
 yBlYOiFOg5CQxM5/H+zQgYA=
X-Google-Smtp-Source: APXvYqzmSUjeBY0HCsAUxhBjx6Rf12lCd77aY1C0yZnkwSV/0fmWgXiCTIX6FfsZuohn9DAN1QFwww==
X-Received: by 2002:ad4:5048:: with SMTP id m8mr27389919qvq.134.1567630575468; 
 Wed, 04 Sep 2019 13:56:15 -0700 (PDT)
Received: from 389b3b377db9.ic.unicamp.br
 (wifi-177-220-85-178.wifi.ic.unicamp.br. [177.220.85.178])
 by smtp.gmail.com with ESMTPSA id g194sm95382qke.46.2019.09.04.13.56.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Sep 2019 13:56:14 -0700 (PDT)
From: joahannes <joahannes@gmail.com>
To: johan@kernel.org, elder@kernel.org, gregkh@linuxfoundation.org,
 greybus-dev@lists.linaro.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, lkcamp@lists.libreplanetbr.org,
 jevsilv@gmail.com, joahannes@gmail.com
Subject: [PATCH] staging: greybus: remove blank line after an open brace '{'.
Date: Wed,  4 Sep 2019 20:55:58 +0000
Message-Id: <20190904205558.27666-1-joahannes@gmail.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix checkpatch error
"CHECK: Blank lines aren't necessary after an open brace '{'"
in loopback_test.c:742.

Signed-off-by: joahannes <joahannes@gmail.com>
---
 drivers/staging/greybus/tools/loopback_test.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/greybus/tools/loopback_test.c b/drivers/staging/greybus/tools/loopback_test.c
index ba6f905f2..251b05710 100644
--- a/drivers/staging/greybus/tools/loopback_test.c
+++ b/drivers/staging/greybus/tools/loopback_test.c
@@ -739,7 +739,6 @@ static int wait_for_complete(struct loopback_test *t)
 		ts = &t->poll_timeout;
 
 	while (1) {
-
 		ret = ppoll(t->fds, t->poll_count, ts, &mask_old);
 		if (ret <= 0) {
 			stop_tests(t);
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6BB730C54D
	for <lists+driverdev-devel@lfdr.de>; Tue,  2 Feb 2021 17:21:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D26FF87074;
	Tue,  2 Feb 2021 16:21:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O1Dfu8fL0JSR; Tue,  2 Feb 2021 16:21:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 124ED8704B;
	Tue,  2 Feb 2021 16:21:23 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EA1061BF35F
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  2 Feb 2021 16:21:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E5101867B0
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  2 Feb 2021 16:21:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DtADuQAUVr1M
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  2 Feb 2021 16:21:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com
 [68.232.153.233])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1D2DF86224
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  2 Feb 2021 16:21:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1612282879; x=1643818879;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=VD0cYBw59/WzD287y5JsTB8DjUgBr2T8cxitHFf/7ec=;
 b=iH/8In9g+RnGpnr0f4Y9oqj7pq8VJM5bkRjWsQ619EhQXHO5/R7IXX4l
 lrjWS58rSwlqvAVadwbI3ppnYFSrU4GcokFA/c9X9yFO9kwBNFvR9R5bu
 0m8PmjiCacVh7qcPEzbss6TvbGt/xyBjbUQRJlGdqeTZ0ByHNLhRa6yOc
 2KTglaovzTlMafKPMwWjXRI0cX+FCdX/+/3bIbhkKAZJ49ZTT/G48M5b0
 LMrtGPvL2c9zqjDOallZ+CvGVfOC8z1p/jMNueXJpNrdaH0xRq/JaNo/d
 H1q/rywOTrvadM3xPMtQVTW9ptgDFSScsu34RzOal3Gf/0bZu4Ehk08pq Q==;
IronPort-SDR: CW8LBZDVrSIl63cW6nXn6q7/gctmZ7stTBy2Y+GpNYHpXVM45gt0A1L8NxXA2yb+hhECRrtQKa
 gfeMmy/lw6ZippbIWDMlUbEXax6yCJ3xVeXvj0sV5eSAmHJOvf/xTEHKmAxcqOmI6pB8MzX4Oq
 jd0yS9Mia852PT24XHgsKz2xzu1k309gK6U9XYdShM8Z0zUevNFGhMS/0yU2BRfr+QUGPEzD8l
 zFxCQoZt085sXFQHwLPJqqxGT7fi4s0k30ckuiMZKtJT8PaJGAVWdFE1ug5STAKcgB8EGqLiG0
 8eo=
X-IronPort-AV: E=Sophos;i="5.79,395,1602572400"; d="scan'208";a="113476495"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 02 Feb 2021 09:21:19 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Tue, 2 Feb 2021 09:21:19 -0700
Received: from kar-sv-agl01.mchp-main.com (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Tue, 2 Feb 2021 09:21:18 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH v2 1/2] staging: most: sound: add sanity check for function
 argument
Date: Tue, 2 Feb 2021 17:21:05 +0100
Message-ID: <1612282865-21846-1-git-send-email-christian.gromm@microchip.com>
X-Mailer: git-send-email 2.7.4
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
Cc: Christian Gromm <christian.gromm@microchip.com>,
 driverdev-devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch checks the function parameter 'bytes' before doing the
subtraction to prevent memory corruption.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
---
v2: change if condition to avoid difference of subtraction becomes negative.

 drivers/staging/most/sound/sound.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/staging/most/sound/sound.c b/drivers/staging/most/sound/sound.c
index 3a1a590..45befb8 100644
--- a/drivers/staging/most/sound/sound.c
+++ b/drivers/staging/most/sound/sound.c
@@ -86,6 +86,8 @@ static void swap_copy24(u8 *dest, const u8 *source, unsigned int bytes)
 {
 	unsigned int i = 0;
 
+	if (bytes < 2)
+		return;
 	while (i < bytes - 2) {
 		dest[i] = source[i + 2];
 		dest[i + 1] = source[i + 1];
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

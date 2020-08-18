Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 396442488CB
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 Aug 2020 17:11:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7211386416;
	Tue, 18 Aug 2020 15:11:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UWp40bBXarnP; Tue, 18 Aug 2020 15:11:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1E1B2863DE;
	Tue, 18 Aug 2020 15:11:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 44E861BF834
 for <devel@linuxdriverproject.org>; Tue, 18 Aug 2020 15:11:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1FE472001E
 for <devel@linuxdriverproject.org>; Tue, 18 Aug 2020 15:11:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JOnBfsaHgxk8 for <devel@linuxdriverproject.org>;
 Tue, 18 Aug 2020 15:11:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 1927720015
 for <devel@driverdev.osuosl.org>; Tue, 18 Aug 2020 15:11:39 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id f7so18633707wrw.1
 for <devel@driverdev.osuosl.org>; Tue, 18 Aug 2020 08:11:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/TUviTxTr5RENHKS204/Amvu2wl72islAoTAztRD38o=;
 b=kyXcab8PtKT5O5lVakr4loj+OMQcj8nCmqIZjBKRtV+t4CcXPuHW4hNfYc5nk6z6bo
 jirtPaLC5ptB1rQ/DpBkYGJxkb76UeHDHlJBTzYMek/sJoU88ecQi+PibR5IkbCncqHc
 a1vKyEy4lqWk2wPjbrlKzeVAKyZKsJOEcqyu0a9bi/JJHyCt5oY3wXhRP21/6owQi7al
 YB9NVxB7eXyr6CAcU8BMCYiCqADWpW0D5BSkCcv6qZBt9BU6qGJvqy6JiFoHEXEk34uY
 pVOHOtGaNE1OcPlMHgUKo9EQBv6FmzG+7ra/0YjZDVhsoAV+Bzda900niFw6lUowByu6
 cA2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/TUviTxTr5RENHKS204/Amvu2wl72islAoTAztRD38o=;
 b=dRCTfE8ED1briRdaUGRM1yuSLVL3UAB4fWTEjbDl7juRQSILvIdcDijMnyvJCvFFgn
 hAqR1Iq/76zGGox8SiftGPWl1tE1LZWaexATEalbgS8Oanwg/DS3i2DJez/U/9MwmQu9
 QkQMXEThWAPcldrdYSeAv3NYem9+b+uWPMmKXdv9aXo+z8bJJkUTsWju2F5e81CeO18Z
 w/Ofpfs+4DtkLGvSnQAEJvgyU6c9ogfNu1fD3QNIyuJWmNKpLXB+sZvXn9y26IOEnvvw
 UKsgjQ69XfubHrLsFw9kwUQsL4vTOcn3TlDcUSob3gsZ4lkFauVoa1TV8gqh1gH7lyXS
 fagg==
X-Gm-Message-State: AOAM533/V/u3S4jZ1q+J2shADzgW0E54oijc6fs+A/n/Xeg0bmXA1WcL
 d30COPFdN5DEUQucvbnPcH4=
X-Google-Smtp-Source: ABdhPJz8jQ2UIZ0e4glv5rwM4+hhWPDfagKdjFGyY2wc2UVtfUyBEuZJPiHY3sdThsZ2Fy6iJYrkRw==
X-Received: by 2002:a5d:5084:: with SMTP id a4mr21374691wrt.191.1597763497564; 
 Tue, 18 Aug 2020 08:11:37 -0700 (PDT)
Received: from localhost.localdomain
 (cpc83661-brig20-2-0-cust443.3-3.cable.virginm.net. [82.28.105.188])
 by smtp.gmail.com with ESMTPSA id x82sm299863wmb.30.2020.08.18.08.11.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Aug 2020 08:11:37 -0700 (PDT)
From: Alex Dewar <alex.dewar90@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alex Dewar <alex.dewar90@gmail.com>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: emxx_udc: Allow for building on !ARM
Date: Tue, 18 Aug 2020 16:11:29 +0100
Message-Id: <20200818151133.583382-1-alex.dewar90@gmail.com>
X-Mailer: git-send-email 2.28.0
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

Currently the module can only be test built on ARM, although it seems to
build fine on x86. Change this to allow for broader test coverage.

Signed-off-by: Alex Dewar <alex.dewar90@gmail.com>
---
 drivers/staging/emxx_udc/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/emxx_udc/Kconfig b/drivers/staging/emxx_udc/Kconfig
index ad1478c53e9e..e7a95b3b6a2f 100644
--- a/drivers/staging/emxx_udc/Kconfig
+++ b/drivers/staging/emxx_udc/Kconfig
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0
 config USB_EMXX
 	tristate "EMXX USB Function Device Controller"
-	depends on USB_GADGET && (ARCH_RENESAS || (ARM && COMPILE_TEST))
+	depends on USB_GADGET && (ARCH_RENESAS || COMPILE_TEST)
 	help
 	   The Emma Mobile series of SoCs from Renesas Electronics and
 	   former NEC Electronics include USB Function hardware.
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

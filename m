Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E7E313454A4
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Mar 2021 02:06:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CE36683DA3;
	Tue, 23 Mar 2021 01:06:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SFsd1F0u8Wup; Tue, 23 Mar 2021 01:06:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9810383D9E;
	Tue, 23 Mar 2021 01:06:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BB69E1BF9C6
 for <devel@linuxdriverproject.org>; Tue, 23 Mar 2021 01:06:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A88B6403D0
 for <devel@linuxdriverproject.org>; Tue, 23 Mar 2021 01:06:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Xrrp0z7GjMmI for <devel@linuxdriverproject.org>;
 Tue, 23 Mar 2021 01:06:22 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qt1-x830.google.com (mail-qt1-x830.google.com
 [IPv6:2607:f8b0:4864:20::830])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C3EAF40272
 for <devel@driverdev.osuosl.org>; Tue, 23 Mar 2021 01:06:22 +0000 (UTC)
Received: by mail-qt1-x830.google.com with SMTP id u7so13824239qtq.12
 for <devel@driverdev.osuosl.org>; Mon, 22 Mar 2021 18:06:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5t/jCtSLeHZoOOMhMV4BFYY7qCyPGvwggJUnBiFthlE=;
 b=BpEY9QZrUQZpHCC98cVeTwkh80XOSYKbXQDE+cSgBkc9LiOWKm69pmnOeuZdqqHSG0
 KJNqKkR80p2F9dNrQ15Afq2gA6oSHYF+gnLJK3tQlbScKYq7cuucmkB/sTxrg22vu9Mx
 wn5rU+kEC1EHLIcPE1VAIQAwYX0rCd/r9uDPZ0ZJG4+ihfls3jEFXRRsCsl48guIjGh5
 OZBNM2Lqf6U+CYcs6rfi5h0leG8AWIZGLQjei4iAtezfZRYb6uwwffJI3gDiJbbH7+hz
 /jUEWeTtZ00i4fgCwNw9HYDv359kQYXs60xb0su+O6QRbvzKYi1/5bdIS5XrIWZtj5oT
 Dj6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5t/jCtSLeHZoOOMhMV4BFYY7qCyPGvwggJUnBiFthlE=;
 b=oyl73tvtrZpMH0uI7ESc6a0nL8fzpBi3IzGGCfJzacU7Y8iWgxZr/PatzZxwGKtjjw
 My6xENr4YhIN/SB9TRMXPq7XqEpPTIghL3eBXnuYOCOCH2oMxg0Psfh7ML+HHVeTKkiR
 6YQboU1IgX/lMSulHUgqytsyNjM/knF2LDWTlbhhdJ3gUDxBWlMFApqI7E1qDdwgcBom
 mbw64evezQj+oop5euXq/HyGxGOI4O/QwCOXxpvRII8gXmqgS/oaqSs/snrDNoiHYnLl
 2gYuSmSyXhGar9HgOaGYk3qvnJx7ebpnh/XqF1yy/C8tgT1PSWieESik6JBix+fCwDH7
 AtEQ==
X-Gm-Message-State: AOAM531tnVasgJDLQiRgVHmkAEIgWIkZH+tfi9fTIKCvHsX281lY6NW2
 a2lAgdcwlpAd2YEjMadSSw0=
X-Google-Smtp-Source: ABdhPJwkQDN/Fo6TpY8sEm0rxqv+f/tjLOnca8zDgVzCCdSzmQGs4kXJRSBCxwKHEV15eB3xHCf0mw==
X-Received: by 2002:ac8:5bcd:: with SMTP id b13mr2411847qtb.122.1616461581620; 
 Mon, 22 Mar 2021 18:06:21 -0700 (PDT)
Received: from localhost.localdomain ([37.19.198.117])
 by smtp.gmail.com with ESMTPSA id v66sm11523338qkd.113.2021.03.22.18.06.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Mar 2021 18:06:21 -0700 (PDT)
From: Bhaskar Chowdhury <unixbhaskar@gmail.com>
To: gregkh@linuxfoundation.org, colin.king@canonical.com,
 unixbhaskar@gmail.com, davem@davemloft.net, lee.jones@linaro.org,
 arnd@arndb.de, devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: wimax: Mundane typo fixes
Date: Tue, 23 Mar 2021 06:36:07 +0530
Message-Id: <20210323010607.3918516-1-unixbhaskar@gmail.com>
X-Mailer: git-send-email 2.31.0
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


s/procesing/processing/
s/comunication/communication/

Signed-off-by: Bhaskar Chowdhury <unixbhaskar@gmail.com>
---
 drivers/staging/wimax/i2400m/driver.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/wimax/i2400m/driver.c b/drivers/staging/wimax/i2400m/driver.c
index f5186458bb3d..162a92682977 100644
--- a/drivers/staging/wimax/i2400m/driver.c
+++ b/drivers/staging/wimax/i2400m/driver.c
@@ -96,7 +96,7 @@ MODULE_PARM_DESC(barkers,
  *
  * This function just verifies that the header declaration and the
  * payload are consistent and then deals with it, either forwarding it
- * to the device or procesing it locally.
+ * to the device or processing it locally.
  *
  * In the i2400m, messages are basically commands that will carry an
  * ack, so we use i2400m_msg_to_dev() and then deliver the ack back to
@@ -835,7 +835,7 @@ EXPORT_SYMBOL_GPL(i2400m_reset);
  *
  * Returns: 0 if ok, < 0 errno code on error.
  *
- * Sets up basic device comunication infrastructure, boots the ROM to
+ * Sets up basic device communication infrastructure, boots the ROM to
  * read the MAC address, registers with the WiMAX and network stacks
  * and then brings up the device.
  */
--
2.31.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

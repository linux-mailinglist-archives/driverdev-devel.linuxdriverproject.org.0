Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A704110936A
	for <lists+driverdev-devel@lfdr.de>; Mon, 25 Nov 2019 19:21:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 66FFF87A5E;
	Mon, 25 Nov 2019 18:21:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gLljUt0PVZHB; Mon, 25 Nov 2019 18:21:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3977E87A52;
	Mon, 25 Nov 2019 18:21:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6FC781BF23F
 for <devel@linuxdriverproject.org>; Mon, 25 Nov 2019 18:21:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6CD8487670
 for <devel@linuxdriverproject.org>; Mon, 25 Nov 2019 18:21:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bJCDDsbulAov for <devel@linuxdriverproject.org>;
 Mon, 25 Nov 2019 18:21:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id EAB5D87629
 for <devel@driverdev.osuosl.org>; Mon, 25 Nov 2019 18:21:46 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id t1so19337857wrv.4
 for <devel@driverdev.osuosl.org>; Mon, 25 Nov 2019 10:21:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Vb72jc4spAcABwLaDNL79fswtIsTkbWjFqxfZ/KoMkQ=;
 b=jTbZqiu4pU5t9GAi8Ew/rS5jX46DbqBzjHRiabZ3RX6fpWN7MkfBhZARlKYohl81N3
 w7lGxUzXCP7hOom9OqIFyluDH4P/t4qdshPMJR4leAIVBzM9ObZPjo1NJQZ2mG56PWYc
 0nMyX7+fYZtre7TM6jaIhfMxEFvRiPPb5R5+47bqjeOx3CC3eEXj2I2NlWZyaWGwx4MU
 IGpD/yEQoSNT5FM3dMqLEMK7+gox/omJkkOB348XLeZ0aIls3831Lc6KOgIzphKMvuuv
 VtPjyeKGqsJ+zVQJfO5/MONQSovoGnXHpnG0gB+/2uIv851mi4epMdOaJ7jMMrvaCcYr
 uIWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Vb72jc4spAcABwLaDNL79fswtIsTkbWjFqxfZ/KoMkQ=;
 b=KQW5zPSOmJb6yK7/okwyAeMeqUQ0zjZohapo2TICgm4qK7/J2hVZe7+L3UrKiT/Ny9
 QhwQEmsXI7D+BLaWRUsq1+ncBoq3v+taliQQUwYE9KVYzgaIEzLWc5eGtDLpVLDgpmGP
 ln1rMZrcmH7Rsyjdua8jnIF5bvSPD84PeyyJsOkWuDnni+Tf0Ui+EKD/jZMws6LxUkjb
 C0VgTGiNctVDt/LsgA02P3ecaRXfa7pmyOa2nGkj6oFnWCzBJ/45Y6tSNVDtOGcG709g
 j+xUbWvEex33wYBkWH5oH+ceyhJVGmVYSCLMTIZnZJhGLsZ7oO4Gv6sxUrjLv9YogSou
 CRBQ==
X-Gm-Message-State: APjAAAXph6SOmxrz9UqJ7Tn10n5s2Ka6Ksw8mPxD7B45zF1qEj7IcTGQ
 LCbnJUnz3mGqD21LKd34BLA=
X-Google-Smtp-Source: APXvYqzFCMPW3yedym/OwFKYzbEU6lEjZLmdWeKNuMK3SyTNIMk/VE9izvqB4jw39WFQtaVgVV3V+A==
X-Received: by 2002:a5d:4983:: with SMTP id r3mr16384651wrq.134.1574706105297; 
 Mon, 25 Nov 2019 10:21:45 -0800 (PST)
Received: from localhost.localdomain
 (dslb-002-204-142-242.002.204.pools.vodafone-ip.de. [2.204.142.242])
 by smtp.gmail.com with ESMTPSA id e16sm111294wme.35.2019.11.25.10.21.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Nov 2019 10:21:44 -0800 (PST)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8188eu: use break to exit while loop
Date: Mon, 25 Nov 2019 19:21:30 +0100
Message-Id: <20191125182130.172602-1-straube.linux@gmail.com>
X-Mailer: git-send-email 2.24.0
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The variable bContinual in Efuse_PgPacketRead() is only used to break
out of a while loop. Remove the variable and use break instead.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_efuse.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_efuse.c b/drivers/staging/rtl8188eu/core/rtw_efuse.c
index d9b0f9e6235c..0b86ae8338d9 100644
--- a/drivers/staging/rtl8188eu/core/rtw_efuse.c
+++ b/drivers/staging/rtl8188eu/core/rtw_efuse.c
@@ -402,7 +402,6 @@ static u16 Efuse_GetCurrentSize(struct adapter *pAdapter)
 int Efuse_PgPacketRead(struct adapter *pAdapter, u8 offset, u8 *data)
 {
 	u8 ReadState = PG_STATE_HEADER;
-	int	bContinual = true;
 	int	bDataEmpty = true;
 	u8 efuse_data, word_cnts = 0;
 	u16	efuse_addr = 0;
@@ -422,7 +421,7 @@ int Efuse_PgPacketRead(struct adapter *pAdapter, u8 offset, u8 *data)
 	/*  <Roger_TODO> Efuse has been pre-programmed dummy 5Bytes at the end of Efuse by CP. */
 	/*  Skip dummy parts to prevent unexpected data read from Efuse. */
 	/*  By pass right now. 2009.02.19. */
-	while (bContinual && AVAILABLE_EFUSE_ADDR(efuse_addr)) {
+	while (AVAILABLE_EFUSE_ADDR(efuse_addr)) {
 		/*   Header Read ------------- */
 		if (ReadState & PG_STATE_HEADER) {
 			if (efuse_OneByteRead(pAdapter, efuse_addr, &efuse_data) && (efuse_data != 0xFF)) {
@@ -464,7 +463,7 @@ int Efuse_PgPacketRead(struct adapter *pAdapter, u8 offset, u8 *data)
 					ReadState = PG_STATE_HEADER;
 				}
 			} else {
-				bContinual = false;
+				break;
 			}
 		} else if (ReadState & PG_STATE_DATA) {
 			/*   Data section Read ------------- */
-- 
2.24.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

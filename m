Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 73E60A31E9
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Aug 2019 10:10:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 82ACA20373;
	Fri, 30 Aug 2019 08:10:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x-NpiomQQAUl; Fri, 30 Aug 2019 08:10:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CBCEA2034D;
	Fri, 30 Aug 2019 08:10:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 174471BF847
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 08:10:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1444788295
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 08:10:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id viUJy5T05jaf for <devel@linuxdriverproject.org>;
 Fri, 30 Aug 2019 08:10:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4FB6D882B1
 for <devel@driverdev.osuosl.org>; Fri, 30 Aug 2019 08:10:49 +0000 (UTC)
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
 by youngberry.canonical.com with esmtpsa (TLS1.0:RSA_AES_256_CBC_SHA1:32)
 (Exim 4.76) (envelope-from <colin.king@canonical.com>)
 id 1i3bzb-0004jm-CD; Fri, 30 Aug 2019 08:10:47 +0000
From: Colin King <colin.king@canonical.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org
Subject: [PATCH] staging: rts5208: remove redundant sd30_mode checks
Date: Fri, 30 Aug 2019 09:10:47 +0100
Message-Id: <20190830081047.13630-1-colin.king@canonical.com>
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Colin Ian King <colin.king@canonical.com>

There are two hunks of code that check if sd30_mode is true however
an earlier check in an outer code block on sd30_mode being false means
that sd30_mode can never be true at these points so these checks are
redundant.  Remove the dead code.

Addresses-Coverity: ("Logically dead code")
Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/staging/rts5208/sd.c | 28 ++++++++++------------------
 1 file changed, 10 insertions(+), 18 deletions(-)

diff --git a/drivers/staging/rts5208/sd.c b/drivers/staging/rts5208/sd.c
index a06045344301..25c31496757e 100644
--- a/drivers/staging/rts5208/sd.c
+++ b/drivers/staging/rts5208/sd.c
@@ -2573,17 +2573,13 @@ static int reset_sd(struct rtsx_chip *chip)
 			retval = sd_sdr_tuning(chip);
 
 		if (retval != STATUS_SUCCESS) {
-			if (sd20_mode) {
+			retval = sd_init_power(chip);
+			if (retval != STATUS_SUCCESS)
 				goto status_fail;
-			} else {
-				retval = sd_init_power(chip);
-				if (retval != STATUS_SUCCESS)
-					goto status_fail;
 
-				try_sdio = false;
-				sd20_mode = true;
-				goto switch_fail;
-			}
+			try_sdio = false;
+			sd20_mode = true;
+			goto switch_fail;
 		}
 
 		sd_send_cmd_get_rsp(chip, SEND_STATUS, sd_card->sd_addr,
@@ -2598,17 +2594,13 @@ static int reset_sd(struct rtsx_chip *chip)
 		if (read_lba0) {
 			retval = sd_read_lba0(chip);
 			if (retval != STATUS_SUCCESS) {
-				if (sd20_mode) {
+				retval = sd_init_power(chip);
+				if (retval != STATUS_SUCCESS)
 					goto status_fail;
-				} else {
-					retval = sd_init_power(chip);
-					if (retval != STATUS_SUCCESS)
-						goto status_fail;
 
-					try_sdio = false;
-					sd20_mode = true;
-					goto switch_fail;
-				}
+				try_sdio = false;
+				sd20_mode = true;
+				goto switch_fail;
 			}
 		}
 	}
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

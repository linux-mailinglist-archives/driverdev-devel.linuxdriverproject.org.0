Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BD85F13B0D5
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 Jan 2020 18:27:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5F23120554;
	Tue, 14 Jan 2020 17:27:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zeMLIYq8zaCW; Tue, 14 Jan 2020 17:27:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id F1C862052A;
	Tue, 14 Jan 2020 17:27:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7D3571BF37B
 for <devel@linuxdriverproject.org>; Tue, 14 Jan 2020 17:27:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7A81B862A0
 for <devel@linuxdriverproject.org>; Tue, 14 Jan 2020 17:27:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FueioAJ52Z9S for <devel@linuxdriverproject.org>;
 Tue, 14 Jan 2020 17:27:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DA5F086092
 for <devel@driverdev.osuosl.org>; Tue, 14 Jan 2020 17:27:24 +0000 (UTC)
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <colin.king@canonical.com>)
 id 1irPyK-0007BN-CO; Tue, 14 Jan 2020 17:27:20 +0000
From: Colin King <colin.king@canonical.com>
To: Adham Abozaeid <adham.abozaeid@microchip.com>,
 Ajay Singh <ajay.kathat@microchip.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-wireless@vger.kernel.org, devel@driverdev.osuosl.org
Subject: [PATCH][next] staging: wilc1000: remove redundant assignment to
 variable result
Date: Tue, 14 Jan 2020 17:27:20 +0000
Message-Id: <20200114172720.376286-1-colin.king@canonical.com>
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Colin Ian King <colin.king@canonical.com>

The variable result is being initialized with a value that
is never read and is being re-assigned later on. The assignment
is redundant and hence can be removed.

Addresses-Coverity: ("Unused value")
Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/staging/wilc1000/spi.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/wilc1000/spi.c b/drivers/staging/wilc1000/spi.c
index 55f8757325f0..8694ab5fcb22 100644
--- a/drivers/staging/wilc1000/spi.c
+++ b/drivers/staging/wilc1000/spi.c
@@ -733,7 +733,7 @@ static int spi_internal_read(struct wilc *wilc, u32 adr, u32 *data)
 static int wilc_spi_write_reg(struct wilc *wilc, u32 addr, u32 data)
 {
 	struct spi_device *spi = to_spi_device(wilc->dev);
-	int result = N_OK;
+	int result;
 	u8 cmd = CMD_SINGLE_WRITE;
 	u8 clockless = 0;
 
@@ -782,7 +782,7 @@ static int wilc_spi_write(struct wilc *wilc, u32 addr, u8 *buf, u32 size)
 static int wilc_spi_read_reg(struct wilc *wilc, u32 addr, u32 *data)
 {
 	struct spi_device *spi = to_spi_device(wilc->dev);
-	int result = N_OK;
+	int result;
 	u8 cmd = CMD_SINGLE_READ;
 	u8 clockless = 0;
 
-- 
2.24.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

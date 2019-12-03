Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A03991103E7
	for <lists+driverdev-devel@lfdr.de>; Tue,  3 Dec 2019 18:57:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 797E0862ED;
	Tue,  3 Dec 2019 17:57:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WSnKyTX4K1cd; Tue,  3 Dec 2019 17:57:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0433D861D4;
	Tue,  3 Dec 2019 17:57:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BA68C1BF3A1
 for <devel@linuxdriverproject.org>; Tue,  3 Dec 2019 17:57:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B66F82045D
 for <devel@linuxdriverproject.org>; Tue,  3 Dec 2019 17:57:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uC9xnG2hIhat for <devel@linuxdriverproject.org>;
 Tue,  3 Dec 2019 17:57:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from faui03.informatik.uni-erlangen.de
 (faui03.informatik.uni-erlangen.de [131.188.30.103])
 by silver.osuosl.org (Postfix) with ESMTPS id 1ADE01FD43
 for <devel@driverdev.osuosl.org>; Tue,  3 Dec 2019 17:57:50 +0000 (UTC)
Received: from faui04e.informatik.uni-erlangen.de
 (faui04e.informatik.uni-erlangen.de [131.188.30.135])
 by faui03.informatik.uni-erlangen.de (Postfix) with ESMTP id 19CEC24155F;
 Tue,  3 Dec 2019 18:57:48 +0100 (CET)
Received: by faui04e.informatik.uni-erlangen.de (Postfix, from userid 28475)
 id E01EA3C1272; Tue,  3 Dec 2019 18:57:47 +0100 (CET)
From: Sven Leykauf <sven_leykauf1@web.de>
To: devel@driverdev.osuosl.org
Subject: [PATCH 1/2] pi433: Fix indentation according to coding style
Date: Tue,  3 Dec 2019 18:54:47 +0100
Message-Id: <20191203175447.28765-1-sven_leykauf1@web.de>
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
Cc: Daniel Bauer <daniel.j.bauer@fau.de>, Sven Leykauf <sven_leykauf1@web.de>,
 linux-kernel@i4.cs.fau.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix indentation so that no line exceeds the 80 character border.

Co-developed-by: Daniel Bauer <daniel.j.bauer@fau.de>
Signed-off-by: Daniel Bauer <daniel.j.bauer@fau.de>
Signed-off-by: Sven Leykauf <sven_leykauf1@web.de>
---
 drivers/staging/pi433/rf69.c | 28 ++++++++++++++--------------
 1 file changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/pi433/rf69.c b/drivers/staging/pi433/rf69.c
index 7d86bb8be245..6b13f92028c7 100644
--- a/drivers/staging/pi433/rf69.c
+++ b/drivers/staging/pi433/rf69.c
@@ -176,20 +176,20 @@ int rf69_set_modulation_shaping(struct spi_device *spi,
 		switch (mod_shaping) {
 		case SHAPING_OFF:
 			return rf69_read_mod_write(spi, REG_DATAMODUL,
-						   MASK_DATAMODUL_MODULATION_SHAPE,
-						   DATAMODUL_MODULATION_SHAPE_NONE);
+					MASK_DATAMODUL_MODULATION_SHAPE,
+					DATAMODUL_MODULATION_SHAPE_NONE);
 		case SHAPING_1_0:
 			return rf69_read_mod_write(spi, REG_DATAMODUL,
-						   MASK_DATAMODUL_MODULATION_SHAPE,
-						   DATAMODUL_MODULATION_SHAPE_1_0);
+					MASK_DATAMODUL_MODULATION_SHAPE,
+					DATAMODUL_MODULATION_SHAPE_1_0);
 		case SHAPING_0_5:
 			return rf69_read_mod_write(spi, REG_DATAMODUL,
-						   MASK_DATAMODUL_MODULATION_SHAPE,
-						   DATAMODUL_MODULATION_SHAPE_0_5);
+					MASK_DATAMODUL_MODULATION_SHAPE,
+					DATAMODUL_MODULATION_SHAPE_0_5);
 		case SHAPING_0_3:
 			return rf69_read_mod_write(spi, REG_DATAMODUL,
-						   MASK_DATAMODUL_MODULATION_SHAPE,
-						   DATAMODUL_MODULATION_SHAPE_0_3);
+					MASK_DATAMODUL_MODULATION_SHAPE,
+					DATAMODUL_MODULATION_SHAPE_0_3);
 		default:
 			dev_dbg(&spi->dev, "set: illegal input param");
 			return -EINVAL;
@@ -198,16 +198,16 @@ int rf69_set_modulation_shaping(struct spi_device *spi,
 		switch (mod_shaping) {
 		case SHAPING_OFF:
 			return rf69_read_mod_write(spi, REG_DATAMODUL,
-						   MASK_DATAMODUL_MODULATION_SHAPE,
-						   DATAMODUL_MODULATION_SHAPE_NONE);
+					MASK_DATAMODUL_MODULATION_SHAPE,
+					DATAMODUL_MODULATION_SHAPE_NONE);
 		case SHAPING_BR:
 			return rf69_read_mod_write(spi, REG_DATAMODUL,
-						   MASK_DATAMODUL_MODULATION_SHAPE,
-						   DATAMODUL_MODULATION_SHAPE_BR);
+					MASK_DATAMODUL_MODULATION_SHAPE,
+					DATAMODUL_MODULATION_SHAPE_BR);
 		case SHAPING_2BR:
 			return rf69_read_mod_write(spi, REG_DATAMODUL,
-						   MASK_DATAMODUL_MODULATION_SHAPE,
-						   DATAMODUL_MODULATION_SHAPE_2BR);
+					MASK_DATAMODUL_MODULATION_SHAPE,
+					DATAMODUL_MODULATION_SHAPE_2BR);
 		default:
 			dev_dbg(&spi->dev, "set: illegal input param");
 			return -EINVAL;
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 582EB31A1D0
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Feb 2021 16:39:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 705C086EDB;
	Fri, 12 Feb 2021 15:39:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zZ-No5ENszeu; Fri, 12 Feb 2021 15:39:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 98C6D86B6C;
	Fri, 12 Feb 2021 15:39:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 644881BF2B3
 for <devel@linuxdriverproject.org>; Fri, 12 Feb 2021 15:39:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5F5FA873F1
 for <devel@linuxdriverproject.org>; Fri, 12 Feb 2021 15:39:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B8g3pIphN0lz for <devel@linuxdriverproject.org>;
 Fri, 12 Feb 2021 15:39:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sender4-of-o53.zoho.com (sender4-of-o53.zoho.com
 [136.143.188.53])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BF2CC873D9
 for <devel@driverdev.osuosl.org>; Fri, 12 Feb 2021 15:39:06 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1613144343; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=UYtQ38llVNSYOW1HYnCHSjmIVqlSd+YbAXCUgIPzF7BnwKMv3H3JVOb8W9T1TB30koMNlGky1l4z2qG00GewWSLs1ltbgHx2HKCk9Z+5d1ymPm8T4evKK6llv5wsPv1eyZ7+F2RsTiEOkA3PTfqnLD+ri1I2N98zAhOV1m7wPfs=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1613144343;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:MIME-Version:Message-ID:Subject:To;
 bh=z0kfGYOxxoK+U2IPEdWl2M3pzO6VU6Sp2m3F7jsKCns=; 
 b=hnOzTK10xfKETwntpkvhGR1nKm49ojdA2qCzjwDdb91YQAFoWWOeW4ZDLKLiOMzgvRReiWkz1YGGL5Ib2T/AlV9c7z6cVZH3NdTQEXm7d5B4HiquHE2yw1vxZ0BTh+4ZECfJM0IF0Imc2FI+YmV9MPaVG9W/6MB/HijvdeBD/YI=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=anirudhrb.com;
 spf=pass  smtp.mailfrom=mail@anirudhrb.com;
 dmarc=pass header.from=<mail@anirudhrb.com> header.from=<mail@anirudhrb.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1613144343; 
 s=zoho; d=anirudhrb.com; i=mail@anirudhrb.com;
 h=From:To:Cc:Message-ID:Subject:Date:MIME-Version:Content-Transfer-Encoding:Content-Type;
 bh=z0kfGYOxxoK+U2IPEdWl2M3pzO6VU6Sp2m3F7jsKCns=;
 b=MWAyjzcUe5jD64nKpKGntkQj2JWi8tl2lz01Y9wxoGRPEO1VQIAATKEn8w0sUsFN
 m571LVxGuJXuVH8CXPwFPnGcufuRzxbyVGtC4TYsJcGpyxP1GtxcN7PhuSLT1FTDOVY
 j1Ay5o2XVO9zcXz+gOAr45x053fVXjWsmy+7ROkk=
Received: from localhost.localdomain (106.51.104.65 [106.51.104.65]) by
 mx.zohomail.com with SMTPS id 1613144339759754.5354612594876;
 Fri, 12 Feb 2021 07:38:59 -0800 (PST)
From: Anirudh Rayabharam <mail@anirudhrb.com>
To: gregkh@linuxfoundation.org, lee.jones@linaro.org, arnd@arndb.de,
 colin.king@canonical.com
Message-ID: <20210212153843.8554-1-mail@anirudhrb.com>
Subject: [PATCH v2] staging: wimax/i2400m: fix some byte order issues found by
 sparse
Date: Fri, 12 Feb 2021 21:08:43 +0530
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-ZohoMailClient: External
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
Cc: devel@driverdev.osuosl.org, Anirudh Rayabharam <mail@anirudhrb.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix sparse byte-order warnings in the i2400m_bm_cmd_prepare()
function:

wimax/i2400m/fw.c:194:36: warning: restricted __le32 degrades to integer
wimax/i2400m/fw.c:195:34: warning: invalid assignment: +=
wimax/i2400m/fw.c:195:34:    left side has type unsigned int
wimax/i2400m/fw.c:195:34:    right side has type restricted __le32
wimax/i2400m/fw.c:196:32: warning: restricted __le32 degrades to integer
wimax/i2400m/fw.c:196:47: warning: restricted __le32 degrades to integer
wimax/i2400m/fw.c:196:66: warning: restricted __le32 degrades to integer

Signed-off-by: Anirudh Rayabharam <mail@anirudhrb.com>
---
 drivers/staging/wimax/i2400m/fw.c | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/wimax/i2400m/fw.c b/drivers/staging/wimax/i2400m/fw.c
index b2fd4bd2c5f9..92ea5c101e76 100644
--- a/drivers/staging/wimax/i2400m/fw.c
+++ b/drivers/staging/wimax/i2400m/fw.c
@@ -189,12 +189,17 @@ void i2400m_bm_cmd_prepare(struct i2400m_bootrom_header *cmd)
 {
 	if (i2400m_brh_get_use_checksum(cmd)) {
 		int i;
-		u32 checksum = 0;
+		__le32 checksum = 0;
 		const u32 *checksum_ptr = (void *) cmd->payload;
-		for (i = 0; i < cmd->data_size / 4; i++)
-			checksum += cpu_to_le32(*checksum_ptr++);
-		checksum += cmd->command + cmd->target_addr + cmd->data_size;
-		cmd->block_checksum = cpu_to_le32(checksum);
+
+		for (i = 0; i < le32_to_cpu(cmd->data_size) / 4; i++)
+			le32_add_cpu(&checksum, *checksum_ptr++);
+
+		le32_add_cpu(&checksum, le32_to_cpu(cmd->command));
+		le32_add_cpu(&checksum, le32_to_cpu(cmd->target_addr));
+		le32_add_cpu(&checksum, le32_to_cpu(cmd->data_size));
+
+		cmd->block_checksum = checksum;
 	}
 }
 EXPORT_SYMBOL_GPL(i2400m_bm_cmd_prepare);
-- 
2.26.2


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

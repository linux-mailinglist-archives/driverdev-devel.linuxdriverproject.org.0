Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F0D430BD41
	for <lists+driverdev-devel@lfdr.de>; Tue,  2 Feb 2021 12:38:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 573C422708;
	Tue,  2 Feb 2021 11:38:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yXVdgx-d+uqW; Tue,  2 Feb 2021 11:38:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0C48A2046B;
	Tue,  2 Feb 2021 11:38:22 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CD6A71BF865
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  2 Feb 2021 11:38:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 269FD221DC
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  2 Feb 2021 11:38:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1ui2bFxq0DPf
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  2 Feb 2021 11:38:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com
 [68.232.154.123])
 by silver.osuosl.org (Postfix) with ESMTPS id 3C5FA20510
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  2 Feb 2021 11:38:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1612265897; x=1643801897;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=Jzu8ew+tJ7XjQ0/QPEEHBA4QDypasGGIc5HXzOaJ09A=;
 b=b5ky9hSraeaSw00QkNtZUeTtZyjK8cqTNuQd62/mbnmm7TOxw0YAxL4D
 DsjjjQnHU5YPs4EHF5v5xxONsj1X+/cL3X0XZdHSLuIhq0YnTvKUuxRwp
 WOyXROUzqWBdf+MtbIXcMWQ09+GfmNINHuRumzEygaTHfzde8MOkqj2EO
 sgHFJFv3/LRZGBoepazswstzvbW4BnTlKnID8ulyV07Gp72CzbpUX5aZM
 WSDinnTPGpZ/t92io8Sy3kiae6vZtmeFVwtOE8LdaTNSecsD87q04P5AP
 xxr9RZtJ9fY23MaZifFNVMdaPsNNfUWlcIfc4udc3MWwjGqeQIybdZXSk g==;
IronPort-SDR: egXNsETcaS4OE+xF5oAoIzYzMZCB7VfXMOeQ/3dTUxD7ErV22eNtxgjA0bDRq63dnqNBtOsOir
 dSkuXJ2JPeAzsANHqxHA+mlotO9e1nDoJHEx7O7rJh6Gp0TBSL7YcFSHjbzu7XHQGWCbtFciPh
 cDpjCERoGjXj9NkHTYn+OE1IwunjOLDAprTkQtNB8DDRGk/virNcoAbVKW+69HwX/DR76uzIRk
 linxKMGa83WL99AZvtmsent2YUYJbTUQ7yzuQW71uuKkwsWnoQvMVODB1Uy2BlbbJCf93wwnhu
 Znw=
X-IronPort-AV: E=Sophos;i="5.79,394,1602572400"; d="scan'208";a="105091237"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 02 Feb 2021 04:38:16 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Tue, 2 Feb 2021 04:38:16 -0700
Received: from kar-sv-agl01.mchp-main.com (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Tue, 2 Feb 2021 04:38:15 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH 1/2] staging: most: sound: add sanity check for function
 argument
Date: Tue, 2 Feb 2021 12:38:09 +0100
Message-ID: <1612265890-18246-2-git-send-email-christian.gromm@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1612265890-18246-1-git-send-email-christian.gromm@microchip.com>
References: <1612265890-18246-1-git-send-email-christian.gromm@microchip.com>
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

This patch zero checks the function parameter 'bytes' before doing the
subtraction to prevent memory corruption.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
---
 drivers/staging/most/sound/sound.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/staging/most/sound/sound.c b/drivers/staging/most/sound/sound.c
index 3a1a590..953a4fe 100644
--- a/drivers/staging/most/sound/sound.c
+++ b/drivers/staging/most/sound/sound.c
@@ -86,6 +86,8 @@ static void swap_copy24(u8 *dest, const u8 *source, unsigned int bytes)
 {
 	unsigned int i = 0;
 
+	if (!bytes)
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

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B7E1531FE0F
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 18:42:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 740048717A;
	Fri, 19 Feb 2021 17:42:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pqlLoKSD4fDO; Fri, 19 Feb 2021 17:42:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C26A38714B;
	Fri, 19 Feb 2021 17:42:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 880151BF577
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 17:42:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 844AF86B83
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 17:42:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HQ-32ZwDBrBt for <devel@linuxdriverproject.org>;
 Fri, 19 Feb 2021 17:42:07 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from APC01-SG2-obe.outbound.protection.outlook.com
 (mail-oln040092253014.outbound.protection.outlook.com [40.92.253.14])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8DD4B86B7A
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 17:42:06 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ea942jIi7VZ5nA5ZzNOUQCj6q55hylj5/2j0sWu+lvhyx3mPoa7H9ot2ecQmHNajbdB1BhXSK+gviffkmeoqJC+9k4SR3PG4LeGu2uGqI9dTHMQDMhV2GJOaiPAWtcDnHMAOHwqEp05bvCCgZFrm8DW7/5Uj9gvQmswtR9Jem9FuwYliXvXS/9rXNOy7K9xSxQTWqD3J7icEXxAkZxsTl28o1rotKtEwkf2Yg0LdMBUzLztGgpifhGhWHOahJdhLwU1gPRBbMIu7ZIIkf1lWV+cjeeSDieWGwZEqZEzuMaPFMU8HDMuFmGu7jK5Beu1HNEeGKOylru59JbbA8UxLXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cSBGs3t6mLIRS2Km/OW/qBESVv8R+TxLQJWVFXPkVE0=;
 b=NUgkkJKfYCRaoLFeiGEEdlfhhPsFLlaWxjmK7Cvk2VcGLKaKk6I/vPIP6JPn/2h6TZgt5HbcjNwZqyJHm4CmQOJQRDzW+oB/YSOnAZaV2XGZFGPq+TBQZo06hyw6JDAbzYMKZTEpiImCTUsovxPxoFtPAPq/yX3l4s5L5Bf9wv8uF/qkMdwveca/gR8VCwiR8vKWeqT4gZ3tW5OF1dpOJWhChNx4X28PeNlz8G6Dy3d29HfuVnG/nG/udge8dCf/LNAPeAytqKnty2/CvFclkrtpSIJVQj3Kr1zDgfORu4rZkIdIelAHpYV3o6GgZT832xZ5UlNEtmZS8Z+Lg5SpsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=live.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cSBGs3t6mLIRS2Km/OW/qBESVv8R+TxLQJWVFXPkVE0=;
 b=MQOHkKqJUNHMeQ/evsgY5EMaCxFwOQXUJcLIk96suzRAR2y+3jbHHGp7paRahjHfdYIaCitPhKJAY4Z/dFbIKjA7FBXEvFMHK+WEYLekSBMq1Rdu9VrUhsjlmgmoflocvxEbEuNp75dO8RAlXWYTL5TZke4L3VXODaxwfFG8XbxT5++4VnjhzbmTofqwwQMkcMEkfEKSwSNmhcPrzRaQT7l2Yw+LR2MqqPfyFixcpkPi5S7La4jtG19l+p9ugCoP0aYxOaPlT6+tgYM5i7kX6FAgOWMsX926IeAAjkjCP7bgdALBaJVyOCeQtU/mLOuw1ag0yZ/1Dv0yxq/6+Z2wcQ==
Received: from PU1APC01FT061.eop-APC01.prod.protection.outlook.com
 (2a01:111:e400:7ebe::4f) by
 PU1APC01HT043.eop-APC01.prod.protection.outlook.com (2a01:111:e400:7ebe::400)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3868.27; Fri, 19 Feb
 2021 17:41:42 +0000
Received: from PS1PR04MB2934.apcprd04.prod.outlook.com
 (2a01:111:e400:7ebe::49) by PU1APC01FT061.mail.protection.outlook.com
 (2a01:111:e400:7ebe::280) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3868.27 via Frontend
 Transport; Fri, 19 Feb 2021 17:41:42 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:8D7B0A31C14E2B2A8B11906B0FED1D2DFCEF901453799EDE7E7F188A900ED7B8;
 UpperCasedChecksum:54E923BCAEB6DB74530AB8F854847549909855FF8CF0409B3066B8FEE9C35CE2;
 SizeAsReceived:7427; Count:45
Received: from PS1PR04MB2934.apcprd04.prod.outlook.com
 ([fe80::55d8:45ac:a6c8:b297]) by PS1PR04MB2934.apcprd04.prod.outlook.com
 ([fe80::55d8:45ac:a6c8:b297%3]) with mapi id 15.20.3868.029; Fri, 19 Feb 2021
 17:41:41 +0000
From: mayanksuman@live.com
To: rspringer@google.com, toddpoynor@google.com, benchan@chromium.org,
 rcy@google.com, gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: gasket Fix comparison with Null
Date: Fri, 19 Feb 2021 23:11:14 +0530
Message-ID: <PS1PR04MB2934D85E82A3730349F56FE9D6849@PS1PR04MB2934.apcprd04.prod.outlook.com>
X-Mailer: git-send-email 2.30.0
X-TMN: [yLlgoNusa0MK2czP1sCfKrFUNlvo9X6Q1Y9XIWYeF2s=]
X-ClientProxiedBy: BM1PR01CA0164.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:b00:68::34) To PS1PR04MB2934.apcprd04.prod.outlook.com
 (2603:1096:803:3e::21)
X-Microsoft-Original-Message-ID: <20210219174114.21838-1-mayanksuman@live.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (103.127.101.170) by
 BM1PR01CA0164.INDPRD01.PROD.OUTLOOK.COM (2603:1096:b00:68::34) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3868.28 via Frontend Transport; Fri, 19 Feb 2021 17:41:37 +0000
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 45
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: c8a43608-02c1-4a14-56f4-08d8d4fd9cee
X-MS-Exchange-SLBlob-MailProps: 7MJMDUNTCtxq55ecnsa3F4sGaFzRQryF4hlPJLEWH3QohlLvyYkSI/QG4k6oIcI8U0dcJZCMG/9wBJqjmAEK00cvNh0fKpdt/7xooFVn9DmQHiHJQUY6+yV8uwl+oVjeXq5VEynIOdaQsTPyhHBmv33ed3QaX/7FnsoJBBCMb/nKKfbnzOBvHzF/m4DcvnN1zWmO6ESu76VeQXKfzXCaX5xMkaiXvoX0qKv9AhpoKwFzqv8QMcON9VltHEQyVq0b+KMz++9T4djqYrE8W8iySluTS0fhuRqxY2P+i7WyOwlPo3/OG44kRlNbw3tRAWBPPlLS0jYiilk3yLVr5T6ZRUG6wll6tJFyVFJbcmvCRH+VoJwaJ6OrOgg1TGHT9gXxWEN904eQF9tEpGZ39kvcNZsfS6m5phbjmJs/zwL39dbdTmJI8rXlkQ5WAGYjGEbH3VQ5yE/KfJNk2E+zrF/nX9FeoTHKx7q0RlnOBd2jzLwbIh+GOQf74DLAn9QN9vSKz9wU0W/K4J8N/nZNI4m1E1oPI/vwqVoklUIeDRjDupOEPTsSlixr9oaRkPAyr3W4u/fYm3XkLs7S46OpwYr6Bq/Qo1dzuZVpEwT0DJ3MwPVwHa9xDVlVbLuu8bsmQZxAJE/e5v12ih19WBaHLUjCgFp/3vvGTMTcgAyC3wawdFlCpkcDD4yabqOZMsgrBHXt/lK56zKb0Wu44/sd7AQ3Ve2nHLYZ6dm35tsrtP8+151SnHLudJ05rg==
X-MS-TrafficTypeDiagnostic: PU1APC01HT043:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uTIDpkiVjVXWMo5UKKb3pD4QsNL50n8h0E+JHbXJtMlOwDSnHevjwXaUvpUWlNodexIH83GRfDY30+is4kCwiiqJzrBuf2xQwMIOdMd0wwWHJ5TV72EGrPAeZ4+F4V4xTabno+MRhB87Dv9/8/YB/MYSey3NeniWHeEgwLPmiSBkF0PVM0Q3Ygz7joPs7X7gQLTcTnQ5s/mzNfGwqkFTZAk9+1G1JSRZ+HBlxcjiyIZZME+8gxLLe8ZEKF8a29HSxFGEocV+usukSQ93ZtWpBkg2q0cRe2rYue5hH75WQhbJGfn2254lnriAVibIvr9JcGTAkiV69B3YAM+vF+qFeLFX0e31LwyxHXmY7s4eR8nhPMGHYb43prAhBitWs0N6
X-MS-Exchange-AntiSpam-MessageData: dZmsY6UCEZhib0EGECABkT99yrhOFlG4usVO+4KS71FFPG7DSZGWku77SA/teirglC93lwfXbV+uSt//t30e+wLhZW8woYQHovVyHwzzaytl8awcJlZCiXJJ9fpTbmZ9APteaaqgKlZI2v+TrBTgsA==
X-OriginatorOrg: live.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c8a43608-02c1-4a14-56f4-08d8d4fd9cee
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2021 17:41:41.8053 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-AuthSource: PU1APC01FT061.eop-APC01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PU1APC01HT043
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
Cc: Mayank Suman <mayanksuman@live.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Mayank Suman <mayanksuman@live.com>

Comparison with NULL is redundant 
as pointer will evaluate to true if is non-NULL.
The change was suggested by checkpatch.pl.

Signed-off-by: Mayank Suman <mayanksuman@live.com>
---
 drivers/staging/gasket/gasket_sysfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/gasket/gasket_sysfs.c b/drivers/staging/gasket/gasket_sysfs.c
index af26bc9f1..c5658fdf4 100644
--- a/drivers/staging/gasket/gasket_sysfs.c
+++ b/drivers/staging/gasket/gasket_sysfs.c
@@ -228,7 +228,7 @@ int gasket_sysfs_create_entries(struct device *device,
 	}
 
 	mutex_lock(&mapping->mutex);
-	for (i = 0; attrs[i].attr.attr.name != NULL; i++) {
+	for (i = 0; attrs[i].attr.attr.name; i++) {
 		if (mapping->attribute_count == GASKET_SYSFS_MAX_NODES) {
 			dev_err(device,
 				"Maximum number of sysfs nodes reached for device\n");
-- 
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 95FDA3E28DD
	for <lists+driverdev-devel@lfdr.de>; Fri,  6 Aug 2021 12:44:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 20A9E608FE;
	Fri,  6 Aug 2021 10:44:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s0Dh8HJoHEWJ; Fri,  6 Aug 2021 10:44:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 685CF606B6;
	Fri,  6 Aug 2021 10:44:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C91301BF391
 for <devel@linuxdriverproject.org>; Fri,  6 Aug 2021 10:44:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B8796606B6
 for <devel@linuxdriverproject.org>; Fri,  6 Aug 2021 10:44:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k8JeO13P3zm9 for <devel@linuxdriverproject.org>;
 Fri,  6 Aug 2021 10:44:38 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from NAM02-BN1-obe.outbound.protection.outlook.com
 (mail-bn1nam07on2138.outbound.protection.outlook.com [40.107.212.138])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E6D22605B3
 for <devel@driverdev.osuosl.org>; Fri,  6 Aug 2021 10:44:37 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WSTHSLTe4VJwTQVT2ADP0YblAEGmTnU2wadmXuH5YxvIkszdXWLGH/nnHHfve+1iPT4NxiEtv+Q5EX9PUazXvHcTFPrX+GBsMQArtWzm8fyKl/aDmgvxOO061zmqEYHn2Ld8cAKPC6jqolf1sIxUHjh9aFFs8KeWqWqcGY8P6E6WlJDlj87JHn10NG+jk7ITU9WKkjBS+h7uuqbH2iOKr8sMFeP70icOBdyAXoS+ILFRRXOm5FhBjXQSTpYxFTTjW8psaPzmVkVJpAS6oKEAjn3Z9c1+dutVOGKwJGeuuY2OG9kKr+LdwAKR/TLHqGVtpaz3fkiv5jYrc+Op2Z7oDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WheNvOQb7m5Nb2xbnVsY1/4nzMe7gWxmw7EIWbYnNb0=;
 b=mZfWO46ns920ceWEUhpiDhLXL8d7SmXHZElvdgbnJq+vd3esf5XN74WKYfGBK5PRbUBQph4pBfXLZpMsDA4lS35vIhbOpCKe4TUSn7qbAO85wb0AuZzfjmEod4mLsa/MDCxPiYDbFC/29Arcojz2r+zspKTeH5cMYLonnDqJ7rrCZJf/5eakQKlxllxqIMPncAs+AcSv8E9TsuLcQGZRwbV/5u5FFRpjVtVDtfalxd0ZYIRO0uO40WfjK/2FIWZxpmTLw9+UBdHET7RbgaBBOldN03dLTc0KBjlQlSI43Fshk3YGOqPyX5W3GERkq4rb+N71UINEbsLVQVPskel3sg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analogixsemi.com; dmarc=pass action=none
 header.from=analogixsemi.com; dkim=pass header.d=analogixsemi.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Analogixsemi.onmicrosoft.com; s=selector2-Analogixsemi-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WheNvOQb7m5Nb2xbnVsY1/4nzMe7gWxmw7EIWbYnNb0=;
 b=2kDruD6PD4TBqhlQYQrec553vOwYuSE0IUy7yEgtA8cyl70242m4nxdDUU3yRe3H6i1xgaiUnrrynFvxlKFajqhM+kx4L2jrZgwQkJv0kzcnXseqcA5bdIrdh21d9s9kCXPPZHCpGm1ys0arbhF1E/FsxraUInYjiVSoCm/aOwY=
Authentication-Results: analogixsemi.com; dkim=none (message not signed)
 header.d=none;analogixsemi.com; dmarc=none action=none
 header.from=analogixsemi.com;
Received: from BY5PR04MB6739.namprd04.prod.outlook.com (2603:10b6:a03:229::8)
 by BYAPR04MB4584.namprd04.prod.outlook.com (2603:10b6:a03:16::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.19; Fri, 6 Aug
 2021 10:44:34 +0000
Received: from BY5PR04MB6739.namprd04.prod.outlook.com
 ([fe80::5c0e:fbe5:2bd6:ec6]) by BY5PR04MB6739.namprd04.prod.outlook.com
 ([fe80::5c0e:fbe5:2bd6:ec6%3]) with mapi id 15.20.4394.019; Fri, 6 Aug 2021
 10:44:34 +0000
From: Xin Ji <xji@analogixsemi.com>
To: robert.foss@linaro.org,
	drinkcat@google.com,
	a.hajda@samsung.com
Subject: [PATCH v2] drm/bridge: anx7625: Tune K value for IVO panel
Date: Fri,  6 Aug 2021 18:44:07 +0800
Message-Id: <20210806104407.2208538-1-xji@analogixsemi.com>
X-Mailer: git-send-email 2.25.1
X-ClientProxiedBy: HKAPR04CA0012.apcprd04.prod.outlook.com
 (2603:1096:203:d0::22) To BY5PR04MB6739.namprd04.prod.outlook.com
 (2603:10b6:a03:229::8)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from anxtwsw-Precision-3640-Tower (60.251.58.79) by
 HKAPR04CA0012.apcprd04.prod.outlook.com (2603:1096:203:d0::22) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4394.15 via Frontend Transport; Fri, 6 Aug 2021 10:44:33 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4289bf28-1872-4e4e-d695-08d958c72da3
X-MS-TrafficTypeDiagnostic: BYAPR04MB4584:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <BYAPR04MB4584FDD7945F263A9294F0FCC7F39@BYAPR04MB4584.namprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6108;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: C6zww95OaxL5Xwgt4mc/VF2oFWLNxYJqIz5c39W9vfpEh636LJW0AH0KeuKEwI93eHkICZfq8uGAy7XM5PavNQL8zdvZPq0eIBfl42+RxdjEwFiEPTqne8YOn/cVGx/JPa6gqpK30038/Xiq9CEve5ERLe/4n4/q0IC/9lJvenGLnJHp7sqjPFLtCNGo/gZOe/juuLfUBI3fIAnmIGZpaCLL4OX2SvLOpCjSoGC4+YSfjI8j+8Xva5g/Um+8QOMig+SrLS+2z/EEdpPPEYLEGNoglUfd/BmSmUSbqf2W6cjNvK29srq8QAPDJsDBLEbBrkRPsufba+e0/PEkVcpsGy2XTeFRqFQEOjTd6rdqaBzp57i4MaXbzUzgutCOBqP7wIde7tZiLJmcIfniQRCl6uP/P31AcmMHwY68Un0LBJrVVfy2N0pyAYh28hfs7pmSvqjR0Lftpg6cfDpfZ/qOjo2gHFZX8RP3mzvgV7m/5hrs0khzswojfQH+eg4WeNyB2cK2jLiTyW6qc69DhygIwK2Ksc2P9oNAaOO3SjOLSJtwaQLNVv2ilySZUBr8X5ebP8uVQl9Z2Dm0XL+oa6gatG4vKK6Drg5LrpdDKiu6nIrcNW9JDE+CJM2HaQ1X3CMbZjO89isJnCLkkAFPjCO9lXeT79ABgxRT4owQ7pHOQxNgY45jcZ3F8lcHOLdLDI8ZXfV/xt+qYHREw6bnIl4HsA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR04MB6739.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(39840400004)(366004)(396003)(346002)(136003)(8936002)(6486002)(956004)(26005)(5660300002)(2616005)(66556008)(316002)(8676002)(66476007)(38100700002)(38350700002)(1076003)(186003)(86362001)(66946007)(107886003)(7416002)(6666004)(55236004)(6496006)(36756003)(4326008)(478600001)(52116002)(2906002)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?mgfCQbizHrEp9NPfW9thSSBcJRVrWG5dzeOX0mf8uAMppfVXORHcTkzfLpVh?=
 =?us-ascii?Q?bOzn/noWwmvJHSnyTaeKKEgU30MAKhOzT1PQ8kg94hC4FHbpO8AG40RJw20O?=
 =?us-ascii?Q?xLHzYeTSj6816SWWiMzmjlU3+JU/+r2LuKM0hy75WixN7PoFioHUb1ziLDVn?=
 =?us-ascii?Q?RIvZ0OE79DVWsxTLQGCZBowKqalV13yoDAH3yL2uPkozEzFqrI6MqhUeCdUr?=
 =?us-ascii?Q?p25HfrDfh35FX7+keAIS9DAnH+rCtcsZgnBg29/m8q1oQI+yCeUoUF2yFTlH?=
 =?us-ascii?Q?bkIRtfsgAlg4qIiDZ3G2ZSJ1c25KqOv/RtEqGQG8k+nQ+N/MP62n9cCYbTgS?=
 =?us-ascii?Q?vFmEGmgqWvMI9O20nLxQx77lNYGa6b16FuF0ioeuRhQ29TsSg02gdfUkyUGq?=
 =?us-ascii?Q?Sn2EAFXMdnNBjdrAtM9uuUABvs9doXgJbj3dislXZJ5IiPo7VEeDG/7cw2O9?=
 =?us-ascii?Q?klTKgv3P943fcJXPytjKz/9NdU4Mpw45hPJf2B2kvBZmqIxsMP5DsxSoJo9G?=
 =?us-ascii?Q?h3oLZ5padTrWpOpgCFbTKVrnjMokA/pSQcWnHw1NX/+9LzNj8bRauWyiQsZ8?=
 =?us-ascii?Q?n+bPd4ec/cS8Jsr4v6/jT2qkw9xwmf7C4rp1Stlp2gmimc2m1pJN9v3s4j1f?=
 =?us-ascii?Q?BnaAIJ3PkjscHSYwh/guj+/r8OZ8SyFBahd5YzVBjEtTiHLVK8Q70G4vL7WN?=
 =?us-ascii?Q?1hvZhKkIK+8OfT4/9P+V75Ks8DvmrU1sAA/iGfUpkbd8PynGQT3PirrjReiJ?=
 =?us-ascii?Q?q4WgzU/EEcr2thz5nIRVTHyLFjbqQBASm/YS/ag9QdMYBcY6+ea4u6SXvYFT?=
 =?us-ascii?Q?ZedWVY3cZrPY0SYCIumYpbX8swrV09q76XtIfUG4C56t7gdBd0myfNxUaHAy?=
 =?us-ascii?Q?tSZgc5OPInJIkap0wOHQF4iGRqYRPr9jF06TQu7Xp7jLVGqc3G1eXLWTcaGP?=
 =?us-ascii?Q?RkfpprVWqAwqxNwXpYE6T79JhnjZ+FSRh4NSEJV/RHcM3JopnyTCSQqlvrYO?=
 =?us-ascii?Q?EvtVuhENCt+9Y84DA8hNmaIsz0RnxHXfMEHHlUg6PoiFfzgEU381FFMMXmQc?=
 =?us-ascii?Q?3NhYAaICyTzFt6bHS+nA1Sy456zXdrW7PVqw6pkeXLlLPTQeTuwx0svAODNK?=
 =?us-ascii?Q?iCzSdrFMhzNdI6AcRc14eSWuZzaNfykIocww2PcFamOUlWBGCHCzmyaYZqLm?=
 =?us-ascii?Q?6kMnMd++PR3dlTFMPv4KHOuK8GOOfNg08/GE97/Rc/eVH3YlSzQ1+RKhe19X?=
 =?us-ascii?Q?4hIswpnaY3KWjkI5wJLiNNxwOSbOuwML5jwp59ZK5ef54vezn5c6dRrispEA?=
 =?us-ascii?Q?uGfTOY4Zl7SObi3n0jJ96N3k?=
X-OriginatorOrg: analogixsemi.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4289bf28-1872-4e4e-d695-08d958c72da3
X-MS-Exchange-CrossTenant-AuthSource: BY5PR04MB6739.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Aug 2021 10:44:33.9692 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b099b0b4-f26c-4cf5-9a0f-d5be9acab205
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mR9pnNfKgs5Nl5DtOD5raDTAtlBv6fNfTbF7rWE5kocgGCmWHnbnWT2CcGX2Z5wrQhOnXCVRHxBH9tAXcgxhNA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4584
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
Cc: devel@driverdev.osuosl.org, jonas@kwiboo.se, airlied@linux.ie,
 bliang@analogixsemi.com, qwen@analogixsemi.com, narmstrong@baylibre.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 anarsoul@gmail.com, boris.brezillon@collabora.com, duwe@lst.de,
 Laurent.pinchart@ideasonboard.com, daniel@ffwll.ch, hsinyi@chromium.org,
 sam@ravnborg.org, Xin Ji <xji@analogixsemi.com>, dan.carpenter@oracle.com,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

IVO panel require less input video clock variation than video clock
variation in DP CTS spec.

This patch decreases the K value of ANX7625 which will shrink eDP Tx
video clock variation to meet IVO panel's requirement.

Acked-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Xin Ji <xji@analogixsemi.com>
---
 drivers/gpu/drm/bridge/analogix/anx7625.c | 24 ++++++++++++++++++++---
 drivers/gpu/drm/bridge/analogix/anx7625.h |  4 +++-
 2 files changed, 24 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/bridge/analogix/anx7625.c b/drivers/gpu/drm/bridge/analogix/anx7625.c
index a3d82377066b..9b9e3984dd38 100644
--- a/drivers/gpu/drm/bridge/analogix/anx7625.c
+++ b/drivers/gpu/drm/bridge/analogix/anx7625.c
@@ -384,6 +384,25 @@ static int anx7625_odfc_config(struct anx7625_data *ctx,
 	return ret;
 }
 
+/*
+ * The MIPI source video data exist large variation (e.g. 59Hz ~ 61Hz),
+ * anx7625 defined K ratio for matching MIPI input video clock and
+ * DP output video clock. Increase K value can match bigger video data
+ * variation. IVO panel has small variation than DP CTS spec, need
+ * decrease the K value.
+ */
+static int anx7625_set_k_value(struct anx7625_data *ctx)
+{
+	struct edid *edid = (struct edid *)ctx->slimport_edid_p.edid_raw_data;
+
+	if (edid->mfg_id[0] == IVO_MID0 && edid->mfg_id[1] == IVO_MID1)
+		return anx7625_reg_write(ctx, ctx->i2c.rx_p1_client,
+					 MIPI_DIGITAL_ADJ_1, 0x3B);
+
+	return anx7625_reg_write(ctx, ctx->i2c.rx_p1_client,
+				 MIPI_DIGITAL_ADJ_1, 0x3D);
+}
+
 static int anx7625_dsi_video_timing_config(struct anx7625_data *ctx)
 {
 	struct device *dev = &ctx->client->dev;
@@ -470,9 +489,8 @@ static int anx7625_dsi_video_timing_config(struct anx7625_data *ctx)
 			MIPI_PLL_N_NUM_15_8, (n >> 8) & 0xff);
 	ret |= anx7625_reg_write(ctx, ctx->i2c.rx_p1_client, MIPI_PLL_N_NUM_7_0,
 			(n & 0xff));
-	/* Diff */
-	ret |= anx7625_reg_write(ctx, ctx->i2c.rx_p1_client,
-			MIPI_DIGITAL_ADJ_1, 0x3D);
+
+	anx7625_set_k_value(ctx);
 
 	ret |= anx7625_odfc_config(ctx, post_divider - 1);
 
diff --git a/drivers/gpu/drm/bridge/analogix/anx7625.h b/drivers/gpu/drm/bridge/analogix/anx7625.h
index 034c3840028f..6dcf64c703f9 100644
--- a/drivers/gpu/drm/bridge/analogix/anx7625.h
+++ b/drivers/gpu/drm/bridge/analogix/anx7625.h
@@ -210,7 +210,9 @@
 #define  MIPI_VIDEO_STABLE_CNT           0x0A
 
 #define  MIPI_LANE_CTRL_10               0x0F
-#define  MIPI_DIGITAL_ADJ_1   0x1B
+#define  MIPI_DIGITAL_ADJ_1     0x1B
+#define  IVO_MID0               0x26
+#define  IVO_MID1               0xCF
 
 #define  MIPI_PLL_M_NUM_23_16   0x1E
 #define  MIPI_PLL_M_NUM_15_8    0x1F
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BC6A5306C59
	for <lists+driverdev-devel@lfdr.de>; Thu, 28 Jan 2021 05:42:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CE36E20763;
	Thu, 28 Jan 2021 04:42:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 69LWhXRbj1Et; Thu, 28 Jan 2021 04:42:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E083220467;
	Thu, 28 Jan 2021 04:42:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 518DA1BF3DB
 for <devel@linuxdriverproject.org>; Thu, 28 Jan 2021 04:42:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4DDBC86357
 for <devel@linuxdriverproject.org>; Thu, 28 Jan 2021 04:42:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mchaqb8nyNFa for <devel@linuxdriverproject.org>;
 Thu, 28 Jan 2021 04:42:44 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam10on2136.outbound.protection.outlook.com [40.107.93.136])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4902686365
 for <devel@driverdev.osuosl.org>; Thu, 28 Jan 2021 04:42:44 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oebbvE6IpN9K4AaE+YbYBHw85CcQvngDenp8ZdtqxoPuub9Iw2op5+qQkwdSNK9uhQJ0iHpzcpGsw2w78JEmPYuDERQnETbD5spFAyn6PRmOoyH+9818lOvRZ7UMkCOyL+YMMzcmBjwoW2wyWRv7VfVxJ5gJlp8vQJS9I8hJq9W5IYKPCAdZDb208ElYk66uWvyotze6QMf9VwCuRsMiRUDBp+zAIrjo1dzR0mxOuSvfGMy/jgQ2moRWVGnL8bv+jQ90AFbH8wfE+D1Dc8oVbLF3WkqHGhEw5tEFqpREO2L3YvSkwRUjNDIin67Jc50CvlrQGCT7rz5uBzIJ6CyTPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AV+262+YR6QU/p4YxROc5zG3u9njfkHi/gMVKBTVKX8=;
 b=hYIIhPYnIfLmzJMZNchcj54Dh8fBvP1YQLg1eeV7KuLoKOBwuXwaggUh3fXhTCAj3OqfY5IXbrJq0qj8pudBhZc5kpninLi1DDQmRKzChrO532j0euLSRx6hVwkiWOUFCqk0Y4eG2tDe0OtTJPCO3kDQd00GS/GXwUebImJkxiYyf14tdABzEH8djsIA/uZpCRlLGdhTsdCcX28D33XKmboLG5LJPjUu2lz2Stj4wvwQOG5G5/Be6wf+LvfLvuoA3C9fSRLk9z6OYIkqmoEvx7LB1Agjki3GkjQafCp1Ap2JJHXwbILyzyCMPGh42b5NNaoev+gS0AUj0BPWOIg84A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analogixsemi.com; dmarc=pass action=none
 header.from=analogixsemi.com; dkim=pass header.d=analogixsemi.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Analogixsemi.onmicrosoft.com; s=selector2-Analogixsemi-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AV+262+YR6QU/p4YxROc5zG3u9njfkHi/gMVKBTVKX8=;
 b=I7wd/s2mKSLyB3esOGkgMc7Z+NpAx39vOjCpFzPSMjrgIX2jcZbgtuPZNP+kiPeig4Ldmq2Dud5Za35BOmb5Ht1w5vQ5MFFbsvUpulBdj4X9Kms/Z7OseLrLs/DWeAlsHxJVIxbTcYcHIDfxzD30VOIafen/d89mSMd0KDcRQkI=
Authentication-Results: driverdev.osuosl.org; dkim=none (message not signed)
 header.d=none;driverdev.osuosl.org; dmarc=none action=none
 header.from=analogixsemi.com;
Received: from BY5PR04MB6739.namprd04.prod.outlook.com (2603:10b6:a03:229::8)
 by SJ0PR04MB7504.namprd04.prod.outlook.com (2603:10b6:a03:32e::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3784.19; Thu, 28 Jan
 2021 03:10:49 +0000
Received: from BY5PR04MB6739.namprd04.prod.outlook.com
 ([fe80::5813:96a7:b2d6:132]) by BY5PR04MB6739.namprd04.prod.outlook.com
 ([fe80::5813:96a7:b2d6:132%6]) with mapi id 15.20.3763.019; Thu, 28 Jan 2021
 03:10:49 +0000
Date: Thu, 28 Jan 2021 11:10:12 +0800
From: Xin Ji <xji@analogixsemi.com>
To: Nicolas Boichat <drinkcat@google.com>, Andrzej Hajda <a.hajda@samsung.com>,
 Neil Armstrong <narmstrong@baylibre.com>
Subject: [PATCH v4 3/3] drm/bridge: anx7625: add MIPI DPI input feature support
Message-ID: <49fc9c62026988d7adc2eb7e4d1f6a3bffe0b66c.1611802321.git.xji@analogixsemi.com>
References: <cover.1611802321.git.xji@analogixsemi.com>
Content-Disposition: inline
In-Reply-To: <cover.1611802321.git.xji@analogixsemi.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Originating-IP: [61.148.116.10]
X-ClientProxiedBy: HK2PR0401CA0001.apcprd04.prod.outlook.com
 (2603:1096:202:2::11) To BY5PR04MB6739.namprd04.prod.outlook.com
 (2603:10b6:a03:229::8)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from zhaomy-pc (61.148.116.10) by
 HK2PR0401CA0001.apcprd04.prod.outlook.com (2603:1096:202:2::11) with
 Microsoft SMTP Server (version=TLS1_0,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA) id 15.20.3805.16 via Frontend
 Transport; Thu, 28 Jan 2021 03:10:48 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a07e6c6b-fc74-4009-a756-08d8c33a4ff2
X-MS-TrafficTypeDiagnostic: SJ0PR04MB7504:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <SJ0PR04MB7504674F52B4B43F050CEC7DC7BA9@SJ0PR04MB7504.namprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:61;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xBoKYwaaB0Vk+ktcx+p8HHfKx9B86xkaNNZRDIqNz3upPe0ZitRJME2j0+t/BR0J11a384oEWgPKt/q5yr5ktHXMD+3z50PdJbx+QZRtCddGPb1qXj2Oe+BhybotQ60FBBiIShDLYypPVFKYvM/Dea8Ftz687TTaOF56/q0/JI/lpsTvE8NDwpS2hGju+ZARRHo2g2M98vIJ4daDjJaVJpFDInm260MXKeD+Y/5jewikbYxCJMx3cqXwBxcwnRs+/8VbNOv97RSBQ2ZiWG1TwqfQ7w5Efp7xf3RVHivC5XQJjvFYbmRM2VZ2b7z+b5RH7otoXlGWkcVUxxkZzambSVX/b7/LK/8hlKuoldKvuJcFo1g3CmcgDSg3mJk3t0TnQCoWUShmS00AQ2O36Dl4E3SFFQa9ltoNlZQWUAR+QUGVEg3DoYT6nqpWIVrcW0mD
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR04MB6739.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(376002)(39840400004)(396003)(136003)(366004)(478600001)(7416002)(956004)(8936002)(6666004)(6486002)(5660300002)(186003)(36756003)(30864003)(8676002)(6496006)(110136005)(316002)(52116002)(4326008)(83380400001)(66476007)(16526019)(86362001)(66946007)(26005)(2906002)(54906003)(66556008)(2616005)(16060500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?byUZYDnpfBMIDiFP34WzcnLAMiJrB4NVe+XXbt+ZYbhM6RnRiSBJSesIZhz+?=
 =?us-ascii?Q?XtAdBkVHcU6PTyf1YzVgQNEew3x8BuzZFyelyL0QC6H+T2I4LMQf9TsPdezT?=
 =?us-ascii?Q?6jBZiUnIQdKA5M1ewblhfMY4ZfNxgITSjQTH2EdfTJtOuTCadaT3D9BoVPoH?=
 =?us-ascii?Q?VbdOuM8FqZ60GF4VAhh4wA6J33SjlfvDPRZbLHWgRbX3hnDYClrbxEMN/+qf?=
 =?us-ascii?Q?rBnvziIjOi/cbghAYbafXHBmAoQeYtJvKwRvQafHbZp9jxm7gySY1vFYfw4t?=
 =?us-ascii?Q?YIXuhWrsY1ak3YERxCOJoHXvC/FPN3aD+WyqwBNMbHYXX0A3DgcR2TS+S8Hn?=
 =?us-ascii?Q?cvbJRCZBbBlE9Srjm/ArIYtnyKf90HY3DbpCiUcE0KXsK66SLn35KFi7BMPc?=
 =?us-ascii?Q?FofzGw6FYoKH4el3D4R+pwR6Hq7frV6r0su/Av55HnW5oW8G2gOVTY9P8Vmh?=
 =?us-ascii?Q?yF/erQdhmbNF50cFU1jlcN2uDmC4tVM5RWVxR6iWCcDiApubAC6rZZGKca4w?=
 =?us-ascii?Q?Ya1h8wj4JCWyQtdxPWzdVz22o7VQ7vJ2xg4xI8b0kZdeAn/rRdtWcjuOgXgD?=
 =?us-ascii?Q?AFdHjsvPB7bHL7Cdf/JmOsqda7y5mPpi2Nnr+oiHpmvVuuqQtL5kUgP2Oj3o?=
 =?us-ascii?Q?wUGBWjmu0R3qnQD8ze1G4pQ1hNowP/6z8ZsIemCi9mItlrJPjbpLYfuYHDtr?=
 =?us-ascii?Q?seHShUT6yQspZ85M6Uw6tHEtSCNbaSkpr2u2CbekpCgALVX9GEci8EaFehtR?=
 =?us-ascii?Q?CEg3NEIe2ra70EG7FEJGK/xJ5o6iWMCkOfrnbmmu8lOAU0bXPBZeIf0Cj0+F?=
 =?us-ascii?Q?HBmnTTItXymo4mQURK1fnFusBTGd8HrWJfP9OKLRIZb/t7IhZW3SZGUaQYWV?=
 =?us-ascii?Q?+kWH2xjPLYOA9IxF2iUc/yO4cjE5GcEMzoNqDmVfloFjHq3G0xpUqZZlh1/J?=
 =?us-ascii?Q?v/rkrhKGuLOsGKk06aejWZ97ULfGR6g7jxicG0tj9bYi1Z/CJmwIRAwGiMX6?=
 =?us-ascii?Q?jH6/gAUxQ3U63F114V9A9BGuZtrUXb8tUckIxdInUqL9oFLmq8H1X+nzGLVP?=
 =?us-ascii?Q?gIFv34id?=
X-OriginatorOrg: analogixsemi.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a07e6c6b-fc74-4009-a756-08d8c33a4ff2
X-MS-Exchange-CrossTenant-AuthSource: BY5PR04MB6739.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jan 2021 03:10:49.2734 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b099b0b4-f26c-4cf5-9a0f-d5be9acab205
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ny7OPi6gJzc8WMAdkpnILQHCcoFhplmqNmCC/zV5hKcqEVhWQMggMGifIaCpm26uIVv71kx8dDpesV2VMq+t2Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR04MB7504
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
Cc: devel@driverdev.osuosl.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 Sheng Pan <span@analogixsemi.com>, Jonas Karlman <jonas@kwiboo.se>,
 David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Vasily Khoruzhick <anarsoul@gmail.com>,
 Boris Brezillon <boris.brezillon@collabora.com>, Torsten Duwe <duwe@lst.de>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Hsin-Yi Wang <hsinyi@chromium.org>,
 Sam Ravnborg <sam@ravnborg.org>, Dan Carpenter <dan.carpenter@oracle.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Add MIPI rx DPI input support

Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Xin Ji <xji@analogixsemi.com>
---
 drivers/gpu/drm/bridge/analogix/anx7625.c | 326 ++++++++++++++++++++++++------
 drivers/gpu/drm/bridge/analogix/anx7625.h |  20 +-
 2 files changed, 285 insertions(+), 61 deletions(-)

diff --git a/drivers/gpu/drm/bridge/analogix/anx7625.c b/drivers/gpu/drm/bridge/analogix/anx7625.c
index 04536cc..628ae43 100644
--- a/drivers/gpu/drm/bridge/analogix/anx7625.c
+++ b/drivers/gpu/drm/bridge/analogix/anx7625.c
@@ -150,18 +150,18 @@ static int anx7625_write_and(struct anx7625_data *ctx,
 	return anx7625_reg_write(ctx, client, offset, (val & (mask)));
 }
 
-static int anx7625_write_and_or(struct anx7625_data *ctx,
-				struct i2c_client *client,
-				u8 offset, u8 and_mask, u8 or_mask)
+static int anx7625_config_bit_matrix(struct anx7625_data *ctx)
 {
-	int val;
+	int i, ret;
 
-	val = anx7625_reg_read(ctx, client, offset);
-	if (val < 0)
-		return val;
+	ret = anx7625_write_or(ctx, ctx->i2c.tx_p2_client,
+			       AUDIO_CONTROL_REGISTER, 0x80);
+	for (i = 0; i < 13; i++)
+		ret |= anx7625_reg_write(ctx, ctx->i2c.tx_p2_client,
+					 VIDEO_BIT_MATRIX_12 + i,
+					 0x18 + i);
 
-	return anx7625_reg_write(ctx, client,
-				 offset, (val & and_mask) | (or_mask));
+	return ret;
 }
 
 static int anx7625_read_ctrl_status_p0(struct anx7625_data *ctx)
@@ -195,6 +195,60 @@ static int wait_aux_op_finish(struct anx7625_data *ctx)
 	return 0;
 }
 
+static int anx7625_aux_dpcd_read(struct anx7625_data *ctx,
+				 u8 addrh, u8 addrm, u8 addrl,
+				 u8 len, u8 *buf)
+{
+	struct device *dev = &ctx->client->dev;
+	int ret;
+	u8 cmd;
+
+	if (len > MAX_DPCD_BUFFER_SIZE) {
+		DRM_DEV_ERROR(dev, "exceed aux buffer len.\n");
+		return -EINVAL;
+	}
+
+	cmd = ((len - 1) << 4) | 0x09;
+
+	/* Set command and length */
+	ret = anx7625_reg_write(ctx, ctx->i2c.rx_p0_client,
+				AP_AUX_COMMAND, cmd);
+
+	/* Set aux access address */
+	ret |= anx7625_reg_write(ctx, ctx->i2c.rx_p0_client,
+				 AP_AUX_ADDR_7_0, addrl);
+	ret |= anx7625_reg_write(ctx, ctx->i2c.rx_p0_client,
+				 AP_AUX_ADDR_15_8, addrm);
+	ret |= anx7625_write_and(ctx, ctx->i2c.rx_p0_client,
+				 AP_AUX_ADDR_19_16, addrh);
+
+	/* Enable aux access */
+	ret |= anx7625_write_or(ctx, ctx->i2c.rx_p0_client,
+				AP_AUX_CTRL_STATUS, AP_AUX_CTRL_OP_EN);
+
+	if (ret < 0) {
+		DRM_DEV_ERROR(dev, "cannot access aux related register.\n");
+		return -EIO;
+	}
+
+	usleep_range(2000, 2100);
+
+	ret = wait_aux_op_finish(ctx);
+	if (ret) {
+		DRM_DEV_ERROR(dev, "aux IO error: wait aux op finish.\n");
+		return ret;
+	}
+
+	ret = anx7625_reg_block_read(ctx, ctx->i2c.rx_p0_client,
+				     AP_AUX_BUFF_START, len, buf);
+	if (ret < 0) {
+		DRM_DEV_ERROR(dev, "read dpcd register failed\n");
+		return -EIO;
+	}
+
+	return 0;
+}
+
 static int anx7625_video_mute_control(struct anx7625_data *ctx,
 				      u8 status)
 {
@@ -219,38 +273,6 @@ static int anx7625_video_mute_control(struct anx7625_data *ctx,
 	return ret;
 }
 
-static int anx7625_config_audio_input(struct anx7625_data *ctx)
-{
-	struct device *dev = &ctx->client->dev;
-	int ret;
-
-	/* Channel num */
-	ret = anx7625_reg_write(ctx, ctx->i2c.tx_p2_client,
-				AUDIO_CHANNEL_STATUS_6, I2S_CH_2 << 5);
-
-	/* FS */
-	ret |= anx7625_write_and_or(ctx, ctx->i2c.tx_p2_client,
-				    AUDIO_CHANNEL_STATUS_4,
-				    0xf0, AUDIO_FS_48K);
-	/* Word length */
-	ret |= anx7625_write_and_or(ctx, ctx->i2c.tx_p2_client,
-				    AUDIO_CHANNEL_STATUS_5,
-				    0xf0, AUDIO_W_LEN_24_24MAX);
-	/* I2S */
-	ret |= anx7625_write_or(ctx, ctx->i2c.tx_p2_client,
-				AUDIO_CHANNEL_STATUS_6, I2S_SLAVE_MODE);
-	ret |= anx7625_write_and(ctx, ctx->i2c.tx_p2_client,
-				 AUDIO_CONTROL_REGISTER, ~TDM_TIMING_MODE);
-	/* Audio change flag */
-	ret |= anx7625_write_or(ctx, ctx->i2c.rx_p0_client,
-				AP_AV_STATUS, AP_AUDIO_CHG);
-
-	if (ret < 0)
-		DRM_DEV_ERROR(dev, "fail to config audio.\n");
-
-	return ret;
-}
-
 /* Reduction of fraction a/b */
 static void anx7625_reduction_of_a_fraction(unsigned long *a, unsigned long *b)
 {
@@ -410,7 +432,7 @@ static int anx7625_dsi_video_timing_config(struct anx7625_data *ctx)
 	ret |= anx7625_write_and(ctx, ctx->i2c.rx_p1_client,
 			MIPI_LANE_CTRL_0, 0xfc);
 	ret |= anx7625_write_or(ctx, ctx->i2c.rx_p1_client,
-				MIPI_LANE_CTRL_0, 3);
+				MIPI_LANE_CTRL_0, ctx->pdata.mipi_lanes - 1);
 
 	/* Htotal */
 	htotal = ctx->dt.hactive.min + ctx->dt.hfront_porch.min +
@@ -595,6 +617,101 @@ static int anx7625_dsi_config(struct anx7625_data *ctx)
 	return ret;
 }
 
+static int anx7625_api_dpi_config(struct anx7625_data *ctx)
+{
+	struct device *dev = &ctx->client->dev;
+	u16 freq = ctx->dt.pixelclock.min / 1000;
+	int ret;
+
+	/* configure pixel clock */
+	ret = anx7625_reg_write(ctx, ctx->i2c.rx_p0_client,
+				PIXEL_CLOCK_L, freq & 0xFF);
+	ret |= anx7625_reg_write(ctx, ctx->i2c.rx_p0_client,
+				 PIXEL_CLOCK_H, (freq >> 8));
+
+	/* set DPI mode */
+	/* set to DPI PLL module sel */
+	ret |= anx7625_reg_write(ctx, ctx->i2c.rx_p1_client,
+				 MIPI_DIGITAL_PLL_9, 0x20);
+	/* power down MIPI */
+	ret |= anx7625_reg_write(ctx, ctx->i2c.rx_p1_client,
+				 MIPI_LANE_CTRL_10, 0x08);
+	/* enable DPI mode */
+	ret |= anx7625_reg_write(ctx, ctx->i2c.rx_p1_client,
+				 MIPI_DIGITAL_PLL_18, 0x1C);
+	/* set first edge */
+	ret |= anx7625_reg_write(ctx, ctx->i2c.tx_p2_client,
+				 VIDEO_CONTROL_0, 0x06);
+	if (ret < 0)
+		DRM_DEV_ERROR(dev, "IO error : dpi phy set failed.\n");
+
+	return ret;
+}
+
+static int anx7625_dpi_config(struct anx7625_data *ctx)
+{
+	struct device *dev = &ctx->client->dev;
+	int ret;
+
+	DRM_DEV_DEBUG_DRIVER(dev, "config dpi\n");
+
+	/* DSC disable */
+	ret = anx7625_write_and(ctx, ctx->i2c.rx_p0_client,
+				R_DSC_CTRL_0, ~DSC_EN);
+	if (ret < 0) {
+		DRM_DEV_ERROR(dev, "IO error : disable dsc failed.\n");
+		return ret;
+	}
+
+	ret = anx7625_config_bit_matrix(ctx);
+	if (ret < 0) {
+		DRM_DEV_ERROR(dev, "config bit matrix failed.\n");
+		return ret;
+	}
+
+	ret = anx7625_api_dpi_config(ctx);
+	if (ret < 0) {
+		DRM_DEV_ERROR(dev, "mipi phy(dpi) setup failed.\n");
+		return ret;
+	}
+
+	/* set MIPI RX EN */
+	ret = anx7625_write_or(ctx, ctx->i2c.rx_p0_client,
+			       AP_AV_STATUS, AP_MIPI_RX_EN);
+	/* clear mute flag */
+	ret |= anx7625_write_and(ctx, ctx->i2c.rx_p0_client,
+				 AP_AV_STATUS, (u8)~AP_MIPI_MUTE);
+	if (ret < 0)
+		DRM_DEV_ERROR(dev, "IO error : enable mipi rx failed.\n");
+
+	return ret;
+}
+
+static int anx7625_hdcp_setting(struct anx7625_data *ctx)
+{
+	u8 bcap;
+	struct device *dev = &ctx->client->dev;
+
+	if (!ctx->pdata.hdcp_support || !ctx->hdcp_en) {
+		DRM_DEV_DEBUG_DRIVER(dev, "hdcp_support(%d), hdcp_en(%d)\n",
+				     ctx->pdata.hdcp_support, ctx->hdcp_en);
+		DRM_DEV_DEBUG_DRIVER(dev, "disable HDCP by config\n");
+		return anx7625_write_and(ctx, ctx->i2c.rx_p1_client,
+					 0xee, 0x9f);
+	}
+
+	anx7625_aux_dpcd_read(ctx, 0x06, 0x80, 0x28, 1, &bcap);
+	if (!(bcap & 0x01)) {
+		DRM_WARN("downstream not support HDCP 1.4, cap(%x).\n", bcap);
+		return anx7625_write_and(ctx, ctx->i2c.rx_p1_client,
+					 0xee, 0x9f);
+	}
+
+	DRM_DEV_DEBUG_DRIVER(dev, "enable HDCP 1.4\n");
+
+	return anx7625_write_or(ctx, ctx->i2c.rx_p1_client, 0xee, 0x20);
+}
+
 static void anx7625_dp_start(struct anx7625_data *ctx)
 {
 	int ret;
@@ -605,9 +722,13 @@ static void anx7625_dp_start(struct anx7625_data *ctx)
 		return;
 	}
 
-	anx7625_config_audio_input(ctx);
+	/* HDCP config */
+	anx7625_hdcp_setting(ctx);
 
-	ret = anx7625_dsi_config(ctx);
+	if (ctx->pdata.is_dpi)
+		ret = anx7625_dpi_config(ctx);
+	else
+		ret = anx7625_dsi_config(ctx);
 
 	if (ret < 0)
 		DRM_DEV_ERROR(dev, "MIPI phy setup error.\n");
@@ -688,8 +809,7 @@ static int sp_tx_get_edid_block(struct anx7625_data *ctx)
 	return c;
 }
 
-static int edid_read(struct anx7625_data *ctx,
-		     u8 offset, u8 *pblock_buf)
+static int edid_read(struct anx7625_data *ctx, u8 offset, u8 *pblock_buf)
 {
 	int ret, cnt;
 	struct device *dev = &ctx->client->dev;
@@ -992,8 +1112,9 @@ static void anx7625_chip_control(struct anx7625_data *ctx, int state)
 
 	if (state) {
 		atomic_inc(&ctx->power_status);
-		if (atomic_read(&ctx->power_status) == 1)
+		if (atomic_read(&ctx->power_status) == 1) {
 			anx7625_power_on_init(ctx);
+		}
 	} else {
 		if (atomic_read(&ctx->power_status)) {
 			atomic_dec(&ctx->power_status);
@@ -1051,6 +1172,7 @@ static void anx7625_start_dp_work(struct anx7625_data *ctx)
 		return;
 	}
 
+	ctx->hpd_status = 1;
 	ctx->hpd_high_cnt++;
 
 	/* Not support HDCP */
@@ -1060,8 +1182,10 @@ static void anx7625_start_dp_work(struct anx7625_data *ctx)
 	ret |= anx7625_write_or(ctx, ctx->i2c.rx_p1_client, 0xec, 0x10);
 	/* Interrupt for DRM */
 	ret |= anx7625_write_or(ctx, ctx->i2c.rx_p1_client, 0xff, 0x01);
-	if (ret < 0)
+	if (ret < 0) {
+		DRM_DEV_ERROR(dev, "fail to setting HDCP/auth\n");
 		return;
+	}
 
 	ret = anx7625_reg_read(ctx, ctx->i2c.rx_p1_client, 0x86);
 	if (ret < 0)
@@ -1080,6 +1204,10 @@ static void anx7625_hpd_polling(struct anx7625_data *ctx)
 	int ret, val;
 	struct device *dev = &ctx->client->dev;
 
+	/* Interrupt mode, no need poll HPD status, just return */
+	if (ctx->pdata.intp_irq)
+		return;
+
 	if (atomic_read(&ctx->power_status) != 1) {
 		DRM_DEV_DEBUG_DRIVER(dev, "No need to poling HPD status.\n");
 		return;
@@ -1130,6 +1258,21 @@ static void anx7625_remove_edid(struct anx7625_data *ctx)
 	ctx->slimport_edid_p.edid_block_num = -1;
 }
 
+static void anx7625_dp_adjust_swing(struct anx7625_data *ctx)
+{
+	int i;
+
+	for (i = 0; i < ctx->pdata.dp_lane0_swing_reg_cnt; i++)
+		anx7625_reg_write(ctx, ctx->i2c.tx_p1_client,
+				  DP_TX_LANE0_SWING_REG0 + i,
+				  ctx->pdata.lane0_reg_data[i] & 0xFF);
+
+	for (i = 0; i < ctx->pdata.dp_lane1_swing_reg_cnt; i++)
+		anx7625_reg_write(ctx, ctx->i2c.tx_p1_client,
+				  DP_TX_LANE1_SWING_REG0 + i,
+				  ctx->pdata.lane1_reg_data[i] & 0xFF);
+}
+
 static void dp_hpd_change_handler(struct anx7625_data *ctx, bool on)
 {
 	struct device *dev = &ctx->client->dev;
@@ -1145,9 +1288,8 @@ static void dp_hpd_change_handler(struct anx7625_data *ctx, bool on)
 	} else {
 		DRM_DEV_DEBUG_DRIVER(dev, " HPD high\n");
 		anx7625_start_dp_work(ctx);
+		anx7625_dp_adjust_swing(ctx);
 	}
-
-	ctx->hpd_status = 1;
 }
 
 static int anx7625_hpd_change_detect(struct anx7625_data *ctx)
@@ -1224,20 +1366,69 @@ static irqreturn_t anx7625_intr_hpd_isr(int irq, void *data)
 	return IRQ_HANDLED;
 }
 
+static int anx7625_get_swing_setting(struct device *dev,
+				     struct anx7625_platform_data *pdata)
+{
+	int num_regs;
+
+	if (of_get_property(dev->of_node,
+			    "analogix,lane0-swing", &num_regs)) {
+		if (num_regs > DP_TX_SWING_REG_CNT)
+			num_regs = DP_TX_SWING_REG_CNT;
+
+		pdata->dp_lane0_swing_reg_cnt = num_regs;
+		of_property_read_u32_array(dev->of_node, "analogix,lane0-swing",
+					   pdata->lane0_reg_data, num_regs);
+	}
+
+	if (of_get_property(dev->of_node,
+			    "analogix,lane1-swing", &num_regs)) {
+		if (num_regs > DP_TX_SWING_REG_CNT)
+			num_regs = DP_TX_SWING_REG_CNT;
+
+		pdata->dp_lane1_swing_reg_cnt = num_regs;
+		of_property_read_u32_array(dev->of_node, "analogix,lane1-swing",
+					   pdata->lane1_reg_data, num_regs);
+	}
+
+	return 0;
+}
+
 static int anx7625_parse_dt(struct device *dev,
 			    struct anx7625_platform_data *pdata)
 {
 	struct device_node *np = dev->of_node;
 	struct drm_panel *panel;
 	int ret;
+	int bus_type;
+
+	anx7625_get_swing_setting(dev, pdata);
 
+	pdata->is_dpi = 1; /* default dpi mode */
 	pdata->mipi_host_node = of_graph_get_remote_node(np, 0, 0);
 	if (!pdata->mipi_host_node) {
 		DRM_DEV_ERROR(dev, "fail to get internal panel.\n");
 		return -ENODEV;
 	}
 
-	DRM_DEV_DEBUG_DRIVER(dev, "found dsi host node.\n");
+	if (of_property_read_u32(pdata->mipi_host_node, "bus-type", &bus_type))
+		bus_type = 0;
+
+	if (bus_type == 5) /* bus type is Parallel(DSI) */
+		pdata->is_dpi = 0;
+
+	pdata->mipi_lanes = of_property_count_u32_elems(pdata->mipi_host_node,
+							"data-lanes");
+	if (pdata->mipi_lanes > MAX_LANES_SUPPORT || pdata->mipi_lanes <= 0)
+		pdata->mipi_lanes = MAX_LANES_SUPPORT;
+
+	if (pdata->is_dpi)
+		DRM_DEV_DEBUG_DRIVER(dev, "found MIPI DPI host node.\n");
+	else
+		DRM_DEV_DEBUG_DRIVER(dev, "found MIPI DSI host node.\n");
+
+	if (of_property_read_bool(np, "analogix,hdcp-support"))
+		pdata->hdcp_support = 1;
 
 	ret = drm_of_find_panel_or_bridge(np, 1, 0, &panel, NULL);
 	if (ret < 0) {
@@ -1300,9 +1491,13 @@ static enum drm_connector_status anx7625_sink_detect(struct anx7625_data *ctx)
 {
 	struct device *dev = &ctx->client->dev;
 
-	DRM_DEV_DEBUG_DRIVER(dev, "sink detect, return connected\n");
+	DRM_DEV_DEBUG_DRIVER(dev, "sink detect\n");
+
+	if (ctx->pdata.panel_bridge)
+		return connector_status_connected;
 
-	return connector_status_connected;
+	return ctx->hpd_status ? connector_status_connected :
+				     connector_status_disconnected;
 }
 
 static int anx7625_attach_dsi(struct anx7625_data *ctx)
@@ -1330,7 +1525,7 @@ static int anx7625_attach_dsi(struct anx7625_data *ctx)
 		return -EINVAL;
 	}
 
-	dsi->lanes = 4;
+	dsi->lanes = ctx->pdata.mipi_lanes;
 	dsi->format = MIPI_DSI_FMT_RGB888;
 	dsi->mode_flags = MIPI_DSI_MODE_VIDEO	|
 		MIPI_DSI_MODE_VIDEO_SYNC_PULSE	|
@@ -1376,10 +1571,12 @@ static int anx7625_bridge_attach(struct drm_bridge *bridge,
 		return -ENODEV;
 	}
 
-	err = anx7625_attach_dsi(ctx);
-	if (err) {
-		DRM_DEV_ERROR(dev, "Fail to attach to dsi : %d\n", err);
-		return err;
+	if (!ctx->pdata.is_dpi) {
+		err = anx7625_attach_dsi(ctx);
+		if (err) {
+			DRM_DEV_ERROR(dev, "Fail to attach to dsi : %d\n", err);
+			return err;
+		}
 	}
 
 	if (ctx->pdata.panel_bridge) {
@@ -1478,6 +1675,10 @@ static bool anx7625_bridge_mode_fixup(struct drm_bridge *bridge,
 
 	DRM_DEV_DEBUG_DRIVER(dev, "drm mode fixup set\n");
 
+	/* No need fixup for external monitor */
+	if (!ctx->pdata.panel_bridge)
+		return true;
+
 	hsync = mode->hsync_end - mode->hsync_start;
 	hfp = mode->hsync_start - mode->hdisplay;
 	hbp = mode->htotal - mode->hsync_end;
@@ -1786,8 +1987,13 @@ static int anx7625_i2c_probe(struct i2c_client *client,
 
 	platform->bridge.funcs = &anx7625_bridge_funcs;
 	platform->bridge.of_node = client->dev.of_node;
-	platform->bridge.ops = DRM_BRIDGE_OP_EDID | DRM_BRIDGE_OP_HPD;
-	platform->bridge.type = DRM_MODE_CONNECTOR_eDP;
+	platform->bridge.ops = DRM_BRIDGE_OP_EDID;
+	if (!platform->pdata.panel_bridge)
+		platform->bridge.ops |= DRM_BRIDGE_OP_HPD |
+					DRM_BRIDGE_OP_DETECT;
+	platform->bridge.type = platform->pdata.panel_bridge ?
+				    DRM_MODE_CONNECTOR_eDP :
+				    DRM_MODE_CONNECTOR_DisplayPort;
 	drm_bridge_add(&platform->bridge);
 
 	DRM_DEV_DEBUG_DRIVER(dev, "probe done\n");
diff --git a/drivers/gpu/drm/bridge/analogix/anx7625.h b/drivers/gpu/drm/bridge/analogix/anx7625.h
index 193ad86..127081e 100644
--- a/drivers/gpu/drm/bridge/analogix/anx7625.h
+++ b/drivers/gpu/drm/bridge/analogix/anx7625.h
@@ -141,12 +141,20 @@
 #define  HORIZONTAL_BACK_PORCH_H      0x22  /* Bit[7:4] are reserved */
 
 /******** END of I2C Address 0x72 *********/
+
+/***************************************************************/
+/* Register definition of device address 0x7a */
+#define DP_TX_SWING_REG_CNT		0x14
+#define DP_TX_LANE0_SWING_REG0		0x00
+#define DP_TX_LANE1_SWING_REG0		0x14
+/******** END of I2C Address 0x7a *********/
+
 /***************************************************************/
 /* Register definition of device address 0x7e */
 
 #define  I2C_ADDR_7E_FLASH_CONTROLLER  0x7E
 
-#define FLASH_LOAD_STA 0x05
+#define FLASH_LOAD_STA          0x05
 #define FLASH_LOAD_STA_CHK	BIT(7)
 
 #define  XTAL_FRQ_SEL    0x3F
@@ -347,11 +355,20 @@ struct s_edid_data {
 
 /***************** Display End *****************/
 
+#define MAX_LANES_SUPPORT	4
+
 struct anx7625_platform_data {
 	struct gpio_desc *gpio_p_on;
 	struct gpio_desc *gpio_reset;
 	struct drm_bridge *panel_bridge;
 	int intp_irq;
+	int is_dpi;
+	int mipi_lanes;
+	int hdcp_support;
+	int dp_lane0_swing_reg_cnt;
+	int lane0_reg_data[DP_TX_SWING_REG_CNT];
+	int dp_lane1_swing_reg_cnt;
+	int lane1_reg_data[DP_TX_SWING_REG_CNT];
 	u32 low_power_mode;
 	struct device_node *mipi_host_node;
 };
@@ -371,6 +388,7 @@ struct anx7625_data {
 	atomic_t power_status;
 	int hpd_status;
 	int hpd_high_cnt;
+	int hdcp_en;
 	/* Lock for work queue */
 	struct mutex lock;
 	struct i2c_client *client;
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 48DDB26C0D0
	for <lists+driverdev-devel@lfdr.de>; Wed, 16 Sep 2020 11:39:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B701186A2B;
	Wed, 16 Sep 2020 09:39:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hRNQXTKEj2yq; Wed, 16 Sep 2020 09:39:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 07916869DE;
	Wed, 16 Sep 2020 09:39:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3DF9D1BF40B
 for <devel@linuxdriverproject.org>; Wed, 16 Sep 2020 09:39:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3099D2046F
 for <devel@linuxdriverproject.org>; Wed, 16 Sep 2020 09:39:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wJQ-valzsE07 for <devel@linuxdriverproject.org>;
 Wed, 16 Sep 2020 09:39:07 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam10on2101.outbound.protection.outlook.com [40.107.93.101])
 by silver.osuosl.org (Postfix) with ESMTPS id E06462083F
 for <devel@driverdev.osuosl.org>; Wed, 16 Sep 2020 09:39:06 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fC8Y/pH8neYKAThE7fd9P7rHFyuGvGSOZ71o5tRMxvzwklRjA6NJmQMoN7sDZS1K1jRHIRtvS/WMb1W+gIDRsAENmKXXIHCLHacF6vsEksvLMmixZtRNi9CZoX1TtYj8aR9TwF+X/dYprCkr817sOwkKgDEskQV3vSupihI4xmkZp+ZLhRMVP+SQLoV6czCd0f3ob8+9o/NsJjy4EQcf8Bhhl88gTrmNUQ+GBVPHkUmvmHP1ntPOBh+ip1S+wT4V93udKNW1XrvWTd3Nu/BhY7qPgKUT/QYh5KZjxV0pOtvUpVS+/zE64uMu4CBPYgzJMAfR2C9tQdIHxtR1/Qt9pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CIoE/htBsA6fTejMxQzuVVxCxAW9gdkskMDSoebDosA=;
 b=QPUY1Vm5tZk/Mh+0+oZ4Jivgo1jgK2TEOSnjFSvTOflkh90JesUkcAjac7Z0sMLmo9B3NOiH85ipl0rkJiEmzTFE6J1P0fqWOlFWdfBi0a2wD1TK2JQYRI5Hvxg8FR5stmASbGTN4yI4qq+LOyIr0iS9PdPW0mQaQHN1CzmBnnSa1WdXMQ1O3j84iCiibf+ap+HA6s2LvRC4ncYl1WUT05FZRzyZNq9fyUNZRUJgL+mOXCCZxHzaFyAScYHIW+HsmsT/FFcWppXbPPBCJ4c0ICgxhBJaV+iqkZ0+2PJ63jIdnZKkxxXA1LCglC3bhUikgFWGKhTTD5PvX5dVxL3iWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analogixsemi.com; dmarc=pass action=none
 header.from=analogixsemi.com; dkim=pass header.d=analogixsemi.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Analogixsemi.onmicrosoft.com; s=selector2-Analogixsemi-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CIoE/htBsA6fTejMxQzuVVxCxAW9gdkskMDSoebDosA=;
 b=IhHIJ7y+/MOESQrQQVmYhmqK8TVpKCe/0NHy7YPRNHgjcFYCntEQPI8v6fSXOrQFC0VU9zkvF2miXdT6KMJ7AIgH5N0OO/o9bLfb/C8aZ5e7twQzKJVIfK7Z01BQh1Y+pDxx1O9LfcP3vwmLFxhUQJRmgT8HB/kEDEfeg0k1Izg=
Authentication-Results: analogixsemi.com; dkim=none (message not signed)
 header.d=none;analogixsemi.com; dmarc=none action=none
 header.from=analogixsemi.com;
Received: from BY5PR04MB6739.namprd04.prod.outlook.com (2603:10b6:a03:229::8)
 by BYAPR04MB4648.namprd04.prod.outlook.com (2603:10b6:a03:59::25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3391.11; Wed, 16 Sep
 2020 09:23:16 +0000
Received: from BY5PR04MB6739.namprd04.prod.outlook.com
 ([fe80::1dc0:7d4b:9820:e68]) by BY5PR04MB6739.namprd04.prod.outlook.com
 ([fe80::3c04:982f:7d75:779e%7]) with mapi id 15.20.3370.019; Wed, 16 Sep 2020
 09:23:16 +0000
Date: Wed, 16 Sep 2020 17:16:47 +0800
From: Xin Ji <xji@analogixsemi.com>
To: devel@driverdev.osuosl.org,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Andrzej Hajda <a.hajda@samsung.com>, Nicolas Boichat <drinkcat@google.com>,
 Sam Ravnborg <sam@ravnborg.org>
Subject: [PATCH v15 0/2] Add initial support for slimport anx7625
Message-ID: <cover.1600239656.git.xji@analogixsemi.com>
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
X-ClientProxiedBy: HKAPR03CA0017.apcprd03.prod.outlook.com
 (2603:1096:203:c8::22) To BY5PR04MB6739.namprd04.prod.outlook.com
 (2603:10b6:a03:229::8)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pc-user (114.247.245.146) by
 HKAPR03CA0017.apcprd03.prod.outlook.com (2603:1096:203:c8::22) with Microsoft
 SMTP Server (version=TLS1_0, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA) id
 15.20.3391.6 via Frontend Transport; Wed, 16 Sep 2020 09:23:15 +0000
X-Originating-IP: [114.247.245.146]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e2c37a11-779b-4bd8-eb55-08d85a222459
X-MS-TrafficTypeDiagnostic: BYAPR04MB4648:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <BYAPR04MB464855BC30C35F327B8A4C22C7210@BYAPR04MB4648.namprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: hFSHUz4UQj0b77ug/fFhK8TrdkwWCp7lVXs9+FcpVdcSfEI8rYWYsZZXLSI5vUzJtysSKEyzhL22Fwv+4N5frLCZBqDPHNnN8bEi6HF9MNEQJtLrpUeEHsNV/8Tr/2ZXI3jDoefVUzE2antXg0k+qIdH5B/zgP8kBkuDpJv7uPx6/s4FBTO6k0ZmrR53yfab2NQAy5XvCbRqQvCW8mXiqucqsPtbv1duwtJ5RRmYAc/1qKGdDq6xx9K2EFe/DDuHH+R7myapZSDb7i9ni2Sa4ft+dKUiC1MNUpz23kWaweAbMP5YujVFxJo/0ZDTJpa7
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR04MB6739.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(346002)(136003)(366004)(39840400004)(396003)(26005)(66946007)(110136005)(2616005)(956004)(478600001)(4326008)(107886003)(6486002)(66556008)(66476007)(8676002)(6496006)(7416002)(86362001)(16526019)(52116002)(186003)(83380400001)(6666004)(54906003)(316002)(8936002)(5660300002)(2906002)(36756003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: aAo03JpSj6/m4XorsoLdR8lVn1P15sgJpOMFCxbj1ThyyjzAPlV5rZnCwkLX4m/PvpcWomCp8VhqiubtZFYPwtrMBeHs8A1XmvXA773a3hIxgXOPZxdNoJcC5bBiQlIWGOiMfz4QMdHJaX1eF1Bwi4xAOlEdIn07GCGAqGZyJqX6bFNIFlle09WfQtvFSU/OSy7jBSIglsh4io9ht3xPS5lHUWYWPCpuJrsLKb4cvIeuMpYEf0iMiueW3QURuVWwm2XS7IoyLyJYNA4T4196EbDhGGg3L83Ta9N+8L/u/W9bsR+FSbtVaykOeUM3nzkeNaXnQkauJmXj0GwBN3OkCw2HfNy3zt9uBTtL1EV2uejwvRMnXDJusD1p/IO7jqUn0l7HskmA7FcIPjOZd+/AamHGf4tQzwQoaTIFEhfdsix+ET0zTGkqnirXRO3HkJ+eLeZEURq3NYTLU0JPN1eaE2D1AT9q5i3tgN5tnaHwu8pOc9ChAGJbuOtFiUIQJn3PdE9DH41ArwKNfJu09rn2xMiTQzKW+ZZCuHmXBUwa1h/VpnWnhQMN/SHyH4qH3T1/5leNIFwrSdsGVzjWyBvZnLXOY+ugGrZSFdUgTaQzIZrLaPBT+EFxqUsyOWm6ZzIPmD6WLU4WuAY5eu9ccxHm/g==
X-OriginatorOrg: analogixsemi.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e2c37a11-779b-4bd8-eb55-08d85a222459
X-MS-Exchange-CrossTenant-AuthSource: BY5PR04MB6739.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Sep 2020 09:23:16.0157 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b099b0b4-f26c-4cf5-9a0f-d5be9acab205
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DnNf3Qo3qjkJ7NDvyBa0rKY8B5DY1lRqf8Gc16R1FDmNtVdd2HE9cru3t9uQ2yZB56QYja7kFMNb51BAK3YdmA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4648
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
Cc: Jernej Skrabec <jernej.skrabec@siol.net>,
 Nicolas Boichat <drinkcat@chromium.org>, Pi-Hsun Shih <pihsun@chromium.org>,
 Jonas Karlman <jonas@kwiboo.se>, David Airlie <airlied@linux.ie>,
 Neil Armstrong <narmstrong@baylibre.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Sheng Pan <span@analogixsemi.com>,
 Daniel Vetter <daniel@ffwll.ch>, Hsin-Yi Wang <hsinyi@chromium.org>,
 Sam Ravnborg <sam@ravnborg.org>, Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi all,

The following series add support for the Slimport ANX7625 transmitter, a
ultra-low power Full-HD 4K MIPI to DP transmitter designed for portable device.


This is the v15 version, any mistakes, please let me know, I will fix it in
the next series.

Change history:
v15: Fix comments from Sam and Hsin-Yi Wang
 - Remove connector
 - Allocate memory for edid at ".get_edid()"

v14: Fix comments from Sam and Nicolas
 - Check flags at drm_bridge_attach
 - Use panel_bridge instead of drm_panel
 - Fix not correct return value

v13: Fix comments from Launrent Pinchart and Rob Herring
 - Picked up Rob's Reviewed-By
 - Add .detect and .get_edid interface in bridge funcs.

v12: Fix comments from Hsin-Yi Wang
 - Rebase the code on kernel 5.7, fix DRM interface not match issue.

v11: Fix comments from Rob Herring
 - Update commit message.
 - Remove unused label.

v10: Fix comments from Rob Herring, Daniel.
 - Fix dt_binding_check warning.
 - Update description.

v9: Fix comments from Sam, Nicolas, Daniel
 - Remove extcon interface.
 - Remove DPI support.
 - Fix dt_binding_check complains.
 - Code clean up and update description.

v8: Fix comments from Nicolas.
 - Fix several coding format.
 - Update description.

v7:
 - Fix critical timing(eg:odd hfp/hbp) in "mode_fixup" interface,
   enhance MIPI RX tolerance by setting register MIPI_DIGITAL_ADJ_1 to 0x3D.



Xin Ji (2):
  dt-bindings: drm/bridge: anx7625: MIPI to DP transmitter DT schema
  drm/bridge: anx7625: Add anx7625 MIPI DSI/DPI to DP

 .../bindings/display/bridge/analogix,anx7625.yaml  |   95 +
 drivers/gpu/drm/bridge/analogix/Kconfig            |    9 +
 drivers/gpu/drm/bridge/analogix/Makefile           |    1 +
 drivers/gpu/drm/bridge/analogix/anx7625.c          | 1848 ++++++++++++++++++++
 drivers/gpu/drm/bridge/analogix/anx7625.h          |  390 +++++
 5 files changed, 2343 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml
 create mode 100644 drivers/gpu/drm/bridge/analogix/anx7625.c
 create mode 100644 drivers/gpu/drm/bridge/analogix/anx7625.h

-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

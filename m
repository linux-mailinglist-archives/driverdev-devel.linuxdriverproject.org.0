Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F3D571F34B0
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Jun 2020 09:15:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2481B87C51;
	Tue,  9 Jun 2020 07:15:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d-qDyqIFPIJA; Tue,  9 Jun 2020 07:15:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BF7388763B;
	Tue,  9 Jun 2020 07:15:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D44331BF4DA
 for <devel@linuxdriverproject.org>; Tue,  9 Jun 2020 07:15:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D0C848487B
 for <devel@linuxdriverproject.org>; Tue,  9 Jun 2020 07:15:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dfIpFOmWPbmd for <devel@linuxdriverproject.org>;
 Tue,  9 Jun 2020 07:15:23 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam12on2108.outbound.protection.outlook.com [40.107.237.108])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CFCE484628
 for <devel@driverdev.osuosl.org>; Tue,  9 Jun 2020 07:15:22 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b5IiVIqsZ34lu/t+OqLyIIB8jbLTokEfiPpSI8KVeTKJ3XtsRqaCfz+Gdd58Q6bpj+kk1sXKNHP37Xj30O4DszJ8OjhW3A4beo7zI+A64zdbMveBjhNo6BrZwyduGzNdSZTr5WyIMMW+bqDS8HHHiXIfRlRDxiF9jT77pqRbICZJmI7oIDGtAHlwI32w4e5AN+mOsKwLvZq+P/uX4tB+gXh58pBdlrFvBHXc5Q7L3Dir9/wVjcgmWKomCZTJPlJkLos7NnPE+ooPMcpRdcPFZ0locgpR81tN5Z12J4/dy3atfYzWxiJSBFHHiTGjl41hlYCl+0yaPlZUuPJB7sRVfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AuZlxXLUqFi0cKblXAz87TLIpAINl9GqPIYvWXWBUxI=;
 b=hm+kZq/7PG4F194MddtCbK2RL2alXeZbkm3gtqmnroIFHugIu5Hu9OWOAkBfDWsOLSw4x9BetOyHRGznzBpGI/R6s4Rt2VUVjPTmt9oahIoRc6dQi2LEgVZZI5JNcJKr0aYerV4oOIJD137XYyZ7qHXP76Ca+h163AL83/MxB2Q4cHlxpYNj+JB0irZ7BtBcgvM7xr+VrJUTjeULuTzBI4ciC/sjQjsgNcF5GpZbADig2k/zjlJcXbb0DTkFCZyXVZ7tbBx0PgoRakAYczYUPbnCDM5H3S1WYum/BITu0/mO8MKtA/bA46w7N+IT33O0GPcH8X+5KA+WhKJlpE647A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analogixsemi.com; dmarc=pass action=none
 header.from=analogixsemi.com; dkim=pass header.d=analogixsemi.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Analogixsemi.onmicrosoft.com; s=selector2-Analogixsemi-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AuZlxXLUqFi0cKblXAz87TLIpAINl9GqPIYvWXWBUxI=;
 b=v/Is4vNtFge2RMEhI2haSoH2gj86VLZ4zJx8GqFjJZS6qxbQDh8DXZoIWs6IjiufBWc8W4rmeUVy5pUBJ9rzg867Fe/LmRuBxI6V5MR1XaH0wXTVo9TJuKxqSsgvLe9YI6m8M6Ah3GYJS4xe9RFVB2yiMr8E0o6m+I9l+pA6wOI=
Authentication-Results: analogixsemi.com; dkim=none (message not signed)
 header.d=none;analogixsemi.com; dmarc=none action=none
 header.from=analogixsemi.com;
Received: from BY5PR04MB6739.namprd04.prod.outlook.com (2603:10b6:a03:229::8)
 by BY5PR04MB6641.namprd04.prod.outlook.com (2603:10b6:a03:22b::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.18; Tue, 9 Jun
 2020 07:15:19 +0000
Received: from BY5PR04MB6739.namprd04.prod.outlook.com
 ([fe80::844e:398b:2165:631b]) by BY5PR04MB6739.namprd04.prod.outlook.com
 ([fe80::844e:398b:2165:631b%7]) with mapi id 15.20.3066.023; Tue, 9 Jun 2020
 07:15:19 +0000
Date: Tue, 9 Jun 2020 15:15:10 +0800
From: Xin Ji <xji@analogixsemi.com>
To: devel@driverdev.osuosl.org,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Andrzej Hajda <a.hajda@samsung.com>, Nicolas Boichat <drinkcat@google.com>,
 Sam Ravnborg <sam@ravnborg.org>
Subject: [PATCH v13 0/2] Add initial support for slimport anx7625
Message-ID: <cover.1591345160.git.xji@analogixsemi.com>
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
X-ClientProxiedBy: HK2PR0302CA0014.apcprd03.prod.outlook.com
 (2603:1096:202::24) To BY5PR04MB6739.namprd04.prod.outlook.com
 (2603:10b6:a03:229::8)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from xin-VirtualBox (114.247.245.254) by
 HK2PR0302CA0014.apcprd03.prod.outlook.com (2603:1096:202::24) with Microsoft
 SMTP Server (version=TLS1_0, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA) id
 15.20.3088.9 via Frontend Transport; Tue, 9 Jun 2020 07:15:18 +0000
X-Originating-IP: [114.247.245.254]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 64913bbe-0f4f-4510-074d-08d80c44dde9
X-MS-TrafficTypeDiagnostic: BY5PR04MB6641:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <BY5PR04MB66418D59D505E5C6F05F546EC7820@BY5PR04MB6641.namprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-Forefront-PRVS: 042957ACD7
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HvqNDo8LF5sINnowXKXkiaTOfWKnN1eTvNacJkyjp794gvEdv01TvTHbgY5bTqsvngTDjtQ79zblp03DnrNDaMyXi7YAeSDDxPpPscL2ytqz5bPXNJtY4T8kH9b2pa+wIEglbyUtEOwZqDgLBYwBrD/6dx56gWyaoOgH908rOAYYXOOCm9OvrP9193OLfyRuiW90+ZhLRD96p7rs7JWef0SM3qgFbmmmRN1yDIOTIBvVC2f7u+UxBPVvDSNJGOnNYZzXK+gw/KA+jJKPxVaLfomZ54uMcRcX7l8K/h5GR1h9eERezSYWd47olyR1a4mr
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR04MB6739.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39840400004)(396003)(346002)(376002)(136003)(366004)(2616005)(316002)(26005)(86362001)(186003)(478600001)(7416002)(54906003)(6496006)(5660300002)(8936002)(8676002)(110136005)(83380400001)(16526019)(6666004)(52116002)(2906002)(6486002)(66946007)(66556008)(107886003)(956004)(66476007)(36756003)(4326008);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: McWfjk+xL3+NE0KbW++ErEe3cVtST0/N0ab4SRKUiIlx8ax2wjfgcx5LlZquuldtbObGsq6GPSpZBq+48ti/OSuiEuFB8ZRJVeBJ1kofl/7oe5anGvL/EZinlzo3joXd7ugUEXBjLhbkuhsG1gAtfyuRysibkgYWFVJya3ViGPyGb64c26jBGgczCPbM/QfCdNkkApNfTlpV802cC5Pmlk3D6Wi72v76PW6X3wSGrJUifBSVCx5tm6mDeUeJgyM/6MkbM2vbwwzddGToAgX5ir5XNzVzi//SjgOICjN6xJhrMSPQI3xN4ih0vRsebKjTG8GuP/AaRApgggpP940By0AmXmp7bn7/1s45wGgXTgXbVMRwcqqHcZHrKPncY3wWkf6fw0GqrkYxQDBE2B28ktngLZncNhrPgY162Mu4YanueWOl78YQj7oW8Svh+HlYYaSIdlCjTVwDh1mMSL6WtAP1kXPK3+hAF8qzA+u9c4E=
X-OriginatorOrg: analogixsemi.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 64913bbe-0f4f-4510-074d-08d80c44dde9
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jun 2020 07:15:19.5421 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b099b0b4-f26c-4cf5-9a0f-d5be9acab205
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Iq4IofRz8bQkoATKNh49eIDhZ2gDl/JQLRf4S6ADNrPLtb8ek9hXgp8wb0yAajCRg47zM94QKzZB8OGBjkljLQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR04MB6641
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
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi all,

The following series add support for the Slimport ANX7625 transmitter, a
ultra-low power Full-HD 4K MIPI to DP transmitter designed for portable device.


This is the v13 version, any mistakes, please let me know, I will fix it in
the next series.

Change history:
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
 drivers/gpu/drm/bridge/analogix/anx7625.c          | 1999 ++++++++++++++++++++
 drivers/gpu/drm/bridge/analogix/anx7625.h          |  397 ++++
 5 files changed, 2501 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml
 create mode 100644 drivers/gpu/drm/bridge/analogix/anx7625.c
 create mode 100644 drivers/gpu/drm/bridge/analogix/anx7625.h

-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

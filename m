Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 898041BF0E7
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 Apr 2020 09:11:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5C10324BEA;
	Thu, 30 Apr 2020 07:11:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Jr65UuudumP0; Thu, 30 Apr 2020 07:11:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 07C9A241AE;
	Thu, 30 Apr 2020 07:11:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7BAB91BF2C5
 for <devel@linuxdriverproject.org>; Thu, 30 Apr 2020 07:11:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6C55B20494
 for <devel@linuxdriverproject.org>; Thu, 30 Apr 2020 07:11:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NvmVRDVYrv+B for <devel@linuxdriverproject.org>;
 Thu, 30 Apr 2020 07:11:46 +0000 (UTC)
X-Greylist: delayed 00:55:16 by SQLgrey-1.7.6
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam12on2139.outbound.protection.outlook.com [40.107.243.139])
 by silver.osuosl.org (Postfix) with ESMTPS id F360420480
 for <devel@driverdev.osuosl.org>; Thu, 30 Apr 2020 07:11:45 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z+8Uudeny5BNLp3Q0/P/DHldv4j45jaqps0C5i78EtlDL9p3rtsY2I8Cll5a8HmQxpX6UeSjysJQVJR/FDbdglaM7nTzmSK52KmCfeTwd2K1vU+bV4sz/AjSy8cek0NtP4aiyeDxqj6lm9V34ETAdQspsvQ36aiHFTcfwmuw74ixuiybaYp+XEdMtwDjNG7izddrTXzXYqgCwBvg9Ue4dUkcwDrxtygnoTSvl/iNhLegR0K3QnqN8dIydgy/+fvnZnZKP2+rElAK66oRthQvB33Den/gTRlmUU8EPysj5/eua9vZmLwwMWpG5ittjtJKzqxYZ6cIy2grwScqfZ+mqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7WuBUVlWgpBMUbPyjFwQhRNPabq+j8B7KhAkNtWxSmE=;
 b=fg/8B1zDnUwXCx3569ry5U4PAavG61Lklj9c1cUAf2/Y782XA/L9jCHUdPD7zElIc5r8r/MXW4PQY5NTSvJiULOxc4SV2xHDCYvfyREIzQdDIau7ifcvQYMuMfhF71R+Stg3VOb326EWYCuTHKqsjMyhuNsfkrZbbOTgXL9jmZFCQdrbyuR5vkVkWMySEVDPnSfMb6HU+jo+FrjEMjxdxB/reoFtrafQ+RqPjYU2szLhiG4jAFjeuB0duxJPPS26l7Fg6vUyQNZLmr9Z1cWX3n6mCPUXvxG+Qcu2UmIdNmjWYNLLwr5ali8L3E1i2tIt1HPAONh28GF9qW4D+d0stQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analogixsemi.com; dmarc=pass action=none
 header.from=analogixsemi.com; dkim=pass header.d=analogixsemi.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Analogixsemi.onmicrosoft.com; s=selector2-Analogixsemi-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7WuBUVlWgpBMUbPyjFwQhRNPabq+j8B7KhAkNtWxSmE=;
 b=kUsn5DrBtLJa7urgVZCAjav8/Pl0Z4ZwNYnqzuGj9vK15G7iCilpznYhLz9/cjyQoOFSSFz5cmngEwj18ca0LqoUkEIFVecpbBW0oWdPAmsoG6vxM6V0R/CqdVzFSd0VoC7M6nXnuv18WvbESd0+AyEyNHkr3xEWya47/MbDCMw=
Authentication-Results: analogixsemi.com; dkim=none (message not signed)
 header.d=none;analogixsemi.com; dmarc=none action=none
 header.from=analogixsemi.com;
Received: from BY5PR04MB6739.namprd04.prod.outlook.com (2603:10b6:a03:229::8)
 by BY5PR04MB6898.namprd04.prod.outlook.com (2603:10b6:a03:22a::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.20; Thu, 30 Apr
 2020 07:11:43 +0000
Received: from BY5PR04MB6739.namprd04.prod.outlook.com
 ([fe80::4517:bcc8:a3bd:407f]) by BY5PR04MB6739.namprd04.prod.outlook.com
 ([fe80::4517:bcc8:a3bd:407f%6]) with mapi id 15.20.2958.020; Thu, 30 Apr 2020
 07:11:43 +0000
Date: Thu, 30 Apr 2020 15:11:35 +0800
From: Xin Ji <xji@analogixsemi.com>
To: Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH v8 2/2] drm/bridge: anx7625: Add anx7625 MIPI DSI/DPI to
 DP bridge driver
Message-ID: <20200430071135.GA9227@xin-VirtualBox>
References: <cover.1587880280.git.xji@analogixsemi.com>
 <4d14400b6c19f17c28267f6ebdbce9673333c05c.1587880280.git.xji@analogixsemi.com>
 <20200427200044.GC15880@ravnborg.org>
 <20200430062416.GD6645@xin-VirtualBox>
 <20200430070324.GA9545@ravnborg.org>
Content-Disposition: inline
In-Reply-To: <20200430070324.GA9545@ravnborg.org>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-ClientProxiedBy: HK0PR03CA0119.apcprd03.prod.outlook.com
 (2603:1096:203:b0::35) To BY5PR04MB6739.namprd04.prod.outlook.com
 (2603:10b6:a03:229::8)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from xin-VirtualBox (114.247.245.254) by
 HK0PR03CA0119.apcprd03.prod.outlook.com (2603:1096:203:b0::35) with Microsoft
 SMTP Server (version=TLS1_0, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA) id
 15.20.2958.20 via Frontend Transport; Thu, 30 Apr 2020 07:11:42 +0000
X-Originating-IP: [114.247.245.254]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5a32fb6e-4f42-4283-b494-08d7ecd5bc53
X-MS-TrafficTypeDiagnostic: BY5PR04MB6898:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <BY5PR04MB6898917B4C14CDAFE1135FE3C7AA0@BY5PR04MB6898.namprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3968;
X-Forefront-PRVS: 0389EDA07F
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: l2BKUNAD/XT51yDC5exT1UY0/41zSzLzEa3T8NuqK12ZoPGkcPsglDZVrB9EDNyAlRS5SymR047E62bjqwuSJj+mjjY0DDqzguidQUHbcY66ej/M7Nszus5kHEfap4IxqzdgXmEQ/UKWhhA+1KR4JjmMAxrNIlQg75fh8YC4i6ZR/qkEVRD0EYeUqiiYflCyOZZL4DjBuq7tG9pnj4+h5xyXwXTHf5uCHhhozkvglgKcujZAWygZUvhRPMcfSHlSN9M6hT7JTrywt7iUEp9/jrFQntJ4s9jVBsSB4vJZnkjUrmJ+IRAcn4sb5y4n4YKhd+kbcPbFdUmrOD1C1m53rkUHVnyGjVG5Idyr64HV5IkvNEttBAFf7K/yhFtI6on3IT883/O/tpKlaerOE+7vI75N++0Z4Bfxv0ijWJ89UwU2JZ9cwprHWEfgfUV3gqwo
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR04MB6739.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(376002)(136003)(39840400004)(366004)(346002)(396003)(6666004)(66946007)(16526019)(2906002)(33656002)(186003)(86362001)(66476007)(66556008)(6916009)(52116002)(6496006)(4326008)(33716001)(956004)(1076003)(55016002)(54906003)(26005)(478600001)(8936002)(316002)(8676002)(107886003)(5660300002)(7416002)(9686003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: EKd2MEA3/VXN/DOjZFwPxpTViFCBp06Ox/+hSS0ygJHwCuqixKBKqGO1uIUOOVviBYZnE4KQE3ynNtdSVQYVVe1LlQxoFUbUkMwvl1MFQEqzCDm9kLUjhJnsaDWz0dDWvencKm7eew609gL0LUF+HJnd3m/uI+AXv+cgOw36rjODYfxWW5j3dIPg1REa7tfP/HHAa2f+AmZTvCOQBrq/cPBuYMtv+lgP/PoGBG/IZPArMWtZmIluB45XifbNzUB0Mf0PXiJf3u9gQjla2kecYJa6N3aITPeuKsjfIigCaTRksdGes413Wo4NFxlgFPXMreSOBEioIFHWlxBz13+Zi8IL4KN4ErpwphBFQz4KNrDL4Zcmcev+Lm0MSFpVcrJp6RW4+AXPo59KFr4TALxXtavykyP7gQ4IcAOIh3PRQ6oXGm6dSzXW676/bkm8DpqSGRicVlTt6ibI9Vttxv6nVLViprUGzrEQmnAQGDUmMknh+8xGUyGHHVhb0+Anx1CS4SOGQQ8RUL4kKb1gsD0F0UC0fZIv9LCMON4/tlWxI55ZMI68H11UF7kBNLSpMpotoO62hhtXlnktE4jVLwnpsVX+S+DuytD/g72BFFbbXqADQrH2GlkP93K90+5Ozcr0U3hyKQECuTAkkrXi7DILv+rGwt2izh38+uTtYPKvmvQOlBzwr6DIii7akax4et/roVttwLykuI8g/nqnQT6kGjxC8E08ZEvdHSPVm2INGAE0VN4pFrFGXCN8p8V6VI9FhFHkIYqN4KjE0ftsv/pwM22cjGt1D5mpD08PzKjZNcy+EGlrb5M+JbxetKSF1twz
X-OriginatorOrg: analogixsemi.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a32fb6e-4f42-4283-b494-08d7ecd5bc53
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Apr 2020 07:11:43.1580 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b099b0b4-f26c-4cf5-9a0f-d5be9acab205
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kPugLoz4p1CPMWos7TNJhXFfK0mbBvGi5yTAu1s5rfy8ddNu8fyIlhZqP7vCpKRg/+X2EPSYFT6/ESDFCYBt+Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR04MB6898
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
 Pi-Hsun Shih <pihsun@chromium.org>, Jonas Karlman <jonas@kwiboo.se>,
 David Airlie <airlied@linux.ie>, Neil Armstrong <narmstrong@baylibre.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Dan Carpenter <dan.carpenter@oracle.com>,
 Sheng Pan <span@analogixsemi.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Apr 30, 2020 at 09:03:24AM +0200, Sam Ravnborg wrote:
> Hi Xin Ji.
> 
> > > > +static void anx7625_power_on_init(struct anx7625_data *ctx)
> > > > +{
> > > > +	int retry_count, i;
> > > > +	int ret;
> > > > +	struct device *dev = &ctx->client->dev;
> > > > +
> > > > +	for (retry_count = 0; retry_count < 3; retry_count++) {
> > > > +		anx7625_power_on(ctx);
> > > > +		anx7625_config(ctx);
> > > > +
> > > > +		for (i = 0; i < OCM_LOADING_TIME; i++) {
> > > Code in this for loop is a candidate for a helper function.
> > I didn't find any helper function can be used, so I'll keep it.
> I was not very clear in my way to express this, sorry.
> 
> > > 
> > > > +			/* check interface workable */
> > > > +			ret = anx7625_reg_read(ctx, ctx->i2c.rx_p0_client,
> > > > +					       FLASH_LOAD_STA);
> > > > +			if (ret < 0) {
> > > > +				DRM_ERROR("IO error : access flash load.\n");
> > > > +				return;
> > > > +			}
> > > > +			if ((ret & FLASH_LOAD_STA_CHK) == FLASH_LOAD_STA_CHK) {
> > > > +				anx7625_disable_pd_protocol(ctx);
> > > > +				DRM_DEV_DEBUG_DRIVER(dev,
> > > > +						     "Firmware ver %02x%02x,",
> > > > +					anx7625_reg_read(ctx,
> > > > +							 ctx->i2c.rx_p0_client,
> > > > +							 OCM_FW_VERSION),
> > > > +					anx7625_reg_read(ctx,
> > > > +							 ctx->i2c.rx_p0_client,
> > > > +							 OCM_FW_REVERSION));
> > > > +				DRM_DEV_DEBUG_DRIVER(dev, "Driver version %s\n",
> > > > +						     ANX7625_DRV_VERSION);
> > > > +
> > > > +				return;
> > > > +			}
> > > > +			usleep_range(1000, 1100);
> > > > +		}
> What I wanted to express is that the for loop is heavily indented.
> So create a small function like:
> 
> anx7625_power_on_interface(ctx)
> {
> 	/* check interface workable */
> 	ret = anx7625_reg_read(ctx, ctx->i2c.rx_p0_client, FLASH_LOAD_STA);
> 	if (ret < 0) {
> 	        DRM_ERROR("IO error : access flash load.\n");
> 	        return;
> 	}
> 	if ((ret & FLASH_LOAD_STA_CHK) == FLASH_LOAD_STA_CHK) {
> 	        anx7625_disable_pd_protocol(ctx);
> 	        DRM_DEV_DEBUG_DRIVER(dev, "Firmware ver %02x%02x,",
> 	                anx7625_reg_read(ctx, ctx->i2c.rx_p0_client,
>                                          OCM_FW_VERSION), anx7625_reg_read(ctx,
> 	                                 ctx->i2c.rx_p0_client, OCM_FW_REVERSION));
> 	        DRM_DEV_DEBUG_DRIVER(dev, "Driver version %s\n",
> 	                             ANX7625_DRV_VERSION);
> 		retunrn 1;
> 	}
> 	return 0;
> }
> 
> and then
> 
> 	for (i = 0; i < OCM_LOADING_TIME; i++) {
> 		if (anx7625_power_on_interface(ctx))
> 			return;
> 		else
> 			usleep_range(1000, 1100);
> 	}
> 
> Or something like that. To make it more readable.
> I think you get the idea now.
OK, got it, thanks.
> 
> 
> > > > +		container_of(work, struct anx7625_data, extcon_wq);
> > > > +	int state = extcon_get_state(ctx->extcon, EXTCON_DISP_DP);
> > > > +
> > > > +	mutex_lock(&ctx->lock);
> > > > +	anx7625_chip_control(ctx, state);
> > > > +	mutex_unlock(&ctx->lock);
> > > I tried to follow the locking - but failed.
> > > Could you check that locking seems correct.
> > > 
> > > A standard bridge driver do not need locking,
> > > but this is no small bridge driver so I do not imply that
> > > locking is not needed. Only that I would like you
> > > to check it again as I could not follow it.
> > OK, it seems lock is not necessary, I'll remove itA
> It has a worker, so please be careful in you analysis.
OK, I'll double check it.
> 
> > > 
> > > > +
> > > > +	if (pdata->panel_flags == 1)
> > > > +		pdata->internal_panel = 1;
> > > > +	else if (pdata->panel_flags == 2)
> > > > +		pdata->extcon_supported = 1;
> > > > +	DRM_DEV_DEBUG_DRIVER(dev, "%s support extcon, %s internal panel\n",
> > > > +			     pdata->extcon_supported ? "" : "not",
> > > > +			     pdata->internal_panel ? "has" : "no");
> > > > +
> > > The way the internal panel - versus external connector is modelled
> > > looks like it could use some of the abstractions used by other bridge
> > > drivers.
> > > 
> > > The connector_type shall for example for internal panels come
> > > form the panel.
> > > And use the panel bridge driver - see examples in patches I referenced
> > > before.
> > > 
> > > And external connectors may beneft from using the
> > > display-connector bridge driver.
> > I'm not familiar with it, the extcon interface is Google engineer give
> > to me, I just follow their sample driver. If you think it is not good,
> > I'll remove the extcon support.
> It would be better to start without, and then add it later
> so we end up with a clean design.
> 
> I for one would have an easier time reviewing.
> 
> So please go ahead and remove it for now.
OK
> 
> 
> 	Sam
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

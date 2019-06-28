Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AF1AC59184
	for <lists+driverdev-devel@lfdr.de>; Fri, 28 Jun 2019 04:47:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0A266874D4;
	Fri, 28 Jun 2019 02:47:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id du613HTX0XzW; Fri, 28 Jun 2019 02:47:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C998A87196;
	Fri, 28 Jun 2019 02:47:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1DFE11BF418
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 02:47:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 14EDF203E0
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 02:47:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vXDa4gZ2El+T for <devel@linuxdriverproject.org>;
 Fri, 28 Jun 2019 02:47:19 +0000 (UTC)
X-Greylist: delayed 15:01:53 by SQLgrey-1.7.6
Received: from NAM01-SN1-obe.outbound.protection.outlook.com
 (mail-eopbgr820139.outbound.protection.outlook.com [40.107.82.139])
 by silver.osuosl.org (Postfix) with ESMTPS id 7A9BA203D6
 for <devel@driverdev.osuosl.org>; Fri, 28 Jun 2019 02:47:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Analogixsemi.onmicrosoft.com; s=selector1-Analogixsemi-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=h0aQfs3hM5dq3yk3p+3nLXDuX67plqyfQS+VG7fiM2Q=;
 b=dnBKyUYqCG9ojAT9K5dX1kRTDu5u5d2ppWVCi8+Xo7JAmgitH6AidlXbaUsi1b/bEjZ+1R2DV2MZwSLOCVuGj4mBT2V7KS4kzlt8OyKQxrDmEfj57Vf7QFd/dYFf13B7BUDtudrnstBmMAbr4lEEuR3d6szlflWEvs010SyMkjo=
Received: from MN2PR04MB5886.namprd04.prod.outlook.com (20.179.22.213) by
 MN2PR04MB6064.namprd04.prod.outlook.com (20.178.246.223) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2032.17; Fri, 28 Jun 2019 02:47:16 +0000
Received: from MN2PR04MB5886.namprd04.prod.outlook.com
 ([fe80::397b:3922:4027:f635]) by MN2PR04MB5886.namprd04.prod.outlook.com
 ([fe80::397b:3922:4027:f635%3]) with mapi id 15.20.2032.016; Fri, 28 Jun 2019
 02:47:15 +0000
From: Xin Ji <xji@analogixsemi.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH v1] Adjust analogix chip driver location
Thread-Topic: [PATCH v1] Adjust analogix chip driver location
Thread-Index: AQHVLNugE9/A6NeXyUKRWvLnNCDN26avZSmAgAD4qwA=
Date: Fri, 28 Jun 2019 02:47:15 +0000
Message-ID: <20190628024706.GA15852@xin-VirtualBox>
References: <20190627112939.GA4832@xin-VirtualBox>
 <20190627115705.GB5021@pendragon.ideasonboard.com>
In-Reply-To: <20190627115705.GB5021@pendragon.ideasonboard.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HK0PR04CA0001.apcprd04.prod.outlook.com
 (2603:1096:203:36::13) To MN2PR04MB5886.namprd04.prod.outlook.com
 (2603:10b6:208:a3::21)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=xji@analogixsemi.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [114.247.245.252]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ba850830-1590-4269-d1c7-08d6fb72ed9e
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MN2PR04MB6064; 
x-ms-traffictypediagnostic: MN2PR04MB6064:
x-microsoft-antispam-prvs: <MN2PR04MB60643654A34E0DB02EE57AD0C7FC0@MN2PR04MB6064.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:206;
x-forefront-prvs: 00826B6158
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(7916004)(376002)(366004)(136003)(396003)(346002)(39850400004)(189003)(199004)(99286004)(54906003)(71190400001)(64756008)(33656002)(71200400001)(73956011)(66946007)(256004)(33716001)(6116002)(66446008)(3846002)(66476007)(66556008)(316002)(6436002)(446003)(6486002)(9686003)(6512007)(25786009)(11346002)(486006)(305945005)(7736002)(6916009)(229853002)(5660300002)(107886003)(102836004)(478600001)(6246003)(53936002)(66066001)(68736007)(81156014)(81166006)(386003)(6506007)(8676002)(26005)(4326008)(186003)(8936002)(86362001)(52116002)(476003)(14454004)(1076003)(76176011)(2906002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6064;
 H:MN2PR04MB5886.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: analogixsemi.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: NEKTT//hZ+3bcmuNUUwAJm05zc+IRf8L0V20DrFmQOJ6hpNjdSjTTa3SpGNHUDoRmyLQKKENTAlXrq1imQ1i+5yVOx92NxjIMM+cRxz6XsTWNruVdhyGRcaimQ+0yp8GrwTi9OHMGz0NPfXS8UAMuDEf8Dt4uZwPn0n4fgGq5XWWNv2/MdwCOt3L5mpYiVW1L8aKoBlurh7YHEilaC8FM0bW/CX8WZA3nFB2lxd4fqASvRQVknisoGDRc5WDWK6l9wP3DoqpE49ord3QLarC/U7ZRN2RGG7HX7y+pPSfc4npDEcRBL8WGQI0z3zORV6EfDjL9AGicQxmAz6oWnrHD91P0jC/on64cmk/HyhXyKeU65lGh7W6rxhDo1I+7rBpXcpIgNySvG0nPdLAXXz0dG7m6jNwh76CmNrT6TRMQp8=
Content-ID: <E2924B82224C67428ED1F9DBC2F39F66@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: analogixsemi.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ba850830-1590-4269-d1c7-08d6fb72ed9e
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jun 2019 02:47:15.6962 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b099b0b4-f26c-4cf5-9a0f-d5be9acab205
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xji@analogixsemi.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6064
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 David Airlie <airlied@linux.ie>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "sjoerd.simons@collabora.co.uk" <sjoerd.simons@collabora.co.uk>,
 Sheng Pan <span@analogixsemi.com>, Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jun 27, 2019 at 07:57:05PM +0800, Laurent Pinchart wrote:
> Hello Xin Ji,
> 
> Thank you for the patch.
> 
> On Thu, Jun 27, 2019 at 11:29:47AM +0000, Xin Ji wrote:
> > Move analogix chip ANX78XX bridge driver into "analogix" directory.
> > 
> > Signed-off-by: Xin Ji <xji@analogixsemi.com>
> > ---
> >  drivers/gpu/drm/bridge/Kconfig                           | 10 ----------
> >  drivers/gpu/drm/bridge/Makefile                          |  3 +--
> >  drivers/gpu/drm/bridge/analogix/Kconfig                  | 10 ++++++++++
> >  drivers/gpu/drm/bridge/analogix/Makefile                 |  2 ++
> >  drivers/gpu/drm/bridge/{ => analogix}/analogix-anx78xx.c |  0
> >  drivers/gpu/drm/bridge/{ => analogix}/analogix-anx78xx.h |  0
> >  6 files changed, 13 insertions(+), 12 deletions(-)
> >  rename drivers/gpu/drm/bridge/{ => analogix}/analogix-anx78xx.c (100%)
> >  rename drivers/gpu/drm/bridge/{ => analogix}/analogix-anx78xx.h (100%)
> > 
> > diff --git a/drivers/gpu/drm/bridge/Kconfig b/drivers/gpu/drm/bridge/Kconfig
> > index ee77746..862789b 100644
> > --- a/drivers/gpu/drm/bridge/Kconfig
> > +++ b/drivers/gpu/drm/bridge/Kconfig
> > @@ -16,16 +16,6 @@ config DRM_PANEL_BRIDGE
> >  menu "Display Interface Bridges"
> >  	depends on DRM && DRM_BRIDGE
> >  
> > -config DRM_ANALOGIX_ANX78XX
> > -	tristate "Analogix ANX78XX bridge"
> > -	select DRM_KMS_HELPER
> > -	select REGMAP_I2C
> > -	---help---
> > -	  ANX78XX is an ultra-low Full-HD SlimPort transmitter
> > -	  designed for portable devices. The ANX78XX transforms
> > -	  the HDMI output of an application processor to MyDP
> > -	  or DisplayPort.
> > -
> >  config DRM_CDNS_DSI
> >  	tristate "Cadence DPI/DSI bridge"
> >  	select DRM_KMS_HELPER
> > diff --git a/drivers/gpu/drm/bridge/Makefile b/drivers/gpu/drm/bridge/Makefile
> > index 4934fcf..02cb4cd 100644
> > --- a/drivers/gpu/drm/bridge/Makefile
> > +++ b/drivers/gpu/drm/bridge/Makefile
> > @@ -1,5 +1,4 @@
> >  # SPDX-License-Identifier: GPL-2.0
> > -obj-$(CONFIG_DRM_ANALOGIX_ANX78XX) += analogix-anx78xx.o
> >  obj-$(CONFIG_DRM_CDNS_DSI) += cdns-dsi.o
> >  obj-$(CONFIG_DRM_DUMB_VGA_DAC) += dumb-vga-dac.o
> >  obj-$(CONFIG_DRM_LVDS_ENCODER) += lvds-encoder.o
> > @@ -12,8 +11,8 @@ obj-$(CONFIG_DRM_SII9234) += sii9234.o
> >  obj-$(CONFIG_DRM_THINE_THC63LVD1024) += thc63lvd1024.o
> >  obj-$(CONFIG_DRM_TOSHIBA_TC358764) += tc358764.o
> >  obj-$(CONFIG_DRM_TOSHIBA_TC358767) += tc358767.o
> > -obj-$(CONFIG_DRM_ANALOGIX_DP) += analogix/
> >  obj-$(CONFIG_DRM_I2C_ADV7511) += adv7511/
> >  obj-$(CONFIG_DRM_TI_SN65DSI86) += ti-sn65dsi86.o
> >  obj-$(CONFIG_DRM_TI_TFP410) += ti-tfp410.o
> >  obj-y += synopsys/
> > +obj-y += analogix/
> 
> Could you place that line just above the synopsys/ directory, to have
> them alphabetically sorted (this could also be done while applying) ?
> Apart from that the patch looks good to me, so
OK, I'll submit new patch, thanks!
> 
> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> 
> > diff --git a/drivers/gpu/drm/bridge/analogix/Kconfig b/drivers/gpu/drm/bridge/analogix/Kconfig
> > index e930ff9..dfe84f5 100644
> > --- a/drivers/gpu/drm/bridge/analogix/Kconfig
> > +++ b/drivers/gpu/drm/bridge/analogix/Kconfig
> > @@ -1,4 +1,14 @@
> >  # SPDX-License-Identifier: GPL-2.0-only
> > +config DRM_ANALOGIX_ANX78XX
> > +	tristate "Analogix ANX78XX bridge"
> > +	select DRM_KMS_HELPER
> > +	select REGMAP_I2C
> > +	---help---
> > +	  ANX78XX is an ultra-low Full-HD SlimPort transmitter
> > +	  designed for portable devices. The ANX78XX transforms
> > +	  the HDMI output of an application processor to MyDP
> > +	  or DisplayPort.
> > +
> >  config DRM_ANALOGIX_DP
> >  	tristate
> >  	depends on DRM
> > diff --git a/drivers/gpu/drm/bridge/analogix/Makefile b/drivers/gpu/drm/bridge/analogix/Makefile
> > index fdbf3fd..d4c54ac 100644
> > --- a/drivers/gpu/drm/bridge/analogix/Makefile
> > +++ b/drivers/gpu/drm/bridge/analogix/Makefile
> > @@ -1,3 +1,5 @@
> >  # SPDX-License-Identifier: GPL-2.0-only
> > +obj-$(CONFIG_DRM_ANALOGIX_ANX78XX) += analogix-anx78xx.o
> > +
> >  analogix_dp-objs := analogix_dp_core.o analogix_dp_reg.o
> >  obj-$(CONFIG_DRM_ANALOGIX_DP) += analogix_dp.o
> > diff --git a/drivers/gpu/drm/bridge/analogix-anx78xx.c b/drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c
> > similarity index 100%
> > rename from drivers/gpu/drm/bridge/analogix-anx78xx.c
> > rename to drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c
> > diff --git a/drivers/gpu/drm/bridge/analogix-anx78xx.h b/drivers/gpu/drm/bridge/analogix/analogix-anx78xx.h
> > similarity index 100%
> > rename from drivers/gpu/drm/bridge/analogix-anx78xx.h
> > rename to drivers/gpu/drm/bridge/analogix/analogix-anx78xx.h
> 
> -- 
> Regards,
> 
> Laurent Pinchart
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

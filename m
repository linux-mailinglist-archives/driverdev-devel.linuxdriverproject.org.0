Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B452D1EDF
	for <lists+driverdev-devel@lfdr.de>; Thu, 10 Oct 2019 05:19:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 73ADB88545;
	Thu, 10 Oct 2019 03:19:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HiQMBQTZqx9A; Thu, 10 Oct 2019 03:19:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B813D88523;
	Thu, 10 Oct 2019 03:19:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F29571BF2FB
 for <devel@linuxdriverproject.org>; Thu, 10 Oct 2019 03:19:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D62DB23B88
 for <devel@linuxdriverproject.org>; Thu, 10 Oct 2019 03:19:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a47IQ-Ui46Er for <devel@linuxdriverproject.org>;
 Thu, 10 Oct 2019 03:19:37 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM03-CO1-obe.outbound.protection.outlook.com
 (mail-eopbgr790107.outbound.protection.outlook.com [40.107.79.107])
 by silver.osuosl.org (Postfix) with ESMTPS id 30A1020471
 for <devel@driverdev.osuosl.org>; Thu, 10 Oct 2019 03:19:37 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TLNvOmcAXu1BVyj78ubiHSrZjwWfI82WH9qy1Kv9RsY1k40ih2v0ftOQFk18OkkPvvUXhC+E46kchCEeI1GYVhiRBB9oHA4s48IjqEU/hv2uO/JfNXPI/5aX6iTQUlbE+Ycv63SIeG2Zy8eSljUvVB1X0J4xTVtUNpyzeucFXRmqf5bJ43aQikRQT50SANyMsnqmUbxuiKAbhjUHauiQAyWDq8OH6TrJIal7w8LUBCl8ElnwnkKFF9FXqmgxHrqxeK4PHmCR686gKJhwQ4uk42oaAWRQjNx1C3DNHqFay4SY+ZocD4EUhQ6+XiERH4cyY6PBZKLsh8www3BBYGfU9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1k/h9x6BMxzo8Eu/CIuJyI6dedAQXn9XD490CAdTSXs=;
 b=F3PIOLNbvyvYxyslDGYqANsvpgwMUohjxeRTB8JbVLy4wwEZ10UBwijM6xpz8ivjbyXhbpJV012Wih3cVyD0YxmF5ar8MevL3GKEJrUV747qgms7ITaaKp9LXNZCz/a+5CKxazR9lxpSce9I1Zjtjhk29bVbZFXT1KadA59Rwzh57GmfbFIMown96hdcP07DrSqJ8cjgV7Yw2TKLlr6zKRBVDcJDWieB82qIAm3v5Gj0hOwnyYp7btXW4E77FqscOg6NG3oZyZniJi2C0f+zp4CHw30eYWJKiiDO3NSvJJiYPIVYUMPsBzMO4kMBz0ZAcfQzdJVeplBu/4M7BHNbLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analogixsemi.com; dmarc=pass action=none
 header.from=analogixsemi.com; dkim=pass header.d=analogixsemi.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Analogixsemi.onmicrosoft.com; s=selector2-Analogixsemi-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1k/h9x6BMxzo8Eu/CIuJyI6dedAQXn9XD490CAdTSXs=;
 b=Nh/uND/HDBb7n2vTasNXLTHvAvXc7aRkJwpDAKNIGHhG+FP3JpomGzBvOJ0xGAXIwFgIxuzYinflaz2uI+dQTvRJGvpS3kyj2AXMmfR1ZK1EeCcTaTskUqRV+YjvuEY4F9Xn33qGXfMww2vadnd/k8NZ6TlN2SNKvbLydnMLIJg=
Received: from SN6PR04MB4543.namprd04.prod.outlook.com (52.135.120.29) by
 SN6PR04MB3806.namprd04.prod.outlook.com (52.135.81.27) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2327.24; Thu, 10 Oct 2019 03:19:34 +0000
Received: from SN6PR04MB4543.namprd04.prod.outlook.com
 ([fe80::c55e:6c70:adbb:cf87]) by SN6PR04MB4543.namprd04.prod.outlook.com
 ([fe80::c55e:6c70:adbb:cf87%5]) with mapi id 15.20.2347.016; Thu, 10 Oct 2019
 03:19:33 +0000
From: Xin Ji <xji@analogixsemi.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH v2 2/2] drm/bridge: anx7625: Add anx7625 MIPI DSI/DPI to
 DP bridge driver
Thread-Topic: [PATCH v2 2/2] drm/bridge: anx7625: Add anx7625 MIPI DSI/DPI to
 DP bridge driver
Thread-Index: AQHVfoPZsDTKCGgGvEaBZzoEPcILl6dSLOMAgAEJG4A=
Date: Thu, 10 Oct 2019 03:19:32 +0000
Message-ID: <20191010031922.GA10005@xin-VirtualBox>
References: <cover.1570588741.git.xji@analogixsemi.com>
 <6ad16e52cd7591d320001a842fc357d976006ef7.1570588741.git.xji@analogixsemi.com>
 <20191009113032.GL25098@kadam>
In-Reply-To: <20191009113032.GL25098@kadam>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HK0P153CA0031.APCP153.PROD.OUTLOOK.COM
 (2603:1096:203:17::19) To SN6PR04MB4543.namprd04.prod.outlook.com
 (2603:10b6:805:a8::29)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=xji@analogixsemi.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [114.247.245.252]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 813e5d9c-f190-4089-9989-08d74d30aa9e
x-ms-traffictypediagnostic: SN6PR04MB3806:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR04MB380696141059A98CEE751B3CC7940@SN6PR04MB3806.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1728;
x-forefront-prvs: 018632C080
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(7916004)(366004)(136003)(346002)(376002)(39850400004)(396003)(189003)(199004)(66066001)(66556008)(66476007)(66446008)(4326008)(66946007)(64756008)(14444005)(7736002)(33716001)(5024004)(2906002)(6246003)(107886003)(71200400001)(71190400001)(5660300002)(6116002)(256004)(3846002)(1076003)(561924002)(30864003)(86362001)(6916009)(25786009)(7416002)(386003)(8936002)(76176011)(6512007)(6506007)(446003)(26005)(9686003)(186003)(102836004)(99286004)(486006)(229853002)(6486002)(52116002)(6436002)(11346002)(476003)(316002)(54906003)(33656002)(14454004)(478600001)(81156014)(81166006)(8676002)(305945005)(559001)(569006);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB3806;
 H:SN6PR04MB4543.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: analogixsemi.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jPRw3s2/za78dMBVy50lC0QHggIS99Gq5WLrrtXE5a2d+O5cyrY4S+s916ItrNheDjRJvXEDnoFHWVj63AExcgOGp8IfFfF7URJ5SgqOlqq3fPjmhJ8gIO6SUWNshi96M7K9tNR++yoyyOXFQhKmTPZZqEXQfXbG7Wk3WrOiOtZv/iAmLLoB2vq7fYK/QIrGSLEJGdYhPI4feboEIzyHZGzJRyUHXvkpRZZXYCrj1RnSsAWqiaOLU60jhWw6sXt5RKnxGvoF2hIjguZ+ecRonOzhVvAIzaM6S5E+5lZRTiy1EAYYaQ3RB9gfgZLY2RgME/Bz1wUF3S7+n/uhm5I9rq+OpnLF8iAjPUQeJFU6oZ6UXu2sk8ZWarPjDJM4BMG6jLAgu6E+l20AUwbKpsWH8I5SKuDNSFKvOnP3RaELrEk=
Content-ID: <F2B999F1C28ECB44AC0DEE38CB954619@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: analogixsemi.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 813e5d9c-f190-4089-9989-08d74d30aa9e
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Oct 2019 03:19:33.6040 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b099b0b4-f26c-4cf5-9a0f-d5be9acab205
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 57zzHSLFhF6pPxNgfKm3ADH8brbMil+/WSf7LqG5He3Ihwp3aS7MASvq12ffDvbqdBi8YFdEHxARUyHQDtNcvQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB3806
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
 Jernej Skrabec <jernej.skrabec@siol.net>, Jonas Karlman <jonas@kwiboo.se>,
 David Airlie <airlied@linux.ie>, Neil Armstrong <narmstrong@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Dan Carpenter <dan.carpenter@oracle.com>,
 Sheng Pan <span@analogixsemi.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Dan Carpenter, sorry for that, I send the wrong patch, I didn't
correctly merge the changed code. Will send the new patch based on your
new comments.

Thanks,
Xin

On Wed, Oct 09, 2019 at 02:30:32PM +0300, Dan Carpenter wrote:
> Are you sure you sent the correct patch?  This has many of the same
> style issues I mentioned in the previous email.  The error handling
> in edid_read() is wrong.  probe() will still crash if allocating the
> work queue fails.
> 
> On Wed, Oct 09, 2019 at 09:28:02AM +0000, Xin Ji wrote:
> > The ANX7625 is an ultra-low power 4K Mobile HD Transmitter designed
> > for portable device. It converts MIPI DSI/DPI to DisplayPort 1.3 4K.
> > 
> > The ANX7625 can support both USB Type-C PD feature and MIPI DSI/DPI
> > to DP feature. This driver only enabled MIPI DSI/DPI to DP feature.
> > 
> > Signed-off-by: Xin Ji <xji@analogixsemi.com>
> > ---
> >  drivers/gpu/drm/bridge/Makefile           |    2 +-
> >  drivers/gpu/drm/bridge/analogix/Kconfig   |    6 +
> >  drivers/gpu/drm/bridge/analogix/Makefile  |    1 +
> >  drivers/gpu/drm/bridge/analogix/anx7625.c | 2132 +++++++++++++++++++++++++++++
> >  drivers/gpu/drm/bridge/analogix/anx7625.h |  405 ++++++
> >  5 files changed, 2545 insertions(+), 1 deletion(-)
> >  create mode 100644 drivers/gpu/drm/bridge/analogix/anx7625.c
> >  create mode 100644 drivers/gpu/drm/bridge/analogix/anx7625.h
> > 
> > diff --git a/drivers/gpu/drm/bridge/Makefile b/drivers/gpu/drm/bridge/Makefile
> > index 4934fcf..bcd388a 100644
> > --- a/drivers/gpu/drm/bridge/Makefile
> > +++ b/drivers/gpu/drm/bridge/Makefile
> > @@ -12,8 +12,8 @@ obj-$(CONFIG_DRM_SII9234) += sii9234.o
> >  obj-$(CONFIG_DRM_THINE_THC63LVD1024) += thc63lvd1024.o
> >  obj-$(CONFIG_DRM_TOSHIBA_TC358764) += tc358764.o
> >  obj-$(CONFIG_DRM_TOSHIBA_TC358767) += tc358767.o
> > -obj-$(CONFIG_DRM_ANALOGIX_DP) += analogix/
> >  obj-$(CONFIG_DRM_I2C_ADV7511) += adv7511/
> >  obj-$(CONFIG_DRM_TI_SN65DSI86) += ti-sn65dsi86.o
> >  obj-$(CONFIG_DRM_TI_TFP410) += ti-tfp410.o
> > +obj-y += analogix/
> >  obj-y += synopsys/
> > diff --git a/drivers/gpu/drm/bridge/analogix/Kconfig b/drivers/gpu/drm/bridge/analogix/Kconfig
> > index e930ff9..b2f127e 100644
> > --- a/drivers/gpu/drm/bridge/analogix/Kconfig
> > +++ b/drivers/gpu/drm/bridge/analogix/Kconfig
> > @@ -2,3 +2,9 @@
> >  config DRM_ANALOGIX_DP
> >  	tristate
> >  	depends on DRM
> > +
> > +config ANALOGIX_ANX7625
> > +	tristate "Analogix MIPI to DP interface support"
> > +	help
> > +		ANX7625 is an ultra-low power 4K mobile HD transmitter designed
> > +		for portable devices. It converts MIPI/DPI to DisplayPort1.3 4K.
> > diff --git a/drivers/gpu/drm/bridge/analogix/Makefile b/drivers/gpu/drm/bridge/analogix/Makefile
> > index fdbf3fd..8a52867 100644
> > --- a/drivers/gpu/drm/bridge/analogix/Makefile
> > +++ b/drivers/gpu/drm/bridge/analogix/Makefile
> > @@ -1,3 +1,4 @@
> >  # SPDX-License-Identifier: GPL-2.0-only
> > +obj-$(CONFIG_ANALOGIX_ANX7625) += anx7625.o
> >  analogix_dp-objs := analogix_dp_core.o analogix_dp_reg.o
> >  obj-$(CONFIG_DRM_ANALOGIX_DP) += analogix_dp.o
> > diff --git a/drivers/gpu/drm/bridge/analogix/anx7625.c b/drivers/gpu/drm/bridge/analogix/anx7625.c
> > new file mode 100644
> > index 0000000..7bb4e17
> > --- /dev/null
> > +++ b/drivers/gpu/drm/bridge/analogix/anx7625.c
> > @@ -0,0 +1,2132 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +/*
> > + * Copyright(c) 2016, Analogix Semiconductor. All rights reserved.
> > + *
> > + */
> > +#include <linux/extcon.h>
> > +#include <linux/gcd.h>
> > +#include <linux/gpio/consumer.h>
> > +#include <linux/i2c.h>
> > +#include <linux/interrupt.h>
> > +#include <linux/iopoll.h>
> > +#include <linux/kernel.h>
> > +#include <linux/module.h>
> > +#include <linux/mutex.h>
> > +#include <linux/slab.h>
> > +#include <linux/types.h>
> > +#include <linux/workqueue.h>
> > +
> > +#include <linux/of_gpio.h>
> > +#include <linux/of_graph.h>
> > +#include <linux/of_platform.h>
> > +
> > +#include <drm/drm_atomic_helper.h>
> > +#include <drm/drm_bridge.h>
> > +#include <drm/drm_crtc_helper.h>
> > +#include <drm/drm_dp_helper.h>
> > +#include <drm/drm_edid.h>
> > +#include <drm/drm_mipi_dsi.h>
> > +#include <drm/drm_panel.h>
> > +#include <drm/drm_print.h>
> > +#include <drm/drm_probe_helper.h>
> > +
> > +#include <video/display_timing.h>
> > +
> > +#include "anx7625.h"
> > +
> > +/*
> > + * there is a sync issue while access I2C register between AP(CPU) and
> > + * internal firmware(OCM), to avoid the race condition, AP should access
> > + * the reserved slave address before slave address occurs changes.
> > + */
> > +static int i2c_access_workaround(struct anx7625_data *ctx,
> > +				 struct i2c_client *client)
> > +{
> > +	u8 offset;
> > +	struct device *dev = &client->dev;
> > +	struct i2c_client *last_client = ctx->last_client;
> > +	int ret = 0;
> > +
> > +	if (client != last_client) {
> 
> 
> Please reverse this condition.
> 
> 	if (client == ctx->last_client)
> 		return 0;
> 
> Get rid of the last_client variable.
> 
> 
> > +		ctx->last_client = client;
> > +
> > +		if (client == ctx->i2c.tcpc_client)
> > +			offset = RSVD_00_ADDR;
> > +		else if (client == ctx->i2c.tx_p0_client)
> > +			offset = RSVD_D1_ADDR;
> > +		else if (client == ctx->i2c.tx_p1_client)
> > +			offset = RSVD_60_ADDR;
> > +		else if (client == ctx->i2c.rx_p0_client)
> > +			offset = RSVD_39_ADDR;
> > +		else if (client == ctx->i2c.rx_p1_client)
> > +			offset = RSVD_7F_ADDR;
> > +		else
> > +			offset = RSVD_00_ADDR;
> > +
> > +		ret = i2c_smbus_write_byte_data(client, offset, 0x00);
> > +		if (ret < 0)
> > +			DRM_DEV_ERROR(dev,
> > +				      "failed to access i2c id=%x\n:%x",
> > +				      client->addr, offset);
> > +	}
> > +
> > +	return ret;
> > +}
> > +
> > +static int anx7625_reg_read(struct anx7625_data *ctx,
> > +			    struct i2c_client *client, u8 reg_addr)
> > +{
> > +	int ret;
> > +	struct device *dev = &client->dev;
> > +
> > +	i2c_access_workaround(ctx, client);
> > +
> > +	ret = i2c_smbus_read_byte_data(client, reg_addr);
> > +	if (ret < 0)
> > +		DRM_DEV_ERROR(dev, "read i2c failed id=%x:%x\n",
> > +			      client->addr, reg_addr);
> > +
> > +	return ret;
> > +}
> > +
> > +static int anx7625_reg_block_read(struct anx7625_data *ctx,
> > +				  struct i2c_client *client,
> > +				  u8 reg_addr, u8 len, u8 *buf)
> > +{
> > +	int ret;
> > +	struct device *dev = &client->dev;
> > +
> > +	i2c_access_workaround(ctx, client);
> > +
> > +	ret = i2c_smbus_read_i2c_block_data(client, reg_addr, len, buf);
> > +	if (ret < 0)
> > +		DRM_DEV_ERROR(dev, "read i2c block failed id=%x:%x\n",
> > +			      client->addr, reg_addr);
> > +
> > +	return ret;
> > +}
> > +
> > +static int anx7625_reg_write(struct anx7625_data *ctx,
> > +			     struct i2c_client *client,
> > +			     u8 reg_addr, u8 reg_val)
> > +{
> > +	int ret;
> > +	struct device *dev = &client->dev;
> > +
> > +	i2c_access_workaround(ctx, client);
> > +
> > +	ret = i2c_smbus_write_byte_data(client, reg_addr, reg_val);
> > +
> > +	if (ret < 0)
> > +		DRM_DEV_ERROR(dev, "failed to write i2c id=%x\n:%x",
> > +			      client->addr, reg_addr);
> > +
> > +	return ret;
> > +}
> > +
> > +static int anx7625_write_or(struct anx7625_data *ctx,
> > +			    struct i2c_client *client,
> > +			    u8 offset, u8 mask)
> > +{
> > +	int val = anx7625_reg_read(ctx, client, offset);
> > +
> > +	return (val < 0) ? val :
> > +		anx7625_reg_write(ctx, client, offset, (val | (mask)));
> 
> 
> Please write it like this:
> 
> static int anx7625_write_or(struct anx7625_data *ctx,
> 			    struct i2c_client *client,
> 			    u8 offset, u8 mask)
> {
> 	int val;
> 
> 	val = anx7625_reg_read(ctx, client, offset);
> 	if (val < 0)
> 		return val;
> 
> 	return anx7625_reg_write(ctx, client, offset, (val | (mask)));
> }
> 
> > +}
> > +
> > +static int anx7625_write_and(struct anx7625_data *ctx,
> > +			     struct i2c_client *client,
> > +			     u8 offset, u8 mask)
> > +{
> > +	int val = anx7625_reg_read(ctx, client, offset);
> > +
> > +	return (val < 0) ? val :
> > +		anx7625_reg_write(ctx, client, offset, (val & (mask)));
> 
> Same.
> 
> > +}
> > +
> > +static int anx7625_write_and_or(struct anx7625_data *ctx,
> > +				struct i2c_client *client,
> > +				u8 offset, u8 and_mask, u8 or_mask)
> > +{
> > +	int val = anx7625_reg_read(ctx, client, offset);
> > +
> > +	return (val < 0) ? val :
> > +		anx7625_reg_write(ctx, client, offset,
> > +				  (val & and_mask) | (or_mask));
> 
> Same.
> 
> > +}
> > +
> > +static int anx7625_config_bit_matrix(struct anx7625_data *ctx)
> > +{
> > +	int i, ret;
> > +
> > +	ret = anx7625_reg_write(ctx, ctx->i2c.tx_p2_client,
> > +				AUDIO_CONTROL_REGISTER, 0x80);
> > +	for (i = 0; i < 13; i++)
> > +		ret |= anx7625_reg_write(ctx, ctx->i2c.tx_p2_client,
> > +					 VIDEO_BIT_MATRIX_12 + i,
> > +					 0x18 + i);
> > +
> > +	return ret;
> > +}
> > +
> > +static int anx7625_read_ctrl_status_p0(struct anx7625_data *ctx)
> > +{
> > +	return anx7625_reg_read(ctx, ctx->i2c.rx_p0_client, AP_AUX_CTRL_STATUS);
> > +}
> > +
> > +static int wait_aux_op_finish(struct anx7625_data *ctx)
> > +{
> > +	int val;
> > +	int ret;
> > +	struct device *dev = &ctx->client->dev;
> > +
> > +	ret = readx_poll_timeout(anx7625_read_ctrl_status_p0,
> > +				 ctx, val,
> > +				 (!(val & AP_AUX_CTRL_OP_EN) || (val < 0)),
> > +				 2000,
> > +				 2000 * 150);
> > +	if (ret) {
> > +		DRM_DEV_ERROR(dev, "aux operation failed!\n");
> > +		val = -EIO;
> 
> Return directly here:
> 
> 		return -EIO;
> 
> > +	} else {
> > +		val = anx7625_reg_read(ctx, ctx->i2c.rx_p0_client,
> > +				       AP_AUX_CTRL_STATUS);
> > +		if (val < 0 || (val & 0x0F)) {
> > +			DRM_DEV_ERROR(dev, "aux status %02x\n", val);
> > +			val = -EIO;
> > +		}
> > +	}
> > +
> > +	return val;
> > +}
> > +
> > +static int write_dpcd_addr(struct anx7625_data *ctx,
> > +			   u8 addrh, u8 addrm, u8 addrl)
> > +{
> > +	int ret;
> > +
> > +	ret = anx7625_reg_write(ctx, ctx->i2c.rx_p0_client,
> > +				AP_AUX_ADDR_7_0, (u8)addrl);
> > +	ret |= anx7625_reg_write(ctx, ctx->i2c.rx_p0_client,
> > +				 AP_AUX_ADDR_15_8, (u8)addrm);
> > +	ret |= anx7625_reg_write(ctx, ctx->i2c.rx_p0_client,
> > +				 AP_AUX_ADDR_19_16, (u8)addrh);
> > +
> > +	return ret;
> > +}
> > +
> > +static int sp_tx_aux_dpcdread_bytes(struct anx7625_data *ctx,
> > +				    u8 addrh, u8 addrm,
> > +				    u8 addrl, u8 count,
> > +				    u8 *buf)
> > +{
> > +	u8 c;
> > +	int ret;
> > +	struct device *dev = &ctx->client->dev;
> > +
> > +	if (WARN_ON(count > (size_t)MAX_DPCD_BUFFER_SIZE))
> 
> No need for this cast.
> 
> > +		return -E2BIG;
> > +
> > +	/* command and length */
> > +	c = ((count - 1) << 4) | 0x09;
> 
> If count == 0 this would cause a problem.  But count is never invalid
> so that's okay.
> 
> > +	ret = anx7625_reg_write(ctx, ctx->i2c.rx_p0_client, AP_AUX_COMMAND, c);
> > +	/* address */
> > +	ret |= write_dpcd_addr(ctx, addrh, addrm, addrl);
> > +	/* aux en */
> > +	ret |= anx7625_write_or(ctx, ctx->i2c.rx_p0_client, AP_AUX_CTRL_STATUS,
> > +				AP_AUX_CTRL_OP_EN);
> > +	if (ret < 0) {
> > +		DRM_DEV_ERROR(dev, "aux enable failed.\n");
> > +		return ret;
> > +	}
> > +
> > +	usleep_range(2000, 2100);
> > +
> > +	ret = wait_aux_op_finish(ctx);
> > +	if (ret < 0) {
> > +		DRM_DEV_ERROR(dev, "aux read failed\n");
> > +		return ret;
> > +	}
> > +
> > +	return anx7625_reg_block_read(ctx, ctx->i2c.rx_p0_client,
> > +			AP_AUX_BUFF_START, count, buf);
> > +}
> > +
> > +static int anx7625_video_mute_control(struct anx7625_data *ctx,
> > +				      u8 status)
> > +{
> > +	int ret;
> > +
> > +	if (status) { /* mute on */
> > +		/* set mute flag */
> > +		ret = anx7625_write_or(ctx, ctx->i2c.rx_p0_client,
> > +				       AP_AV_STATUS, AP_MIPI_MUTE);
> > +		/* clear mipi RX en */
> > +		ret |= anx7625_write_and(ctx, ctx->i2c.rx_p0_client,
> > +					 AP_AV_STATUS, (u8)~AP_MIPI_RX_EN);
> > +	} else { /* mute off */
> > +		/* clear mute flag */
> > +		ret = anx7625_write_and(ctx, ctx->i2c.rx_p0_client,
> > +					AP_AV_STATUS, (u8)~AP_MIPI_MUTE);
> > +		/* set MIPI RX EN */
> > +		ret |= anx7625_write_or(ctx, ctx->i2c.rx_p0_client,
> > +					AP_AV_STATUS, AP_MIPI_RX_EN);
> > +	}
> > +
> > +	return ret;
> > +}
> > +
> > +static int anx7625_config_audio_input(struct anx7625_data *ctx)
> > +{
> > +	int ret;
> > +
> > +	/* channel num */
> > +	ret = anx7625_reg_write(ctx, ctx->i2c.tx_p2_client,
> > +				AUDIO_CHANNEL_STATUS_6, I2S_CH_2 << 5);
> > +	/* layout */
> > +	/* as I2S channel is 2, no need to set layout */
> > +
> > +	/* FS */
> > +	ret |= anx7625_write_and_or(ctx, ctx->i2c.tx_p2_client,
> > +				    AUDIO_CHANNEL_STATUS_4,
> > +				    0xf0, AUDIO_FS_48K);
> > +	/* word length */
> > +	ret |= anx7625_write_and_or(ctx, ctx->i2c.tx_p2_client,
> > +				    AUDIO_CHANNEL_STATUS_5,
> > +				    0xf0, AUDIO_W_LEN_24_24MAX);
> > +	/* I2S */
> > +	ret |= anx7625_write_or(ctx, ctx->i2c.tx_p2_client,
> > +				AUDIO_CHANNEL_STATUS_6, I2S_SLAVE_MODE);
> > +	ret |= anx7625_write_and(ctx, ctx->i2c.tx_p2_client,
> > +				 AUDIO_CONTROL_REGISTER, ~TDM_TIMING_MODE);
> > +	/* audio change flag */
> > +	ret |= anx7625_write_or(ctx, ctx->i2c.rx_p0_client,
> > +				AP_AV_STATUS, AP_AUDIO_CHG);
> > +
> > +	if (ret < 0)
> > +		DRM_ERROR("failed to config audio.\n");
> > +
> > +	return ret;
> > +}
> > +
> > +/* reduction of fraction a/b */
> > +static void anx7625_reduction_of_a_fraction(unsigned long *a, unsigned long *b)
> > +{
> > +	unsigned long gcd_num;
> > +	unsigned long tmp_a, tmp_b;
> > +	u32 i = 1;
> > +
> > +	gcd_num = gcd(*a, *b);
> > +	*a /= gcd_num;
> > +	*b /= gcd_num;
> > +
> > +	tmp_a = *a;
> > +	tmp_b = *b;
> > +
> > +	while ((*a > MAX_UNSIGNED_24BIT) || (*b > MAX_UNSIGNED_24BIT)) {
> > +		i++;
> > +		*a = tmp_a / i;
> > +		*b = tmp_b / i;
> > +	}
> > +
> > +	/*
> > +	 * in the end, make a, b larger to have higher ODFC PLL
> > +	 * output frequency accuracy
> > +	 */
> > +	while ((*a < MAX_UNSIGNED_24BIT) && (*b < MAX_UNSIGNED_24BIT)) {
> > +		*a <<= 1;
> > +		*b <<= 1;
> > +	}
> > +
> > +	*a >>= 1;
> > +	*b >>= 1;
> > +}
> > +
> > +static int anx7625_calculate_m_n(u32 pixelclock,
> > +				 unsigned long *m,
> > +				 unsigned long *n,
> > +				 u8 *post_divider)
> > +{
> > +	if (pixelclock > PLL_OUT_FREQ_ABS_MAX / POST_DIVIDER_MIN) {
> > +		/* pixel clock frequency is too high */
> > +		DRM_ERROR("pixelclock too high, act(%d), maximum(%lu)\n",
> > +			  pixelclock,
> > +			  PLL_OUT_FREQ_ABS_MAX / POST_DIVIDER_MIN);
> > +		return -EDOM;
> 
> Why -EDOM instead of -EINVAL?
> 
> > +	}
> > +
> > +	if (pixelclock < PLL_OUT_FREQ_ABS_MIN / POST_DIVIDER_MAX) {
> > +		/* pixel clock frequency is too low */
> > +		DRM_ERROR("pixelclock too low, act(%d), maximum(%lu)\n",
> > +			  pixelclock,
> > +			  PLL_OUT_FREQ_ABS_MIN / POST_DIVIDER_MAX);
> > +		return -EDOM;
> > +	}
> > +
> > +	*post_divider = 1;
>         ^^^^^^^^^^^^^^^^^
> Delete.
> 
> > +
> > +	for (*post_divider = 1;
>              ^^^^^^^^^^^^^^^^^
> Duplicate.
> 
> > +		pixelclock < (PLL_OUT_FREQ_MIN / (*post_divider));)
> > +		*post_divider += 1;
> > +
> > +	if (*post_divider > POST_DIVIDER_MAX) {
> > +		for (*post_divider = 1;
> > +			(pixelclock <
> > +			 (PLL_OUT_FREQ_ABS_MIN / (*post_divider)));)
> > +			*post_divider += 1;
> > +
> > +		if (*post_divider > POST_DIVIDER_MAX) {
> > +			DRM_ERROR("cannot find property post_divider(%d)\n",
> > +				  *post_divider);
> > +			return -EDOM;
> > +		}
> > +	}
> > +
> > +	/* patch to improve the accuracy */
> > +	if (*post_divider == 7) {
> > +		/* 27,000,000 is not divisible by 7 */
> > +		*post_divider = 8;
> > +	} else if (*post_divider == 11) {
> > +		/* 27,000,000 is not divisible by 11 */
> > +		*post_divider = 12;
> > +	} else if ((*post_divider == 13) || (*post_divider == 14)) {
> > +		/*27,000,000 is not divisible by 13 or 14*/
> > +		*post_divider = 15;
> > +	}
> > +
> > +	if (pixelclock * (*post_divider) > PLL_OUT_FREQ_ABS_MAX) {
> > +		DRM_ERROR("act clock(%u) large than maximum(%lu)\n",
> > +			  pixelclock * (*post_divider),
> > +			  PLL_OUT_FREQ_ABS_MAX);
> > +		return -EDOM;
> > +	}
> > +
> > +	*m = pixelclock;
> > +	*n = XTAL_FRQ / (*post_divider);
> > +
> > +	anx7625_reduction_of_a_fraction(m, n);
> > +
> > +	return 0;
> > +}
> > +
> > +static int anx7625_odfc_config(struct anx7625_data *ctx,
> > +			       u8 post_divider)
> > +{
> > +	int ret;
> > +
> > +	/* config input reference clock frequency 27MHz/19.2MHz */
> > +	ret = anx7625_write_and(ctx, ctx->i2c.rx_p1_client, MIPI_DIGITAL_PLL_16,
> > +				~(REF_CLK_27000KHZ << MIPI_FREF_D_IND));
> > +	ret |= anx7625_write_or(ctx, ctx->i2c.rx_p1_client, MIPI_DIGITAL_PLL_16,
> > +				(REF_CLK_27000KHZ << MIPI_FREF_D_IND));
> > +	/* post divider */
> > +	ret |= anx7625_write_and(ctx, ctx->i2c.rx_p1_client,
> > +				 MIPI_DIGITAL_PLL_8, 0x0f);
> > +	ret |= anx7625_write_or(ctx, ctx->i2c.rx_p1_client, MIPI_DIGITAL_PLL_8,
> > +				post_divider << 4);
> > +
> > +	/* add patch for MIS2-125 (5pcs ANX7625 fail ATE MBIST test) */
> > +	ret |= anx7625_write_and(ctx, ctx->i2c.rx_p1_client, MIPI_DIGITAL_PLL_7,
> > +				 ~MIPI_PLL_VCO_TUNE_REG_VAL);
> > +
> > +	/* reset ODFC PLL */
> > +	ret |= anx7625_write_and(ctx, ctx->i2c.rx_p1_client, MIPI_DIGITAL_PLL_7,
> > +				 ~MIPI_PLL_RESET_N);
> > +	ret |= anx7625_write_or(ctx, ctx->i2c.rx_p1_client, MIPI_DIGITAL_PLL_7,
> > +				MIPI_PLL_RESET_N);
> > +
> > +	if (ret < 0)
> > +		DRM_ERROR("IO error.\n");
> > +
> > +	return ret;
> > +}
> > +
> > +static int anx7625_dsi_video_timing_config(struct anx7625_data *ctx)
> > +{
> > +	struct device *dev = &ctx->client->dev;
> > +	unsigned long m, n;
> > +	u16 htotal;
> > +	int ret;
> > +	u8 post_divider = 0;
> > +
> > +	ret = anx7625_calculate_m_n(ctx->dt.pixelclock.min * 1000,
> > +				    &m, &n, &post_divider);
> > +
> > +	if (ret != 0) {
> 
> if (ret) {
> 
> > +		DRM_ERROR("cannot get property m n value.\n");
> > +		return -EINVAL;
> > +	}
> > +
> > +	DRM_DEV_DEBUG_DRIVER(dev, "compute M(%lu), N(%lu), divider(%d).\n",
> > +			     m, n, post_divider);
> > +
> > +	/* configure pixel clock */
> > +	ret = anx7625_reg_write(ctx, ctx->i2c.rx_p0_client, PIXEL_CLOCK_L,
> > +				(ctx->dt.pixelclock.min / 1000) & 0xFF);
> > +	ret |= anx7625_reg_write(ctx, ctx->i2c.rx_p0_client, PIXEL_CLOCK_H,
> > +				 (ctx->dt.pixelclock.min / 1000) >> 8);
> > +	/* lane count */
> > +	ret |= anx7625_write_and(ctx, ctx->i2c.rx_p1_client,
> > +			MIPI_LANE_CTRL_0, 0xfc);
> > +	ret |= anx7625_write_or(ctx, ctx->i2c.rx_p1_client,
> > +				MIPI_LANE_CTRL_0, 3);
> > +
> > +	/* Htotal */
> > +	htotal = ctx->dt.hactive.min + ctx->dt.hfront_porch.min +
> > +		ctx->dt.hback_porch.min + ctx->dt.hsync_len.min;
> > +	ret |= anx7625_reg_write(ctx, ctx->i2c.rx_p2_client,
> > +			HORIZONTAL_TOTAL_PIXELS_L, htotal & 0xFF);
> > +	ret |= anx7625_reg_write(ctx, ctx->i2c.rx_p2_client,
> > +			HORIZONTAL_TOTAL_PIXELS_H, htotal >> 8);
> > +	/* Hactive */
> > +	ret |= anx7625_reg_write(ctx, ctx->i2c.rx_p2_client,
> > +			HORIZONTAL_ACTIVE_PIXELS_L, ctx->dt.hactive.min & 0xFF);
> > +	ret |= anx7625_reg_write(ctx, ctx->i2c.rx_p2_client,
> > +			HORIZONTAL_ACTIVE_PIXELS_H, ctx->dt.hactive.min >> 8);
> > +	/* HFP */
> > +	ret |= anx7625_reg_write(ctx, ctx->i2c.rx_p2_client,
> > +			HORIZONTAL_FRONT_PORCH_L, ctx->dt.hfront_porch.min);
> > +	ret |= anx7625_reg_write(ctx, ctx->i2c.rx_p2_client,
> > +			HORIZONTAL_FRONT_PORCH_H,
> > +			ctx->dt.hfront_porch.min >> 8);
> > +	/* HWS */
> > +	ret |= anx7625_reg_write(ctx, ctx->i2c.rx_p2_client,
> > +			HORIZONTAL_SYNC_WIDTH_L, ctx->dt.hsync_len.min);
> > +	ret |= anx7625_reg_write(ctx, ctx->i2c.rx_p2_client,
> > +			HORIZONTAL_SYNC_WIDTH_H, ctx->dt.hsync_len.min >> 8);
> > +	/* HBP */
> > +	ret |= anx7625_reg_write(ctx, ctx->i2c.rx_p2_client,
> > +			HORIZONTAL_BACK_PORCH_L, ctx->dt.hback_porch.min);
> > +	ret |= anx7625_reg_write(ctx, ctx->i2c.rx_p2_client,
> > +			HORIZONTAL_BACK_PORCH_H, ctx->dt.hback_porch.min >> 8);
> > +	/* Vactive */
> > +	ret |= anx7625_reg_write(ctx, ctx->i2c.rx_p2_client, ACTIVE_LINES_L,
> > +			ctx->dt.vactive.min);
> > +	ret |= anx7625_reg_write(ctx, ctx->i2c.rx_p2_client, ACTIVE_LINES_H,
> > +			ctx->dt.vactive.min >> 8);
> > +	/* VFP */
> > +	ret |= anx7625_reg_write(ctx, ctx->i2c.rx_p2_client,
> > +			VERTICAL_FRONT_PORCH, ctx->dt.vfront_porch.min);
> > +	/* VWS */
> > +	ret |= anx7625_reg_write(ctx, ctx->i2c.rx_p2_client,
> > +			VERTICAL_SYNC_WIDTH, ctx->dt.vsync_len.min);
> > +	/* VBP */
> > +	ret |= anx7625_reg_write(ctx, ctx->i2c.rx_p2_client,
> > +			VERTICAL_BACK_PORCH, ctx->dt.vback_porch.min);
> > +	/* M value */
> > +	ret |= anx7625_reg_write(ctx, ctx->i2c.rx_p1_client,
> > +			MIPI_PLL_M_NUM_23_16, (m >> 16) & 0xff);
> > +	ret |= anx7625_reg_write(ctx, ctx->i2c.rx_p1_client,
> > +			MIPI_PLL_M_NUM_15_8, (m >> 8) & 0xff);
> > +	ret |= anx7625_reg_write(ctx, ctx->i2c.rx_p1_client,
> > +			MIPI_PLL_M_NUM_7_0, (m & 0xff));
> > +	/* N value */
> > +	ret |= anx7625_reg_write(ctx, ctx->i2c.rx_p1_client,
> > +			MIPI_PLL_N_NUM_23_16, (n >> 16) & 0xff);
> > +	ret |= anx7625_reg_write(ctx, ctx->i2c.rx_p1_client,
> > +			MIPI_PLL_N_NUM_15_8, (n >> 8) & 0xff);
> > +	ret |= anx7625_reg_write(ctx, ctx->i2c.rx_p1_client, MIPI_PLL_N_NUM_7_0,
> > +			(n & 0xff));
> > +	/* diff */
> > +	ret |= anx7625_reg_write(ctx, ctx->i2c.rx_p1_client,
> > +			MIPI_DIGITAL_ADJ_1, 0x37);
> > +
> > +	ret |= anx7625_odfc_config(ctx, post_divider - 1);
> > +
> > +	if (ret < 0)
> > +		DRM_ERROR("mipi dsi setup IO error.\n");
> > +
> > +	return ret;
> > +}
> > +
> > +static int anx7625_swap_dsi_lane3(struct anx7625_data *ctx)
> > +{
> > +	int val;
> > +
> > +	/* swap MIPI-DSI data lane 3 P and N */
> > +	val = anx7625_reg_read(ctx, ctx->i2c.rx_p1_client, MIPI_SWAP);
> > +	if (val < 0) {
> > +		DRM_ERROR("IO error : access MIPI_SWAP.\n");
> > +		return -EIO;
> > +	}
> > +
> > +	val |= (1 << MIPI_SWAP_CH3);
> > +	return anx7625_reg_write(ctx, ctx->i2c.rx_p1_client, MIPI_SWAP, val);
> > +}
> > +
> > +static int anx7625_api_dsi_config(struct anx7625_data *ctx)
> > +
> > +{
> > +	int val, ret;
> > +
> > +	/* swap MIPI-DSI data lane 3 P and N */
> > +	ret = anx7625_swap_dsi_lane3(ctx);
> > +	if (ret < 0) {
> > +		DRM_ERROR("IO error : swap dsi lane 3 failed.\n");
> > +		return ret;
> > +	}
> > +
> > +	/* DSI clock settings */
> > +	val = (0 << MIPI_HS_PWD_CLK)		|
> > +		(0 << MIPI_HS_RT_CLK)		|
> > +		(0 << MIPI_PD_CLK)		|
> > +		(1 << MIPI_CLK_RT_MANUAL_PD_EN)	|
> > +		(1 << MIPI_CLK_HS_MANUAL_PD_EN)	|
> > +		(0 << MIPI_CLK_DET_DET_BYPASS)	|
> > +		(0 << MIPI_CLK_MISS_CTRL)	|
> > +		(0 << MIPI_PD_LPTX_CH_MANUAL_PD_EN);
> > +	ret = anx7625_reg_write(ctx, ctx->i2c.rx_p1_client,
> > +				MIPI_PHY_CONTROL_3, val);
> > +
> > +	/*
> > +	 * Decreased HS prepare timing delay from 160ns to 80ns work with
> > +	 *     a) Dragon board 810 series (Qualcomm AP)
> > +	 *     b) Moving Pixel DSI source (PG3A pattern generator +
> > +	 *	P332 D-PHY Probe) default D-PHY timing
> > +	 *	5ns/step
> > +	 */
> > +	ret |= anx7625_reg_write(ctx, ctx->i2c.rx_p1_client,
> > +				 MIPI_TIME_HS_PRPR, 0x10);
> > +
> > +	/* enable DSI mode*/
> > +	ret |= anx7625_write_or(ctx, ctx->i2c.rx_p1_client, MIPI_DIGITAL_PLL_18,
> > +				SELECT_DSI << MIPI_DPI_SELECT);
> > +
> > +	ret |= anx7625_dsi_video_timing_config(ctx);
> > +	if (ret < 0) {
> > +		DRM_ERROR("dsi video timing config failed\n");
> > +		return ret;
> > +	}
> > +
> > +	/* toggle m, n ready */
> > +	ret = anx7625_write_and(ctx, ctx->i2c.rx_p1_client, MIPI_DIGITAL_PLL_6,
> > +				~(MIPI_M_NUM_READY | MIPI_N_NUM_READY));
> > +	usleep_range(1000, 1100);
> > +	ret |= anx7625_write_or(ctx, ctx->i2c.rx_p1_client, MIPI_DIGITAL_PLL_6,
> > +				MIPI_M_NUM_READY | MIPI_N_NUM_READY);
> > +
> > +	/* configure integer stable register */
> > +	ret |= anx7625_reg_write(ctx, ctx->i2c.rx_p1_client,
> > +				 MIPI_VIDEO_STABLE_CNT, 0x02);
> > +	/* power on MIPI RX */
> > +	ret |= anx7625_reg_write(ctx, ctx->i2c.rx_p1_client,
> > +				 MIPI_LANE_CTRL_10, 0x00);
> > +	ret |= anx7625_reg_write(ctx, ctx->i2c.rx_p1_client,
> > +				 MIPI_LANE_CTRL_10, 0x80);
> > +
> > +	if (ret < 0)
> > +		DRM_ERROR("IO error : mipi dsi enable init failed.\n");
> > +
> > +	return ret;
> > +}
> > +
> > +static int anx7625_dsi_config(struct anx7625_data *ctx)
> > +{
> > +	struct device *dev = &ctx->client->dev;
> > +	int ret;
> > +
> > +	DRM_DEV_DEBUG_DRIVER(dev, "config dsi.\n");
> > +
> > +	/* DSC disable */
> > +	ret = anx7625_write_and(ctx, ctx->i2c.rx_p0_client,
> > +				R_DSC_CTRL_0, ~DSC_EN);
> > +
> > +	ret |= anx7625_api_dsi_config(ctx);
> > +
> > +	if (ret < 0) {
> > +		DRM_ERROR("IO error : api dsi config error.\n");
> 
> return ret;
> 
> > +	} else {
> > +		/* set MIPI RX EN */
> > +		ret = anx7625_write_or(ctx, ctx->i2c.rx_p0_client,
> > +				       AP_AV_STATUS, AP_MIPI_RX_EN);
> > +		/* clear mute flag */
> > +		ret |= anx7625_write_and(ctx, ctx->i2c.rx_p0_client,
> > +					 AP_AV_STATUS, (u8)~AP_MIPI_MUTE);
> > +		if (ret < 0)
> > +			DRM_ERROR("IO error : enable mipi rx failed.\n");
> > +		else
> > +			DRM_DEV_DEBUG_DRIVER(dev, "success to config DSI\n");
> > +	}
> > +
> > +	return ret;
> > +}
> > +
> > +static int anx7625_api_dpi_config(struct anx7625_data *ctx)
> > +{
> > +	u16 freq = ctx->dt.pixelclock.min / 1000;
> > +	int ret;
> > +
> > +	/* configure pixel clock */
> > +	ret = anx7625_reg_write(ctx, ctx->i2c.rx_p0_client,
> > +				PIXEL_CLOCK_L, freq & 0xFF);
> > +	ret |= anx7625_reg_write(ctx, ctx->i2c.rx_p0_client,
> > +				 PIXEL_CLOCK_H, (freq >> 8));
> > +
> > +	/* set DPI mode */
> > +	/* set to DPI PLL module sel */
> > +	ret |= anx7625_reg_write(ctx, ctx->i2c.rx_p1_client,
> > +				 MIPI_DIGITAL_PLL_9, 0x20);
> > +	/* power down MIPI */
> > +	ret |= anx7625_reg_write(ctx, ctx->i2c.rx_p1_client,
> > +				 MIPI_LANE_CTRL_10, 0x08);
> > +	/* enable DPI mode */
> > +	ret |= anx7625_reg_write(ctx, ctx->i2c.rx_p1_client,
> > +				 MIPI_DIGITAL_PLL_18, 0x1C);
> > +	/* set first edge */
> > +	ret |= anx7625_reg_write(ctx, ctx->i2c.tx_p2_client,
> > +				 VIDEO_CONTROL_0, 0x05);
> > +	if (ret < 0)
> > +		DRM_ERROR("IO error : dpi phy set failed.\n");
> > +
> > +	return ret;
> > +}
> > +
> > +static int anx7625_dpi_config(struct anx7625_data *ctx)
> > +{
> > +	struct device *dev = &ctx->client->dev;
> > +	int ret;
> > +
> > +	DRM_DEV_DEBUG_DRIVER(dev, "config dpi\n");
> > +
> > +	/* DSC disable */
> > +	ret = anx7625_write_and(ctx, ctx->i2c.rx_p0_client,
> > +				R_DSC_CTRL_0, ~DSC_EN);
> > +	if (ret < 0) {
> > +		DRM_ERROR("IO error : disable dsc failed.\n");
> > +		return ret;
> > +	}
> > +
> > +	ret = anx7625_config_bit_matrix(ctx);
> > +	if (ret < 0) {
> > +		DRM_ERROR("config bit matrix failed.\n");
> > +		return ret;
> > +	}
> > +
> > +	ret = anx7625_api_dpi_config(ctx);
> > +	if (ret < 0) {
> > +		DRM_ERROR("mipi phy(dpi) setup failed.\n");
> > +		return ret;
> > +	}
> > +
> > +	/* set MIPI RX EN */
> > +	ret = anx7625_write_or(ctx, ctx->i2c.rx_p0_client,
> > +			       AP_AV_STATUS, AP_MIPI_RX_EN);
> > +	/* clear mute flag */
> > +	ret |= anx7625_write_and(ctx, ctx->i2c.rx_p0_client,
> > +				 AP_AV_STATUS, (u8)~AP_MIPI_MUTE);
> > +	if (ret < 0)
> > +		DRM_ERROR("IO error : enable mipi rx failed.\n");
> > +
> > +	return ret;
> > +}
> > +
> > +const u8 ANX_OUI[3] = { 0x00, 0x22, 0xB9 };
> > +static int is_anx_dongle(struct anx7625_data *ctx)
> > +{
> > +	u8 buf[3];
> > +
> > +	/* 0x0500~0x0502: BRANCH_IEEE_OUI */
> > +	sp_tx_aux_dpcdread_bytes(ctx, 0x00, 0x05, 0x00, sizeof(buf), buf);
> > +	if (memcmp(buf, ANX_OUI, sizeof(buf)) == 0)
> > +		return 0;
> > +
> > +	return -ENXIO;
> > +}
> > +
> > +static void sp_tx_get_rx_bw(struct anx7625_data *ctx, u8 *bw)
> > +{
> > +	u8 data_buf[4];
> > +	/*
> > +	 * When ANX dongle connected, if CHIP_ID = 0x7750, bandwidth is 6.75G,
> > +	 * because ANX7750 DPCD 0x052x was not available.
> > +	 */
> > +	if (!is_anx_dongle(ctx)) {
> > +		sp_tx_aux_dpcdread_bytes(ctx, 0x00, 0x05, 0x03, 0x04, data_buf);
> > +		if (data_buf[0] == 0x37 && data_buf[1] == 0x37 &&
> > +		    data_buf[2] == 0x35 && data_buf[3] == 0x30) {
> > +			/* 0x19 : 6.75G */
> > +			*bw = 0x19;
> > +		} else {
> > +			sp_tx_aux_dpcdread_bytes(ctx, 0x00, 0x05, 0x21, 1, bw);
> > +			/*
> > +			 * some ANX dongle read out value 0,
> > +			 * retry standard register.
> > +			 */
> > +			if (((*bw) == 0) || ((*bw) == 0xff))
> > +				sp_tx_aux_dpcdread_bytes(ctx, 0x00, 0x00,
> > +							 DPCD_MAX_LINK_RATE,
> > +							 1, bw);
> > +		}
> > +	} else {
> > +		sp_tx_aux_dpcdread_bytes(ctx, 0x00, 0x00,
> > +					 DPCD_MAX_LINK_RATE, 1, bw);
> > +	}
> > +}
> > +
> > +static void anx7625_dp_start(struct anx7625_data *ctx)
> > +{
> > +	int ret;
> > +
> > +	if (!ctx->display_timing_valid) {
> > +		DRM_ERROR("mipi drm haven't set display timing yet.\n");
> > +		return;
> > +	}
> > +
> > +	ret = anx7625_config_audio_input(ctx);
> > +	if (ret < 0)
> > +		DRM_ERROR("config audio input failed.\n");
> > +
> > +	if (ctx->pdata.dsi_supported)
> > +		ret = anx7625_dsi_config(ctx);
> > +	else
> > +		ret = anx7625_dpi_config(ctx);
> > +
> > +	if (ret < 0)
> > +		DRM_ERROR("MIPI phy setup error.\n");
> > +}
> > +
> > +static void anx7625_dp_stop(struct anx7625_data *ctx)
> > +{
> > +	struct device *dev = &ctx->client->dev;
> > +	int ret;
> > +
> > +	DRM_DEV_DEBUG_DRIVER(dev, "stop dp output\n");
> > +
> > +	/*
> > +	 * video disable: 0x72:08 bit 7 = 0;
> > +	 * audio disable: 0x70:87 bit 0 = 0;
> > +	 */
> > +	ret = anx7625_write_and(ctx, ctx->i2c.tx_p0_client, 0x87, 0xfe);
> > +	ret |= anx7625_write_and(ctx, ctx->i2c.tx_p2_client, 0x08, 0x7f);
> > +
> > +	ret |= anx7625_video_mute_control(ctx, 1);
> > +	if (ret < 0)
> > +		DRM_ERROR("IO error : mute video failed\n");
> > +}
> > +
> > +static int sp_tx_rst_aux(struct anx7625_data *ctx)
> > +{
> > +	int ret;
> > +
> > +	ret = anx7625_write_or(ctx, ctx->i2c.tx_p2_client, RST_CTRL2,
> > +			       AUX_RST);
> > +	ret |= anx7625_write_and(ctx, ctx->i2c.tx_p2_client, RST_CTRL2,
> > +				 ~AUX_RST);
> > +	return ret;
> > +}
> > +
> > +static int sp_tx_aux_wr(struct anx7625_data *ctx, u8 offset)
> > +{
> > +	int ret;
> > +
> > +	ret = anx7625_reg_write(ctx, ctx->i2c.rx_p0_client,
> > +				AP_AUX_BUFF_START, offset);
> > +	ret |= anx7625_reg_write(ctx, ctx->i2c.rx_p0_client,
> > +				 AP_AUX_COMMAND, 0x04);
> > +	ret |= anx7625_write_or(ctx, ctx->i2c.rx_p0_client,
> > +				AP_AUX_CTRL_STATUS, AP_AUX_CTRL_OP_EN);
> > +	return (ret | wait_aux_op_finish(ctx));
> > +}
> > +
> > +static int sp_tx_aux_rd(struct anx7625_data *ctx, u8 len_cmd)
> > +{
> > +	int ret;
> > +
> > +	ret = anx7625_reg_write(ctx, ctx->i2c.rx_p0_client,
> > +				AP_AUX_COMMAND, len_cmd);
> > +	ret |= anx7625_write_or(ctx, ctx->i2c.rx_p0_client,
> > +				AP_AUX_CTRL_STATUS, AP_AUX_CTRL_OP_EN);
> > +	return (ret | wait_aux_op_finish(ctx));
> > +}
> > +
> > +static int sp_tx_get_edid_block(struct anx7625_data *ctx)
> > +{
> > +	int c = 0;
> > +	struct device *dev = &ctx->client->dev;
> > +
> > +	sp_tx_aux_wr(ctx, 0x7e);
> > +	sp_tx_aux_rd(ctx, 0x01);
> > +	c = anx7625_reg_read(ctx, ctx->i2c.rx_p0_client, AP_AUX_BUFF_START);
> > +	if (c < 0) {
> > +		DRM_ERROR("IO error : access AUX BUFF.\n");
> > +		return -EIO;
> > +	}
> > +
> > +	DRM_DEV_DEBUG_DRIVER(dev, " EDID Block = %d\n", c + 1);
> > +
> > +	if (c > 3)
> 
> Replace magic number 3 with a define.
> 
> > +		c = 1;
> > +
> > +	return c;
> > +}
> > +
> > +static int edid_read(struct anx7625_data *ctx,
> > +		     u8 offset, u8 *pblock_buf)
> > +{
> > +	u8 c, cnt = 0;
>               ^^^^^^^
> No need.
> 
> > +	struct device *dev = &ctx->client->dev;
> > +
> > +	c = 0;
> > +	for (cnt = 0; cnt < 3; cnt++) {
> > +		sp_tx_aux_wr(ctx, offset);
> > +		/* set I2C read com 0x01 mot = 0 and read 16 bytes */
> > +		c = sp_tx_aux_rd(ctx, 0xf1);
> 
> c needs to be an int because this returns negative error codes.
> 
> > +
> > +		if (c == 1) {
> 
> What does 1 mean in this context?  It seems like a magic number.  Make
> it a define.
> 
> > +			sp_tx_rst_aux(ctx);
> > +			DRM_DEV_DEBUG_DRIVER(dev, "edid read failed, reset!\n");
> > +			cnt++;
> > +		} else {
> > +			anx7625_reg_block_read(ctx, ctx->i2c.rx_p0_client,
> > +					       AP_AUX_BUFF_START,
> > +					       MAX_DPCD_BUFFER_SIZE,
> > +					       pblock_buf);
> > +			return 0;
> 
> Why do we do this read?  It's weird that we don't check for errors.
> 
> > +		}
> > +	}
> > +
> > +	return -EIO;
> > +}
> > +
> > +static int segments_edid_read(struct anx7625_data *ctx,
> > +			      u8 segment, u8 *buf, u8 offset)
> > +{
> > +	u8 c, cnt = 0;
> > +	int ret;
> > +	struct device *dev = &ctx->client->dev;
> > +
> > +	/* write address only */
> > +	ret = anx7625_reg_write(ctx, ctx->i2c.rx_p0_client,
> > +				AP_AUX_ADDR_7_0, 0x30);
> > +	ret |= anx7625_reg_write(ctx, ctx->i2c.rx_p0_client,
> > +				 AP_AUX_COMMAND, 0x04);
> > +	ret |= anx7625_reg_write(ctx, ctx->i2c.rx_p0_client,
> > +				 AP_AUX_CTRL_STATUS,
> > +				 AP_AUX_CTRL_ADDRONLY | AP_AUX_CTRL_OP_EN);
> > +
> > +	ret |= wait_aux_op_finish(ctx);
> > +	/* write segment address */
> > +	ret |= sp_tx_aux_wr(ctx, segment);
> > +	/* data read */
> > +	ret |= anx7625_reg_write(ctx, ctx->i2c.rx_p0_client,
> > +				 AP_AUX_ADDR_7_0, 0x50);
> > +	if (ret < 0) {
> > +		DRM_ERROR("IO error : aux initial failed.\n");
> > +		return ret;
> > +	}
> > +
> > +	for (cnt = 0; cnt < 3; cnt++) {
> > +		sp_tx_aux_wr(ctx, offset);
> > +		/* set I2C read com 0x01 mot = 0 and read 16 bytes */
> > +		c = sp_tx_aux_rd(ctx, 0xf1);
> > +
> > +		if (c == 1) {
> 
> Same.
> 
> > +			ret = sp_tx_rst_aux(ctx);
> > +			DRM_DEV_ERROR(dev, "segment read failed, reset!\n");
> > +			cnt++;
> > +		} else {
> > +			ret = anx7625_reg_block_read(ctx, ctx->i2c.rx_p0_client,
> > +						     AP_AUX_BUFF_START,
> > +						     MAX_DPCD_BUFFER_SIZE, buf);
> > +			return ret;
> > +		}
> > +	}
> > +
> > +	return ret;
> > +}
> > +
> > +static int sp_tx_edid_read(struct anx7625_data *ctx,
> > +			   u8 *pedid_blocks_buf)
> > +{
> > +	u8 offset, edid_pos;
> > +	int count, blocks_num;
> > +	u8 pblock_buf[MAX_DPCD_BUFFER_SIZE];
> > +	u8 i, j;
> > +	u8 g_edid_break = 0;
> > +	int ret;
> > +	struct device *dev = &ctx->client->dev;
> > +
> > +	/* address initial */
> > +	ret = anx7625_reg_write(ctx, ctx->i2c.rx_p0_client,
> > +				AP_AUX_ADDR_7_0, 0x50);
> > +	ret |= anx7625_reg_write(ctx, ctx->i2c.rx_p0_client,
> > +				 AP_AUX_ADDR_15_8, 0);
> > +	ret |= anx7625_write_and(ctx, ctx->i2c.rx_p0_client,
> > +				 AP_AUX_ADDR_19_16, 0xf0);
> > +	if (ret < 0) {
> > +		DRM_ERROR("access aux channel IO error.\n");
> > +		return -EIO;
> > +	}
> > +
> > +	blocks_num = sp_tx_get_edid_block(ctx);
> > +	if (blocks_num < 0)
> > +		return blocks_num;
> > +
> > +	count = 0;
> > +
> > +	do {
> > +		switch (count) {
> > +		case 0:
> > +		case 1:
> > +			for (i = 0; i < 8; i++) {
> > +				offset = (i + count * 8) * MAX_DPCD_BUFFER_SIZE;
> > +				g_edid_break = edid_read(ctx, offset,
> > +							 pblock_buf);
> > +
> > +				if (g_edid_break)
> > +					break;
> > +
> > +				memcpy(&pedid_blocks_buf[offset],
> > +				       pblock_buf,
> > +				       MAX_DPCD_BUFFER_SIZE);
> > +			}
> > +
> > +			break;
> > +		case 2:
> > +			offset = 0x00;
> > +
> > +			for (j = 0; j < 8; j++) {
> > +				edid_pos = (j + count * 8) *
> > +					MAX_DPCD_BUFFER_SIZE;
> > +
> > +				if (g_edid_break == 1)
> > +					break;
> > +
> > +				segments_edid_read(ctx, count / 2,
> > +						   pblock_buf, offset);
> > +				memcpy(&pedid_blocks_buf[edid_pos],
> > +				       pblock_buf,
> > +				       MAX_DPCD_BUFFER_SIZE);
> > +				offset = offset + 0x10;
> > +			}
> > +
> > +			break;
> > +		case 3:
> > +			offset = 0x80;
> > +
> > +			for (j = 0; j < 8; j++) {
> > +				edid_pos = (j + count * 8) *
> > +					MAX_DPCD_BUFFER_SIZE;
> > +				if (g_edid_break == 1)
> > +					break;
> > +
> > +				segments_edid_read(ctx, count / 2,
> > +						   pblock_buf, offset);
> > +				memcpy(&pedid_blocks_buf[edid_pos],
> > +				       pblock_buf,
> > +				       MAX_DPCD_BUFFER_SIZE);
> > +				offset = offset + 0x10;
> > +			}
> > +
> > +			break;
> > +		default:
> > +			break;
> > +		}
> > +
> > +		count++;
> > +
> > +	} while (blocks_num >= count);
> > +
> > +	/* check edid data */
> > +	if (drm_edid_is_valid((struct edid *)pedid_blocks_buf) == false)
> 
> if (!drm_edid_is_valid((struct edid *)pedid_blocks_buf))
> 
> Shouldn't this return a negative error?
> 
> > +		DRM_DEV_ERROR(dev, "WARNING! edid check failed!\n");
> > +
> > +	/* reset aux channel */
> > +	sp_tx_rst_aux(ctx);
> > +
> > +	return (blocks_num + 1);
> > +}
> > +
> > +static void anx7625_power_on(struct anx7625_data *ctx)
> > +{
> > +	struct device *dev = &ctx->client->dev;
> > +
> > +	if (ctx->pdata.low_power_mode) {
> 
> Reverse this condition
> 
> 	if (!ctx->pdata.low_power_mode) {
> 		DRM_DEV_DEBUG_DRIVER(dev, "Anx7625 not low power mode!\n");
> 		return;
> 	}
> 
> > +		/* power on pin enable */
> > +		gpiod_set_value(ctx->pdata.gpio_p_on, 1);
> > +		usleep_range(10000, 11000);
> > +		/* power reset pin enable */
> > +		gpiod_set_value(ctx->pdata.gpio_reset, 1);
> > +		usleep_range(10000, 11000);
> > +
> > +		DRM_DEV_DEBUG_DRIVER(dev, "Anx7625 power on !\n");
> > +	} else {
> > +		DRM_DEV_DEBUG_DRIVER(dev, "Anx7625 not low power mode!\n");
> > +	}
> > +}
> > +
> > +static void anx7625_power_standby(struct anx7625_data *ctx)
> > +{
> > +	struct device *dev = &ctx->client->dev;
> > +
> > +	if (ctx->pdata.low_power_mode) {
> 
> Same
> 
> > +		gpiod_set_value(ctx->pdata.gpio_reset, 0);
> > +		usleep_range(1000, 1100);
> > +		gpiod_set_value(ctx->pdata.gpio_p_on, 0);
> > +		usleep_range(1000, 1100);
> > +		DRM_DEV_DEBUG_DRIVER(dev, "anx7625 power down\n");
> > +	} else {
> > +		DRM_DEV_DEBUG_DRIVER(dev, "anx7625 not low power mode!\n");
> > +	}
> > +}
> > +
> > +/* basic configurations of ANX7625 */
> > +static void anx7625_config(struct anx7625_data *ctx)
> > +{
> > +	anx7625_reg_write(ctx, ctx->i2c.rx_p0_client,
> > +			  XTAL_FRQ_SEL, XTAL_FRQ_27M);
> > +}
> > +
> > +static void anx7625_disable_pd_protocol(struct anx7625_data *ctx)
> > +{
> > +	struct device *dev = &ctx->client->dev;
> > +	int ret;
> > +
> > +	/* reset main ocm */
> > +	ret = anx7625_reg_write(ctx, ctx->i2c.rx_p0_client, 0x88, 0x40);
> > +	/* Disable PD */
> > +	ret |= anx7625_reg_write(ctx, ctx->i2c.rx_p0_client,
> > +				 AP_AV_STATUS, AP_DISABLE_PD);
> > +	/* release main ocm */
> > +	ret |= anx7625_reg_write(ctx, ctx->i2c.rx_p0_client, 0x88, 0x00);
> > +
> > +	if (ret < 0)
> > +		DRM_DEV_DEBUG_DRIVER(dev, "disable PD feature failed.\n");
> > +	else
> > +		DRM_DEV_DEBUG_DRIVER(dev, "disable PD feature succeeded.\n");
> > +}
> > +
> > +static void anx7625_power_on_init(struct anx7625_data *ctx)
> > +{
> > +	int retry_count, i;
> > +	int ret = 0;
> > +	struct device *dev = &ctx->client->dev;
> > +
> > +	for (retry_count = 0; retry_count < 3; retry_count++) {
> > +		anx7625_power_on(ctx);
> > +		anx7625_config(ctx);
> > +
> > +		for (i = 0; i < OCM_LOADING_TIME; i++) {
> > +			/* check interface workable */
> > +			ret = anx7625_reg_read(ctx, ctx->i2c.rx_p0_client,
> > +					       FLASH_LOAD_STA);
> > +			if (ret < 0) {
> > +				DRM_ERROR("IO error : access flash load.\n");
> > +				return;
> > +			}
> > +			if ((ret & FLASH_LOAD_STA_CHK) == FLASH_LOAD_STA_CHK) {
> > +				anx7625_disable_pd_protocol(ctx);
> > +				DRM_DEV_DEBUG_DRIVER(dev,
> > +						     "Firmware ver %02x%02x,",
> > +					anx7625_reg_read(ctx,
> > +							 ctx->i2c.rx_p0_client,
> > +							 OCM_FW_VERSION),
> > +					anx7625_reg_read(ctx,
> > +							 ctx->i2c.rx_p0_client,
> > +							 OCM_FW_REVERSION));
> > +				DRM_DEV_DEBUG_DRIVER(dev, "Driver version %s\n",
> > +						     ANX7625_DRV_VERSION);
> > +
> > +				return;
> > +			}
> > +			usleep_range(1000, 1100);
> > +		}
> > +		anx7625_power_standby(ctx);
> > +	}
> > +}
> > +
> > +static int anx7625_extcon_notifier(struct notifier_block *nb,
> > +				   unsigned long event, void *ptr)
> > +{
> > +	struct anx7625_data *ctx =
> > +		container_of(nb, struct anx7625_data, event_nb);
> > +
> > +	schedule_work(&ctx->extcon_wq);
> > +	return NOTIFY_DONE;
> > +}
> > +
> > +static void anx7625_chip_control(struct anx7625_data *ctx, int state)
> > +{
> > +	struct device *dev = &ctx->client->dev;
> > +
> > +	DRM_DEV_DEBUG_DRIVER(dev, "before set, power_state(%d).\n",
> > +			     atomic_read(&ctx->power_status));
> > +	if (ctx->pdata.low_power_mode) {
> 
> Revserse this condition:
> 
> 	if (!ctx->pdata.low_power_mode)
> 		return;
> 
> > +		if (state) {
> > +			atomic_inc(&ctx->power_status);
> > +			if (atomic_read(&ctx->power_status) == 1)
> > +				anx7625_power_on_init(ctx);
> > +		} else {
> > +			if (atomic_read(&ctx->power_status)) {
> > +				atomic_dec(&ctx->power_status);
> > +
> > +				if (atomic_read(&ctx->power_status) == 0)
> > +					anx7625_power_standby(ctx);
> > +			}
> > +		}
> > +	}
> > +
> > +	DRM_DEV_DEBUG_DRIVER(dev, "after set, power_state(%d).\n",
> > +			     atomic_read(&ctx->power_status));
> > +}
> > +
> > +static void anx7625_extcon_work(struct work_struct *work)
> > +{
> > +	struct anx7625_data *ctx =
> > +		container_of(work, struct anx7625_data, extcon_wq);
> > +	int state = extcon_get_state(ctx->extcon, EXTCON_DISP_DP);
> > +
> > +	mutex_lock(&ctx->lock);
> > +	anx7625_chip_control(ctx, state);
> > +	mutex_unlock(&ctx->lock);
> > +}
> > +
> > +static int anx7625_extcon_notifier_init(struct anx7625_data *ctx)
> > +{
> > +	int ret;
> > +	struct device *dev = &ctx->client->dev;
> > +
> > +	ctx->event_nb.notifier_call = anx7625_extcon_notifier;
> > +	INIT_WORK(&ctx->extcon_wq, anx7625_extcon_work);
> > +	ret = devm_extcon_register_notifier(&ctx->client->dev, ctx->extcon,
> > +					    EXTCON_DISP_DP, &ctx->event_nb);
> > +	if (ret) {
> > +		DRM_DEV_ERROR(dev, "failed to register notifier for DP");
> > +		return ret;
> > +	}
> > +	return 0;
> > +}
> > +
> > +static void anx7625_init_gpio(struct anx7625_data *platform)
> > +{
> > +	struct device *dev = &platform->client->dev;
> > +
> > +	DRM_DEV_DEBUG_DRIVER(dev, "anx7625 init gpio\n");
> > +
> > +	/* gpio for chip power enable */
> > +	platform->pdata.gpio_p_on =
> > +		devm_gpiod_get_optional(dev, "enable", GPIOD_OUT_LOW);
> > +	/* gpio for chip reset */
> > +	platform->pdata.gpio_reset =
> > +		devm_gpiod_get_optional(dev, "reset", GPIOD_OUT_LOW);
> > +
> > +	if (platform->pdata.gpio_p_on && platform->pdata.gpio_reset) {
> > +		platform->pdata.low_power_mode = 1;
> > +		DRM_DEV_DEBUG_DRIVER(dev, "low power mode, pon %d, reset %d.\n",
> > +				     desc_to_gpio(platform->pdata.gpio_p_on),
> > +				     desc_to_gpio(platform->pdata.gpio_reset));
> > +	} else {
> > +		platform->pdata.low_power_mode = 0;
> > +		DRM_DEV_DEBUG_DRIVER(dev, "not low power mode.\n");
> > +	}
> > +
> > +	platform->pdata.gpio_intr_hpd =
> > +		devm_gpiod_get_optional(dev, "hpd", GPIOD_IN);
> > +
> > +	DRM_DEV_DEBUG_DRIVER(dev, "hpd gpio %d.\n",
> > +			     (!platform->pdata.gpio_intr_hpd) ? 0 :
> > +			     desc_to_gpio(platform->pdata.gpio_intr_hpd));
> > +}
> > +
> > +static void anx7625_stop_dp_work(struct anx7625_data *ctx)
> > +{
> > +	ctx->hpd_status = 0;
> > +	ctx->hpd_high_cnt = 0;
> > +	ctx->display_timing_valid = 0;
> > +
> > +	ctx->slimport_edid_p.edid_block_num = -1;
> > +
> > +	if (ctx->pdata.low_power_mode == 0)
> > +		anx7625_disable_pd_protocol(ctx);
> > +}
> > +
> > +static void anx7625_start_dp_work(struct anx7625_data *ctx)
> > +{
> > +	int ret;
> > +	u8 buf[MAX_DPCD_BUFFER_SIZE];
> > +	u8 hdcp_cap;
> > +	struct device *dev = &ctx->client->dev;
> > +
> 
> Delete this blank line.
> 
> > +	u8 sp_tx_bw; /* linktraining banwidth */
> > +	u8 sp_tx_lane_count; /* link training lane count */
> > +
> > +	if (ctx->hpd_high_cnt >= 2) {
> > +		DRM_DEV_DEBUG_DRIVER(dev, "anx7625 filter useless HPD\n");
> > +		return;
> > +	}
> > +
> > +	ctx->hpd_high_cnt++;
> > +
> > +	sp_tx_get_rx_bw(ctx, &sp_tx_bw);
> > +
> > +	sp_tx_aux_dpcdread_bytes(ctx, 0x00, 0x00, DPCD_MAX_LANE_COUNT,
> > +				 1, &sp_tx_lane_count);
> > +
> > +	sp_tx_lane_count = sp_tx_lane_count & 0x1f;
> > +	sp_tx_aux_dpcdread_bytes(ctx, 0x06, 0x80, 0x28, 1, buf);/* read Bcap */
> > +
> > +	hdcp_cap = buf[0] & 0x01;
> > +
> > +	/* not support HDCP */
> > +	ret = anx7625_write_and(ctx, ctx->i2c.rx_p1_client, 0xee, 0x9f);
> > +
> > +	if (hdcp_cap == 0x01)
> > +		DRM_DEV_DEBUG_DRIVER(dev, "HDCP1.4\n");
> > +
> > +	/* try auth flag */
> > +	ret |= anx7625_write_or(ctx, ctx->i2c.rx_p1_client, 0xec, 0x10);
> > +	/* interrupt for DRM */
> > +	ret |= anx7625_write_or(ctx, ctx->i2c.rx_p1_client, 0xff, 0x01);
> > +	if (ret < 0)
> > +		return;
> > +	DRM_DEV_DEBUG_DRIVER(dev, "MAX BW=%02x, MAX Lane cnt=%02x, HDCP=%02x\n",
> > +			     (u32)sp_tx_bw,
> > +			     (u32)sp_tx_lane_count,
> > +			     (u32)hdcp_cap);
> > +
> > +	ret = anx7625_reg_read(ctx, ctx->i2c.rx_p1_client, 0x86);
> > +	if (ret < 0)
> > +		return;
> > +
> > +	DRM_DEV_DEBUG_DRIVER(dev, "Secure OCM version=%02x\n", ret);
> > +}
> > +
> > +static int anx7625_read_hpd_status_p0(struct anx7625_data *ctx)
> > +{
> > +	return anx7625_reg_read(ctx, ctx->i2c.rx_p0_client, SYSTEM_STSTUS);
> > +}
> > +
> > +static void anx7625_hpd_polling(struct anx7625_data *ctx)
> > +{
> > +	int ret, val;
> > +	struct device *dev = &ctx->client->dev;
> > +
> > +	if (atomic_read(&ctx->power_status) != 1) {
> > +		DRM_DEV_DEBUG_DRIVER(dev, "No need to poling HPD status.\n");
> > +		return;
> > +	}
> > +
> > +	ret = readx_poll_timeout(anx7625_read_hpd_status_p0,
> > +				 ctx, val,
> > +				 ((val & HPD_STATUS) || (val < 0)),
> > +				 5000,
> > +				 5000 * 100);
> > +	if (ret) {
> > +		DRM_DEV_ERROR(dev, "HPD polling timeout!\n");
> > +	} else {
> > +		DRM_DEV_DEBUG_DRIVER(dev, "HPD raise up.\n");
> > +		anx7625_reg_write(ctx, ctx->i2c.tcpc_client,
> > +				  INTR_ALERT_1, 0xFF);
> > +		anx7625_reg_write(ctx, ctx->i2c.rx_p0_client,
> > +				  INTERFACE_CHANGE_INT, 0);
> > +	}
> > +
> > +	anx7625_start_dp_work(ctx);
> > +}
> > +
> > +static void anx7625_disconnect_check(struct anx7625_data *ctx)
> > +{
> > +	if (atomic_read(&ctx->power_status) == 0)
> > +		anx7625_stop_dp_work(ctx);
> > +}
> > +
> > +static void anx7625_low_power_mode_check(struct anx7625_data *ctx,
> > +					 int state)
> > +{
> > +	struct device *dev = &ctx->client->dev;
> > +
> > +	DRM_DEV_DEBUG_DRIVER(dev, "low power mode check, state(%d).\n", state);
> > +
> > +	if (ctx->pdata.low_power_mode) {
> > +		anx7625_chip_control(ctx, state);
> > +		if (state)
> > +			anx7625_hpd_polling(ctx);
> > +		else
> > +			anx7625_disconnect_check(ctx);
> > +	}
> > +}
> > +
> > +static void dp_hpd_change_handler(struct anx7625_data *ctx, bool on)
> > +{
> > +	struct device *dev = &ctx->client->dev;
> > +
> > +	/* hpd changed */
> > +	DRM_DEV_DEBUG_DRIVER(dev, "dp_hpd_change_default_func: %d\n",
> > +			     (u32)on);
> > +
> > +	if (on == 0) {
> > +		DRM_DEV_DEBUG_DRIVER(dev, " HPD low\n");
> > +		anx7625_stop_dp_work(ctx);
> > +	} else {
> > +		DRM_DEV_DEBUG_DRIVER(dev, " HPD high\n");
> > +		anx7625_start_dp_work(ctx);
> > +	}
> > +
> > +	ctx->hpd_status = 1;
> > +}
> > +
> > +static int anx7625_hpd_change_detect(struct anx7625_data *ctx)
> > +{
> > +	int intr_vector, status;
> > +	struct device *dev = &ctx->client->dev;
> > +
> > +	DRM_DEV_DEBUG_DRIVER(dev, "power_status=%d\n",
> > +			     (u32)atomic_read(&ctx->power_status));
> > +
> > +	status = anx7625_reg_write(ctx, ctx->i2c.tcpc_client,
> > +				   INTR_ALERT_1, 0xFF);
> > +	if (status < 0) {
> > +		DRM_ERROR("IO error : clear alert register.\n");
> > +		return status;
> > +	}
> > +
> > +	intr_vector = anx7625_reg_read(ctx, ctx->i2c.rx_p0_client,
> > +				       INTERFACE_CHANGE_INT);
> > +	if (intr_vector < 0) {
> > +		DRM_ERROR("IO error : access interrupt change register.\n");
> > +		return intr_vector;
> > +	}
> > +	DRM_DEV_DEBUG_DRIVER(dev, "0x7e:0x44=%x\n", intr_vector);
> > +	status = anx7625_reg_write(ctx, ctx->i2c.rx_p0_client,
> > +				   INTERFACE_CHANGE_INT,
> > +				   intr_vector & (~intr_vector));
> > +	if (status < 0) {
> > +		DRM_ERROR("IO error : clear interrupt change register.\n");
> > +		return status;
> > +	}
> > +
> > +	if (intr_vector & HPD_STATUS_CHANGE) {
> 
> Reverse this condition.  We always want the normal/success path
> indented one tab and the weird/error path indented two tabs.
> 
> 	if (status < 0) {
> 		DRM_ERROR("IO error : clear interrupt change register.\n");
> 		return status;
> 	}
> 	if (!(intr_vector & HPD_STATUS_CHANGE))
> 		return -ENOENT;
> 
> > +		status = anx7625_reg_read(ctx, ctx->i2c.rx_p0_client,
> > +					  SYSTEM_STSTUS);
> > +		if (status < 0) {
> > +			DRM_ERROR("IO error : clear interrupt status.\n");
> > +			return status;
> > +		}
> > +
> > +		DRM_DEV_DEBUG_DRIVER(dev, "0x7e:0x45=%x\n", status);
> > +		dp_hpd_change_handler(ctx, status & HPD_STATUS);
> > +		return 0;
> > +	}
> > +
> > +	return -ENOENT;
> > +}
> > +
> > +static void anx7625_work_func(struct work_struct *work)
> > +{
> > +	int event;
> > +	struct anx7625_data *ctx = container_of(work,
> > +						struct anx7625_data, work);
> > +
> > +	mutex_lock(&ctx->lock);
> > +	event = anx7625_hpd_change_detect(ctx);
> > +	mutex_unlock(&ctx->lock);
> > +
> > +	if (event < 0)
> > +		return;
> > +
> > +	if (ctx->bridge_attached)
> > +		drm_helper_hpd_irq_event(ctx->connector.dev);
> > +}
> > +
> > +static irqreturn_t anx7625_intr_hpd_isr(int irq, void *data)
> > +{
> > +	struct anx7625_data *ctx = (struct anx7625_data *)data;
> > +
> > +	if (atomic_read(&ctx->power_status) != 1)
> > +		return IRQ_NONE;
> > +
> > +	queue_work(ctx->workqueue, &ctx->work);
> > +
> > +	return IRQ_HANDLED;
> > +}
> > +
> > +#ifdef CONFIG_OF
> > +static int anx7625_parse_dt(struct device *dev,
> > +			    struct anx7625_platform_data *pdata)
> > +{
> > +	struct device_node *np = dev->of_node;
> > +	struct device_node *mipi_host_node;
> > +	struct device_node *panel_node, *out_ep;
> > +
> > +	pdata->node.mipi_dsi_host_node = of_graph_get_remote_node(np, 0, 0);
> > +	if (pdata->node.mipi_dsi_host_node) {
> > +		of_node_put(pdata->node.mipi_dsi_host_node);
> > +		pdata->dsi_supported = 1;
> > +		mipi_host_node = pdata->node.mipi_dsi_host_node;
> > +	} else {
> > +		pdata->node.mipi_dpi_host_node =
> > +			of_graph_get_remote_node(np, 1, 0);
> > +		if (!pdata->node.mipi_dpi_host_node)
> > +			DRM_ERROR("cannot resolve any MIPI host node.\n");
> > +		else
> > +			of_node_put(pdata->node.mipi_dpi_host_node);
> > +
> > +		mipi_host_node = pdata->node.mipi_dpi_host_node;
> > +	}
> > +
> > +	DRM_DEV_DEBUG_DRIVER(dev, "dsi_supported : %d\n", pdata->dsi_supported);
> > +	DRM_DEV_DEBUG_DRIVER(dev, "mipi host node %s exist\n",
> > +			     (!mipi_host_node) ? "not" : " ");
> 
> This debug message is pointles because if mipi_host_node is NULL then
> we already printed an error message.  Delete the mipi_host_node variable
> as well.
> 
> > +
> > +	pdata->node.extcon_node = of_graph_get_port_by_id(np, 2);
> > +	pdata->node.internal_panel_node = of_graph_get_port_by_id(np, 3);
> > +	pdata->node.edp_node = of_graph_get_port_by_id(np, 4);
> > +	if (pdata->node.extcon_node)
> > +		pdata->extcon_supported = 1;
> > +
> > +	if (pdata->node.internal_panel_node) {
> > +		pdata->internal_panel = 1;
> > +		of_node_put(pdata->node.internal_panel_node);
> > +		out_ep = of_get_child_by_name(pdata->node.internal_panel_node,
> > +					      "endpoint");
> > +		if (out_ep) {
> 
> Reverse this condition.  Error path is indented, success path is not.
> 
> > +			panel_node = of_graph_get_remote_port_parent(out_ep);
> > +			of_node_put(out_ep);
> > +
> > +			pdata->panel = of_drm_find_panel(panel_node);
> > +			DRM_DEV_DEBUG_DRIVER(dev, "get panel node.\n");
> > +			of_node_put(panel_node);
> > +			if (IS_ERR_OR_NULL(pdata->panel))
> > +				return -EPROBE_DEFER;
> > +		} else {
> > +			DRM_DEV_DEBUG_DRIVER(dev, "cannot get endpoint.\n");
> > +			return -EPROBE_DEFER;
> > +		}
> > +	}
> > +
> > +	DRM_DEV_DEBUG_DRIVER(dev, "%s support extcon, %s internal panel\n",
> > +			     pdata->extcon_supported ? "" : "not",
> > +			     pdata->internal_panel ? "has" : "no");
> > +
> > +	return 0;
> > +}
> > +#else
> > +static int anx7625_parse_dt(struct device *dev,
> > +			    struct anx7625_platform_data *pdata)
> > +{
> > +	return -ENODEV;
> > +}
> > +#endif
> > +
> > +static inline struct anx7625_data *connector_to_anx7625(struct drm_connector *c)
> > +{
> > +	return container_of(c, struct anx7625_data, connector);
> > +}
> > +
> > +static inline struct anx7625_data *bridge_to_anx7625(struct drm_bridge *bridge)
> > +{
> > +	return container_of(bridge, struct anx7625_data, bridge);
> > +}
> > +
> > +static void anx7625_post_disable(struct drm_bridge *bridge)
> > +{
> > +	struct anx7625_data *ctx = bridge_to_anx7625(bridge);
> > +	struct device *dev = &ctx->client->dev;
> > +	int ret;
> > +
> > +	DRM_DEV_DEBUG_DRIVER(dev, "post disable\n");
> > +	if (ctx->pdata.panel) {
> 
> Reverse.
> 
> > +		ret = drm_panel_unprepare(ctx->pdata.panel);
> > +		if (ret)
> > +			DRM_ERROR("failed to unprepare panel: %d\n", ret);
> > +		else
> > +			DRM_DEV_DEBUG_DRIVER(dev, "backlight unprepared.\n");
> > +
> > +		atomic_set(&ctx->panel_power, 0);
> > +	}
> > +}
> > +
> > +static void anx7625_pre_enable(struct drm_bridge *bridge)
> > +{
> > +	struct anx7625_data *ctx = bridge_to_anx7625(bridge);
> > +	struct device *dev = &ctx->client->dev;
> > +	int ret;
> > +
> > +	DRM_DEV_DEBUG_DRIVER(dev, "pre enable\n");
> > +	if (ctx->pdata.panel) {
> 
> Reverse.
> 
> > +		ret = drm_panel_prepare(ctx->pdata.panel);
> > +		if (ret < 0)
> > +			DRM_ERROR("failed to prepare panel: %d\n", ret);
> > +		else
> > +			DRM_DEV_DEBUG_DRIVER(dev, "backlight prepared.\n");
> > +		atomic_set(&ctx->panel_power, 1);
> > +	}
> > +}
> > +
> > +static int anx7625_get_modes(struct drm_connector *connector)
> > +{
> > +	struct anx7625_data *ctx = connector_to_anx7625(connector);
> > +	int err, num_modes = 0;
> > +	int turn_off_flag = 0;
> > +	struct s_edid_data *p_edid = &ctx->slimport_edid_p;
> > +	struct device *dev = &ctx->client->dev;
> > +
> > +	DRM_DEV_DEBUG_DRIVER(dev, "drm get modes\n");
> > +
> > +	if (ctx->slimport_edid_p.edid_block_num > 0)
> > +		goto out;
> > +
> > +	mutex_lock(&ctx->lock);
> > +
> > +	if (ctx->pdata.panel && atomic_read(&ctx->panel_power) == 0) {
> > +		turn_off_flag = 1;
> > +		anx7625_pre_enable(&ctx->bridge);
> > +	}
> > +
> > +	anx7625_low_power_mode_check(ctx, 1);
> > +
> > +	p_edid->edid_block_num = sp_tx_edid_read(ctx, p_edid->edid_raw_data);
> > +
> > +	err = -EIO;
> > +	if (p_edid->edid_block_num < 0) {
> > +		DRM_ERROR("Failed to read EDID.\n");
> > +		goto fail;
> > +	}
> > +
> > +	err = drm_connector_update_edid_property(connector,
> > +						 (struct edid *)
> > +						 &p_edid->edid_raw_data);
> > +
> > +	if (err)
> > +		DRM_ERROR("Failed to update EDID property: %d\n", err);
> > +
> > +fail:
> > +	mutex_unlock(&ctx->lock);
> > +	anx7625_low_power_mode_check(ctx, 0);
> > +	if (ctx->pdata.panel && turn_off_flag == 1)
> > +		anx7625_post_disable(&ctx->bridge);
> > +
> > +	if (err)
> > +		return err;
> > +
> > +out:
> > +	num_modes = drm_add_edid_modes(connector,
> > +				       (struct edid *)&p_edid->edid_raw_data);
> > +	DRM_DEV_DEBUG_DRIVER(dev, "num_modes(%d)\n", num_modes);
> > +
> > +	return num_modes;
> > +}
> > +
> > +static enum drm_mode_status
> > +anx7625_connector_mode_valid(struct drm_connector *connector,
> > +			     struct drm_display_mode *mode)
> > +{
> > +	struct anx7625_data *ctx = connector_to_anx7625(connector);
> > +	struct device *dev = &ctx->client->dev;
> > +
> > +	DRM_DEV_DEBUG_DRIVER(dev, "drm modes valid verify\n");
> > +
> > +	if (mode->clock > 300000)
> 
> Make all the references to 300000 a define.
> 
> > +		return MODE_CLOCK_HIGH;
> > +
> > +	return MODE_OK;
> > +}
> > +
> > +static struct drm_connector_helper_funcs anx7625_connector_helper_funcs = {
> > +	.get_modes = anx7625_get_modes,
> > +	.mode_valid = anx7625_connector_mode_valid,
> > +};
> > +
> > +static enum drm_connector_status anx7625_detect(struct drm_connector *connector,
> > +						bool force)
> > +{
> > +	struct anx7625_data *ctx = connector_to_anx7625(connector);
> > +	struct device *dev = &ctx->client->dev;
> > +
> > +	DRM_DEV_DEBUG_DRIVER(dev, "drm detect\n");
> > +
> > +	if (ctx->pdata.internal_panel)
> > +		return connector_status_connected;
> > +
> > +	if (!ctx->hpd_status)
> > +		return connector_status_disconnected;
> > +
> > +	return connector_status_connected;
> > +}
> > +
> > +static const struct drm_connector_funcs anx7625_connector_funcs = {
> > +	.fill_modes = drm_helper_probe_single_connector_modes,
> > +	.detect = anx7625_detect,
> > +	.destroy = drm_connector_cleanup,
> > +	.reset = drm_atomic_helper_connector_reset,
> > +	.atomic_duplicate_state = drm_atomic_helper_connector_duplicate_state,
> > +	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
> > +};
> > +
> > +static void anx7625_attach_dsi(struct anx7625_data *ctx)
> > +{
> > +	struct mipi_dsi_host *host;
> > +	struct mipi_dsi_device *dsi;
> > +	struct device_node *mipi_host_node;
> > +	struct device *dev = &ctx->client->dev;
> > +	const struct mipi_dsi_device_info info = {
> > +		.type = "anx7625",
> > +		.channel = 0,
> > +		.node = NULL,
> > +	};
> > +
> > +	DRM_DEV_DEBUG_DRIVER(dev, "attach dsi\n");
> > +
> > +	if (ctx->pdata.dsi_supported)
> > +		mipi_host_node = ctx->pdata.node.mipi_dsi_host_node;
> > +	else
> > +		mipi_host_node = ctx->pdata.node.mipi_dpi_host_node;
> > +
> > +	if (!mipi_host_node) {
> > +		DRM_ERROR("dsi host is not configured.\n");
> > +		return;
> > +	}
> > +
> > +	host = of_find_mipi_dsi_host_by_node(mipi_host_node);
> > +	if (!host) {
> > +		DRM_ERROR("failed to find dsi host.\n");
> > +		return;
> > +	}
> > +
> > +	dsi = mipi_dsi_device_register_full(host, &info);
> > +	if (IS_ERR(dsi)) {
> > +		DRM_ERROR("failed to create dsi device.\n");
> > +		return;
> > +	}
> > +
> > +	dsi->lanes = 4;
> > +	dsi->format = MIPI_DSI_FMT_RGB888;
> > +	dsi->mode_flags = MIPI_DSI_MODE_VIDEO	|
> > +		MIPI_DSI_MODE_VIDEO_SYNC_PULSE	|
> > +		MIPI_DSI_MODE_EOT_PACKET	|
> > +		MIPI_DSI_MODE_VIDEO_HSE;
> > +
> > +	if (mipi_dsi_attach(dsi) < 0) {
> > +		DRM_ERROR("failed to attach dsi to host.\n");
> > +		mipi_dsi_device_unregister(dsi);
> > +		return;
> > +	}
> > +
> > +	ctx->dsi = dsi;
> > +
> > +	DRM_DEV_DEBUG_DRIVER(dev, "attach dsi succeeded.\n");
> > +}
> > +
> > +static void anx7625_detach_dsi(struct anx7625_data *ctx)
> > +{
> > +	if (ctx->dsi) {
> > +		mipi_dsi_detach(ctx->dsi);
> > +		mipi_dsi_device_unregister(ctx->dsi);
> > +	}
> > +}
> > +
> > +static int anx7625_bridge_attach(struct drm_bridge *bridge)
> > +{
> > +	struct anx7625_data *ctx = bridge_to_anx7625(bridge);
> > +	int err;
> > +	struct device *dev = &ctx->client->dev;
> > +
> > +	DRM_DEV_DEBUG_DRIVER(dev, "drm attach\n");
> > +	if (!bridge->encoder) {
> > +		DRM_ERROR("Parent encoder object not found");
> > +		return -ENODEV;
> > +	}
> > +
> > +	err = drm_connector_init(bridge->dev, &ctx->connector,
> > +				 &anx7625_connector_funcs,
> > +				 DRM_MODE_CONNECTOR_DisplayPort);
> > +	if (err) {
> > +		DRM_ERROR("Failed to initialize connector: %d\n", err);
> > +		return err;
> > +	}
> > +
> > +	drm_connector_helper_add(&ctx->connector,
> > +				 &anx7625_connector_helper_funcs);
> > +
> > +	err = drm_connector_register(&ctx->connector);
> > +	if (err) {
> > +		DRM_ERROR("Failed to register connector: %d\n", err);
> > +		return err;
> > +	}
> > +
> > +	ctx->connector.polled = DRM_CONNECTOR_POLL_HPD;
> > +
> > +	err = drm_connector_attach_encoder(&ctx->connector, bridge->encoder);
> > +	if (err) {
> > +		DRM_ERROR("Failed to link up connector to encoder: %d\n", err);
> > +		drm_connector_unregister(&ctx->connector);
> > +		return err;
> > +	}
> > +
> > +	anx7625_attach_dsi(ctx);
> > +
> > +	ctx->bridge_attached = 1;
> > +
> > +	return 0;
> > +}
> > +
> > +static enum drm_mode_status
> > +anx7625_bridge_mode_valid(struct drm_bridge *bridge,
> > +			  const struct drm_display_mode *mode)
> > +{
> > +	struct anx7625_data *ctx = bridge_to_anx7625(bridge);
> > +	struct device *dev = &ctx->client->dev;
> > +
> > +	DRM_DEV_DEBUG_DRIVER(dev, "drm mode checking\n");
> > +
> > +	/* Max 1200p at 5.4 Ghz, one lane, pixel clock 300M */
> > +	if (mode->clock > 300000) {
> > +		DRM_DEV_DEBUG_DRIVER(dev,
> > +				     "drm mode invalid, pixelclock too high.\n");
> > +		return MODE_CLOCK_HIGH;
> > +	}
> > +
> > +	DRM_DEV_DEBUG_DRIVER(dev, "drm mode valid.\n");
> > +
> > +	return MODE_OK;
> > +}
> > +
> > +static void anx7625_bridge_mode_set(struct drm_bridge *bridge,
> > +				    const struct drm_display_mode *old_mode,
> > +				    const struct drm_display_mode *mode)
> > +{
> > +	struct anx7625_data *ctx = bridge_to_anx7625(bridge);
> > +	struct device *dev = &ctx->client->dev;
> > +
> > +	DRM_DEV_DEBUG_DRIVER(dev, "drm mode set\n");
> > +
> > +	mutex_lock(&ctx->lock);
> > +
> > +	ctx->dt.pixelclock.min = mode->clock;
> > +	ctx->dt.hactive.min = mode->hdisplay;
> > +	ctx->dt.hsync_len.min = mode->hsync_end - mode->hsync_start;
> > +	ctx->dt.hfront_porch.min = mode->hsync_start - mode->hdisplay;
> > +	ctx->dt.hback_porch.min = mode->htotal - mode->hsync_end;
> > +	ctx->dt.vactive.min = mode->vdisplay;
> > +	ctx->dt.vsync_len.min = mode->vsync_end - mode->vsync_start;
> > +	ctx->dt.vfront_porch.min = mode->vsync_start - mode->vdisplay;
> > +	ctx->dt.vback_porch.min = mode->vtotal - mode->vsync_end;
> > +
> > +	ctx->display_timing_valid = 1;
> > +
> > +	DRM_DEV_DEBUG_DRIVER(dev, "pixelclock(%d).\n", ctx->dt.pixelclock.min);
> > +	DRM_DEV_DEBUG_DRIVER(dev, "hactive(%d), hsync(%d), hfp(%d), hbp(%d)\n",
> > +			     ctx->dt.hactive.min,
> > +			     ctx->dt.hsync_len.min,
> > +			     ctx->dt.hfront_porch.min,
> > +			     ctx->dt.hback_porch.min);
> > +	DRM_DEV_DEBUG_DRIVER(dev, "vactive(%d), vsync(%d), vfp(%d), vbp(%d)\n",
> > +			     ctx->dt.vactive.min,
> > +			     ctx->dt.vsync_len.min,
> > +			     ctx->dt.vfront_porch.min,
> > +			     ctx->dt.vback_porch.min);
> > +	DRM_DEV_DEBUG_DRIVER(dev, "hdisplay(%d),hsync_start(%d).\n",
> > +			     mode->hdisplay,
> > +			     mode->hsync_start);
> > +	DRM_DEV_DEBUG_DRIVER(dev, "hsync_end(%d),htotal(%d).\n",
> > +			     mode->hsync_end,
> > +			     mode->htotal);
> > +	DRM_DEV_DEBUG_DRIVER(dev, "vdisplay(%d),vsync_start(%d).\n",
> > +			     mode->vdisplay,
> > +			     mode->vsync_start);
> > +	DRM_DEV_DEBUG_DRIVER(dev, "vsync_end(%d),vtotal(%d).\n",
> > +			     mode->vsync_end,
> > +			     mode->vtotal);
> > +
> > +	mutex_unlock(&ctx->lock);
> > +}
> > +
> > +static void anx7625_bridge_enable(struct drm_bridge *bridge)
> > +{
> > +	struct anx7625_data *ctx = bridge_to_anx7625(bridge);
> > +	struct device *dev = &ctx->client->dev;
> > +	int ret;
> > +
> > +	DRM_DEV_DEBUG_DRIVER(dev, "drm enable\n");
> > +
> > +	anx7625_low_power_mode_check(ctx, 1);
> > +
> > +	if (WARN_ON(!atomic_read(&ctx->power_status)))
> > +		return;
> > +
> > +	if (ctx->pdata.panel) {
> > +		ret = drm_panel_enable(ctx->pdata.panel);
> > +		if (ret < 0) {
> > +			DRM_ERROR("failed to enable panel: %d.\n", ret);
> > +			return;
> > +		}
> > +	}
> > +
> > +	mutex_lock(&ctx->lock);
> > +	anx7625_dp_start(ctx);
> > +	mutex_unlock(&ctx->lock);
> > +}
> > +
> > +static void anx7625_bridge_disable(struct drm_bridge *bridge)
> > +{
> > +	struct anx7625_data *ctx = bridge_to_anx7625(bridge);
> > +	struct device *dev = &ctx->client->dev;
> > +	int ret;
> > +
> > +	if (WARN_ON(!atomic_read(&ctx->power_status)))
> > +		return;
> > +
> > +	DRM_DEV_DEBUG_DRIVER(dev, "drm disable\n");
> > +
> > +	if (ctx->pdata.panel) {
> > +		ret = drm_panel_disable(ctx->pdata.panel);
> > +		if (ret < 0)
> > +			DRM_ERROR("failed to disable panel: %d.\n", ret);
> > +	}
> > +
> > +	DRM_DEV_DEBUG_DRIVER(dev, "drm disable\n");
> > +	mutex_lock(&ctx->lock);
> > +
> > +	anx7625_dp_stop(ctx);
> > +
> > +	anx7625_low_power_mode_check(ctx, 0);
> > +
> > +	mutex_unlock(&ctx->lock);
> > +}
> > +
> > +static const struct drm_bridge_funcs anx7625_bridge_funcs = {
> > +	.attach = anx7625_bridge_attach,
> > +	.disable = anx7625_bridge_disable,
> > +	.post_disable = anx7625_post_disable,
> > +	.pre_enable = anx7625_pre_enable,
> > +	.mode_valid = anx7625_bridge_mode_valid,
> > +	.mode_set = anx7625_bridge_mode_set,
> > +	.enable = anx7625_bridge_enable,
> > +};
> > +
> > +static int anx7625_register_i2c_dummy_clients(struct anx7625_data *ctx,
> > +					      struct i2c_client *client)
> > +{
> > +	ctx->i2c.tx_p0_client = i2c_new_dummy(client->adapter,
> > +					      TX_P0_ADDR >> 1);
> > +	ctx->i2c.tx_p1_client = i2c_new_dummy(client->adapter,
> > +					      TX_P1_ADDR >> 1);
> > +	ctx->i2c.tx_p2_client = i2c_new_dummy(client->adapter,
> > +					      TX_P2_ADDR >> 1);
> > +
> > +	ctx->i2c.rx_p0_client = i2c_new_dummy(client->adapter,
> > +					      RX_P0_ADDR >> 1);
> > +	ctx->i2c.rx_p1_client = i2c_new_dummy(client->adapter,
> > +					      RX_P1_ADDR >> 1);
> > +	ctx->i2c.rx_p2_client = i2c_new_dummy(client->adapter,
> > +					      RX_P2_ADDR >> 1);
> > +
> > +	ctx->i2c.tcpc_client = i2c_new_dummy(client->adapter,
> > +					     TCPC_INTERFACE_ADDR >> 1);
> > +
> > +	if ((!ctx->i2c.tx_p0_client |
> > +	     !ctx->i2c.tx_p1_client |
> > +	     !ctx->i2c.tx_p2_client |
> > +	     !ctx->i2c.rx_p0_client |
> > +	     !ctx->i2c.rx_p1_client |
> > +	     !ctx->i2c.rx_p2_client |
> > +	     !ctx->i2c.tcpc_client) != 0)
> 
> != 0 is a double negative.  Only != 0 and == 0 when you are talking
> numbers or strcmp().
> 
> 	if (nr == 0) {
> 	if (strcmp(foo, bar) == 0) {
> 
> Don't use it for pointers or error codes.  There is no reason to do
> a bitwise OR instead of a logical OR here.  Just say:
> 
> 
> 	if (!ctx->i2c.tx_p0_client ||
> 	    !ctx->i2c.tx_p1_client ||
> 	    !ctx->i2c.tx_p2_client ||
> 	    !ctx->i2c.rx_p0_client ||
> 	    !ctx->i2c.rx_p1_client ||
> 	    !ctx->i2c.rx_p2_client ||
> 	    !ctx->i2c.tcpc_client)
> 		return -EIO;
> 
> It wouldn't be that hard to write this without the memory leaks, btw.
> Just use "Free the most recent allocation" style.
> 
> 	ctx->i2c.tx_p0_client = i2c_new_dummy(client->adapter,
> 					      TX_P0_ADDR >> 1);
> 	if (!ctx->i2c.tx_p0_client)
> 		return -ENOMEM;
> 
> 	ctx->i2c.tx_p1_client = i2c_new_dummy(client->adapter,
> 					      TX_P1_ADDR >> 1);
> 	if (!ctx->i2c.tx_p1_client)
> 		goto free_tx_p0;
> 
> 	ctx->i2c.tx_p2_client = i2c_new_dummy(client->adapter,
> 					      TX_P2_ADDR >> 1);
> 	if (!ctx->i2c.tx_p2_client)
> 		goto free_tx_p1;
> 
> 
> 	ctx->i2c.rx_p0_client = i2c_new_dummy(client->adapter,
> 					      RX_P0_ADDR >> 1);
> 	if (!ctx->i2c.rx_p0_client)
> 		goto free_tx_p2;
> 
> 	ctx->i2c.rx_p1_client = i2c_new_dummy(client->adapter,
> 					      RX_P1_ADDR >> 1);
> 	if (!ctx->i2c.rx_p1_client)
> 		goto free_rx_p0;
> 
> 	ctx->i2c.rx_p2_client = i2c_new_dummy(client->adapter,
> 					      RX_P2_ADDR >> 1);
> 	if (!ctx->i2c.rx_p2_client)
> 		goto free_rx_p1;
> 
> 
> 	ctx->i2c.tcpc_client = i2c_new_dummy(client->adapter,
> 					     TCPC_INTERFACE_ADDR >> 1);
> 	if (!ctx->i2c.tcpc_client)
> 		goto free_rx_p2;
> 
> 	return 0;
> 
> free_rx_p2:
> 	i2c_unregister_device(ctx->i2c.rx_p2_client);
> free_rx_p1:
> 	i2c_unregister_device(ctx->i2c.rx_p1_client);
> free_rx_p0:
> 	i2c_unregister_device(ctx->i2c.rx_p0_client);
> free_tx_p2:
> 	i2c_unregister_device(ctx->i2c.tx_p2_client);
> free_tx_p1:
> 	i2c_unregister_device(ctx->i2c.tx_p1_client);
> free_tx_p0:
> 	i2c_unregister_device(ctx->i2c.tx_p0_client);
> 
> 	return -ENOMEM;
> 
> It's a little bit extra work, but I have done it so I know how hard it
> is.  Also now static analysis tools won't complain about the leaks.
> 
> 
> > +		return -EIO;
> > +
> > +	return 0;
> > +}
> > +
> > +static void anx7625_unregister_i2c_dummy_clients(struct anx7625_data *ctx)
> > +{
> > +	i2c_unregister_device(ctx->i2c.tx_p0_client);
> > +	i2c_unregister_device(ctx->i2c.tx_p1_client);
> > +	i2c_unregister_device(ctx->i2c.tx_p2_client);
> > +	i2c_unregister_device(ctx->i2c.rx_p1_client);
> > +	i2c_unregister_device(ctx->i2c.rx_p2_client);
> > +	i2c_unregister_device(ctx->i2c.rx_p3_client);
> 
> Delete the ctx->i2c.rx_p3_client because it's never used.
> 
> > +	i2c_unregister_device(ctx->i2c.tcpc_client);
> 
> 
> The other advantage of the "Free the last resource style" is that you
> can just add a:
> 
> 	i2c_unregister_device(ctx->i2c.tcpc_client);
> 
> and delete the error labels and you have an
> anx7625_unregister_i2c_dummy_clients() function.
> 
> There is another bug here because we forgot to free "i2c.rx_p0_client".
> 
> > +}
> > +
> > +static int anx7625_i2c_probe(struct i2c_client *client,
> > +			     const struct i2c_device_id *id)
> > +{
> > +	struct anx7625_data *platform;
> > +	struct anx7625_platform_data *pdata;
> > +	int ret = 0;
> > +	struct device *dev = &client->dev;
> > +
> > +	if (!i2c_check_functionality(client->adapter,
> > +				     I2C_FUNC_SMBUS_I2C_BLOCK)) {
> > +		DRM_DEV_ERROR(dev, "anx7625's i2c bus doesn't support\n");
> > +		ret = -ENODEV;
> > +		goto exit;
> 
> Return directly, please.  "goto exit" is less readable than
> return -ENODEV;
> 
> > +	}
> > +
> > +	platform = kzalloc(sizeof(*platform), GFP_KERNEL);
> > +	if (!platform) {
> > +		DRM_DEV_ERROR(dev, "failed to allocate driver data\n");
> > +		ret = -ENOMEM;
> > +		goto exit;
> 
> return -ENOMEM;
> 
> > +	}
> > +
> > +	pdata = &platform->pdata;
> > +
> > +	/* device tree parsing function call */
> > +	ret = anx7625_parse_dt(&client->dev, pdata);
> > +	if (ret != 0)	/* if occurs error */
> > +		goto err0;
> 
> != 0 is double negative.  Choose better label names.  Remove the obvious
> comment.
> 
> if (ret)
> 	goto free_platform;
> 
> > +
> > +	anx7625_init_gpio(platform);
> > +
> > +	/* to access global platform data */
> > +	platform->client = client;
> > +	i2c_set_clientdata(client, platform);
> > +
> > +	if (platform->pdata.extcon_supported) {
> > +		/* get extcon device from DTS */
> > +		platform->extcon = extcon_get_edev_by_phandle(&client->dev, 0);
> > +		if (PTR_ERR(platform->extcon) == -EPROBE_DEFER)
> > +			goto err0;
> 
> Preserve the error code.
> 
> > +		if (IS_ERR(platform->extcon)) {
> > +			DRM_DEV_ERROR(&client->dev,
> > +				      "can not get extcon device!");
> > +			goto err0;
> 
> Prerve the error code.
> 
> > +		}
> > +
> > +		ret = anx7625_extcon_notifier_init(platform);
> > +		if (ret < 0)
> > +			goto err0;
> > +	}
> > +
> > +	atomic_set(&platform->power_status, 0);
> > +
> > +	mutex_init(&platform->lock);
> > +
> > +	if (platform->pdata.gpio_intr_hpd) {
> > +		INIT_WORK(&platform->work, anx7625_work_func);
> > +		platform->workqueue = create_workqueue("anx7625_work");
> > +		if (!platform->workqueue) {
> > +			DRM_DEV_ERROR(dev, "failed to create work queue\n");
> > +			ret = -ENOMEM;
> > +			goto err1;
> 
> This goto will crash.  Because you have forgotten what the most recently
> allocated resource was.  It should be "goto free_platform;" still.
> 
> > +		}
> > +
> > +		platform->pdata.hpd_irq =
> > +			gpiod_to_irq(platform->pdata.gpio_intr_hpd);
> > +		if (platform->pdata.hpd_irq < 0) {
> > +			DRM_DEV_ERROR(dev, "failed to get gpio irq\n");
> > +			goto err1;
> 
> goto free_wq;
> 
> > +		}
> > +
> > +		ret = request_threaded_irq(platform->pdata.hpd_irq,
> > +					   NULL, anx7625_intr_hpd_isr,
> > +					   IRQF_TRIGGER_FALLING |
> > +					   IRQF_TRIGGER_RISING |
> > +					   IRQF_ONESHOT,
> > +					   "anx7625-hpd", platform);
> > +		if (ret < 0) {
> > +			DRM_DEV_ERROR(dev, "failed to request irq\n");
> > +			goto err1;
> > +		}
> > +
> > +		ret = irq_set_irq_wake(platform->pdata.hpd_irq, 1);
> > +		if (ret < 0) {
> > +			DRM_DEV_ERROR(dev, "Request irq for hpd");
> > +			DRM_DEV_ERROR(dev, "interrupt wake set fail\n");
> > +			goto err1;
> > +		}
> > +
> > +		ret = enable_irq_wake(platform->pdata.hpd_irq);
> > +		if (ret < 0) {
> > +			DRM_DEV_ERROR(dev, "Enable irq for HPD");
> > +			DRM_DEV_ERROR(dev, "interrupt wake enable fail\n");
> > +			goto err1;
> > +		}
> > +	}
> > +
> > +	if (anx7625_register_i2c_dummy_clients(platform, client) != 0) {
> 
> Preserve the error code.
> 
> 	ret = anx7625_register_i2c_dummy_clients();
> 	if (ret)
> 		goto free_platform;
> 
> Ugh...  The err2 is a layering violation.  Every function should free
> its own partially allocated memory.  It should either succeed or fail
> and it shouldn't expect the caller to clean up partially allocated
> resources for it.
> 
> 
> > +		ret = -ENOMEM;
> > +		DRM_ERROR("Failed to reserve I2C bus.\n");
> > +		goto err2;
> > +	}
> > +
> > +	if (platform->pdata.low_power_mode == 0) {
> > +		anx7625_disable_pd_protocol(platform);
> > +		atomic_set(&platform->power_status, 1);
> > +	}
> > +
> > +	/* add work function */
> > +	if (platform->pdata.gpio_intr_hpd)
> > +		queue_work(platform->workqueue, &platform->work);
> > +
> > +	platform->bridge.funcs = &anx7625_bridge_funcs;
> > +#if IS_ENABLED(CONFIG_OF)
> > +	platform->bridge.of_node = client->dev.of_node;
> > +#endif
> > +	drm_bridge_add(&platform->bridge);
> > +
> > +	DRM_DEV_DEBUG_DRIVER(dev, "probe done\n");
> > +	goto exit;
> 
> return 0;
> 
> > +
> > +err2:
> > +	anx7625_unregister_i2c_dummy_clients(platform);
> > +err1:
> > +	if (platform->pdata.gpio_intr_hpd)
> > +		destroy_workqueue(platform->workqueue);
> > +err0:
> > +	kfree(platform);
> > +exit:
> > +	return ret;
> > +}
> > +
> 
> regards,
> dan carpenter
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

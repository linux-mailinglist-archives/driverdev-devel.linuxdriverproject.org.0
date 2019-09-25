Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 60449BD768
	for <lists+driverdev-devel@lfdr.de>; Wed, 25 Sep 2019 06:31:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A32E6221A9;
	Wed, 25 Sep 2019 04:31:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kqBj2irOdD6j; Wed, 25 Sep 2019 04:31:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CCE3220485;
	Wed, 25 Sep 2019 04:31:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BA7AC1BF403
 for <devel@linuxdriverproject.org>; Wed, 25 Sep 2019 04:31:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A501220357
 for <devel@linuxdriverproject.org>; Wed, 25 Sep 2019 04:31:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YaighCDR2Na4 for <devel@linuxdriverproject.org>;
 Wed, 25 Sep 2019 04:31:02 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM01-BY2-obe.outbound.protection.outlook.com
 (mail-eopbgr810119.outbound.protection.outlook.com [40.107.81.119])
 by silver.osuosl.org (Postfix) with ESMTPS id 0476820355
 for <devel@driverdev.osuosl.org>; Wed, 25 Sep 2019 04:31:01 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AVx2mwyyRq+6cMIlExcrThqd76RxMwcBUfCl4jHDVu4Xh8fLE0u53llCdOQkwkCXHH40dHY4LHJBxj5aVioB/DQwt18xHo8rbGoC5JJvKOlsudtMJQbbR988vfFAHpoGDfMgwM8uH8JOwfcGsUTIV7H1cz1c//zgpE0Su1YHeEIx9EBF9H9ryCu5P8SlK65NeZSuvkq/1E6Kaqd7gckNb2C/sfwXtd39K+zbuAJIP7C9MjF5x4FHX5D0ee9KmCdssuSbdbGYGj26JPCSE5rj1/qJN6G2iaR3x0YE8buXdD+bbbuiVUD+rfkLwkyTkh2grkbqxvDs1wYtTDr83a/94w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CHTPzzG7WzqlJwzrN3HLPQL8iM9flXqwyeBFy88xZls=;
 b=KrXo0B0F4LSUJ0BAqYCwAz8o5eSZvY5B9NJFMEp4/1leYMWh4nJS0jJUCuLkG3Z7lxu64ocgBtCNf+HLKGCiheYmsb08+IXZN0seUyy+sZSDAeU78BvvP5WWxiW/V4zPQgv/oKBo3QwlA/IUwvuwvFAJYHPQK3/1l5zEiUSULVj4hF+BKo7f5RE0VKzVtfyJCuBe5XzzvELmUlRUwXsMrZdp5ew+p0sREZ8KvW//rqwcpppglkHg0yDj6ow5rkgI4fN5mYqPTk0q2YhL0oVSLJ/IRAk5feF6A4Z3WpdKx6NqRSlmxgOt0PV+VjHYEjp+XrSKendOayN0e2F0l2QKIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analogixsemi.com; dmarc=pass action=none
 header.from=analogixsemi.com; dkim=pass header.d=analogixsemi.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Analogixsemi.onmicrosoft.com; s=selector2-Analogixsemi-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CHTPzzG7WzqlJwzrN3HLPQL8iM9flXqwyeBFy88xZls=;
 b=id5zm/MFqZlreQF/MixseV64vVgrE/Ou75LNOpKk2v1tISMIoHDuSvqzmq8zObknYMTDLr5iVA5ZMCdUHaahoasmNp/E6GwCnFAJGsm8q4He1hLuKhYokbBCZ24LXSYpoRzJ9F987YamzLTOtUqr409G9zoXv4AH//205UHWHSU=
Received: from MN2PR04MB5886.namprd04.prod.outlook.com (20.179.22.213) by
 MN2PR04MB5712.namprd04.prod.outlook.com (20.179.21.13) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.20; Wed, 25 Sep 2019 04:16:56 +0000
Received: from MN2PR04MB5886.namprd04.prod.outlook.com
 ([fe80::8520:f80f:ae9:63cd]) by MN2PR04MB5886.namprd04.prod.outlook.com
 ([fe80::8520:f80f:ae9:63cd%6]) with mapi id 15.20.2284.023; Wed, 25 Sep 2019
 04:16:56 +0000
From: Xin Ji <xji@analogixsemi.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH v1 2/2] drm/bridge: anx7625: Add anx7625 MIPI to DP bridge
 driver
Thread-Topic: [PATCH v1 2/2] drm/bridge: anx7625: Add anx7625 MIPI to DP
 bridge driver
Thread-Index: AQHVb3m3O6Kkudc69k2BA5rT6xVhEKc5UIWAgAKAn4A=
Date: Wed, 25 Sep 2019 04:16:56 +0000
Message-ID: <20190925041647.GA3388@xin-VirtualBox>
References: <cover.1568957788.git.xji@analogixsemi.com>
 <02319a7db948900efe0f945b684221ac076bac48.1568957789.git.xji@analogixsemi.com>
 <20190923140355.GH2959@kadam>
In-Reply-To: <20190923140355.GH2959@kadam>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HK0PR04CA0009.apcprd04.prod.outlook.com
 (2603:1096:203:36::21) To MN2PR04MB5886.namprd04.prod.outlook.com
 (2603:10b6:208:a3::21)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=xji@analogixsemi.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [43.252.149.35]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9fea7581-f7dc-48b6-89e4-08d7416f334d
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:MN2PR04MB5712; 
x-ms-traffictypediagnostic: MN2PR04MB5712:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB57128ECACF9C67C86E97EF78C7870@MN2PR04MB5712.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:257;
x-forefront-prvs: 01713B2841
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(7916004)(346002)(376002)(366004)(39840400004)(396003)(136003)(199004)(189003)(2906002)(256004)(186003)(9686003)(305945005)(86362001)(30864003)(446003)(71190400001)(26005)(6486002)(6512007)(229853002)(5660300002)(6246003)(52116002)(8936002)(107886003)(66946007)(66066001)(14454004)(6436002)(478600001)(25786009)(66556008)(66476007)(66446008)(64756008)(6116002)(54906003)(3846002)(486006)(81166006)(7416002)(6916009)(76176011)(71200400001)(4326008)(561924002)(33716001)(5024004)(476003)(6506007)(386003)(8676002)(11346002)(7736002)(1076003)(316002)(102836004)(81156014)(33656002)(55236004)(99286004)(14444005)(579004)(559001)(569006);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB5712;
 H:MN2PR04MB5886.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: analogixsemi.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: OJlCuBs4vfktXI6R0jX0ZTK7qWeSVyaVS/IOPTcZXqJPMFYEiCJivQlawrsZc7iRRdU2EIinFnxWv7j3+ivaRd6oxiRLJIaBduToG7EXqhO+Qg+FpJV+xXCaTAfq8jhdhl04Pxq5ubkooVNO8RV3JRrvJtMuHLvdSVNg0w6YfBj2iOSS1pvz3xR5/mY8ulMKPIf690czZB66ri8OoSLQkxfiK9LOefedb0f2nMU/84TSRRbAXwNnuRChBU8IwZgSwZ0giWNZyKt3unSejgd2V8MIBZKtj+EKCvtBw4x8myTfuq4PHVuf2MghqaWvN+Mw5sVnXr6JlDwWu5uVhj0Lh+kMGktVyVUHFeBW4tiHkge2NBqWO9Muz7Vcps3tdEl7TzKzAb4XC0LAfqW09qmFnFLs6022hnhQkngrVnvuY8Y=
Content-ID: <63D33D3DCEAF51458312DF259E126E26@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: analogixsemi.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9fea7581-f7dc-48b6-89e4-08d7416f334d
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Sep 2019 04:16:56.2224 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b099b0b4-f26c-4cf5-9a0f-d5be9acab205
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EnluRwAzXrsLBdWzHLT8P/ZO6uA0vBsMoxgNBKj8FGpnUrkxO557F+CKETOWiuzNVAVt9ka9kdRUDpKDhiWxGA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB5712
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
 Daniel Vetter <daniel@ffwll.ch>, Sheng Pan <span@analogixsemi.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Sep 23, 2019 at 05:03:55PM +0300, Dan Carpenter wrote:
> I wish you would think more about the error codes that you're returning.
> Most functions do "ret |= frob()." which ORs the error codes together,
> and results in a nonsense negative error code.  But then some functions
> return 1 on error and zero on success which is sometimes a bug,
> sometimes confusing but always ugly.
Hi Dan Carpenter, I'll take more care about return error codes.
As I cannot to check all I2C operation result, so I use "ret |= frob()."
to combine them, if one of them has negative return value, I'll pop out error
message and retuan. Anyway I'll use uniform return error code(negative
value as failed, 0 as success).

Thanks,
Xin
> 
> On Fri, Sep 20, 2019 at 06:07:43AM +0000, Xin Ji wrote:
> > The ANX7625 is an ultra-low power 4K Mobile HD Transmitter designed
> > for portable device. It converts MIPI to DisplayPort 1.3 4K.
> > 
> > Signed-off-by: Xin Ji <xji@analogixsemi.com>
> > ---
> >  drivers/gpu/drm/bridge/Makefile           |    2 +-
> >  drivers/gpu/drm/bridge/analogix/Kconfig   |    6 +
> >  drivers/gpu/drm/bridge/analogix/Makefile  |    1 +
> >  drivers/gpu/drm/bridge/analogix/anx7625.c | 2085 +++++++++++++++++++++++++++++
> >  drivers/gpu/drm/bridge/analogix/anx7625.h |  397 ++++++
> >  5 files changed, 2490 insertions(+), 1 deletion(-)
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
> > index 0000000..eceadef
> > --- /dev/null
> > +++ b/drivers/gpu/drm/bridge/analogix/anx7625.c
> > @@ -0,0 +1,2085 @@
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
> Flip this around:
> 
> 	if (client == last_client)
> 		return 0;
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
> Write these functions cleaner like this:
> 
> 	int val;
> 
> 	val = anx7625_reg_read(ctx, client, offset);
> 	if (val < 0)
> 		return val;
> 
> 	return anx7625_reg_write(ctx, client, offset, (val | (mask)));
> 
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
> > +}
> > +
> > +static int anx7625_config_bit_matrix(struct anx7625_data *ctx)
> > +{
> > +	int i, ret;
> > +
> > +	ret = anx7625_reg_write(ctx, ctx->i2c.tx_p2_client,
> > +				AUDIO_CONTROL_REGISTER, 0x80);
> > +	for (i = 0; i < 13; i++)
>                         ^^
> Magic number.
> 
> 
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
> Return directly:
> 
> 	if (ret) {
> 		DRM_DEV_ERROR(dev, "aux operation failed!\n");
> 		return ret;
> 	}
> 
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
> This cast is not required.
> 
> > +		return -E2BIG;
> > +
> > +	/* command and length */
> > +	c = ((count - 1) << 4) | 0x09;
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
> > +		return 1;
> 
> Returning one on error is ugly.  return -EINVAL;
> 
> > +	}
> > +
> > +	if (pixelclock < PLL_OUT_FREQ_ABS_MIN / POST_DIVIDER_MAX) {
> > +		/* pixel clock frequency is too low */
> > +		DRM_ERROR("pixelclock too low, act(%d), maximum(%lu)\n",
> > +			  pixelclock,
> > +			  PLL_OUT_FREQ_ABS_MIN / POST_DIVIDER_MAX);
> > +		return 1;
> > +	}
> > +
> > +	*post_divider = 1;
> > +
> > +	for (*post_divider = 1;
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
> > +			return 1;
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
> > +		return 1;
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
> > +		DRM_ERROR("cannot get property m n value.\n");
> > +		return -EINVAL;
> > +	}
> 
> 	if (ret)
> 		return ret;
> 
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
> > +	if (ctx->pdata.dsi_lanes)
> > +		ret |= anx7625_write_or(ctx, ctx->i2c.rx_p1_client,
> > +					MIPI_LANE_CTRL_0,
> > +					(ctx->pdata.dsi_lanes - 1));
> > +	else
> > +		ret |= anx7625_write_or(ctx, ctx->i2c.rx_p1_client,
> > +					MIPI_LANE_CTRL_0, 3);
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
> > +		return 1;
> > +
> > +	return 0;
> > +}
> > +
> > +static void sp_tx_get_rx_bw(struct anx7625_data *ctx, u8 *bw)
> > +{
> > +	u8 data_buf[4];
> > +	/*
> > +	 * When ANX dongle connected, if CHIP_ID = 0x7750, bandwidth is 6.75G,
> > +	 * because ANX7750 DPCD 0x052x was not available.
> > +	 */
> > +	if (is_anx_dongle(ctx)) {
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
> 
> return after error?
> 
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
> > +		c = 1;
> > +
> > +	return c;
> > +}
> > +
> > +static int edid_read(struct anx7625_data *ctx,
> > +		     u8 offset, u8 *pblock_buf)
> > +{
> > +	u8 c, cnt = 0;
>                   ^^^
> 
> "c" needs to be an integer.  "cnt" should be an int too, but it doesn't
> cause a bug either way.  Delete the bogus "cnt" initialization.
> 
> > +	struct device *dev = &ctx->client->dev;
> > +
> > +	c = 0;
>         ^^^^^
> Delete.
> 
> > +	for (cnt = 0; cnt < 3; cnt++) {
> > +		sp_tx_aux_wr(ctx, offset);
> > +		/* set I2C read com 0x01 mot = 0 and read 16 bytes */
> > +		c = sp_tx_aux_rd(ctx, 0xf1);
> > +
> > +		if (c == 1) {
> 
> 1 is a magic number here.  We need to check for negative returns as
> well.
> 
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
> > +		}
> > +	}
> > +
> > +	return 1;
> > +}
> > +
> > +static int segments_edid_read(struct anx7625_data *ctx,
> > +			      u8 segment, u8 *buf, u8 offset)
> > +{
> > +	u8 c, cnt = 0;
> 
> c needs to be an int.
> 
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
> 
> Where does 1 come from?  We need to check for negative returns.
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
> > +				if (g_edid_break == 1)
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
> > +		DRM_DEV_ERROR(dev, "WARNING! edid check failed!\n");
> > +
> > +	/* reset aux channel */
> > +	sp_tx_rst_aux(ctx);
> > +
> > +	return blocks_num;
> > +}
> > +
> > +static void anx7625_power_on(struct anx7625_data *ctx)
> > +{
> > +	struct device *dev = &ctx->client->dev;
> > +
> > +	if (ctx->pdata.low_power_mode) {
> 
> Flip this around.
> 
> 	if (!ctx->pdata.low_power_mode) {
> 		DRM_DEV_DEBUG_DRIVER(dev, "Anx7625 not low power mode!\n");
> 		return;
> 	}
> 
> > +		/* power on pin enable */
> > +		gpio_set_value(ctx->pdata.gpio_p_on, 1);
> > +		usleep_range(10000, 11000);
> > +		/* power reset pin enable */
> > +		gpio_set_value(ctx->pdata.gpio_reset, 1);
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
> Flip.
> 
> > +		gpio_set_value(ctx->pdata.gpio_reset, 0);
> > +		usleep_range(1000, 1100);
> > +		gpio_set_value(ctx->pdata.gpio_p_on, 0);
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
>                ^^^^
> Delete initialization.
> 
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
> > +static void anx7625_chip_control(struct anx7625_data *ctx)
> > +{
> > +	int state = extcon_get_state(ctx->extcon, EXTCON_DISP_DP);
> > +
> > +	if (ctx->pdata.low_power_mode) {
> > +		if (state > 0) {
> > +			if (atomic_read(&ctx->power_status) == 0) {
> > +				anx7625_power_on_init(ctx);
> > +				atomic_set(&ctx->power_status, 1);
> > +			}
> > +		} else {
> > +			if (atomic_read(&ctx->power_status) == 1) {
> > +				anx7625_power_standby(ctx);
> > +				atomic_set(&ctx->power_status, 0);
> > +			}
> > +		}
> > +	}
> > +}
> > +
> > +static void anx7625_extcon_work(struct work_struct *work)
> > +{
> > +	struct anx7625_data *ctx =
> > +		container_of(work, struct anx7625_data, extcon_wq);
> > +
> > +	mutex_lock(&ctx->lock);
> > +	anx7625_chip_control(ctx);
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
> > +static void anx7625_free_gpio(struct anx7625_data *platform)
> > +{
> > +	if (platform->pdata.gpio_intr_hpd)
> > +		gpio_free(platform->pdata.gpio_intr_hpd);
> > +
> > +	if (platform->pdata.low_power_mode) {
> > +		gpio_free(platform->pdata.gpio_reset);
> > +		gpio_free(platform->pdata.gpio_p_on);
> > +	}
> > +}
> > +
> > +static int anx7625_init_gpio(struct anx7625_data *platform)
> > +{
> > +	int ret = 0;
> > +	struct device *dev = &platform->client->dev;
> > +
> > +	DRM_DEV_DEBUG_DRIVER(dev, "anx7625 init gpio\n");
> > +
> > +	if (platform->pdata.low_power_mode) {
> > +		/* gpio for chip power down */
> > +		ret = gpio_request(platform->pdata.gpio_p_on,
> > +				   "anx7625_p_on_ctl");
> > +		if (ret) {
> > +			DRM_DEV_ERROR(dev, "failed to request gpio %d\n",
> > +				      platform->pdata.gpio_p_on);
> > +			goto err0;
> 
> Choose error labels that say what the error handling does.  Imagine if
> we didn't have names, we just and "int var1, var2, var3;  func1(var2);".
> It's the same thing for error labels, the name should be useful.
> 
> In this case the error handling is wrong because the gpio_request()
> failed so there is no cleanup required.  We should always just clean
> up the most recent allocation.  In this case since we haven't allocated
> anything we can just return;
> 
> 		if (ret) {
> 			DRM_DEV_ERROR(dev, "failed to request gpio %d\n",
> 				      platform->pdata.gpio_p_on);
> 			return ret;
> 		}
> 
> 
> > +		}
> > +		/* gpio for chip reset */
> > +		ret = gpio_request(platform->pdata.gpio_reset,
> > +				   "anx7625_reset_n");
> > +		if (ret) {
> > +			DRM_DEV_ERROR(dev, "failed to request gpio %d\n",
> > +				      platform->pdata.gpio_reset);
> > +			goto err1;
> 
> The most recent allocation is so gpio_p_on "goto free_gpio_p_on;".
> 
> > +		}
> > +	}
> > +
> > +	if (platform->pdata.gpio_intr_hpd) {
> > +		/* gpio for chip interface communaction */
> > +		ret = gpio_request(platform->pdata.gpio_intr_hpd,
> > +				   "anx7625_hpd");
> > +		if (ret) {
> > +			DRM_DEV_ERROR(dev, "failed to request gpio %d\n",
> > +				      platform->pdata.gpio_intr_hpd);
> > +			goto err2;
> 
> goto free_gpio_reset;
> 
> > +		}
> > +	}
> > +
> > +	goto out;
> 
> Just "return 0;"  "return 0;" is immediately readable.  The little goto
> hops around are like chasing a rabbit.  Fun for a little while but
> tiring in the end.
> 
> free_gpio_reset:
> 	if (platform->pdata.low_power_mode)
> 		gpio_free(platform->pdata.gpio_reset);
> free_gpio_p_on:
> 	if (platform->pdata.low_power_mode)
> 		gpio_free(platform->pdata.gpio_p_on);
> 
> 	return ret;
> 
> 
> > +
> > +err2:
> > +	if (platform->pdata.gpio_intr_hpd)
> > +		gpio_free(platform->pdata.gpio_intr_hpd);
> > +err1:
> > +	if (platform->pdata.low_power_mode)
> > +		gpio_free(platform->pdata.gpio_reset);
> > +err0:
> > +	if (platform->pdata.low_power_mode)
> > +		gpio_free(platform->pdata.gpio_p_on);
> > +
> > +	return 1;
> 
> returning 1 here is a bug because it get propogated outside the driver.
> 
> > +out:
> > +
> > +	return 0;
> > +}
> > +
> > +static void anx7625_stop_dp_work(struct anx7625_data *ctx)
> > +{
> > +	ctx->hpd_status = 0;
> > +	ctx->hpd_high_cnt = 0;
> > +	ctx->display_timing_valid = 0;
> > +
> > +	kfree(ctx->slimport_edid_p);
> > +	ctx->slimport_edid_p = NULL;
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
> > +	ctx->hpd_status = on;
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
> > +		status = anx7625_reg_read(ctx, ctx->i2c.rx_p0_client,
> > +					  SYSTEM_STSTUS);
> > +		if (status < 0) {
> > +			DRM_ERROR("IO error : clear interrupt status.\n");
> > +			return status;
> > +		}
> > +
> > +		DRM_DEV_DEBUG_DRIVER(dev, "0x7e:0x45=%x\n", status);
> > +		dp_hpd_change_handler(ctx, status & HPD_STATUS);
> > +		return 1;
> > +	}
> > +
> > +	return 0;
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
> > +	if (event && ctx->bridge_attached)
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
> > +	int ret;
> > +	struct device_node *np = dev->of_node;
> > +
> > +	ret = of_property_read_u32(dev->of_node, "low-power-mode",
> > +				   &pdata->low_power_mode);
> > +	if (ret)
> > +		pdata->low_power_mode = 1; /* default low power mode */
> > +
> > +	ret = of_property_read_u32(dev->of_node, "dsi-supported",
> > +				   &pdata->dsi_supported);
> > +	if (ret)
> > +		pdata->dsi_supported = 1; /* default dsi mode */
> > +
> > +	ret = of_property_read_u32(dev->of_node, "extcon-supported",
> > +				   &pdata->extcon_supported);
> > +	if (ret)
> > +		pdata->extcon_supported = 0;
> > +
> > +	ret = of_property_read_u32(dev->of_node, "internal-pannel-supported",
> > +				   &pdata->internal_pannel);
> > +	if (ret)
> > +		pdata->internal_pannel = 0;
> > +
> > +	of_property_read_u32(dev->of_node, "dsi-channel-id",
> > +			     &pdata->dsi_channel);
> > +
> > +	of_property_read_u32(dev->of_node, "dsi-lanes-num", &pdata->dsi_lanes);
> > +
> > +	pdata->host_node = of_graph_get_remote_node(np, 0, 0);
> > +	if (pdata->host_node)
> > +		of_node_put(pdata->host_node);
> > +
> > +	DRM_DEV_DEBUG_DRIVER(dev, "low_power_mode : %d, dsi_supported : %d\n",
> > +			     pdata->low_power_mode, pdata->dsi_supported);
> > +	DRM_DEV_DEBUG_DRIVER(dev, "dsi_channel : %d, dsi_lanes : %d, %s node\n",
> > +			     pdata->dsi_channel, pdata->dsi_lanes,
> > +			     (!pdata->host_node) ? "not" : "has");
> > +
> > +	if (pdata->low_power_mode) {
> > +		pdata->gpio_p_on =
> > +			of_get_named_gpio_flags(np, "pon-gpios",
> > +						0, NULL);
> > +
> > +		pdata->gpio_reset =
> > +			of_get_named_gpio_flags(np, "reset-gpios",
> > +						0, NULL);
> > +		DRM_DEV_DEBUG_DRIVER(dev, "gpio p_on : %d, reset : %d\n",
> > +				     pdata->gpio_p_on, pdata->gpio_reset);
> > +	}
> > +
> > +	pdata->gpio_intr_hpd =
> > +		of_get_named_gpio_flags(np, "hpd-gpios", 0, NULL);
> > +
> > +	DRM_DEV_DEBUG_DRIVER(dev, "gpio hpd : %d\n", pdata->gpio_intr_hpd);
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
> > +static int anx7625_read_hpd_status_p0(struct anx7625_data *ctx)
> > +{
> > +	return anx7625_reg_read(ctx, ctx->i2c.rx_p0_client, SYSTEM_STSTUS);
> > +}
> > +
> > +static int anx7625_get_modes(struct drm_connector *connector)
> > +{
> > +	struct anx7625_data *ctx = connector_to_anx7625(connector);
> > +	int err, num_modes = 0;
> > +	int val, ret;
> > +	struct s_edid_data *p_edid = (struct s_edid_data *)ctx->slimport_edid_p;
> > +	struct device *dev = &ctx->client->dev;
> > +
> > +	DRM_DEV_DEBUG_DRIVER(dev, "drm get modes\n");
> > +
> > +	if (ctx->pdata.internal_pannel &&
> > +	    ctx->pdata.low_power_mode &&
> > +	    (!atomic_read(&ctx->power_status))) {
> > +		anx7625_power_on_init(ctx);
> > +		atomic_set(&ctx->power_status, 1);
> > +
> > +		ret = readx_poll_timeout(anx7625_read_hpd_status_p0,
> > +					 ctx, val,
> > +					 ((val & HPD_STATUS) || (val < 0)),
> > +					 5000,
> > +					 5000 * 100);
> > +		if (ret) {
> > +			DRM_DEV_ERROR(dev, "HPD status polling timeout!\n");
> > +		} else {
> > +			DRM_DEV_DEBUG_DRIVER(dev, "HPD raise up.\n");
> > +			anx7625_reg_write(ctx, ctx->i2c.tcpc_client,
> > +					  INTR_ALERT_1, 0xFF);
> > +			anx7625_reg_write(ctx, ctx->i2c.rx_p0_client,
> > +					  INTERFACE_CHANGE_INT, 0);
> > +		}
> > +
> > +		anx7625_start_dp_work(ctx);
> > +	}
> > +
> > +	if (WARN_ON(!atomic_read(&ctx->power_status)))
> > +		return 0;
> > +
> > +	if (ctx->slimport_edid_p && ctx->slimport_edid_p->edid_block_num >= 0)
> > +		return drm_add_edid_modes(connector,
> > +					  (struct edid *)
> > +					  &p_edid->edid_raw_data);
> > +
> > +	mutex_lock(&ctx->lock);
> > +
> > +	if (!ctx->slimport_edid_p)
> > +		ctx->slimport_edid_p = kzalloc(sizeof(*ctx->slimport_edid_p),
> > +					       GFP_KERNEL);
> 
> Add a check for NULL.
> 
> > +	p_edid = ctx->slimport_edid_p;
> > +	p_edid->edid_block_num = sp_tx_edid_read(ctx, p_edid->edid_raw_data);
> > +	if (p_edid->edid_block_num < 0) {
> > +		DRM_ERROR("Failed to read EDID.\n");
> > +		goto unlock;
> > +	}
> > +
> > +	err = drm_connector_update_edid_property(connector,
> > +						 (struct edid *)
> > +						 &p_edid->edid_raw_data);
> > +
> > +	if (err) {
> > +		DRM_ERROR("Failed to update EDID property: %d\n", err);
> > +		goto unlock;
> > +	}
> > +
> > +	num_modes = drm_add_edid_modes(connector,
> > +				       (struct edid *)&p_edid->edid_raw_data);
> > +
> > +unlock:
> > +	mutex_unlock(&ctx->lock);
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
> > +	if (!(ctx->hpd_status))
> 
> Remove extra parens.
> 
> > +		return connector_status_disconnected;
> > +
> > +	DRM_DEV_DEBUG_DRIVER(dev, "drm detect\n");
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
> > +	struct device *dev = &ctx->client->dev;
> > +	const struct mipi_dsi_device_info info = {
> > +		.type = "anx7625",
> > +		.channel = ctx->pdata.dsi_channel,
> > +		.node = NULL,
> > +	};
> > +
> > +	DRM_DEV_DEBUG_DRIVER(dev, "attach dsi\n");
> > +
> > +	host = of_find_mipi_dsi_host_by_node(ctx->pdata.host_node);
> > +	if (!host) {
> > +		DRM_ERROR("failed to find dsi host.\n");
> > +		return;
> 
> I feel like this should really return negative error codes.
> 
> > +	}
> > +
> > +	dsi = mipi_dsi_device_register_full(host, &info);
> > +	if (IS_ERR(dsi)) {
> > +		DRM_ERROR("failed to create dsi device.\n");
> > +		return;
> > +	}
> > +
> > +	dsi->lanes = ctx->pdata.dsi_lanes;
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
> 
> You can get better information with ftrace.
> 
> > +
> > +	if (WARN_ON(!atomic_read(&ctx->power_status)))
> > +		return;
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
> > +
> > +	DRM_DEV_DEBUG_DRIVER(dev, "drm enable\n");
> 
> ftrace.
> 
> > +
> > +	if (WARN_ON(!atomic_read(&ctx->power_status)))
> > +		return;
> > +
> > +	mutex_lock(&ctx->lock);
> > +
> > +	anx7625_dp_start(ctx);
> > +
> > +	mutex_unlock(&ctx->lock);
> > +}
> > +
> > +static void anx7625_bridge_disable(struct drm_bridge *bridge)
> > +{
> > +	struct anx7625_data *ctx = bridge_to_anx7625(bridge);
> > +	struct device *dev = &ctx->client->dev;
> > +
> > +	if (WARN_ON(!atomic_read(&ctx->power_status)))
> > +		return;
> > +
> > +	DRM_DEV_DEBUG_DRIVER(dev, "drm disable\n");
> 
> ftrace.
> 
> > +	mutex_lock(&ctx->lock);
> > +
> > +	anx7625_dp_stop(ctx);
> > +
> > +	if (ctx->pdata.internal_pannel &&
> > +	    ctx->pdata.low_power_mode &&
> > +	    (atomic_read(&ctx->power_status))) {
> > +		anx7625_stop_dp_work(ctx);
> > +		anx7625_power_standby(ctx);
> > +		atomic_set(&ctx->power_status, 0);
> > +	}
> > +
> > +	mutex_unlock(&ctx->lock);
> > +}
> > +
> > +static const struct drm_bridge_funcs anx7625_bridge_funcs = {
> > +	.attach = anx7625_bridge_attach,
> > +	.disable = anx7625_bridge_disable,
> > +	.mode_valid = anx7625_bridge_mode_valid,
> > +	.mode_set = anx7625_bridge_mode_set,
> > +	.enable = anx7625_bridge_enable,
> > +};
> > +
> > +static int anx7625_register_i2c_dummy_clients(struct anx7625_data *ctx,
> > +					      struct i2c_client *client)
> > +{
> > +	ctx->i2c.tx_p0_client = i2c_new_dummy(client->adapter,
> > +					     TX_P0_ADDR >> 1);
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
> This is too complicated.  Don't return 1 on failure.  Every function
> should clean up it's own partial allocations.
> 
> 	if (!ctx->i2c.tx_p0_client ||
> 	    !ctx->i2c.tx_p1_client ||
> 		...
> 	    !ctx->i2c.tcpc_client) {
> 		anx7625_unregister_i2c_dummy_clients(ctx);
> 		return -ENOMEM;
> 	}
> 
> > +		return 1;
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
> > +	i2c_unregister_device(ctx->i2c.tcpc_client);
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
> Use devm_kzalloc()?  return -ENOMEM;
> 
> > +	}
> > +
> > +	pdata = &platform->pdata;
> > +
> > +	/* device tree parsing function call */
> > +	ret = anx7625_parse_dt(&client->dev, pdata);
> > +	if (ret != 0)	/* if occurs error */
> 
> Only use == 0 when you are talking about numbers as in if (size == 0) or
> if (cnt == 0) or for strcmp() == 0.  Here zero is the absence of errors
> so it should be "if (ret) ".
> 
> > +		goto err0;
> 
> goto free_platfrom;
> 
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
> > +		if (IS_ERR(platform->extcon)) {
> > +			DRM_DEV_ERROR(&client->dev,
> > +				      "can not get extcon device!");
> > +			goto err0;
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
> > +	ret = anx7625_init_gpio(platform);
> > +	if (ret) {
> > +		DRM_DEV_ERROR(dev, "failed to initialize gpio\n");
> > +		goto err0;
> > +	}
> > +
> > +	INIT_WORK(&platform->work, anx7625_work_func);
> > +
> > +	platform->workqueue = create_workqueue("anx7625_work");
> > +	if (!platform->workqueue) {
> > +		DRM_DEV_ERROR(dev, "failed to create work queue\n");
> > +		ret = -ENOMEM;
> > +		goto err1;
> 
> goto err_free_gpio;
> 
> > +	}
> > +
> > +	if (platform->pdata.gpio_intr_hpd) {
> > +		platform->pdata.hpd_irq =
> > +			gpio_to_irq(platform->pdata.gpio_intr_hpd);
> > +		if (platform->pdata.hpd_irq < 0) {
> > +			DRM_DEV_ERROR(dev, "failed to get gpio irq\n");
> > +			goto err1;
> 
> Leak.  goto err_destroy_wq;
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
> > +			goto err2;
> 
> 
> goto free_workqueue;
> 
> > +		}
> > +
> > +		ret = irq_set_irq_wake(platform->pdata.hpd_irq, 1);
> > +		if (ret < 0) {
> > +			DRM_DEV_ERROR(dev, "Request irq for hpd");
> > +			DRM_DEV_ERROR(dev, "interrupt wake set fail\n");
> > +			goto err2;
> 
> Leak?  goto err_free_irq?
> 
> 
> > +		}
> > +
> > +		ret = enable_irq_wake(platform->pdata.hpd_irq);
> > +		if (ret < 0) {
> > +			DRM_DEV_ERROR(dev, "Enable irq for HPD");
> > +			DRM_DEV_ERROR(dev, "interrupt wake enable fail\n");
> > +			goto err2;
> 
> Leak?
> 
> > +		}
> > +	}
> > +
> > +	if (anx7625_register_i2c_dummy_clients(platform, client) != 0) {
> 
> Now that anx7625_register_i2c_dummy_clients() returns a valid error
> code we should preserve it.  No need to release the partially allocated
> dummy clients because it either allocates everything or it doesn't
> allocate anything.
> 
> 	ret = anx7625_register_i2c_dummy_clients();
> 	if (ret)
> 		goto err_free_irq;
> 
> > +		ret = -ENOMEM;
> > +		DRM_ERROR("Failed to reserve I2C bus.\n");
> > +		goto err3;
> > +	}
> > +
> > +	if (platform->pdata.low_power_mode == 0) {
> > +		anx7625_disable_pd_protocol(platform);
> > +		atomic_set(&platform->power_status, 1);
> > +	}
> > +
> > +	/* add work function */
> > +	queue_work(platform->workqueue, &platform->work);
> > +
> > +	platform->bridge.funcs = &anx7625_bridge_funcs;
> > +#if IS_ENABLED(CONFIG_OF)
> > +	platform->bridge.of_node = client->dev.of_node;
> > +#endif
> 
> We can get rid of the ifdef.
> 
> 	if (IS_ENABLED(CONFIG_OF))
> 		platform->bridge.of_node = client->dev.of_node;
> 
> 
> > +	drm_bridge_add(&platform->bridge);
> > +
> > +	DRM_DEV_DEBUG_DRIVER(dev, "probe done\n");
> > +	goto exit;
> 
> return 0;
> 
> > +
> > +err3:
> > +	anx7625_unregister_i2c_dummy_clients(platform);
> > +err2:
> > +	if (platform->pdata.gpio_intr_hpd)
> > +		free_irq(platform->pdata.hpd_irq, platform);
> > +err1:
> > +	anx7625_free_gpio(platform);
> > +	destroy_workqueue(platform->workqueue);
> > +err0:
> > +	kfree(platform);
> > +exit:
> > +	return ret;
> 
> err_free_irq:
> 	if (platform->pdata.gpio_intr_hpd)
> 		free_irq(platform->pdata.hpd_irq, platform);
> err_destroy_wq:
> 	destroy_workqueue(platform->workqueue);
> err_free_gpio:
> 	anx7625_free_gpio(platform);
> err_free_platform:
> 	kfree(platform);
> 
> 	return ret;
> 
> 
> > +}
> > +
> > +static int anx7625_i2c_remove(struct i2c_client *client)
> > +{
> > +	struct anx7625_data *platform = i2c_get_clientdata(client);
> > +
> > +	drm_bridge_remove(&platform->bridge);
> > +
> > +	if (platform->pdata.gpio_intr_hpd)
> > +		free_irq(platform->pdata.hpd_irq, platform);
> > +
> > +	destroy_workqueue(platform->workqueue);
> > +
> > +	if (platform->pdata.extcon_supported) {
> > +		devm_extcon_unregister_notifier(&platform->client->dev,
> > +						platform->extcon,
> > +						EXTCON_DISP_DP,
> > +						&platform->event_nb);
> > +		flush_work(&platform->extcon_wq);
> > +	}
> > +
> > +	anx7625_detach_dsi(platform);
> > +
> > +	if (platform->bridge_attached)
> > +		drm_connector_unregister(&platform->connector);
> > +
> 
> We don't call anx7625_attach_dis() or drm_connector_register() during
> probe so it's weird that we are doing it in remove.
> 
> > +	anx7625_unregister_i2c_dummy_clients(platform);
> 
> This should done between drm_bridge_remove() and free_irq() so that
> we unwind in the opposite/mirror order of how we probe().
> 
> > +
> > +	anx7625_free_gpio(platform);
> > +
> > +	kfree(platform);
> > +	return 0;
> > +}
> 
> regards,
> dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

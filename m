Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E22972A370D
	for <lists+driverdev-devel@lfdr.de>; Tue,  3 Nov 2020 00:17:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 52C06204F3;
	Mon,  2 Nov 2020 23:17:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WIzwTN5R4U2y; Mon,  2 Nov 2020 23:17:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7FB5C20441;
	Mon,  2 Nov 2020 23:17:48 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7AF0E1BF343
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  2 Nov 2020 23:17:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7770D86B78
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  2 Nov 2020 23:17:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PVGpV082Rzz5
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  2 Nov 2020 23:17:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa3.microchip.iphmx.com (esa3.microchip.iphmx.com
 [68.232.153.233])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5F37C86B76
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  2 Nov 2020 23:17:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1604359063; x=1635895063;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=6RBAuhUZRTb7y1Z9j3T1R1wvgZMmwaYzsmF4rYm+B28=;
 b=t7LW3tl8cM/UcFOdPpR5BWWmhIglYIoVDJfVHScQsgo8sqIZ6sZscr10
 tpmubKesW4fjU9z7EUDVzApAzIgoOAdFB6TJjizTPjx8jPLu4hxc0PZi0
 iXKl2Ay9x08HYWxNrkn5lRVChGeSLUbgaSPLAcJ4Nh+kjw+nCXNjX6nF2
 IvszyFjAgwdJWBvu3+NvZ10LpLhIg8V3oibOb4lsFMVNR69Ha1/98CUYN
 xODY8NWda7+E7o6XNAMA5+sCpnasJ1uha3hr/5x/6xs0ivm8B0OZ99f94
 2WvXNw9J34XhhiTMIs7x9ny/Qg/5sIDAyXbdTSpqO5WyBelFzgL0UryYu Q==;
IronPort-SDR: v/0fhsmoE3P1oGspzuAF65jyh2U0M2+6/9ORAQb0hCmDim2c/OB7Pv2tFkGCJxw6T2GyEUpslp
 6bi/3TLX1w3rwvkIaydVSEYtsNGpPKh8HaippoML4bTKP73Y9xDSAhPcuSAXLc1Ciwplq5iWHo
 6Fdv4QcyLBFl8FVTUUfYfFZusZstIeXoretQ4rG/8O38A1wF2iB1+fIpM8V+XBsI5Y3pzdKNt0
 mb8vqaCcemJc1GA9PtNYufphzU0PGteUjlR5eONPiLwt5dBDQ4MCdTrqZU8Phtld80KsHUO+7B
 H2k=
X-IronPort-AV: E=Sophos;i="5.77,446,1596524400"; d="scan'208";a="97506992"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 02 Nov 2020 16:17:42 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Mon, 2 Nov 2020 16:17:42 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1979.3 via Frontend
 Transport; Mon, 2 Nov 2020 16:17:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lDX/YUx60ugg/2QCZwY25JwSUkimEdg1UjAemlZ227FUt80uPBKqiD2fEo36LPe6TEhLm1qasV/LgqRFmdcOXSYilWSdvs3rWDcoRuJck8pni9o7tb6reKZSgLKuEEFohyc7TNvYhzQjzIB+/pkGuIlpp3UzdvmQqiX3apgml7lXgdGExB5Mfg2Aoq8ZRbO0HMLaW3IUzpQUB1WpMFMFSj67TlSTFuaY/0xb/5066rug6OkbVHZGoIg1ILxDXx333h1tqQ3Jlmg5wv+G9cCxBJS4nq/Vy0/aY8HlRDun/dGAYOnjfX3d1ZDyo1D227NbvzF/A/vk740D4CjNijGZoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6RBAuhUZRTb7y1Z9j3T1R1wvgZMmwaYzsmF4rYm+B28=;
 b=YYgWwn//vY+iQyGgP4sptzYfOP5EaEfaDfU7hqFc7dl3zp3MLLrIJWq6wUW/nvGVZUrUd0qOOCyoNK3EjrmA/gjctF7Ufzfu5QUAujtcCtF0cmgiW1y27VkxvXJvySMFcPqGDrwCZs7PQIQnute1CMpzvTM0DkNCYZsry8SSquIYHYeonKbIso9ikMr0Qe8He6Fhil7yJBHR3KezmqU2hr6kIKdPnzEhf1pZGISZb59pjrjo5St2gsf7yMfYmjpGS6hUMsgBL4lcACIxKxie+u/LyUVP6eSYuziF1F9eKMDbnElEXl+anOO00EGtOUtCP647yNUcmcRzxw0FrbpQ4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6RBAuhUZRTb7y1Z9j3T1R1wvgZMmwaYzsmF4rYm+B28=;
 b=Xzom8f/Z4fva5zWT0ODg/3EobzM/eDLsx3OZu5Mi6dS/dFM4fVLxBLxty0TaRBUvj7Hx/p/Hp9NEx7ceyBSZnQeTbFOR21Kg72HJWoAGZptTKGYH8WMQxttjJjwewY8Kq1PPXABIOzd3paLEXZ7rROPK/s7oLz8OdxZTA+xfdA0=
Received: from DM6PR11MB3420.namprd11.prod.outlook.com (2603:10b6:5:69::31) by
 DM5PR11MB1785.namprd11.prod.outlook.com (2603:10b6:3:10d::20) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3499.18; Mon, 2 Nov 2020 23:17:40 +0000
Received: from DM6PR11MB3420.namprd11.prod.outlook.com
 ([fe80::f983:dc6d:ad81:9e18]) by DM6PR11MB3420.namprd11.prod.outlook.com
 ([fe80::f983:dc6d:ad81:9e18%7]) with mapi id 15.20.3499.030; Mon, 2 Nov 2020
 23:17:40 +0000
From: <Christian.Gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] drivers: most: add ALSA sound driver
Thread-Topic: [PATCH] drivers: most: add ALSA sound driver
Thread-Index: AQHWsSrXnis38ikfHEqBUYgZ/zjEvKm0+DWAgACCK4A=
Date: Mon, 2 Nov 2020 23:17:40 +0000
Message-ID: <cf4cc3291546b87595207d0740c679f6bc8012a0.camel@microchip.com>
References: <1604330043-5517-1-git-send-email-christian.gromm@microchip.com>
 <20201102153145.GA1034326@kroah.com>
In-Reply-To: <20201102153145.GA1034326@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.30.5-1.1 
authentication-results: linuxfoundation.org; dkim=none (message not signed)
 header.d=none;linuxfoundation.org; dmarc=none action=none
 header.from=microchip.com;
x-originating-ip: [109.250.133.25]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6e23d712-3648-4577-5119-08d87f857ee1
x-ms-traffictypediagnostic: DM5PR11MB1785:
x-microsoft-antispam-prvs: <DM5PR11MB1785BDF8852DE31B28017BF5F8100@DM5PR11MB1785.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WFUb6mV/ZC3snXZ26CTitrHe6WOCdIhZ5oVDraYjAylRwC0PigHu9f+8GI3LobJ6bXUltBPWP/5TMF29Jxlneql0tISMvcxdDUvVPfjuDSmzUUZDnRw7SQoVgoOq6KkV3o0OnmPXWVS16sCigdYwAaaWnxebvRU0fNbd6h6qcLcrIcNf2xEcs38ELdAaNqryxh2C5GD1k31/KykeHFsxY7v1jojQtAHDOcZ8ERiQEchyE7QdsVWrIJ05hbjz3TACYTTokq/DfuYEZ0xFbom5Ow+05JyHQSe2YCx7BAnGLZihfawvKLgLDhLGhv/U9MRR
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39860400002)(396003)(346002)(136003)(376002)(366004)(6916009)(5660300002)(186003)(86362001)(26005)(6506007)(2906002)(8676002)(8936002)(6512007)(71200400001)(6486002)(4326008)(316002)(91956017)(76116006)(66446008)(66556008)(2616005)(64756008)(66476007)(66946007)(36756003)(83380400001)(54906003)(478600001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: BZoI4FjxwxAZrgQZ4LW9KW+CUIDDSeeDb9j7Iy4XVe3VzE58Q7phzW3qbUo+NDKeNdMe4DUYNsi62BcPODmYE6cFcjEp7IbIIDKWqurnEhS7XhAaM2JVS1hDqQUjx2kGi1kfMInVJEf+ds1+1UPNyGUUGEYB4MZ3RX93d9O+prNsqzw2oM04hGTVKCy77lBJB4NmddxDcVQxQTjcO4gCzNlWk1rGuZwuDguhiqL8WO7dbsuyxQZWdh6BFOyXPj7taNlb8Vnr9BdTfB2yTH1GizEHmp7op7x9shHF6eRIWUm1GQPtmzlgtx2hAe5ika5xwd8zV4Jv4gwoFAf8DMALR1KnHqvLDnnQlpxYBCUs8C6YbgVFKWwYkPtmhZbVgd9McruHQQpJuFYKEkZChPTq40hZ1Ng6z4KvG0t4gdtfFghdDRoWtMKuXhoYPDfmlXDgqec+ewKbXKmtUPITtj+8tyk8hi/hQFYxQJyJROnTa/SMOQtS4lAnP+8UcIEAqOXMYGjpdYcoRwhlaFCxSyCgUkrsY5vm7MHxYsDGpXn35fNGIu/KTzZc6U9UfQSjzJ+s0Bpj5sfnG35DyqESK9iUO9cq03VSOJZ/jxEX27MpthsgI9gndeUmMFyoGQM93Z8//ciqiSvA+KuSpMeJTa2eqA==
x-ms-exchange-transport-forked: True
Content-ID: <C02BC5DC185A3F44A5273C0A38EBC97A@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3420.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6e23d712-3648-4577-5119-08d87f857ee1
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Nov 2020 23:17:40.8289 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TGUVVosC56cZHDyUNj+5sHcJLw8mMjpx4VcfCmwcRn18ay5iqK7fxw8WpSZcaYuABuXOLcvSy6NriRvKTzv3pc1SS9w3Mr4kUsAK6WbbLns=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1785
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
Cc: driverdev-devel@linuxdriverproject.org, linux-sound@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, 2020-11-02 at 16:31 +0100, Greg KH wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you
> know the content is safe
> 
> On Mon, Nov 02, 2020 at 04:14:03PM +0100, Christian Gromm wrote:
> > This patch moves the ALSA sound driver out of the staging area and
> > adds it
> > to the stable part of the MOST driver. Modifications to the
> > Makefiles and
> > Kconfigs are done accordingly to not break the build.
> > 
> > Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
> > ---
> >  drivers/most/Kconfig                |  10 +
> >  drivers/most/Makefile               |   1 +
> >  drivers/most/most_snd.c             | 753
> > ++++++++++++++++++++++++++++++++++++
> >  drivers/staging/most/Kconfig        |   2 -
> >  drivers/staging/most/Makefile       |   1 -
> >  drivers/staging/most/sound/Kconfig  |  14 -
> >  drivers/staging/most/sound/Makefile |   4 -
> >  drivers/staging/most/sound/sound.c  | 753 ------------------------
> > ------------
> >  8 files changed, 764 insertions(+), 774 deletions(-)
> >  create mode 100644 drivers/most/most_snd.c
> >  delete mode 100644 drivers/staging/most/sound/Kconfig
> >  delete mode 100644 drivers/staging/most/sound/Makefile
> >  delete mode 100644 drivers/staging/most/sound/sound.c
> > 
> > diff --git a/drivers/most/Kconfig b/drivers/most/Kconfig
> > index ebfe84e..4b8145b 100644
> > --- a/drivers/most/Kconfig
> > +++ b/drivers/most/Kconfig
> > @@ -32,4 +32,14 @@ config MOST_CDEV
> > 
> >         To compile this driver as a module, choose M here: the
> >         module will be called most_cdev.
> > +
> > +config MOST_SND
> > +     tristate "Sound"
> > +     depends on SND
> > +     select SND_PCM
> > +     help
> > +       Say Y here if you want to commumicate via ALSA/sound
> > devices.
> > +
> > +       To compile this driver as a module, choose M here: the
> > +       module will be called most_sound.
> >  endif
> > diff --git a/drivers/most/Makefile b/drivers/most/Makefile
> > index 8b53ca4..60db6cd 100644
> > --- a/drivers/most/Makefile
> > +++ b/drivers/most/Makefile
> > @@ -5,3 +5,4 @@ most_core-y :=        core.o \
> > 
> >  obj-$(CONFIG_MOST_USB_HDM) += most_usb.o
> >  obj-$(CONFIG_MOST_CDEV) += most_cdev.o
> > +obj-$(CONFIG_MOST_SND) += most_snd.o
> > diff --git a/drivers/most/most_snd.c b/drivers/most/most_snd.c
> > new file mode 100644
> > index 0000000..8a449ab
> > --- /dev/null
> > +++ b/drivers/most/most_snd.c
> > @@ -0,0 +1,753 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * sound.c - Sound component for Mostcore
> > + *
> > + * Copyright (C) 2015 Microchip Technology Germany II GmbH & Co.
> > KG
> > + */
> > +
> > +#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
> > +
> > +#include <linux/module.h>
> > +#include <linux/printk.h>
> > +#include <linux/kernel.h>
> > +#include <linux/slab.h>
> > +#include <linux/init.h>
> > +#include <sound/core.h>
> > +#include <sound/pcm.h>
> > +#include <sound/pcm_params.h>
> > +#include <linux/sched.h>
> > +#include <linux/kthread.h>
> > +#include <linux/most.h>
> > +
> > +#define DRIVER_NAME "sound"
> > +#define STRING_SIZE  80
> > +
> > +static struct most_component comp;
> > +
> > +/**
> > + * struct channel - private structure to keep channel specific
> > data
> > + * @substream: stores the substream structure
> > + * @iface: interface for which the channel belongs to
> > + * @cfg: channel configuration
> > + * @card: registered sound card
> > + * @list: list for private use
> > + * @id: channel index
> > + * @period_pos: current period position (ring buffer)
> > + * @buffer_pos: current buffer position (ring buffer)
> > + * @is_stream_running: identifies whether a stream is running or
> > not
> > + * @opened: set when the stream is opened
> > + * @playback_task: playback thread
> > + * @playback_waitq: waitq used by playback thread
> > + */
> > +struct channel {
> > +     struct snd_pcm_substream *substream;
> > +     struct snd_pcm_hardware pcm_hardware;
> > +     struct most_interface *iface;
> > +     struct most_channel_config *cfg;
> > +     struct snd_card *card;
> > +     struct list_head list;
> > +     int id;
> > +     unsigned int period_pos;
> > +     unsigned int buffer_pos;
> > +     bool is_stream_running;
> > +     struct task_struct *playback_task;
> > +     wait_queue_head_t playback_waitq;
> > +     void (*copy_fn)(void *alsa, void *most, unsigned int bytes);
> > +};
> > +
> > +struct sound_adapter {
> > +     struct list_head dev_list;
> > +     struct most_interface *iface;
> > +     struct snd_card *card;
> > +     struct list_head list;
> > +     bool registered;
> > +     int pcm_dev_idx;
> > +};
> > +
> > +static struct list_head adpt_list;
> > +
> > +#define MOST_PCM_INFO (SNDRV_PCM_INFO_MMAP | \
> > +                    SNDRV_PCM_INFO_MMAP_VALID | \
> > +                    SNDRV_PCM_INFO_BATCH | \
> > +                    SNDRV_PCM_INFO_INTERLEAVED | \
> > +                    SNDRV_PCM_INFO_BLOCK_TRANSFER)
> > +
> > +#define swap16(val) ( \
> > +     (((u16)(val) << 8) & (u16)0xFF00) | \
> > +     (((u16)(val) >> 8) & (u16)0x00FF))
> > +
> > +#define swap32(val) ( \
> > +     (((u32)(val) << 24) & (u32)0xFF000000) | \
> > +     (((u32)(val) <<  8) & (u32)0x00FF0000) | \
> > +     (((u32)(val) >>  8) & (u32)0x0000FF00) | \
> > +     (((u32)(val) >> 24) & (u32)0x000000FF))
> 
> Doesn't swab16() and swab32() work for this?  I don't think you need
> to
> reimplement these.
> 
> > +
> > +static void swap_copy16(u16 *dest, const u16 *source, unsigned int
> > bytes)
> > +{
> > +     unsigned int i = 0;
> > +
> > +     while (i < (bytes / 2)) {
> > +             dest[i] = swap16(source[i]);
> > +             i++;
> > +     }
> > +}
> > +
> > +static void swap_copy24(u8 *dest, const u8 *source, unsigned int
> > bytes)
> > +{
> > +     unsigned int i = 0;
> > +
> > +     while (i < bytes - 2) {
> > +             dest[i] = source[i + 2];
> > +             dest[i + 1] = source[i + 1];
> > +             dest[i + 2] = source[i];
> > +             i += 3;
> > +     }
> > +}
> > +
> > +static void swap_copy32(u32 *dest, const u32 *source, unsigned int
> > bytes)
> > +{
> > +     unsigned int i = 0;
> > +
> > +     while (i < bytes / 4) {
> > +             dest[i] = swap32(source[i]);
> > +             i++;
> > +     }
> > +}
> 
> Same for the above, don't we have functions for this?

Can't find any of those. Do you happen to have a pointer where
those functions are?

thanks,
Chris

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

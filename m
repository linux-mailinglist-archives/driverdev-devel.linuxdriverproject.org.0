Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C045E20CDEE
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Jun 2020 12:35:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5011A88995;
	Mon, 29 Jun 2020 10:35:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vAokJMRRE-LO; Mon, 29 Jun 2020 10:35:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9AF378891A;
	Mon, 29 Jun 2020 10:35:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 315081BF311
 for <devel@linuxdriverproject.org>; Mon, 29 Jun 2020 10:35:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 24F8920516
 for <devel@linuxdriverproject.org>; Mon, 29 Jun 2020 10:35:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zvC32K-LmgYG for <devel@linuxdriverproject.org>;
 Mon, 29 Jun 2020 10:35:11 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10on2040.outbound.protection.outlook.com [40.107.92.40])
 by silver.osuosl.org (Postfix) with ESMTPS id 0F74A20415
 for <devel@driverdev.osuosl.org>; Mon, 29 Jun 2020 10:35:11 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CIvb3na5h7qyvC0L1Fs9oMNztAaJvYQ2105PYnz1KEpOV/QCQ96oBAlFbYoUyod+m6to2ArH7UTGZljHjlFjVnqqHOmCB3TmClUYN+5i7lFY1dEJloU6wA6GF4Gy5yVhqZLV0P06TYDJtQYDhro/Q3liei69Rx5NfXbF3LC3yrDGYHKyW3xYArz73vw9je9qrtBsbofEBKDsWjICopl2TaNYSyuNlZyaFEDV2/wpzWATO9d/XPmrVkDiHDsPIPgPPXNq42CM7v0ZtMnxlOLiU7LrB4y65dbjvAZ2nWWXlMFQjwGrUC+FJD1BYt3k9yDGuzBKw4V3511wDoftlFstog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6TRMorPFTJCxppQs8T0ppn3QAz+tZbybXS9R0IXzSuQ=;
 b=Sno8UHYPndLwjmRTw/E+obXUL8kELaYnVDhmSU4IFzVoInSRb8SJpHYkBNWA8vOCOE5gY1yAEMeAml3EWpSgk7YUU6+h0bFedDSCCPFZmf0MZ85I8qw5ZcNVIydGcfIfAO0mmdDQTY73N/MgD+3n1GUE8r0ttJS/WAIB5fICarboMRC7iR7p5s7C/A0P9nUBhKwJnH6KaLRgyXFkKYXZXkGsWZXyaIRG9WS9SlBlG8fXJxO7k1g6O4FUwUanrC2h0Cp1OXG86U+otyC5+lFwLl6hBmx3QN2vp2SGh7wnP125UbP7z4OlVgcKYvPLVFc0bztp70lfpuQQI80VOKcAPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6TRMorPFTJCxppQs8T0ppn3QAz+tZbybXS9R0IXzSuQ=;
 b=XQl+uye8j4N6Da0pienwHNaNKTOh5dNGc7AN1X+TkL8W2J3pBm1DO3OjtRVPlVMwBMynKe88FQPxzKslhSx3GuQlkwHFS6bk6gys/sJj4bO6PdtFfCabGrEH/MRwSN8ngu4aTSnncLucSUzwYfsCqFp7BnaF6zEdonC/CXpaOAw=
Authentication-Results: linuxfoundation.org; dkim=none (message not signed)
 header.d=none;linuxfoundation.org; dmarc=none action=none
 header.from=silabs.com;
Received: from SN6PR11MB2718.namprd11.prod.outlook.com (2603:10b6:805:63::18)
 by SN6PR11MB2606.namprd11.prod.outlook.com (2603:10b6:805:55::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3131.20; Mon, 29 Jun
 2020 10:35:07 +0000
Received: from SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::c504:2d66:a8f7:2336]) by SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::c504:2d66:a8f7:2336%7]) with mapi id 15.20.3131.026; Mon, 29 Jun 2020
 10:35:07 +0000
From: =?ISO-8859-1?Q?J=E9r=F4me?= Pouiller <jerome.pouiller@silabs.com>
To: gregkh@linuxfoundation.org, Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH v3] staging: wfx: Get descriptors for GPIOs
Date: Mon, 29 Jun 2020 12:35:01 +0200
Message-ID: <3606174.iS4ETENoWi@pc-42>
Organization: Silicon Labs
In-Reply-To: <20200628085236.707579-1-linus.walleij@linaro.org>
References: <20200628085236.707579-1-linus.walleij@linaro.org>
X-ClientProxiedBy: PR0P264CA0129.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:1a::21) To SN6PR11MB2718.namprd11.prod.outlook.com
 (2603:10b6:805:63::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pc-42.localnet (37.71.187.125) by
 PR0P264CA0129.FRAP264.PROD.OUTLOOK.COM (2603:10a6:100:1a::21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3131.21 via Frontend Transport; Mon, 29 Jun 2020 10:35:06 +0000
X-Originating-IP: [37.71.187.125]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 644bc414-0e6e-4cd1-eee5-08d81c181793
X-MS-TrafficTypeDiagnostic: SN6PR11MB2606:
X-Microsoft-Antispam-PRVS: <SN6PR11MB2606E32167D356BB6D085784936E0@SN6PR11MB2606.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;
X-Forefront-PRVS: 044968D9E1
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: DAU7VOdHrkeqdQdWx4d2Il9nTS5m0CHUQdA/w00l1DzWJ0Xiy/Aiaeh1KARP1Zr4llhCD+isq/J5yBuBX0ev+D63osccttwmRBqFczXBk04Sbgf+0YF9TqHKHQ8zGyk2NG+AAEzo+zEb5T6y62vDn5IgAstT9qkP8912yCqB5zFHyi1Z8uzUzkN3gYKzITpagcQuwemvc7zppjTwHyz69kiJWHQGl0++qmAK7xOSql4cy2iBJ07Ntz1+9n/fgnV28JmK8liCXRS6qqNnwBi3m9+qYkb3ruDGkOCTNcDKhlY2p7jMXKOgyTPAFI4yjWYFUldkG8JndpF/v1l3XZ4I1egW/kwCS622FAyPX7ESlbJxjJRgF2iSTo9nQxg5C1oo
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(346002)(39850400004)(376002)(396003)(136003)(366004)(36916002)(478600001)(26005)(9686003)(6512007)(16526019)(5660300002)(83380400001)(8936002)(66574015)(6506007)(6666004)(52116002)(186003)(2906002)(86362001)(8676002)(66946007)(33716001)(66476007)(66556008)(316002)(6486002)(956004)(4326008)(6916009)(39026012);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: Db/paLVybTtt+BStE1a990fBXXH1YwLE2d1Mnsb/fN3juEw5K9iQASzisEfZKNQWK9hn628ox4lwX4ejGHUqabacp1wTi4Y/QLtaefqqgxaEj5Buatetbmd662pOjbuncTGJUJt5rkhhGhVYhjwNGArEnLY6IfVbeolak6Cj4KsFVZYYxlItbPAkk+xXvopJi01TDwgYXPmBS9yBtYBAVAFt/Rvqvyaa39921tRPJkn43oCVE5phwiXAE0NSPbvLempSqmbyUWz/cJeP5nOYkvZ8K4FAnZNWcG3sL3gtb2l1PMPMFL6ihAC+UpvOGHGpIAt/2afJkKQO5ITwmTZcv781nQuA7VanTWvyqkRFy6PaqyBDm9IhT+H01pSiWeQ4QBDuJb8qU7L+T8RZ9pA4LBoErPE3Ycd6/FXRw8Y6L6wL+/0yTbsplm/n0bRLHgu+Q0TF0aFczhNEv8qGLbGbgezzV22LwA5IarQoHM3u7uU=
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 644bc414-0e6e-4cd1-eee5-08d81c181793
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jun 2020 10:35:07.5507 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RP6FnTM0SQcxujMVsEwQ4g2iVGNT8t7U5SkEs5CFqhARat482bLaFPW1byQBT62zakwtzMOZKr8j7NDF9ffzDA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2606
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sunday 28 June 2020 10:52:36 CEST Linus Walleij wrote:
> =

> The code has the functionality to insert the GPIO lines using
> the global GPIO numbers through module parameters.
> =

> As we are clearly deprecating the use of global GPIO numbers
> look up the GPIO descriptors from the device instead. This
> usually falls back to device hardware descriptions using e.g.
> device tree or ACPI. This device clearly supports device
> tree when used over SPI for example.
> =

> For example, this can be supplied in the device tree like so:
> =

>   wfx@0x01 {
>       compatible =3D "silabs,wf200";
>       reset-gpios =3D <&gpio0 1>;
>       wakeup-gpios =3D <&gpio0 2>;
>   };
>
> Cc: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
> ChangeLog v2->v3:
> - ERR_CAST not PTR_CAST
> ChangeLog v1->v2:
> - Fixed a cast and a variable name.
> - I still don't know how to compile this but hey the zeroday
>   robot does.
> ---
>  drivers/staging/wfx/bus_spi.c | 11 +++++----
>  drivers/staging/wfx/main.c    | 42 ++++-------------------------------
>  drivers/staging/wfx/main.h    |  2 --
>  3 files changed, 9 insertions(+), 46 deletions(-)
> =

> diff --git a/drivers/staging/wfx/bus_spi.c b/drivers/staging/wfx/bus_spi.c
> index e8da61fb096b..88ca5d453e83 100644
> --- a/drivers/staging/wfx/bus_spi.c
> +++ b/drivers/staging/wfx/bus_spi.c
> @@ -8,7 +8,6 @@
>   */
>  #include <linux/module.h>
>  #include <linux/delay.h>
> -#include <linux/gpio.h>
>  #include <linux/gpio/consumer.h>
>  #include <linux/spi/spi.h>
>  #include <linux/interrupt.h>
> @@ -21,10 +20,6 @@
>  #include "main.h"
>  #include "bh.h"
> =

> -static int gpio_reset =3D -2;
> -module_param(gpio_reset, int, 0644);
> -MODULE_PARM_DESC(gpio_reset, "gpio number for reset. -1 for none.");
> -
>  #define SET_WRITE 0x7FFF        /* usage: and operation */
>  #define SET_READ 0x8000         /* usage: or operation */
> =

> @@ -211,10 +206,14 @@ static int wfx_spi_probe(struct spi_device *func)
>                 bus->need_swab =3D true;
>         spi_set_drvdata(func, bus);
> =

> -       bus->gpio_reset =3D wfx_get_gpio(&func->dev, gpio_reset, "reset");
> +       bus->gpio_reset =3D devm_gpiod_get_optional(&func->dev, "reset"
> +                                                 GPIOD_OUT_HIGH);

The original code asks for GPIOD_OUT_LOW.

> +       if (IS_ERR(bus->gpio_reset))
> +               return PTR_ERR(bus->gpio_reset);
>         if (!bus->gpio_reset) {
>                 dev_warn(&func->dev, "try to load firmware anyway\n");

In the original code, this case also generated the warning "gpio reset is
not defined" (raised from wfx_get_gpio()). I suggest to change the warning
below into "gpio reset is not defined, try to load firmware anyway\n".

>         } else {
> +               gpiod_set_consumer_name(bus->gpio_reset, "wfx reset");
>                 if (spi_get_device_id(func)->driver_data & WFX_RESET_INVE=
RTED)
>                         gpiod_toggle_active_low(bus->gpio_reset);
>                 gpiod_set_value_cansleep(bus->gpio_reset, 1);
> diff --git a/drivers/staging/wfx/main.c b/drivers/staging/wfx/main.c
> index 6bd96f476388..d90169fe1851 100644
> --- a/drivers/staging/wfx/main.c
> +++ b/drivers/staging/wfx/main.c
> @@ -13,7 +13,6 @@
>  #include <linux/module.h>
>  #include <linux/of.h>
>  #include <linux/of_net.h>
> -#include <linux/gpio.h>
>  #include <linux/gpio/consumer.h>
>  #include <linux/mmc/sdio_func.h>
>  #include <linux/spi/spi.h>
> @@ -41,10 +40,6 @@ MODULE_DESCRIPTION("Silicon Labs 802.11 Wireless LAN d=
river for WFx");
>  MODULE_AUTHOR("J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>");
>  MODULE_LICENSE("GPL");
> =

> -static int gpio_wakeup =3D -2;
> -module_param(gpio_wakeup, int, 0644);
> -MODULE_PARM_DESC(gpio_wakeup, "gpio number for wakeup. -1 for none.");
> -
>  #define RATETAB_ENT(_rate, _rateid, _flags) { \
>         .bitrate  =3D (_rate),   \
>         .hw_value =3D (_rateid), \
> @@ -170,38 +165,6 @@ bool wfx_api_older_than(struct wfx_dev *wdev, int ma=
jor, int minor)
>         return false;
>  }
> =

> -struct gpio_desc *wfx_get_gpio(struct device *dev,
> -                              int override, const char *label)
> -{
> -       struct gpio_desc *ret;
> -       char label_buf[256];
> -
> -       if (override >=3D 0) {
> -               snprintf(label_buf, sizeof(label_buf), "wfx_%s", label);
> -               ret =3D ERR_PTR(devm_gpio_request_one(dev, override,
> -                                                   GPIOF_OUT_INIT_LOW,
> -                                                   label_buf));
> -               if (!ret)
> -                       ret =3D gpio_to_desc(override);
> -       } else if (override =3D=3D -1) {
> -               ret =3D NULL;
> -       } else {
> -               ret =3D devm_gpiod_get(dev, label, GPIOD_OUT_LOW);
> -       }
> -       if (IS_ERR_OR_NULL(ret)) {
> -               if (!ret || PTR_ERR(ret) =3D=3D -ENOENT)
> -                       dev_warn(dev, "gpio %s is not defined\n", label);
> -               else
> -                       dev_warn(dev, "error while requesting gpio %s\n",
> -                                label);
> -               ret =3D NULL;
> -       } else {
> -               dev_dbg(dev, "using gpio %d for %s\n",
> -                       desc_to_gpio(ret), label);
> -       }
> -       return ret;
> -}
> -
>  /* NOTE: wfx_send_pds() destroy buf */
>  int wfx_send_pds(struct wfx_dev *wdev, u8 *buf, size_t len)
>  {
> @@ -340,7 +303,10 @@ struct wfx_dev *wfx_init_common(struct device *dev,
>         memcpy(&wdev->pdata, pdata, sizeof(*pdata));
>         of_property_read_string(dev->of_node, "config-file",
>                                 &wdev->pdata.file_pds);
> -       wdev->pdata.gpio_wakeup =3D wfx_get_gpio(dev, gpio_wakeup, "wakeu=
p");
> +       wdev->pdata.gpio_wakeup =3D devm_gpiod_get(dev, "wakeup", GPIOD_I=
N);

GPIOD_OUT_LOW?

> +       if (IS_ERR(wdev->pdata.gpio_wakeup))
> +               return ERR_CAST(wdev->pdata.gpio_wakeup);

This code will fail if the "wakeup" attribute is not defined. I suggest to
just print a notification and continue (the previous code printed a warning,
but the level INFO is sufficient). =



> +       gpiod_set_consumer_name(wdev->pdata.gpio_wakeup, "wfx wakeup");
>         wfx_sl_fill_pdata(dev, &wdev->pdata);
> =

>         mutex_init(&wdev->conf_mutex);
> diff --git a/drivers/staging/wfx/main.h b/drivers/staging/wfx/main.h
> index f832ce409fda..c59d375dd3ad 100644
> --- a/drivers/staging/wfx/main.h
> +++ b/drivers/staging/wfx/main.h
> @@ -38,8 +38,6 @@ struct wfx_dev *wfx_init_common(struct device *dev,
>  int wfx_probe(struct wfx_dev *wdev);
>  void wfx_release(struct wfx_dev *wdev);
> =

> -struct gpio_desc *wfx_get_gpio(struct device *dev, int override,
> -                              const char *label);
>  bool wfx_api_older_than(struct wfx_dev *wdev, int major, int minor);
>  int wfx_send_pds(struct wfx_dev *wdev, u8 *buf, size_t len);
> =

> --
> 2.25.4
> =

> =



-- =

J=E9r=F4me Pouiller


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

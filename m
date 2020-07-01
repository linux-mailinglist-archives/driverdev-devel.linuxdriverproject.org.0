Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B7F72104F5
	for <lists+driverdev-devel@lfdr.de>; Wed,  1 Jul 2020 09:24:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id EA5B4301CB;
	Wed,  1 Jul 2020 07:24:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hOgi7F2KoKFu; Wed,  1 Jul 2020 07:24:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C2F20301C8;
	Wed,  1 Jul 2020 07:24:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0D9111BF59A
 for <devel@linuxdriverproject.org>; Wed,  1 Jul 2020 07:24:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 058FF8ABC6
 for <devel@linuxdriverproject.org>; Wed,  1 Jul 2020 07:24:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pvUUSqRVJWwJ for <devel@linuxdriverproject.org>;
 Wed,  1 Jul 2020 07:24:50 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11on2055.outbound.protection.outlook.com [40.107.236.55])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 02CE28ABC4
 for <devel@driverdev.osuosl.org>; Wed,  1 Jul 2020 07:24:49 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RU6UgFtbmW19bG7XMd7SjGGzX/v2fICrCpXoNObtUv4lqQOUi3jF604NBteWQfUbHhuVEYMTkwChf26hXIv7e9hAQyzOWAWOQDuIZDr0r/WUi8E+lJMswndF/q60yj8iHUyKUY0lAKm5cqQCNs0yDKCD8Z8ivg47RWpdIxIl/vy8CMGetXCndseS//bZWoNbvsbNqYnVoQqAX2y4vODpp2dpKSdxWV1sKU7M/7FPgo6oCgaZccsCKd+8xZLp7SzXoyybHagsa4p4khpe35Hmd2COEYZGySuIl/Elmr6MzLE31TQK4jTPYRxD6AhbxY8+98cBcHLW990EmydNUMpHhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7iqvWqZ3Gd39PKllGfw6g/fJDd3hoEaUovQR44EQygw=;
 b=AtHKgCJPP2LDT8Pa4I7SbXtqhOAqtcliX/M42T/e6RmERwMTCcsYhDfFp7TJ6nKEnQWMWts9zwqLiJg+FWVg5mpjOUjAzIaOTq/wxbB6iX3tNloTQz6uDO5JQ6wbs629V24tgmtk4mhb6Oz0fEk7enWsxwhpvQYCALDWMd73sdSTdk/1ryh0+9N1aiYAJBK00L9Jd3DKhv4gYC6cnnvKHwFIREuJyaPstLnzNusO6xoKEOTZvCqyE8b6equ7/SQ9xq6h80T/sxNh+nlMFQ/k7NcQtS62jz5QjlCqhwqKOUXPmiVOD78OnP/hofOP2KYMOHl0omN8e+C8hK9eLWd//w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7iqvWqZ3Gd39PKllGfw6g/fJDd3hoEaUovQR44EQygw=;
 b=Jcm2h1mySo72+IYDtyjIQoCXgsAkSt8Jps7N2OjKwInnX9g6/i77ZDALpQvENcH8gUP8XcvMGwF0cnF/IaWyesHJntCMH1VTbAKCkpcZq0qDN5gQekm6n04gvXtx7eGY08hD7ISwIX41tzay+vByYuNvXYlDA4ODw3YfwPEct3A=
Authentication-Results: linuxfoundation.org; dkim=none (message not signed)
 header.d=none;linuxfoundation.org; dmarc=none action=none
 header.from=silabs.com;
Received: from SN6PR11MB2718.namprd11.prod.outlook.com (2603:10b6:805:63::18)
 by SN6PR11MB2816.namprd11.prod.outlook.com (2603:10b6:805:5b::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3153.20; Wed, 1 Jul
 2020 07:10:15 +0000
Received: from SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::c504:2d66:a8f7:2336]) by SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::c504:2d66:a8f7:2336%7]) with mapi id 15.20.3131.028; Wed, 1 Jul 2020
 07:10:15 +0000
From: =?ISO-8859-1?Q?J=E9r=F4me?= Pouiller <jerome.pouiller@silabs.com>
To: gregkh@linuxfoundation.org, Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH v4] staging: wfx: Get descriptors for GPIOs
Date: Wed, 01 Jul 2020 09:10:04 +0200
Message-ID: <5672265.akOJpMoqyi@pc-42>
Organization: Silicon Labs
In-Reply-To: <20200630082133.68675-1-linus.walleij@linaro.org>
References: <20200630082133.68675-1-linus.walleij@linaro.org>
X-ClientProxiedBy: PR3P189CA0027.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:102:52::32) To SN6PR11MB2718.namprd11.prod.outlook.com
 (2603:10b6:805:63::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pc-42.localnet (2a01:e35:2435:66a0:544b:f17b:7ae8:fb7) by
 PR3P189CA0027.EURP189.PROD.OUTLOOK.COM (2603:10a6:102:52::32) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3131.21 via Frontend Transport; Wed, 1 Jul 2020 07:10:14 +0000
X-Originating-IP: [2a01:e35:2435:66a0:544b:f17b:7ae8:fb7]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2c652f8a-26d7-480e-6d0e-08d81d8dcd70
X-MS-TrafficTypeDiagnostic: SN6PR11MB2816:
X-Microsoft-Antispam-PRVS: <SN6PR11MB2816300FAD7070F2AFD324C4936C0@SN6PR11MB2816.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-Forefront-PRVS: 04519BA941
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: x1w5PnfEfDVPipgbwGgCzbyBQBCZPXdRfubGO8g6kzQXuL2UwoDUXVz/jJE/UYwUYV41HeGBd4YYlu50jrOJnI7Qts6Kzv8u9nos8PIZe5CiuAVO9PvHd3GqJmG63B6fjqOiUKGacZEm4ezIyAYhrNYafjdoRNOijZPMVsQD2wLQTlG9yo0IR0BxTqQZLPZtjSfE5ky1p6YLara3TG1jAaGKQRyinTmTE5zO11s8N1xJzUIGxRbmqYAivEBDZ/tN/I4xh2in4FVTnYHzF6JhYyX0aqnNnflRJZPH2JTJkERjmEbEcJRXQCAF7eKkOe9osXCDx/RQZD9alMc/oNpdvg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(396003)(39850400004)(376002)(136003)(346002)(33716001)(66476007)(36916002)(6506007)(66574015)(66556008)(66946007)(52116002)(2906002)(6512007)(9686003)(5660300002)(6916009)(83380400001)(316002)(4326008)(86362001)(6666004)(478600001)(8676002)(6486002)(186003)(16526019)(8936002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: Q4wTcx1f33GSmv3hgt1kbpWx5tjkuy9ZjlBgD3TE2f6o7rjhAG/ETREk54ffur/D0S/nk56H3Xj+iDRQPPfnbWSVrdsTJKAhpc7bNjn+RNPJwdosonHoep+OYdOESuMhT5tmSL0BGoi3Mnw0fPoeStglEq8knxJVoBOUxDUVcKGfutU26JXMXAAorsD2yDfOLr1nYZd5iNeHRZZHVnftXRGeYr7/lUnk9gIM9X6zVkOWvgWqYGAxkfpqqGdrWVg/dPMr+9cX2vu4TukMxXZcFB2VuE7O2Y6tbVr42p8ELXunC/xmC+PUm34omcl/omn9mGAfi++8CHq97bwe/abkoNClmdRCq2zcGYk8nfiJqzCdom1C2AeCH+gviBImTb89gUyXFe6zpaL63rNrmhZ6PCfd0i9mV/fOIFv9JyxRrAWPwh816FMnKIefXjWfYO3rSpcuICoXpgFfu9APndOXOh+8/dcMTKKcvvJ5Y0v9CIadfZmwWJ7dwZnkvhorsStc8QI3zt2zZh6JcV//oZGz6YhCrc90qQ7Yu6/1Ii0hRU4=
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c652f8a-26d7-480e-6d0e-08d81d8dcd70
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2020 07:10:15.3103 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vKDdognClVUMq1/UyxGlYSMzaHBTXPijc82mccd49yx3DdpsFVU7Lwcp78P9A8+KzBx2d/J3zdvn6J2WJihA6g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2816
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

Hello Linus,

On Tuesday 30 June 2020 10:21:33 CEST Linus Walleij wrote:
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
> =

> Cc: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
> ChangeLog v3->v4:
> - Finally figured out how to compile this by selecting SPI
>   host and deselecting MMC host.

Weird, it should be selectable if MMC or SPI is selected.

> - Initialize the reset GPIO as OUT_LOW
> - Initialize the wakeup GPIO as OUT_LOW
> - Drop one more desc_to_gpio()
> - Update the warning if GPIO is not found.
> ChangeLog v2->v3:
> - ERR_CAST not PTR_CAST
> ChangeLog v1->v2:
> - Fixed a cast and a variable name.
> - I still don't know how to compile this but hey the zeroday
>   robot does.
> ---
>  drivers/staging/wfx/bus_spi.c | 14 +++++------
>  drivers/staging/wfx/main.c    | 45 ++++-------------------------------
>  drivers/staging/wfx/main.h    |  2 --
>  3 files changed, 12 insertions(+), 49 deletions(-)
> =

[...]
> diff --git a/drivers/staging/wfx/main.c b/drivers/staging/wfx/main.c
> index 6bd96f476388..3828a2652313 100644
> --- a/drivers/staging/wfx/main.c
> +++ b/drivers/staging/wfx/main.c
[...]
> @@ -340,7 +303,10 @@ struct wfx_dev *wfx_init_common(struct device *dev,
>         memcpy(&wdev->pdata, pdata, sizeof(*pdata));
>         of_property_read_string(dev->of_node, "config-file",
>                                 &wdev->pdata.file_pds);
> -       wdev->pdata.gpio_wakeup =3D wfx_get_gpio(dev, gpio_wakeup, "wakeu=
p");
> +       wdev->pdata.gpio_wakeup =3D devm_gpiod_get(dev, "wakeup", GPIOD_O=
UT_LOW);
> +       if (IS_ERR(wdev->pdata.gpio_wakeup))
> +               return ERR_CAST(wdev->pdata.gpio_wakeup);
> +       gpiod_set_consumer_name(wdev->pdata.gpio_wakeup, "wfx wakeup");

In the original code, the gpio wakeup was not mandatory. But in this code,
wfx_init_common() will return an error if the gpio "wakeup" is not
defined.

>         wfx_sl_fill_pdata(dev, &wdev->pdata);
> =

>         mutex_init(&wdev->conf_mutex);
[...]

-- =

J=E9r=F4me Pouiller


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

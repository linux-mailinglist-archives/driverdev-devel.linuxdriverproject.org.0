Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D5BAA9A5F
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Sep 2019 08:09:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 85253203EE;
	Thu,  5 Sep 2019 06:09:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IEeq7M2U9bOD; Thu,  5 Sep 2019 06:09:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8E39E232FA;
	Thu,  5 Sep 2019 06:09:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 05F7F1BF423
 for <devel@linuxdriverproject.org>; Thu,  5 Sep 2019 06:09:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 009052324B
 for <devel@linuxdriverproject.org>; Thu,  5 Sep 2019 06:09:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id asbLNuZ6oeBR for <devel@linuxdriverproject.org>;
 Thu,  5 Sep 2019 06:09:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa3.microchip.iphmx.com (esa3.microchip.iphmx.com
 [68.232.153.233])
 by silver.osuosl.org (Postfix) with ESMTPS id B2E48203EE
 for <devel@driverdev.osuosl.org>; Thu,  5 Sep 2019 06:09:47 +0000 (UTC)
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Ajay.Kathat@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Ajay.Kathat@microchip.com";
 x-sender="Ajay.Kathat@microchip.com"; x-conformance=spf_only;
 x-record-type="v=spf1"; x-record-text="v=spf1 mx
 a:ushub1.microchip.com a:smtpout.microchip.com
 a:mx1.microchip.iphmx.com a:mx2.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Ajay.Kathat@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Ajay.Kathat@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: li7K5xyQXH7T4T2IzttzuZKlxl2s+0VfKNCDTmnCR3jJLT0D+jIOd8tJsuzhU3hVZHGclQJQD8
 MJInTg6I25sZRXnAKmOnjylAgkhzud01Nl6x/TpImRW01iO5zxwGmeChTIqkrQUOEym30eHM/h
 i4YrVgOD+T5EGVfdu9QsGMhut37uMh4YoKSfGpEdXLzn/LSqIpoR2HOMzcnu3cHEuscUUsPx0+
 elqCTXz46bKGRMwIgYs/b1Jo8Jb7PIFZc4OtPT6HqKH8rjbWxYNikE83RRzcrK2TiP0fyaPoS8
 FaM=
X-IronPort-AV: E=Sophos;i="5.64,469,1559545200"; d="scan'208";a="47889691"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 04 Sep 2019 23:09:47 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 4 Sep 2019 23:09:47 -0700
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 4 Sep 2019 23:09:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QCeAXT7fsUTfPFjRPantadeDw3hsXII96eeHq5gSI0up3/YJWVzhXyud0/by9PbzwSCYO4O8tSDArmKlVaKhkSlXuxKaMcgKzzlG1sZRzDbyd1PVfWNiiwPTKDLPz7K950jp3uOrTi82QRDteQLlWk3VOq+xWkGMq9jeBPbMxf5KFGC6dNKguVu63gGX9ZrH/1hlBD3sNFN2vnZnrvBSaVG/gK4mG19++zWlB4rH5VVc2zm0ONm5A1Rh2LT3hYuEoziOKBE7EMtkNd116NNBbPnMVioIfKrQc4h3UfwFU+bXWQyEqDx7tRGdj2gpl2O3DT9EjmE4hu09m66y3n02tQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=92Jchdmft8pFeZkDehWGyUyMTzlL/Vfjf4OCtO4tDuw=;
 b=MlQHuZSvcypZ8LktVfukx+sh+m4nVbtqBXpq125eekqV8gEGITanodQVSj9Ernp9uyjj2qlC51qk62SYeJ3xvjkJjsNro43scv4mcsCdmsVrABEP2hvrICfNI9KYHm5/+cPHeNGOP3HPNqGoF4q6Egdkp+UXAz0v/RwbdemdAZ4XWX0wGYL6ZAh4IvfbM+Hc9aPyBOuc131bEH9W1BlWPB/4IFwQC89B1U0c249e5p6TbsqyK/MYuExoTcfof/qzz7NiMUaxySyO9cDAYowhp3bHnW6u/0Xh5JtCYTSz9pQZoWRPATYTyg7QCnvjn0sAazWBAI8aW7L07ORdwz9FTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=92Jchdmft8pFeZkDehWGyUyMTzlL/Vfjf4OCtO4tDuw=;
 b=H9XIKxjzHSW9bUYLNRRwfre1j0862emGjcJzCY7Avs4iZg7MFG2k2WbX+C8kc3Ozc3W+MtKjG2vDxzbcq9kOoeul+dwAfAD92jq5aWV5s3xW/7Y8PMasd23ON0joUT4jAzCXeeLpbWpkdoPDStL5mMLOzdOcSuqTJC17umN+ZoM=
Received: from BN6PR11MB3985.namprd11.prod.outlook.com (10.255.129.78) by
 BN6PR11MB1874.namprd11.prod.outlook.com (10.175.101.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.18; Thu, 5 Sep 2019 06:09:44 +0000
Received: from BN6PR11MB3985.namprd11.prod.outlook.com
 ([fe80::5864:dae1:9b7e:ff83]) by BN6PR11MB3985.namprd11.prod.outlook.com
 ([fe80::5864:dae1:9b7e:ff83%4]) with mapi id 15.20.2220.022; Thu, 5 Sep 2019
 06:09:43 +0000
From: <Ajay.Kathat@microchip.com>
To: <Eugen.Hristev@microchip.com>, <Adham.Abozaeid@microchip.com>,
 <linux-wireless@vger.kernel.org>, <devel@driverdev.osuosl.org>,
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 1/2] staging: dt-bindings: wilc1000: add optional rtc_clk
 property
Thread-Topic: [PATCH 1/2] staging: dt-bindings: wilc1000: add optional rtc_clk
 property
Thread-Index: AQHVYyVmBkghZ7w+IkiStodl6jvpxKccmquA
Date: Thu, 5 Sep 2019 06:09:43 +0000
Message-ID: <da5ea898-d8da-a6e2-97a0-4662b7d70b31@microchip.com>
References: <1567603548-13355-1-git-send-email-eugen.hristev@microchip.com>
In-Reply-To: <1567603548-13355-1-git-send-email-eugen.hristev@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MA1PR01CA0150.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:71::20) To BN6PR11MB3985.namprd11.prod.outlook.com
 (2603:10b6:405:7b::14)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [121.244.27.38]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 57e7ad0c-de26-488f-38a0-08d731c7a533
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BN6PR11MB1874; 
x-ms-traffictypediagnostic: BN6PR11MB1874:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN6PR11MB1874B5B2757A8968549B351BE3BB0@BN6PR11MB1874.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 015114592F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(376002)(39860400002)(136003)(366004)(346002)(189003)(199004)(2501003)(4326008)(8936002)(478600001)(107886003)(26005)(53936002)(186003)(66476007)(66446008)(64756008)(66556008)(14444005)(6246003)(256004)(386003)(53546011)(6506007)(6486002)(99286004)(102836004)(2906002)(25786009)(486006)(66066001)(6436002)(446003)(11346002)(36756003)(6512007)(2616005)(476003)(229853002)(305945005)(76176011)(7736002)(52116002)(66946007)(316002)(31696002)(14454004)(6116002)(3846002)(81156014)(110136005)(71200400001)(31686004)(71190400001)(86362001)(2201001)(5660300002)(81166006)(8676002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN6PR11MB1874;
 H:BN6PR11MB3985.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: TEEFEyENXafLyPKZIRb72VzxYl+XUZLUh4vKyrtmMoBL/qORe9H9jCp8mGcGyjtzuyPj4JD+/+AJ0EYXOmnaEdEVqOGvnWJ4nUnRBp1/bQnSMytFLlKFc8mF+0MyLwr56MGYtgrmLgflqlZngQXqPfi+3NdFXrXNR+7FZ+yfrkhZROJe6OUU3i0hrSx1C8UxapPSH8j0quBYAriv/yIJ5CRhzFHxK4rYwSL+uqxte7EXfKGtiDWGcVHKo0bAOZOrJF5kbPApYCaBwmVju8IMTHnS7TlDBnWUcv8ol/y7En41HH4Vf75EaoBttjnJM2Jg4e5PXX6o1y7M5j19bHnfA4Gh13rPRi19E1yMmmULF2RTeRGmxKhN9+HQstq6ffq0qA/+CYmk0ruwQOUofnt4t8GxB/Wlct+FMpdNZnMxxt0=
Content-ID: <1968281029C28F489BDA2B9F8869A1F5@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 57e7ad0c-de26-488f-38a0-08d731c7a533
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Sep 2019 06:09:43.7194 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8e8Mmu1qVXvHtaYUbNZALbHJVLf/Qb9PtuicowWY8eTi+2vDnC+lgqAQxGK+494/JVaTFJkGAjHISz2Efl25DRNVqeaA9cZnhtZLKT31RlE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1874
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Eugen,

On 04-Sep-19 7:03 PM, Eugen Hristev - M18282 wrote:
> From: Eugen Hristev <eugen.hristev@microchip.com>
> 
> Add bindings for optional rtc clock pin.
> 
> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>

Thanks for sending the patch series. The changes in this series looks
good to me.

Acked-by: Ajay Singh <ajay.kathat@microchip.com>


Regards,
Ajay

> ---
>  drivers/staging/wilc1000/microchip,wilc1000,sdio.txt | 8 +++++++-
>  drivers/staging/wilc1000/microchip,wilc1000,spi.txt  | 8 ++++++++
>  2 files changed, 15 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/wilc1000/microchip,wilc1000,sdio.txt b/drivers/staging/wilc1000/microchip,wilc1000,sdio.txt
> index 4f7d1c2..da52359 100644
> --- a/drivers/staging/wilc1000/microchip,wilc1000,sdio.txt
> +++ b/drivers/staging/wilc1000/microchip,wilc1000,sdio.txt
> @@ -10,7 +10,9 @@ Required properties:
>  
>  Optional:
>  - bus-width	:	Number of data lines wired up the slot. Default 1 bit.
> -
> +- rtc_clk	:	Clock connected on the rtc clock line. Must be assigned
> +			a frequency with assigned-clocks property, and must be
> +			connected to a clock provider.
>  
>  Examples:
>  mmc1: mmc@fc000000 {
> @@ -24,6 +26,10 @@ mmc1: mmc@fc000000 {
>  		wilc_sdio@0 {
>  			compatible = "microchip,wilc1000-sdio";
>  			irq-gpios = <&pioC 27 0>;
> +			clocks = <&pck1>;
> +			clock-names = "rtc_clk";
> +			assigned-clocks = <&pck1>;
> +			assigned-clock-rates = <32768>;
>  			status = "okay";
>  			reg = <0>;
>  			bus-width = <4>;
> diff --git a/drivers/staging/wilc1000/microchip,wilc1000,spi.txt b/drivers/staging/wilc1000/microchip,wilc1000,spi.txt
> index 87db87b..3423693 100644
> --- a/drivers/staging/wilc1000/microchip,wilc1000,spi.txt
> +++ b/drivers/staging/wilc1000/microchip,wilc1000,spi.txt
> @@ -9,6 +9,10 @@ Required properties:
>  - reg			: Chip select address of device
>  - irq-gpios		: Connect to a host IRQ
>  
> +Optional:
> +- rtc_clk	:	Clock connected on the rtc clock line. Must be assigned
> +			a frequency with assigned-clocks property, and must be
> +			connected to a clock provider.
>  
>  Examples:
>  
> @@ -21,6 +25,10 @@ spi1: spi@fc018000 {
>  			spi-max-frequency = <48000000>;
>  			reg = <0>;
>  			irq-gpios = <&pioC 27 0>;
> +			clocks = <&pck1>;
> +			clock-names = "rtc_clk";
> +			assigned-clocks = <&pck1>;
> +			assigned-clock-rates = <32768>;
>  			status = "okay";
>  		};
>  };
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

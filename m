Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F0A311666CE
	for <lists+driverdev-devel@lfdr.de>; Thu, 20 Feb 2020 20:04:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 11579861C7;
	Thu, 20 Feb 2020 19:04:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wg2GVO3NlqcU; Thu, 20 Feb 2020 19:04:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id ADCA786149;
	Thu, 20 Feb 2020 19:04:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1FB361BF36A
 for <devel@linuxdriverproject.org>; Thu, 20 Feb 2020 19:04:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1A0002034D
 for <devel@linuxdriverproject.org>; Thu, 20 Feb 2020 19:04:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bCnwKuUzhGab for <devel@linuxdriverproject.org>;
 Thu, 20 Feb 2020 19:04:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa1.microchip.iphmx.com (esa1.microchip.iphmx.com
 [68.232.147.91])
 by silver.osuosl.org (Postfix) with ESMTPS id 67F0120355
 for <devel@driverdev.osuosl.org>; Thu, 20 Feb 2020 19:04:52 +0000 (UTC)
Received-SPF: Pass (esa1.microchip.iphmx.com: domain of
 Adham.Abozaeid@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Adham.Abozaeid@microchip.com";
 x-sender="Adham.Abozaeid@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa1.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Adham.Abozaeid@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa1.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Adham.Abozaeid@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: OB9DxjCZOsBcRH9cvkLWXWUiNvu1mk6Z6z99/JXa97z8drtzHt90Lw6oVxUkjcBItDokgBcm26
 GOqIb53+mptn3zd47MsqHkZadza4ECNSWLJF7Q8PpnEDOXllFoQn6NzVWdtCLQJC8C9MD4rJGN
 BfBAqCGLugA15/9b08gnBvlle7rF9tDm5Rm7r1LbLXJh3BXTZd+bFHw/Lb+l5e58k+GNXT6jT2
 sfGn7TBWNHraVUtRPH1jhNPb9l2Hmi86YyZI9F2YOyCCJqujdz6lLa0hvslnlE2oYS4nXrv7rq
 OrA=
X-IronPort-AV: E=Sophos;i="5.70,465,1574146800"; d="scan'208";a="69248648"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 20 Feb 2020 12:04:50 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 20 Feb 2020 12:04:50 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Thu, 20 Feb 2020 12:04:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aPaUkPmBj9YowijBozXdeKq5iKeOa76j91KayCYkhxk5wojECPVXDT0Fzsp+eSPBpg4cNQzV4cFVvfWRH5UzmGDSzGAs+mm8jdL1RGGPjnHvBkgoeLE7aY+AaEUzpiF8Hfv8u6Ut9k3eUjVpWKaEzcbO59fyNEvTJzhRxl5iwUbHA8WcdPpRBzv6qS8U2w8vZBNMCVRtarNeYjiuTiOMEr1EHpbGvJja5t9fW3zM0FDvx++ReCzVziJDKyNoDfv6GgbbMll3j2Nc8KMU+thMvMtFY/EPAEISM9s9R18kLW789yz3VXDn1iSUEUcp3NruVRPGTZk5C/og6BXNt420yQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iYOKLtPBY/Co06AXlSbpquOge1WefiPZjIxbfbY/vog=;
 b=dibb1rjdRN/2fJ+IqqTAxjsSx+GDdmp03YwTYMt2I4pC2qLNc69YIaDCDGA+bPwLVpubR1+YhWhJ7Xz2IbmhSRVv4lX4+eJN3LzGmmc6zOOOr7vIFo2U2/E+S8oChdbXlBclrZQCOPee7LUV3AT3elkuhHDJPGskN20x5GjDVYHUSzwuLrrm4MGs3xiPLtSc9XEzVAhC5uMjrhcG1x99qxVv9FdlMmZYjDkae1ZeGoj607JyyqBio1rFRgViXkYA6TTtEbfrlAVFWfoAUOaBGlJPdf8+n7tmCcZWOEXzlJMXWiwiaWvzsUijStS1tSLrWVIqdNRwS5gl+ouo00IUIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iYOKLtPBY/Co06AXlSbpquOge1WefiPZjIxbfbY/vog=;
 b=XcMBzpIK4HmZHiimplzl6I4go8odCguxzSyzRqqWutRU8o57KBIJQT1R/1ypcGV3V/Szfw4vHzMjk8S2LYHGXmbV3tbPybuh3XI5y31SNmBIUm5NPGR8zRFiHyyr1I42kDm4ZGe3H73Cc7S29v5bIU4buug3GAZxrj/c/5Smdjg=
Received: from BY5PR11MB4306.namprd11.prod.outlook.com (52.132.252.145) by
 BY5PR11MB4356.namprd11.prod.outlook.com (52.132.253.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.17; Thu, 20 Feb 2020 19:04:48 +0000
Received: from BY5PR11MB4306.namprd11.prod.outlook.com
 ([fe80::a96e:2a4a:a7:7bf0]) by BY5PR11MB4306.namprd11.prod.outlook.com
 ([fe80::a96e:2a4a:a7:7bf0%3]) with mapi id 15.20.2729.033; Thu, 20 Feb 2020
 19:04:48 +0000
From: <Adham.Abozaeid@microchip.com>
To: <gustavo@embeddedor.com>, <gregkh@linuxfoundation.org>,
 <vaibhav.sr@gmail.com>, <mgreer@animalcreek.com>, <johan@kernel.org>,
 <elder@kernel.org>, <m.tretter@pengutronix.de>, <kernel@pengutronix.de>,
 <mchehab@kernel.org>, <Larry.Finger@lwfinger.net>,
 <florian.c.schilhabel@googlemail.com>, <Ajay.Kathat@microchip.com>
Subject: Re: [PATCH] staging: Replace zero-length array with flexible-array
 member
Thread-Topic: [PATCH] staging: Replace zero-length array with flexible-array
 member
Thread-Index: AQHV5/FisuIUszicxUSSYVUlxy5Pn6gkcUmA
Date: Thu, 20 Feb 2020 19:04:48 +0000
Message-ID: <d331cd9c-ec57-b686-d977-c48e70415ae1@microchip.com>
References: <20200220132908.GA30501@embeddedor>
In-Reply-To: <20200220132908.GA30501@embeddedor>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
x-originating-ip: [198.175.253.81]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ee8c7169-2b0e-4af4-6e23-08d7b637c19b
x-ms-traffictypediagnostic: BY5PR11MB4356:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB4356D4162B675A7A8A62DE018D130@BY5PR11MB4356.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1227;
x-forefront-prvs: 031996B7EF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(396003)(39860400002)(136003)(376002)(366004)(199004)(189003)(478600001)(186003)(966005)(76116006)(86362001)(5660300002)(26005)(2906002)(66556008)(31696002)(66946007)(66476007)(66446008)(53546011)(6506007)(64756008)(31686004)(2616005)(4326008)(81156014)(81166006)(6512007)(8676002)(6486002)(71200400001)(54906003)(7416002)(8936002)(316002)(110136005)(36756003)(6636002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BY5PR11MB4356;
 H:BY5PR11MB4306.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Ak/YAiaRyGRA5FAR8zXrIgRanNQuz8ug54nJT9mJkjUNPw7Eb8ChlyBSEz4WMIXXPjZYebiIxWuZCq5aWsaGB+ku4g4fCyiwjh+WR8yhaIIvuvEgNDxI3gpoFzpn5+uEOdtpBw0GWxma4CCLFHhtkR2YYR1SE5N+wOVnuoTr9trlY92tEcZcWilferCtn5slod/LbYmnyu+5OoNaQtvw3Su1wckb2nSn5o1pbXY1SWoDxtINa1C7CV2SEkzoSJkaV/xbwKXt20rUX2IQJpfZoc196CDkD+fKPvRF4z1KipXyT2JG7gVPcirBHD6odCi78JhvvaA9Y75W6FWfYVQOGwZChrGFt/hDy+Y/cHVpLrfyR5S+o4cq6rfLyWJlweh4IsinDow6AJZnQqoIX3IbK9ZdMgbv41P66R9cBGHtCmWtsezY7S2jG/MI/khNP8J+0iYohEEhBS4VneUv3GsOX/3Xxw5hnr8HWMmt8CgVW1rJyQPXC0jKgO5mOhnTvfFlJH/WxORqMRDsf+7McPrZzYJjNod357WAURwQBkFu4/uiLgcWoM4v4KbCzG8yz8WhPvTc4S6Pfzx96B4I8rqdTw==
x-ms-exchange-antispam-messagedata: s2e5bVvWSNMSvF23POdscdaNpv3GjWtToHPCTCJ/2UY+3PcVOTZs4CxbR90h1LQPoAJphw3m40xVWm+lJWfZvg2oQiFYmfDZLZLEjw4bBTHJAWmh5+KQ+lsdFSqvsz0zupGjLwRBl4nRtLILQzk3WQ==
Content-ID: <A67F79FF2067B34FBA073A18D0F5673C@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: ee8c7169-2b0e-4af4-6e23-08d7b637c19b
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Feb 2020 19:04:48.1861 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: m9js7nio4/uHbNu0aD86A3IHpj2ZrgVy7LSUNo2F1XvCKOYLAuGTkY+2KGHajrSKgJ0/393KZIWdai3vGlOs2SCYkNICReA+KoyHkGRQU/I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4356
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
Cc: devel@driverdev.osuosl.org, greybus-dev@lists.linaro.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Gustavo

On 2/20/20 6:29 AM, Gustavo A. R. Silva wrote:
> The current codebase makes use of the zero-length array language
> extension to the C90 standard, but the preferred mechanism to declare
> variable-length types such as these ones is a flexible array member[1][2],
> introduced in C99:
>
> struct foo {
>         int stuff;
>         struct boo array[];
> };
>
> By making use of the mechanism above, we will get a compiler warning
> in case the flexible array does not occur last in the structure, which
> will help us prevent some kind of undefined behavior bugs from being
> inadvertently introduced[3] to the codebase from now on.
>
> Also, notice that, dynamic memory allocations won't be affected by
> this change:
>
> "Flexible array members have incomplete type, and so the sizeof operator
> may not be applied. As a quirk of the original implementation of
> zero-length arrays, sizeof evaluates to zero."[1]
>
> This issue was found with the help of Coccinelle.
>
> [1] https://gcc.gnu.org/onlinedocs/gcc/Zero-Length.html
> [2] https://github.com/KSPP/linux/issues/21
> [3] commit 76497732932f ("cxgb3/l2t: Fix undefined behaviour")
>
> Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>
>
>  static void cfg_scan_result(enum scan_event scan_event,
> diff --git a/drivers/staging/wilc1000/spi.c b/drivers/staging/wilc1000/spi.c
> index 44f7d48851b5..11653ac118cd 100644
> --- a/drivers/staging/wilc1000/spi.c
> +++ b/drivers/staging/wilc1000/spi.c
> @@ -139,7 +139,7 @@ struct wilc_spi_read_rsp_data {
>         u8 status;
>         u8 resp_header;
>         u8 resp_data[4];
> -       u8 crc[0];
> +       u8 crc[];
>  } __packed;
more zero-length arrays in wilc1000, spi.c, struct wilc_spi_cmd, and in fw.h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

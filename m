Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2324F13D899
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 Jan 2020 12:09:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2BA5E849B7;
	Thu, 16 Jan 2020 11:09:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UlFHNICfekBq; Thu, 16 Jan 2020 11:09:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CE95F84484;
	Thu, 16 Jan 2020 11:09:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 414781BF425
 for <devel@linuxdriverproject.org>; Thu, 16 Jan 2020 11:09:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3DC3281FAA
 for <devel@linuxdriverproject.org>; Thu, 16 Jan 2020 11:09:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D8whTvC4cBKF for <devel@linuxdriverproject.org>;
 Thu, 16 Jan 2020 11:09:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa3.microchip.iphmx.com (esa3.microchip.iphmx.com
 [68.232.153.233])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4592D81F99
 for <devel@driverdev.osuosl.org>; Thu, 16 Jan 2020 11:09:05 +0000 (UTC)
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: 9DVCjBSD4YriSSBVXToCiJDMqjHPNO/tf6eohNo4N1peWJ9re367Ppn2Mi/3srNTUVE+LfU+AF
 GERZlji5jat/l3mkDxJ8IXMu3WY/SomxJeeFIh2HOBboHDgNjRTRxzNfg/MyZdJrUbPuBQC0e2
 fz+17HwuJ12A9eZN8pBfRHWjTV1oDOqWW+agsVspxkeW/t6sm8Vm7M2SIoOQehg9jbJet1jweO
 h2lKrm6akcQMcGfniWulaCWrPk+aKXZ0GE8cV5vNPIL6PMiFXkJ1V24TpL0O9YPU/g6vVa0ZW+
 dpw=
X-IronPort-AV: E=Sophos;i="5.70,326,1574146800"; d="scan'208";a="63463262"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 16 Jan 2020 04:08:59 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 16 Jan 2020 04:08:52 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 16 Jan 2020 04:08:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A1LGHZd/o4lSHI3rwTZ2w9V0jKuj1IpMcSbKtabYEv5ARWiDJXrqu+sObI1QYTQZI7InPkAc9LzG4eQG/8SLmHQEW8fXzIsvyJqbBYgfYYm/guRT74LSneiY1pnaTCOAdG2bWHBtYy+tkk3ymcp4quHpsNpus/oIpCoFDVbu14nKM4xZSTCUAmsEQwUno6DZ0VO93wuFyE2QIRbSZ1JBCCBgW0PDiRkaDetwt7iyMwg2DgVI+g1EBLQQQVMvAl/efIwSpFWQtO4R8C1jHxdOQ7XdMy8Oc/43Kfi0zTk0d1JDlpv9Lc/FCUsbg4zPghdS4Sp3RfUi0xMxiKTHHKpdTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WbIaUyXuZf2j3y4e1O9DjjizLBn7qIBiGbmPpQouqFE=;
 b=dn9K1HjN9G96Fn8NK9BAwDVhiSJtDbi0qyZ6U2iH6xLphus0As95ha7OUGKjLwTTwhuDxTITIH85fR8YlYkh38msMYnGJltTqgRgRtME1dkS4M/92BJt/PbskGXX8WT3otqB1uwPGy8Q1dDHCiGW4f1HvrfHZLx1molm2bsfT9sJBxU/tS+VL5OmERqFIULZNWIfO7GoC6MCn8qB9WQ4HFhTLoePINic9OUKFouv+W/6ghfT+efHFUCpmP5U/1Cq100XnLOWhAAfXqjQkU4eavZp0p8COXa+d18PF/mK9rJbIVIO4zjG55rKy3UYCny5I4r0cgLDosJ6OkVJyBMeSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WbIaUyXuZf2j3y4e1O9DjjizLBn7qIBiGbmPpQouqFE=;
 b=b9iKgl+BSaGVGszdDs+5sZtGWZHkRB9uaTpJgi+JFPFRaFKEzyt2qTJ6oYiutUG/aCvOS438xPITjpnnbG03w1jURua1CR65JV8cThfR4fpaXeCRC0+LlOwC3Xx85QXgDN/Kd4rnytq13GiR41d3lx/PeiktLT5D0OLMmBXFhrs=
Received: from DM6PR11MB3225.namprd11.prod.outlook.com (20.176.120.224) by
 DM6PR11MB4202.namprd11.prod.outlook.com (52.132.250.144) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.20; Thu, 16 Jan 2020 11:08:50 +0000
Received: from DM6PR11MB3225.namprd11.prod.outlook.com
 ([fe80::106f:424f:ac54:1dbb]) by DM6PR11MB3225.namprd11.prod.outlook.com
 ([fe80::106f:424f:ac54:1dbb%7]) with mapi id 15.20.2623.017; Thu, 16 Jan 2020
 11:08:50 +0000
From: <Claudiu.Beznea@microchip.com>
To: <colin.king@canonical.com>, <Adham.Abozaeid@microchip.com>,
 <Ajay.Kathat@microchip.com>, <gregkh@linuxfoundation.org>,
 <linux-wireless@vger.kernel.org>, <devel@driverdev.osuosl.org>
Subject: Re: [PATCH][next] staging: wilc1000: remove redundant assignment to
 variable result
Thread-Topic: [PATCH][next] staging: wilc1000: remove redundant assignment to
 variable result
Thread-Index: AQHVzF1Ucxu9RCQcFE+DvMw+ZK879w==
Date: Thu, 16 Jan 2020 11:08:50 +0000
Message-ID: <a0631a12-a183-30fa-98da-036673d7f207@microchip.com>
References: <20200114172720.376286-1-colin.king@canonical.com>
In-Reply-To: <20200114172720.376286-1-colin.king@canonical.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3e86334f-5b11-4e08-438b-08d79a747791
x-ms-traffictypediagnostic: DM6PR11MB4202:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB4202F899B422C3CE6B5A82CC87360@DM6PR11MB4202.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1824;
x-forefront-prvs: 02843AA9E0
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(366004)(376002)(136003)(396003)(346002)(199004)(189003)(6506007)(53546011)(2906002)(26005)(5660300002)(71200400001)(110136005)(54906003)(66476007)(66946007)(36756003)(6512007)(76116006)(6486002)(64756008)(66556008)(91956017)(66446008)(31696002)(81166006)(81156014)(2616005)(86362001)(186003)(8936002)(316002)(478600001)(31686004)(4326008)(8676002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR11MB4202;
 H:DM6PR11MB3225.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RSCWv9nuX7TKm7TYuwfkU82ZrTVLPvuc18ummcST0Qigsz6QG2PKDYk9WVXfvLP1La5M22yh0HpgZm5Cx8YiWtWAz1kSybrkXax8+6ZBh9Px6JLETVr0uGVkTp93FYEThq4f3izKeyaUEalVRMjfzlaiKWQG51/ixYROsJEhQFw9t9v4DZ1E3wzYVdfvnLzcnR2SeVpewdkQQtC1MBjHN/hdweYO+azAT7ajVtqzsD3IXI7O7BWOXWt55/E/Dv+XANog5LJZrI34X5IKn2Y+BaLf/E6MmBWCnKnn9xssZT7HlY3hI9gNpeQAqOcDI5PvgJYMuxxE5faak0MxVfl6R8mgIjdY9a7Za7arjAwkif5RLk7QX6OkXTsGOoRGM9gBBpRJnrw6Kr1zY3Yp7EylW1coUfNfQinKeNGfjRKpWwOvliipDK567ePIQ56sredt
Content-ID: <1667E762B74C894A95C8C7669E956639@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e86334f-5b11-4e08-438b-08d79a747791
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jan 2020 11:08:50.8677 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cgvFV/0lu6pwDOnJH5CPhxwoorm1l1IXPK8DMaTyGtZxi3KdF3Rby7Ckb4pT8Yu7/NRP1GyXXwX3wS03gfpcSxbXJTjBp7SEA+A2roXkVLI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4202
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On 14.01.2020 19:27, Colin King wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> From: Colin Ian King <colin.king@canonical.com>
> 
> The variable result is being initialized with a value that
> is never read and is being re-assigned later on. The assignment
> is redundant and hence can be removed.
> 
> Addresses-Coverity: ("Unused value")
> Signed-off-by: Colin Ian King <colin.king@canonical.com>

Reviewed-by: Claudiu Beznea <claudiu.beznea@microchip.com>

> ---
>  drivers/staging/wilc1000/spi.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/wilc1000/spi.c b/drivers/staging/wilc1000/spi.c
> index 55f8757325f0..8694ab5fcb22 100644
> --- a/drivers/staging/wilc1000/spi.c
> +++ b/drivers/staging/wilc1000/spi.c
> @@ -733,7 +733,7 @@ static int spi_internal_read(struct wilc *wilc, u32 adr, u32 *data)
>  static int wilc_spi_write_reg(struct wilc *wilc, u32 addr, u32 data)
>  {
>         struct spi_device *spi = to_spi_device(wilc->dev);
> -       int result = N_OK;
> +       int result;
>         u8 cmd = CMD_SINGLE_WRITE;
>         u8 clockless = 0;
> 
> @@ -782,7 +782,7 @@ static int wilc_spi_write(struct wilc *wilc, u32 addr, u8 *buf, u32 size)
>  static int wilc_spi_read_reg(struct wilc *wilc, u32 addr, u32 *data)
>  {
>         struct spi_device *spi = to_spi_device(wilc->dev);
> -       int result = N_OK;
> +       int result;
>         u8 cmd = CMD_SINGLE_READ;
>         u8 clockless = 0;
> 
> --
> 2.24.0
> 
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

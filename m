Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A7BBD1107
	for <lists+driverdev-devel@lfdr.de>; Wed,  9 Oct 2019 16:19:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A3A4685514;
	Wed,  9 Oct 2019 14:19:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lOiOrPu4DVIg; Wed,  9 Oct 2019 14:19:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 247F9853FC;
	Wed,  9 Oct 2019 14:19:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 838381BF423
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 14:19:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7F9432309D
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 14:19:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w7sWLZXM7tdr for <devel@linuxdriverproject.org>;
 Wed,  9 Oct 2019 14:19:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM04-CO1-obe.outbound.protection.outlook.com
 (mail-eopbgr690043.outbound.protection.outlook.com [40.107.69.43])
 by silver.osuosl.org (Postfix) with ESMTPS id 77BD523026
 for <devel@driverdev.osuosl.org>; Wed,  9 Oct 2019 14:19:16 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cU+UDvS5H0rYXuD+X5vXHG0YMvVMg/IZaWX8Yq0VtoKTlrVb2ZvS7aCiryv9X3ZMORMQaLiiT8ato4yXDbTJiIvE+5QKT5xoTenbeBCNbymlLvmHhfFFgr6wk9v958OrcufKHLc0XICt+KbgMabc7qqCyXJtlT7fdo3bkKp6OO3/5NbGqPnFYx3VvFtf3e7WhxqjmR/fmtoxFO/xTDD35RUpAAe8jMh1Igzhx+h31MFmGt25uSoOHD4Kje14y3cJsgyZfBk1Q65QFThbPZbhnrVMK4ZjGCTivyHki28WxJzkP8gTLFMt8O4Dw4dwptxOW9hRp/dfZIYkZchJ5FjmGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=k6CYGUVZ9YLrBFIdaNJFLlXjffR9/cM3XyJ/U7D6kmc=;
 b=IEvOzyiTQ827vwH7p3Dkdba2dzhpgrov8aoTlKNp6dyws9Ut6pP58ulutz5sCqamqq2WLzmUih9LIW/LrrWwFQwe6Vi61heQI/dCWyrLXo4p3V/J34m18z2VFeTiiCfE5Z3phFGuBZ2wSLX5JZamDeJN+sPQUpfksjWSxLjXwSFlB2OqubTmrKPLRkFzEbb1C1P7Ij4dpelJPkJNIqERrDCsCnkY3xaYCIoNu5pxxEu/z2k14SiTZTUwf9nr04w0WLXRexk5OV8vX/D1wyA5hQejF5h8coH+xipcyfpUZPigKgIugCrtP82ZbvL/NJ6ds5wxgolB93RvnQfKCc672Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=k6CYGUVZ9YLrBFIdaNJFLlXjffR9/cM3XyJ/U7D6kmc=;
 b=cebBaWmFjbMWLTSJHc+rEdEMZKSLd5wmt+8gX5+UDVmgiaLh8q9HKdw1Br9nZl7ssx+ddgL1j4qa9lc8NpeGpV2djC/dMfzPC65ezvf4yUR2hYeyHeGXcsfBvYgMv7CN5TaRJXAoAi1TBxYtTUKWLkI/XsnknIjlyPgDpWXPp9E=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB3645.namprd11.prod.outlook.com (20.178.254.13) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2327.24; Wed, 9 Oct 2019 14:04:47 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::ac8c:fc55:d1e2:465f]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::ac8c:fc55:d1e2:465f%5]) with mapi id 15.20.2347.016; Wed, 9 Oct 2019
 14:04:47 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: zhengbin <zhengbin13@huawei.com>
Subject: Re: [PATCH v2 1/3] staging: wfx: Make function
 'sram_write_dma_safe','load_firmware_secure' static
Thread-Topic: [PATCH v2 1/3] staging: wfx: Make function
 'sram_write_dma_safe','load_firmware_secure' static
Thread-Index: AQHVfqeJ1iFPjSFPb0O03eC39jPorqdSV7MA
Date: Wed, 9 Oct 2019 14:04:47 +0000
Message-ID: <1654477.UVaFj4gX7l@pc-42>
References: <1570629030-29888-1-git-send-email-zhengbin13@huawei.com>
 <1570629030-29888-2-git-send-email-zhengbin13@huawei.com>
In-Reply-To: <1570629030-29888-2-git-send-email-zhengbin13@huawei.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jerome.Pouiller@silabs.com; 
x-originating-ip: [37.71.187.125]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ac4c1e6b-847f-48c2-229c-08d74cc1a4c3
x-ms-traffictypediagnostic: MN2PR11MB3645:
x-microsoft-antispam-prvs: <MN2PR11MB36452A0B00FF1CB033DEC9FC93950@MN2PR11MB3645.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2803;
x-forefront-prvs: 018577E36E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(7916004)(136003)(366004)(346002)(376002)(39850400004)(396003)(189003)(199004)(99286004)(86362001)(25786009)(229853002)(6436002)(478600001)(76176011)(6246003)(64756008)(71190400001)(66446008)(71200400001)(305945005)(14454004)(66476007)(66556008)(446003)(11346002)(66946007)(66066001)(9686003)(5660300002)(8676002)(6512007)(316002)(81166006)(76116006)(8936002)(256004)(66574012)(6506007)(6916009)(81156014)(91956017)(5024004)(14444005)(4326008)(102836004)(33716001)(26005)(2906002)(7736002)(476003)(6116002)(3846002)(486006)(6486002)(54906003)(186003)(39026011)(21273002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3645;
 H:MN2PR11MB4063.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5acnWnmuad1HBAVUBk8IYmDwKJRPcxSfmIo8B0BV1h2xlXEajYUM/ErbSln6yd8Zc6porqwt4bEG59HSls6h/B71RBx9ZoelXgVYF7DdizEr355LGZ20tzNp1yPZle18JRoQ19YkJnGfSXSjsKtohp4bmA64HBvbdqNA8o3CYMWTCcs1g1giDRaGsgoT+PAtAYKB7cPY9uHwUFi4rRRHwjZgdfyF0/YMvcGqukIvM/aXH0SDHSAzPrJCRQzef39XABPH+TWVnM7pH+zN/rgfZD03phv97e8dWe15g2NCu7O3I2XgtHtaWJO8cUkfKxRe/N+MR/k9LMD2Bi27Fo/Bu2HV+TGV1ofpTNZL9AIhDsxaABRhKsnML7ZbU1HGNrvOxf0S43+DbxpSz38ApyDr+8RaS2U5ZguqP71bPv8BLWg=
x-ms-exchange-transport-forked: True
Content-ID: <817FD4F634FF4A46BE273BDE70B41085@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ac4c1e6b-847f-48c2-229c-08d74cc1a4c3
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2019 14:04:47.0946 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QS4rCl9bePTdgksn7xqdSokLlY0Xsmtekz7i8z6lpX5XyHEMFi6nqrak5hvx9aNdUtNqa0aGj++m/xNeS4PX0A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3645
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
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "dan.carpenter@oracle.com" <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wednesday 9 October 2019 15:43:31 CEST zhengbin wrote:
> CAUTION: This email originated from outside of the organization. Do not c=
lick links or open attachments unless you recognize the sender and know the=
 content is safe.
> =

> =

> Fix sparse warnings:
> =

> drivers/staging/wfx/fwio.c:83:5: warning: symbol 'sram_write_dma_safe' wa=
s not declared. Should it be static?
> drivers/staging/wfx/fwio.c:229:5: warning: symbol 'load_firmware_secure' =
was not declared. Should it be static?
> =

> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: zhengbin <zhengbin13@huawei.com>
> ---
>  drivers/staging/wfx/fwio.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/staging/wfx/fwio.c b/drivers/staging/wfx/fwio.c
> index 8fb4a9f..6d82c62 100644
> --- a/drivers/staging/wfx/fwio.c
> +++ b/drivers/staging/wfx/fwio.c
> @@ -80,7 +80,8 @@ static const char * const fwio_error_strings[] =3D {
>   * NOTE: it may also be possible to use 'pages' from struct firmware and=
 avoid
>   * bounce buffer
>   */
> -int sram_write_dma_safe(struct wfx_dev *wdev, u32 addr, const u8 *buf, s=
ize_t len)
> +static int sram_write_dma_safe(struct wfx_dev *wdev, u32 addr, const u8 =
*buf,
> +                              size_t len)
>  {
>         int ret;
>         const u8 *tmp;
> @@ -226,7 +227,7 @@ static void print_boot_status(struct wfx_dev *wdev)
>         }
>  }
> =

> -int load_firmware_secure(struct wfx_dev *wdev)
> +static int load_firmware_secure(struct wfx_dev *wdev)
>  {
>         const struct firmware *fw =3D NULL;
>         int header_size;
> --
> 2.7.4
> =


Reviewed-by: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>

-- =

J=E9r=F4me Pouiller

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AC511C3E54
	for <lists+driverdev-devel@lfdr.de>; Mon,  4 May 2020 17:18:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2835988A71;
	Mon,  4 May 2020 15:18:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bVHs7zn1b35C; Mon,  4 May 2020 15:18:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 92D9F8848F;
	Mon,  4 May 2020 15:18:00 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 50E3D1BF3E0
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  4 May 2020 15:17:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4D9E387648
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  4 May 2020 15:17:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lxl-xiRr2qht
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  4 May 2020 15:17:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa6.microchip.iphmx.com (esa6.microchip.iphmx.com
 [216.71.154.253])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2747B87748
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  4 May 2020 15:17:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1588605476; x=1620141476;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=RdNxLUAkVhb0DyI25Q0Xr5gwnHtbomIVgVMxyClLbUo=;
 b=EBY7A5eO+TGgg4fiWyGS3OsmfrMNaPvjUkKHjDdfPqQ8kId6z8tB8UMl
 TRxHFP5729PWAJxkxg+7aa2Ikpu7O3zMnboLwqIBXORk5j4ahD0eM/0jM
 Gs9y56XwSPKgSbdmE4oM1i6wS5abjjbnm+hWDNDysvgv9cOa2b0NspH0W
 Idunm7nbDlmhxwLK7GTcif81g2/kzuzusBFgli6KwMZ7fqqqogXR1hH9K
 /dweW8uPGzgcFiOHQB4TPvoJgV/wiP6cw4N4QRUGp8V/g5KtC4JlWvSjz
 ARJLjOPOhKdGbmyeWndCLKdQLBnyOiqvdP6N1OkJzjxl9bARbtWqrzGmV g==;
IronPort-SDR: IJ/G76Cv7syC83+D5af9y3Td7vpTvFvpqQh932BLQ8fRqkMeZNYCgbjr7LDSmEyrOGFODlx271
 P+BjgR/4sX5x8RptupTuEiH/2K4rk6Vtq6kwJoIK6bSjt9aZPQ91e7u3xWKkbYcuXS7+/G/Cfr
 220lux1Acli26Pd61/d3MdgzqC+ux9WSM52v0P9XdiVR2GDflLxT7hCmugsLB+jjyhEfAz3pwT
 4JqlErHOIEMeh5Wn2gsN3cP1UZGog3LtDEUnTs3+Ob1bOWAlDTIy8d/KzvVBmQtpvb3Op5t9Uc
 Nrg=
X-IronPort-AV: E=Sophos;i="5.73,352,1583218800"; d="scan'208";a="11241578"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 04 May 2020 08:17:55 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 4 May 2020 08:17:59 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Mon, 4 May 2020 08:17:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f+Y6qqJGExrUxuY3mfCbjzNv5RacnRNWzX2597zWvcHv4RZZM65Xm/qxXzwoRjodAvPuy+uoaS8OApBeEftN/U6o8YyTHny+2y8ssI1CiY4bBjFlF9n9tozgpCKq3I17F+hnT72vY+zgjT5BGch1SeEb1Ib5V30do8yWSmFnXBuH8KqtvR6d8BBju8GKzLSyhCQ0ceA/1sCBKXHwvjqLEPRBTA+0hJ3fyByFDFjtz8xnEeAtCvwX8wV46UPBW0VX6ORAyZGm1gvNwn5quBT98cEVDjqEm9DIej/B3EBRCyaw5kd6xW7e9p86w5lE4yBF73RyLta2gq26lVfadiXCvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RdNxLUAkVhb0DyI25Q0Xr5gwnHtbomIVgVMxyClLbUo=;
 b=Vc6DgILASOgkyEi0XysMlBat6UNEgWUNfoIfKPOUbHMp4SMmIjOIfQJis7OVqkR1u0aYRONxXL9E+3Zspvsymon8qXIku4W6JJJzGTYbHWDPEvpB3q49oNGnke6DxguE+y0gsM1D6XBXEZlXOHUb0dw1qIzWPsuSwc6IyVNgw/dHO8pJJEc31tJ8MfF5VvgiYmbbrCn0H+jfgfeWJq3pug/q+rQb+SAImlh6V/EplKwpVyGQB8GqEmwDbLCAgS+D30vjH9bVlAf8G3KxPqdVpgpttJgIOG7kMC3dVkmmof3rhDlOk6ebbJvfwoTglcrKfvrAHMC5PcJ3gtJaMY6K6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RdNxLUAkVhb0DyI25Q0Xr5gwnHtbomIVgVMxyClLbUo=;
 b=tROFkVuGb5Mw9ePrMBPe8UWOiqDlap+LaXrqziK6CCHq6FlDXDaf4cRqnhdX46KIPaEsubFm2gIbcmzwg0CQlnSJjTlbZWB8BN8v2IXEt1AJ5TKWHxge3PoNycgECs81ws4HMr5vUcpywxuB9ST9QdCpROxSKQ0TIcO/Jv4brZE=
Received: from DM6PR11MB3420.namprd11.prod.outlook.com (2603:10b6:5:69::31) by
 DM6PR11MB2554.namprd11.prod.outlook.com (2603:10b6:5:c8::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2958.29; Mon, 4 May 2020 15:17:54 +0000
Received: from DM6PR11MB3420.namprd11.prod.outlook.com
 ([fe80::91cb:6555:db9b:53fa]) by DM6PR11MB3420.namprd11.prod.outlook.com
 ([fe80::91cb:6555:db9b:53fa%7]) with mapi id 15.20.2958.030; Mon, 4 May 2020
 15:17:54 +0000
From: <Christian.Gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] staging: most: usb: fix exception handling
Thread-Topic: [PATCH] staging: most: usb: fix exception handling
Thread-Index: AQHWIhoVnv7HMheeEU+zKrWe/lCBBaiX8t2AgAAXSgA=
Date: Mon, 4 May 2020 15:17:53 +0000
Message-ID: <5a1b21ac4bc63312784ee2cfb0cf153044d8d8d7.camel@microchip.com>
References: <1588599840-13237-1-git-send-email-christian.gromm@microchip.com>
 <20200504135431.GA2311301@kroah.com>
In-Reply-To: <20200504135431.GA2311301@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.30.5-1.1 
authentication-results: linuxfoundation.org; dkim=none (message not signed)
 header.d=none;linuxfoundation.org; dmarc=none action=none
 header.from=microchip.com;
x-originating-ip: [46.142.167.48]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: da11de46-6a2e-4a1c-da02-08d7f03e5170
x-ms-traffictypediagnostic: DM6PR11MB2554:
x-microsoft-antispam-prvs: <DM6PR11MB2554F6AA6894D59B10446A21F8A60@DM6PR11MB2554.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 03932714EB
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: II57/rRF6DblSXC35OulnP3z0pgeJGKmTD1YOG39SIWLe92OcabcbWPqzOHS12Kt9KS6u55IqOrwbhUqy2e3hNq5Ki9/NJ+Jok5Tn31DPaGZlh65OTB+7ZYefQPkVC6F1Vj5Xz3/nR3QMr9AObfZKL/KscGUuUoUbZPVVkvPy9ggjcyA26t/7IHk0rlpjne1SKQt/XCqLF+qo+K6tQ0wjgt3UyuIBXbc6+P0L9vJtmna77P/M7H+LzVVcnl6yB9uRK93YnGBLkL8DvZPxHkJKtAypgPvPfhlXMS7zPk98YHCBaqEIg2Kxs91B26fiQQwq80Zf21Vw6ETYTbJIy+2qMpAJkkue3rmjS/mTObHR+9+dxJmfia8EN8Ie+PHWk9+ROBcMRhlAgnNN9RnPTdOWiK5NoMrMgVshMQyWCjhTpfHt+FYdgGSzkOpXfJkdaEK
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(136003)(346002)(376002)(396003)(366004)(39860400002)(478600001)(8676002)(8936002)(6506007)(186003)(26005)(91956017)(76116006)(66946007)(316002)(64756008)(66476007)(66556008)(6512007)(6486002)(66446008)(2906002)(71200400001)(4326008)(6916009)(86362001)(4744005)(36756003)(5660300002)(2616005);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: oDSKoWO/KlIzlIAU2s5ZMvPwBehPP0fiyow6L0inJ1XuDLC5hp9oEOgGVc83tnijsAh6OGBa3SVmBuUlFICjYlg4NJ/Xwh9XzyY1mgwJJT4FYv2gCghRmMCnNwLS3NrqLuuAO5PtmtHVAxjyoae089rI/dBBFQF3Z+46Arrls32j+7kXUdD/GHHwW5JnVg5b0dtZd8+AvkqZN0Arhfxw+mwrCUJI9+WCqfnJ5N7rX8e0173e0MXYH72G1hFYviqZwK4DGEzeaP0V2SR4oZyV5Mz4ykicnxRkNQIWYigDtlqonGGiW+/bEZls4mARLivkr0tfKKA4/WI8c4eKr/tbEelzqvvXTKpFEjFihcN9QMW11T2YFccw0zIPIpV6hegofcpSTZPOYzvdUc0UxUBALCjS2rOaII+Z/XVwOssoJ8U6nhClBGP7+QBvRMFhQ29QkbifvYb+IEl53xy7Y0dm8tiAxRt5xV0Ug0v9AB6qliTLDSYW+S7Cny3Cl7uGjjFXZotJI3GdocKwYucsWyWLB+DYL3gOLBueJdYKNuDPfG7ucWzbaMMTL6tBbX8EWUBHg3IbdQe3BHEbLYbdxH7lkchoLV+YIBC27OmQDEcQaqlyK2WiVHYbSv9mp6Bmp4VTuDbyCvRX4ZJPtWGJfHmTMY/dsbfM55LSO/m1fZZTleePsIclE9vhgp7hsMs8I/z16Hl/It9MJ42ztX1WWZHNadWBiplP8X82qRl/a9MSb6PHzBNMxfauDv1S1c1SpmoRpLZkpnYuz5yQ5Kwl9X/MrxYHC+++juJA0p9G7PqTTsk=
x-ms-exchange-transport-forked: True
Content-ID: <57853D3B0A14664D84370942E25DC217@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: da11de46-6a2e-4a1c-da02-08d7f03e5170
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 May 2020 15:17:53.9244 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: T4pJ1pfT8UDClU1TJ/hiAWrxasJWm2g4vwoH9ylbGlo3TuP1pcKg5Eh5GAIJVwIDXXIL6YsTITim9mEQPoDL8P8fexbit81r3nwrLk+RZXs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2554
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
Cc: driverdev-devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, 2020-05-04 at 15:54 +0200, Greg KH wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you
> know the content is safe
> 
> On Mon, May 04, 2020 at 03:44:00PM +0200, Christian Gromm wrote:
> > This patch fixes error handling on function parameters.
> 
> What does that mean?  If I don't understand it, I think it needs to
> be
> made a lot more explicit as to why you are making these changes :)
> 
> > Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
> 
> Any "Fixes:" tag for this?

No. Just wanted to fix some obvious things, before adding
it to stable, as discussed in our last email thread.
> 
> SHould it go to stable if it really resolves issues?

No. Once you accept this, I'll add it to stable anyway.

thanks,
Chris

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

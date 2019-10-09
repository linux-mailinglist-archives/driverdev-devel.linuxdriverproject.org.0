Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 68BFAD11D4
	for <lists+driverdev-devel@lfdr.de>; Wed,  9 Oct 2019 16:56:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E843623223;
	Wed,  9 Oct 2019 14:56:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ylH8xWth1Wl1; Wed,  9 Oct 2019 14:56:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 188FF23143;
	Wed,  9 Oct 2019 14:56:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B6B0F1BF423
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 14:56:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B0841878C1
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 14:56:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0X6RAzWbasSV for <devel@linuxdriverproject.org>;
 Wed,  9 Oct 2019 14:56:30 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
 (mail-eopbgr770050.outbound.protection.outlook.com [40.107.77.50])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C7AF887864
 for <devel@driverdev.osuosl.org>; Wed,  9 Oct 2019 14:56:29 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FMcfmAnwfYiMTTg7WkeJjIOOnzrJBESihkQXXRYG0fFvoHf1Xjyg8KcezZkHcj3gz0T0OeC9SzsPhORv3D3UPM1fAFPdzug5eY3Osiaz4wBgL/G/q4gTOLr28xv8va+8kq5grSIlyZ4zf2SIPyLwimnMGCFUxl6A8hijRfVlhLrxGr7fue+76Gqsj5aYmr+baoyGlpH1oe1MvoffeqcRUk4rckCpgrImYYreILwZ2gCHXrxi0XH2ei4M0vRTU8q6oo3DCgnR0LvUJ4N7jm68ctyGW7jGpIl1nLRYizXD+A0bZn3EyyG3W1ExbkHcqgMjkeRGhWSbGArhBB0hMVCM/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Kkg5kL8DaaiX4lTylPc47XbHiEfgSIU8vh0p2ggX92I=;
 b=jdBHE7YNksQ+Yftr2Ecb0OPgcRCKC8XgJ4JS7Ic29o3IG7xuUgxUCjapC2f66Uwl03tG33hCnF/+UDr7wkXMdR0i8LgqWdg9+4qoqM1/vRS1FlrfD66uMfuQ6oY+tgh8Y40zun2IlvXDiIT84A/ui4kcekBidzNJripXcX81q8Hg9CHKnbXy3VEl4tNiClGuQNYbq2MLpUbudPubsm/ykTV+S2tT059YUVLzOcZVJAcQZpo7cxuGSJP4IyZSC/WJTjp30GMeat+E5YmaJKfnixEi/Q0EjDorXmj94lruzJELIf/OeH3cdf3rMiEdFShJgOfR6JJXWH6pdicxr/WV2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Kkg5kL8DaaiX4lTylPc47XbHiEfgSIU8vh0p2ggX92I=;
 b=E4AwY4yLuSRG3ILrA0hfuo/wV37J5v2pduzWCwMlbVMWx+Tp6wAbDNKOQU6zreuoh3YVEuW363EdOqbmwXy6TFDgAuBCUW7uBdXrja220ky4a0N1hrMknyDJxD6y2bUkToz38lpzM21bt7EyyIdkmORBPdMaEmRJfORPPESh7zQ=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB4397.namprd11.prod.outlook.com (52.135.38.212) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.16; Wed, 9 Oct 2019 14:21:47 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::ac8c:fc55:d1e2:465f]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::ac8c:fc55:d1e2:465f%5]) with mapi id 15.20.2347.016; Wed, 9 Oct 2019
 14:21:47 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: Rong Chen <rong.a.chen@intel.com>
Subject: Re: [staging:staging-testing 41/59]
 drivers/staging/wfx/main.c:47:14-21: ERROR: PTR_ERR applied after
 initialization to constant on line 42
Thread-Topic: [staging:staging-testing 41/59]
 drivers/staging/wfx/main.c:47:14-21: ERROR: PTR_ERR applied after
 initialization to constant on line 42
Thread-Index: AQHVeqFDwv+/a87VbUq/WCHCQpG3qadO31SAgAMHLACAAH4AAA==
Date: Wed, 9 Oct 2019 14:21:47 +0000
Message-ID: <3146028.s5zQrzEYB4@pc-42>
References: <201910041809.W4MyUT1q%lkp@intel.com> <3767201.AobC1b7GVW@pc-42>
 <21f8b824-2b17-7eaa-b0c4-510e89b798cb@intel.com>
In-Reply-To: <21f8b824-2b17-7eaa-b0c4-510e89b798cb@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jerome.Pouiller@silabs.com; 
x-originating-ip: [37.71.187.125]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ecc1edf2-181a-40ef-55db-08d74cc404c2
x-ms-traffictypediagnostic: MN2PR11MB4397:
x-microsoft-antispam-prvs: <MN2PR11MB4397DDC4347DED8961BCA9BD93950@MN2PR11MB4397.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:164;
x-forefront-prvs: 018577E36E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(7916004)(376002)(396003)(366004)(136003)(346002)(39850400004)(199004)(189003)(51444003)(7736002)(81166006)(3846002)(6116002)(4326008)(66476007)(86362001)(66946007)(64756008)(26005)(66556008)(8936002)(76116006)(66446008)(316002)(186003)(102836004)(53546011)(6506007)(6916009)(99286004)(81156014)(486006)(476003)(11346002)(446003)(305945005)(91956017)(76176011)(8676002)(229853002)(6512007)(9686003)(6246003)(66574012)(14454004)(54906003)(33716001)(6486002)(2906002)(256004)(66066001)(14444005)(478600001)(6436002)(5660300002)(25786009)(71200400001)(71190400001)(39026011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4397;
 H:MN2PR11MB4063.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jo0kzBw/xxOKE5brR5RBEoq59lOohoWtU48h4ywiZIT0ESZTk27wSW+fl398rOYOsqEOdnKo1hL0m0I81pgULa2MMOH15heNVi6VSVTi06gdiDc6QYB7gI+3RW+HPSpL83lMCWueWuUqNJxERS2whdZ+u8ZfiAX/UHX+OwXi2rRD0SRK7uOKGTIn1CZH+mY8FRrLuLbXcisGrBQSjJMxGpED8qbcYpaEJwocIQT9YpqNo8wy1nMrfQ1Neils6rPDCL4WM0mhqk6ulInq039P4k/Qhu9xMeWJ3ZzVhYguBtUivZwCAMnChGZcuQq4ILqN5kQXjbYvYsWiOoLrslfCtHPDEtGj9boOZ4PwM+wDbWTYNIrOdccf4AMeyfeEOZyAKxag+Msh+ZnTR1qf5v/5O6HW6HBoawuGcK0WmQJPvmo=
x-ms-exchange-transport-forked: True
Content-ID: <EEE95CBFAB286E499847CF74E22D6F1C@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ecc1edf2-181a-40ef-55db-08d74cc404c2
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2019 14:21:47.1111 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /wC1Tg2p8kwo9qtq4kO5otN230y2Ecg6kKCej3iZ/CZ2sqHPKJs4zcYUwA0XWsfrWlZzFNgapVjx6U+m/jszSA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4397
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "kbuild-all@01.org" <kbuild-all@01.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wednesday 9 October 2019 08:51:10 CEST Rong Chen wrote:
> On 10/7/19 4:36 PM, Jerome Pouiller wrote:
> > On Friday 4 October 2019 12:48:32 CEST kbuild test robot wrote:
> > [...]
> >>>> drivers/staging/wfx/main.c:47:14-21: ERROR: PTR_ERR applied after in=
itialization to constant on line 42
> >> vim +47 drivers/staging/wfx/main.c
> >>
> >>      30
> >>      31  struct gpio_desc *wfx_get_gpio(struct device *dev, int overri=
de, const char *label)
> >>      32  {
> >>      33          struct gpio_desc *ret;
> >>      34          char label_buf[256];
> >>      35
> >>      36          if (override >=3D 0) {
> >>      37                  snprintf(label_buf, sizeof(label_buf), "wfx_%=
s", label);
> >>      38                  ret =3D ERR_PTR(devm_gpio_request_one(dev, ov=
erride, GPIOF_OUT_INIT_LOW, label_buf));
> >>      39                  if (!ret)
> >>      40                          ret =3D gpio_to_desc(override);
> >>      41          } else if (override =3D=3D -1) {
> >>    > 42                  ret =3D NULL;
> >>      43          } else {
> >>      44                  ret =3D devm_gpiod_get(dev, label, GPIOD_OUT_=
LOW);
> >>      45          }
> >>      46          if (IS_ERR(ret) || !ret) {
> >>    > 47                  if (!ret || PTR_ERR(ret) =3D=3D -ENOENT)
> >>      48                          dev_warn(dev, "gpio %s is not defined=
\n", label);
> >>      49                  else
> >>      50                          dev_warn(dev, "error while requesting=
 gpio %s\n", label);
> >>      51                  ret =3D NULL;
> >>      52          } else {
> >>      53                  dev_dbg(dev, "using gpio %d for %s\n", desc_t=
o_gpio(ret), label);
> >>      54          }
> >>      55          return ret;
> >>      56  }
> >>      57
> > I think that this report is a false positive or I missed something?
> >
> Sorry for the inconvenience, but we confirmed that the error first
> appeared since commit 0096214a59.

Hi Rong,

Err... I continue to not understand the meaning of this warning. If
override !=3D -1 then ret is not constant, isn't?

-- =

J=E9r=F4me Pouiller

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

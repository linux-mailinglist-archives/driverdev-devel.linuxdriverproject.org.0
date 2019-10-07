Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A76A6CDD6D
	for <lists+driverdev-devel@lfdr.de>; Mon,  7 Oct 2019 10:36:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 31D3F86FDE;
	Mon,  7 Oct 2019 08:36:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dqdi6QMyhd4z; Mon,  7 Oct 2019 08:36:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 66ECF870F6;
	Mon,  7 Oct 2019 08:36:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7E8061BF85D
 for <devel@linuxdriverproject.org>; Mon,  7 Oct 2019 08:36:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7897E85AD6
 for <devel@linuxdriverproject.org>; Mon,  7 Oct 2019 08:36:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oLsJjfkKcdT3 for <devel@linuxdriverproject.org>;
 Mon,  7 Oct 2019 08:36:25 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
 (mail-eopbgr770045.outbound.protection.outlook.com [40.107.77.45])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2F2B185540
 for <devel@driverdev.osuosl.org>; Mon,  7 Oct 2019 08:36:25 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gznD189lkAX7X/jHwOt6w+cO4zyliX9MA6N+COP3BYyUE7cwHKBs2pYQceYa3XQ+ff2oeo4lFeZglP1ew+spDemPXMoosbNk9buCfSe8zmnj+r2FC+vfqyT5JhnTYPy85KfRaBdGi5BGYg00LSCfW1GYomZJtIubL/T0AQLFRr6YYYXQDfpPfoxeHuIW3aluAfboBBCcnD9s4NItfSmFFN8y5dCVsHg2NHB4DzuzGkdHBiAESLnAIziTwlrcc1nOO3YVN+pTGOrgE4+/5VzzQ0gZxOhhd8AH6EvbtoyZ3q5g8ALF5AkAgYsxjTt19p5oWMFnqBQsFotUGuDzeCI0Xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2c5mbpuWkUpcfRyZzpC6mi7WKdz6uMZvezpwrC5gwwk=;
 b=Qo0roPi8Fl669va0V4DsV62rdW4ohq08SFnSNUKWIJJ+7C1lRPDZMlZJHfuni9l4tnAadP2rxo7v5iaaQRlkbzCj7uBmP2kYOH3LMvwp7Bh5v3Sgcgb78Fmu27QUjS7Wr2/DNat9Bo+yhn69HQrVLveCGYMnO9aG9iKvXW122vmE7Og3aWrfPoD3pHD2WsNFWeyubvJiHZAeS56rgmanhCR6gHkU1MsXlMo982utkxo8L002MNRbg+PMlqwH4Sc6zUyCgsy+1B/TgRsISYLMsAEJlTSfbNT7TCDc5BGuEckc2D9yP+dyEuCApCLhpqFTxfEZz5TrIGM473yYVdAc+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2c5mbpuWkUpcfRyZzpC6mi7WKdz6uMZvezpwrC5gwwk=;
 b=F10DO7iYBhOHHPhiH6BVxUcV3x/qZFwJxObT1S2NZPXo4PiTnbzU9NKoOfs4MOTozl7Mx17xsYN5bNhCGxZF/ApSnehg/QXVzD0TfYHS+zdXl22Qo473jP9RhuWuof5o6Yfdc9cKYCy3ac3dBQxNlU/PeU3Crk8FowfjMEmfUso=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB4046.namprd11.prod.outlook.com (20.179.151.29) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2327.24; Mon, 7 Oct 2019 08:36:23 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::ac8c:fc55:d1e2:465f]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::ac8c:fc55:d1e2:465f%5]) with mapi id 15.20.2327.023; Mon, 7 Oct 2019
 08:36:23 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: kbuild test robot <lkp@intel.com>
Subject: Re: [staging:staging-testing 41/59]
 drivers/staging/wfx/main.c:47:14-21: ERROR: PTR_ERR applied after
 initialization to constant on line 42
Thread-Topic: [staging:staging-testing 41/59]
 drivers/staging/wfx/main.c:47:14-21: ERROR: PTR_ERR applied after
 initialization to constant on line 42
Thread-Index: AQHVeqFDwv+/a87VbUq/WCHCQpG3qadO31SA
Date: Mon, 7 Oct 2019 08:36:22 +0000
Message-ID: <3767201.AobC1b7GVW@pc-42>
References: <201910041809.W4MyUT1q%lkp@intel.com>
In-Reply-To: <201910041809.W4MyUT1q%lkp@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jerome.Pouiller@silabs.com; 
x-originating-ip: [37.71.187.125]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 51485211-05ec-4fbc-262c-08d74b016f5d
x-ms-traffictypediagnostic: MN2PR11MB4046:
x-microsoft-antispam-prvs: <MN2PR11MB40460C247DF423107D40C9B6939B0@MN2PR11MB4046.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:538;
x-forefront-prvs: 01834E39B7
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(7916004)(39850400004)(396003)(136003)(346002)(376002)(366004)(199004)(189003)(51444003)(99286004)(476003)(66066001)(7736002)(5660300002)(6916009)(86362001)(81156014)(8936002)(8676002)(66574012)(81166006)(305945005)(25786009)(14454004)(478600001)(76176011)(26005)(102836004)(6506007)(11346002)(446003)(486006)(9686003)(14444005)(186003)(229853002)(256004)(66946007)(71190400001)(71200400001)(6486002)(6436002)(6116002)(76116006)(66476007)(64756008)(66446008)(91956017)(3846002)(66556008)(2906002)(6246003)(4326008)(33716001)(316002)(6512007)(54906003)(39026011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4046;
 H:MN2PR11MB4063.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hQ43EfbIYgP5PsyPtbdohE7je/xagEaAcgZyHGPRj9c75v+tOAQ+AV0/79ELwmt2cDm3P3G07ZG+8wDFaE42llIVK9AgiU+E2v0ldY4gIqzOdasenX6fRPOxgzMo3Pc1YwlXfZoEXVdmx4zK9aF/ITl4Ia6G2x0SZO2ERDgsVzbuse6plzVqgdOyuTC1vRXC2CcqyF8hUIL1OYoalMPcni0fcnP0AFuuh2MKpaoAc36emMtZ9gGRH9UOherN0psDjZgk5QBiXnGuxBGQcc6MtYTWwNdYKZzqE+UGSJwKmuzMgVMNu7J4QUQXBEJTNK4ofgmw/QyQpmZTwHR2K/u2Bu3BRutnLdtGjqsL72/I1dlK4beY10AKttLomV+J2qM5poyWso5ayF65+7nlMO1nWQ1JNpPeAsv7YSI/FlQnpT4=
x-ms-exchange-transport-forked: True
Content-ID: <FF56347D1054184E866DE32D0505554B@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 51485211-05ec-4fbc-262c-08d74b016f5d
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Oct 2019 08:36:22.8462 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xbtdZ6i2zjmKMrqqlr/wp2zXOQnEKM/zoyt9bS63VB7l81wn4+o044nnAO+6kQ5hgoH2oarqUF84mMgjWvxbgA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4046
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

On Friday 4 October 2019 12:48:32 CEST kbuild test robot wrote:
[...]
> >> drivers/staging/wfx/main.c:47:14-21: ERROR: PTR_ERR applied after init=
ialization to constant on line 42
> =

> vim +47 drivers/staging/wfx/main.c
> =

>     30
>     31  struct gpio_desc *wfx_get_gpio(struct device *dev, int override, =
const char *label)
>     32  {
>     33          struct gpio_desc *ret;
>     34          char label_buf[256];
>     35
>     36          if (override >=3D 0) {
>     37                  snprintf(label_buf, sizeof(label_buf), "wfx_%s", =
label);
>     38                  ret =3D ERR_PTR(devm_gpio_request_one(dev, overri=
de, GPIOF_OUT_INIT_LOW, label_buf));
>     39                  if (!ret)
>     40                          ret =3D gpio_to_desc(override);
>     41          } else if (override =3D=3D -1) {
>   > 42                  ret =3D NULL;
>     43          } else {
>     44                  ret =3D devm_gpiod_get(dev, label, GPIOD_OUT_LOW);
>     45          }
>     46          if (IS_ERR(ret) || !ret) {
>   > 47                  if (!ret || PTR_ERR(ret) =3D=3D -ENOENT)
>     48                          dev_warn(dev, "gpio %s is not defined\n",=
 label);
>     49                  else
>     50                          dev_warn(dev, "error while requesting gpi=
o %s\n", label);
>     51                  ret =3D NULL;
>     52          } else {
>     53                  dev_dbg(dev, "using gpio %d for %s\n", desc_to_gp=
io(ret), label);
>     54          }
>     55          return ret;
>     56  }
>     57

I think that this report is a false positive or I missed something?

-- =

J=E9r=F4me Pouiller
-- =

J=E9r=F4me Pouiller

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

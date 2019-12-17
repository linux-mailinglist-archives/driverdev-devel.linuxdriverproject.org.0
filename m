Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 684EA122969
	for <lists+driverdev-devel@lfdr.de>; Tue, 17 Dec 2019 12:01:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CB7D4204F3;
	Tue, 17 Dec 2019 11:01:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OKR8UrBqKPik; Tue, 17 Dec 2019 11:01:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2B833204C2;
	Tue, 17 Dec 2019 11:01:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5BBE71BF34F
 for <devel@linuxdriverproject.org>; Tue, 17 Dec 2019 11:01:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 54B8D87918
 for <devel@linuxdriverproject.org>; Tue, 17 Dec 2019 11:01:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ElfGue5QkGuO for <devel@linuxdriverproject.org>;
 Tue, 17 Dec 2019 11:01:45 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam12on2063.outbound.protection.outlook.com [40.107.243.63])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3B7A887475
 for <devel@driverdev.osuosl.org>; Tue, 17 Dec 2019 11:01:45 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CBK6egodDM8heHFHSPoV/U/8CBgdvJJHu0afOZ+EGqfmz2lRbFBBrQAKuQhe0o4UjsQkIM2YN8W+OCN6vsGhi52Zp20mmHcJKKQWA4u/W9Px1DQYlDBq82JJqCzcFH2Im6oGEoYi6rm35Jd6A9BA+job7jQLbtcQ897Fz38HP2jj9s8EaYiGhCKKniaMgnd7lNX7T3XOvWoex9D0cHfHaJ6okySzLa4UZh7cacZxkS3gMgErau1wniHbUtXuTZOkvVYucRRnhn42xuNXnQ8rbnWPV2lAEBDI5gb7kCD0t/Z2WNGK2VAeMVFSHVEFyhqoDfw3G/WnuQh50wIwMUNWYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8TbthLPrlbPDnOfoKDUmoVo9r0/Jb+RMoq4uT+F2PJQ=;
 b=ZWjZu1Tq/cq8W/jjSuwGhbiw+dJiNn0j/ZEZ7biE9hMG+/9GPM3OeGQvbigdeYdmsaIYYRolgKFOL+bC+4IbJZdmTWlckX+e0A6DViiTxczg/52oEEdza/FrzmvxRkDHHF+M8TxYbxTTtdWo30XoZodVmHtcjBU9r+OIeBpFdnCxanIZdiHgoTHBVlw+OkT8UDuAObmc9rl8fVdYeBrvM4UUk9Wq5oJ/mt2cCZJ54jrk3Y8rU7lEBUpyoA+//YphrukVP69xZqei/VS3Cwv6m3AyxquDmvKP8ruxkgFg72VRis0W0/2IJxbu48mN/wEAoSl/GDd++oKRdFJLQBkLww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8TbthLPrlbPDnOfoKDUmoVo9r0/Jb+RMoq4uT+F2PJQ=;
 b=OWsgohQO0YjGGiCj/PUDnIkrw+TUGf3hQRFNNq80e/706xm4BeWlsPVabh30rN8vZJKiRY+8m+g6TjNSa90qaHHFjr7pCtBcD+oqYZT1fArQ5SHzJeBcvU6pZjOflPBv21A04ecLlC2GxWqEwpzoOxDgUzBHqtGGyUHs+JVIph0=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB4461.namprd11.prod.outlook.com (52.135.39.93) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.17; Tue, 17 Dec 2019 11:01:43 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf%4]) with mapi id 15.20.2538.019; Tue, 17 Dec 2019
 11:01:43 +0000
From: =?iso-8859-1?Q?J=E9r=F4me_Pouiller?= <Jerome.Pouiller@silabs.com>
To: Felix Fietkau <nbd@nbd.name>
Subject: Re: [PATCH 07/55] staging: wfx: ensure that retry policy always
 fallbacks to MCS0 / 1Mbps
Thread-Topic: [PATCH 07/55] staging: wfx: ensure that retry policy always
 fallbacks to MCS0 / 1Mbps
Thread-Index: AQHVtDLBov0Pg1nqV0CYOt2kPrSx7ae9D0mAgAEbCoA=
Date: Tue, 17 Dec 2019 11:01:42 +0000
Message-ID: <3755885.sodJc2dsoe@pc-42>
References: <20191216170302.29543-1-Jerome.Pouiller@silabs.com>
 <20191216170302.29543-8-Jerome.Pouiller@silabs.com>
 <0777ef33-e1f4-148a-40cb-cfe7b42d5364@nbd.name>
In-Reply-To: <0777ef33-e1f4-148a-40cb-cfe7b42d5364@nbd.name>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jerome.Pouiller@silabs.com; 
x-originating-ip: [37.71.187.125]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6d9de33d-b94e-4191-6261-08d782e08028
x-ms-traffictypediagnostic: MN2PR11MB4461:
x-microsoft-antispam-prvs: <MN2PR11MB446105737698AAEDD37D38DC93500@MN2PR11MB4461.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 02543CD7CD
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(7916004)(136003)(366004)(376002)(346002)(39850400004)(396003)(199004)(189003)(6506007)(71200400001)(316002)(91956017)(76116006)(66556008)(33716001)(66476007)(66446008)(6916009)(64756008)(54906003)(478600001)(66946007)(26005)(6486002)(9686003)(6512007)(81166006)(66574012)(5660300002)(8936002)(86362001)(81156014)(4326008)(2906002)(186003)(53546011)(4001150100001)(8676002)(39026012);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4461;
 H:MN2PR11MB4063.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PRrE5Zn3tL0UaGSnqbrqKw0dWcIzTq13dezNXTbuet93gUYtk9pgfN88PLO+LTSoQBhfqqP2iq1mUmTrVSnv+itAKvnpSMlUjIwH0PTHCJrp20L9RwNc/1fJ/KG0tj3I54FV101LA4G7TbQo0tPeO1i8zIU1V3b9WKrp1iqlXUQtYmxhvuOKnuwsQ2q7ekD78M0tS02V5C2EzOJ7CWqioma9zGb5Kl/sUJiFihKQBRLa3dpx9Lie5fOJVRgz1MyFR49KXz9lxArgDSrWDRUkb9exfxnp0p+1CbPWsTluk27xNddSDeszTbSgNnlDb9UfvXad0Cklmdb/0Xh5+/naH43BH6nh2qoj7fdDPJP9YxfLU4iLf5TmKTvSUMZ0vuLf7hL4e/OLDMN9XIGiok1CanvXKuLcEqEXtB4Mbv4oJZtAmh5SLVP2jRhRqFaukRJxtetAnK+Gs99/AFvxQcNIcUT0xie+4CuVuHp3lzuExOi8pbzIUUi30gIr1yka2a+8
x-ms-exchange-transport-forked: True
Content-ID: <1D0704F34739504DB32815630A19F424@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d9de33d-b94e-4191-6261-08d782e08028
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Dec 2019 11:01:42.8181 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ABHEEATnkS2RafS72jTmvMb62lGw56SdI77944eyNmuN97xPNY9OmlJkGnhS34B+83pF4OQZOXFHHlZ8TDnAtw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4461
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
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Monday 16 December 2019 19:08:39 CET Felix Fietkau wrote:
> On 2019-12-16 18:03, J=E9r=F4me Pouiller wrote:
> > From: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> >
> > When not using HT mode, minstrel always includes 1Mbps as fallback rate.
> > But, when using HT mode, this fallback is not included. Yet, it seems
> > that it could save some frames. So, this patch add it unconditionally.
> >
> > Signed-off-by: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> Are you sure that's a good idea? Sometimes a little packet loss can be
> preferable over a larger amount of airtime wasted through using really
> low rates. Especially when you consider bufferbloat.

Hello Felix,

I have observed that, in some circumstances, TCP throughput was far =

better with 802.11g than with 802.11n. I found that 802.11n had more Tx =

failures. These failures have big impacts on the congestion window. When =

the congestion window is low, it impacts the capacity of aggregation of =

the link. Thus, it does not help to improve the congestion windows.

By investigating deeper, it appears that the minstrel (used by 802.11g)
always add rate 1Mbps to the rate list while minstrel_ht (used by
802.11n) don't (compare minstrel_update_rates() and
minstrel_ht_update_rates()). This difference seems to be correlated to
the difference of TCP throughput I can observe.

I did some search in git history and I did not find any explanation for =

this difference between minstrel and minstrel_ht (however, it seems you =

are the right person to ask :) ). I didn't find why it would be
efficient on minstrel and inefficient on minstrel_ht. And since this
change fix the issue that I observed, I have tried to apply it and wait
for feedback.

-- =

J=E9r=F4me Pouiller

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

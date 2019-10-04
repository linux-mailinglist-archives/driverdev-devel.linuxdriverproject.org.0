Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C08E9CC105
	for <lists+driverdev-devel@lfdr.de>; Fri,  4 Oct 2019 18:45:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 08DEF878ED;
	Fri,  4 Oct 2019 16:45:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 52sGp4DLv01c; Fri,  4 Oct 2019 16:45:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 11E0985CB8;
	Fri,  4 Oct 2019 16:45:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EA4741BF368
 for <devel@linuxdriverproject.org>; Fri,  4 Oct 2019 16:45:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D92F187CA3
 for <devel@linuxdriverproject.org>; Fri,  4 Oct 2019 16:45:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U7Mkv27y1+dK for <devel@linuxdriverproject.org>;
 Fri,  4 Oct 2019 16:45:34 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM01-BY2-obe.outbound.protection.outlook.com
 (mail-eopbgr810077.outbound.protection.outlook.com [40.107.81.77])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C227F878B4
 for <devel@driverdev.osuosl.org>; Fri,  4 Oct 2019 16:45:34 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AgMIkM9lQoj57oD8GGitQpWKWto6pkrxUHGon7mEbXD/qAJjiZdCBeuuphbg9gIKLikWcltX4K2HxoC9nEKNn+jqKZU49BU8WDre8fs+tYuU7xB8j01NTwy2UubYBFeQDsI3QEHyCJxgz8IIBQJj4yLhEFJZh50a07zEgQlWSEkdTV/BxLNvalS+NkKKVEons3ueyCB1IEonYjVh5ot1/PtqUuxhjvK1biK48pzEAyZgnfZz7pkfJ91xd6gQ5T49mICa0/ynk/fiELF08TjESSuPjsr0yeiU8v9rqvHHy+0KrmM3B9lxjm8Tc/uyfXKTpoj7e0+NaHm9Iwi/Ih0VcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=knXC7aISL3t0eoULpsN5z/wzfE50kJ7E690qjOB20cM=;
 b=R3hhpD3JOCmD0FQbsZKEPkC1U+d51W5eV5wWCDlC+HzZ8W6Q2VIslsJxUs927diDaXyGAoLcoA6B7vUwaukdsJQPIyPXk0q+fLJB6PS8HmXOKYwaIrgbzQDEDkqNcqD4IMs1YuvaNdHH5+wHGylQ7qLG/uNIgxVU4h2Zdxv5YY+x9tK9Q0r+r2ylvwgJytBIltZR677cbXTqqkfnxCEiJJTUj94ha0L5I65ZsM7o8L+bbR/zTqygurXSn7LEx44qZTIhjEW4MhyNuOCxNkSWP/WleUCgK+DP0uHrcJOUgwoNaxvfUkpuFK7cTdAk4t3R5dsl6oskN3Z80ByqNhb5eg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=knXC7aISL3t0eoULpsN5z/wzfE50kJ7E690qjOB20cM=;
 b=jlXcI6BDUBtP/UlOHq+8oPO+mBZDnYV//US4OMeJ76X4s+HEFuOKbc0g8gW6q4QY135wGPD5EPUBNioDQsX0fgAOvPWz4jSWhGZ+fp9RadSnjGgp1S1Q2IRkpCxryzLafBZhwAdx8tUBAxezQBmWHxgtJvxLv+2Orow2yWv3t6U=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB3743.namprd11.prod.outlook.com (20.178.253.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.20; Fri, 4 Oct 2019 16:45:33 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::ac8c:fc55:d1e2:465f]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::ac8c:fc55:d1e2:465f%5]) with mapi id 15.20.2305.023; Fri, 4 Oct 2019
 16:45:32 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Subject: Re: [staging:staging-testing 50/59]
 drivers/staging/wfx/hif_tx.c:53:2-8: preceding lock on line 38 (fwd)
Thread-Topic: [staging:staging-testing 50/59]
 drivers/staging/wfx/hif_tx.c:53:2-8: preceding lock on line 38 (fwd)
Thread-Index: AQHVeqVrA/H5WargxEuof3bvCj/8KadKsHuA
Date: Fri, 4 Oct 2019 16:45:31 +0000
Message-ID: <1627155.rAfr8t8Vmh@pc-42>
References: <alpine.DEB.2.21.1910041317381.2992@hadrien>
In-Reply-To: <alpine.DEB.2.21.1910041317381.2992@hadrien>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jerome.Pouiller@silabs.com; 
x-originating-ip: [37.71.187.125]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 10607e9a-f88b-4c35-7e4d-08d748ea45fd
x-ms-traffictypediagnostic: MN2PR11MB3743:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <MN2PR11MB3743CB1E61425BFBC22FEA36939E0@MN2PR11MB3743.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:644;
x-forefront-prvs: 018093A9B5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(979002)(7916004)(346002)(136003)(396003)(366004)(39850400004)(376002)(189003)(199004)(76176011)(14454004)(478600001)(14444005)(6306002)(6512007)(9686003)(66476007)(66556008)(64756008)(66446008)(5660300002)(66946007)(8936002)(6916009)(256004)(186003)(316002)(86362001)(33716001)(66574012)(71200400001)(486006)(7736002)(81156014)(81166006)(66066001)(54906003)(99286004)(229853002)(966005)(6506007)(26005)(8676002)(6246003)(6436002)(91956017)(76116006)(3846002)(6116002)(11346002)(476003)(4326008)(102836004)(446003)(305945005)(25786009)(2906002)(71190400001)(6486002)(39026011)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3743;
 H:MN2PR11MB4063.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: AYbWcq2zrRQWfjRN6WX29nE3JCN5wDfBsggpOCOLrLZJAyCaAcYnRxm7L51mw0S5mwGGJb2oGEDduc7xl5XoNySydJ2oA8ppBpfITtvcoP5FOu/bzMHoi2WXxfuePdKnQbq1ZekmMV26pZGZ/KjSfr3J/K9bIWXmVFcjMPaRzq9B8nuImnRZZ0DDQBdE4MGXqWF3QxRNLim93ebTbkp26jxVZ3xnq+cw3mClKn2gREaI/1L6iO3f+Wdn9X5QPS4UvyeURMdoanJXCftlgirbrw/i5BZGvIGTI2osZTTePInapHBgj7rlxcnEhjWWI0tJ90Up8fIp6+KsJyo4Fl9AmiXuVqRKdc4SSdxiX/xqPfjTYk9Or+AETxfw6iL/Vk2MyErRh234tiMbhfyE+e+cppx8A6a39O0g3XlKbbxiJ6kqrWfwAxii6Ji83LloiOEG+jCPd/RNlfrCtkuvFEr6Tw==
x-ms-exchange-transport-forked: True
Content-ID: <524F705312BF1D4EBCDF543A160D811E@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 10607e9a-f88b-4c35-7e4d-08d748ea45fd
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Oct 2019 16:45:32.2896 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vNgWY23lyMf0gHnb3qUESnmq0Y1tPCnIIhGBxdfr+qc9unKTR///rTF5eUACUd1sMuN6hzHNai2PJ4xwP9qPPA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3743
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

On Friday 4 October 2019 13:18:16 CEST Julia Lawall wrote:
> Hello,
> =

> Is an unlock needed on line 53?
> =

> julia
> =

> ---------- Forwarded message ----------
> Date: Fri, 4 Oct 2019 19:14:33 +0800
> From: kbuild test robot <lkp@intel.com>
> To: kbuild@01.org
> Cc: Julia Lawall <julia.lawall@lip6.fr>
> Subject: [staging:staging-testing 50/59] drivers/staging/wfx/hif_tx.c:53:=
2-8:
>     preceding lock on line 38
[...]
> # https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git/comm=
it/?id=3D4f8b7fabb15df3658564a98971fc67029be1815d
> git remote add staging https://git.kernel.org/pub/scm/linux/kernel/git/gr=
egkh/staging.git
> git remote update staging
> git checkout 4f8b7fabb15df3658564a98971fc67029be1815d
> vim +53 drivers/staging/wfx/hif_tx.c
> =

[...]
> 4f8b7fabb15df3 J=E9r=F4me Pouiller 2019-09-19 @38   mutex_lock(&wdev->hif=
_cmd.lock);
[...]
> 4f8b7fabb15df3 J=E9r=F4me Pouiller 2019-09-19  51   // NOTE: no timeout i=
s catched async is enabled
> 4f8b7fabb15df3 J=E9r=F4me Pouiller 2019-09-19  52   if (async)
> 4f8b7fabb15df3 J=E9r=F4me Pouiller 2019-09-19 @53           return 0;

Hello Julia,

No, when async is enabled, unlock is done in hif_generic_confirm()
(hif_rx.c:53).

Note that async is never true in current driver code. Indeed, it implies
to unlock mutex from a different context and lockdep does not seem
to like that.

-- =

J=E9r=F4me Pouiller

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

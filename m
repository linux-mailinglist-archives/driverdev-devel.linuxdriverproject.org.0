Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 202D8671AD
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Jul 2019 16:51:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 10181876EB;
	Fri, 12 Jul 2019 14:51:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I-RfKd3PLfD8; Fri, 12 Jul 2019 14:51:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 12D48874E9;
	Fri, 12 Jul 2019 14:51:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 602FD1BF2BD
 for <devel@linuxdriverproject.org>; Fri, 12 Jul 2019 14:51:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5C0E085DE0
 for <devel@linuxdriverproject.org>; Fri, 12 Jul 2019 14:51:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VxYekxw93e-h for <devel@linuxdriverproject.org>;
 Fri, 12 Jul 2019 14:51:29 +0000 (UTC)
X-Greylist: delayed 01:18:10 by SQLgrey-1.7.6
Received: from NAM05-BY2-obe.outbound.protection.outlook.com
 (mail-eopbgr710077.outbound.protection.outlook.com [40.107.71.77])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 92FA6816DC
 for <devel@driverdev.osuosl.org>; Fri, 12 Jul 2019 14:51:16 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nduMvQ4iCW8DZgimi7uQUcdOZLNvp59Bo6WRYDBHss/mDgCsM+QXJIvgu8btH0QF++GdYW84AI3XsjR06EcMGGUmOaFDl4Adhda+yEbxLelaH3FiMJh2dK9ONOKIUSRIytSyKiMa4QuaKEdV70yVJJi4IZy4G/NB7JitcJ3+/UlhsnvPUdwoFt8CUhDxosHRR72CR9sGmfzhdgLBzNLEDe2n2tiUqPGrOcDujnIOBOfvP4ycTSy8e9GP0wndpAdglXOCrjzkP6HjKOXOq4MTQ2iqi/ssiouqwW5F3g1yFUkB0Gv/USJ1PE++SUUGmmW7MmwpswDFdh+0+z334HIRGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MWoXk/DXnocxMRQgklS74GS/rH7Jcy6cJDCrASOI9KM=;
 b=P9mN67+GT3K53vkJeoinS1S/Jc/AhkKmmHY9iQIW/EG7851UovLnVPLeVmU+uqTajFphUyF3WgmtgPpjLRq9UzmMNLYhJhwHw6NbyQW3x77aOPVYP29MNpR/TzCR41R+yBz7DNbceYwciqav8dnqVGpPagYuRTBapP/TcsSynbvdlXiE7ljGBTrTLcbcfIo+YhldHHZkXIThz2TssdqQiLIIafQ/Ipw5cNJP82Ygh3tWuQXh5UiVbOhsDQW+ZKSF6A0BpYRz+ydY19TnhcPb09UEUGV8CHMFovOEa4tIrg9HLRRSkopNQxJc6i2vBfPFxLhl8bHM0cWTpWVGe1qQbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=vmware.com;dmarc=pass action=none
 header.from=vmware.com;dkim=pass header.d=vmware.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vmware.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MWoXk/DXnocxMRQgklS74GS/rH7Jcy6cJDCrASOI9KM=;
 b=bICylbc6pG5bUBIiaVbYT6xLPk6+narjw2FQqTL5VyTDUj50dLp1ipI8DMrK8oNu6c3qhOlUS5nR0kM5+4paWugZNOI6RbhmpGODe+VaOw88BaCinsFc+U84QFitiiTfjgJkqF+C2+SNXo98bT0Vj26dyuPS5ypmGCU/9fFwqFE=
Received: from MN2PR05MB6208.namprd05.prod.outlook.com (20.178.241.91) by
 MN2PR05MB6719.namprd05.prod.outlook.com (20.178.249.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.3; Fri, 12 Jul 2019 13:17:45 +0000
Received: from MN2PR05MB6208.namprd05.prod.outlook.com
 ([fe80::301b:150c:dc88:7d04]) by MN2PR05MB6208.namprd05.prod.outlook.com
 ([fe80::301b:150c:dc88:7d04%6]) with mapi id 15.20.2094.007; Fri, 12 Jul 2019
 13:17:45 +0000
From: Ajay Kaher <akaher@vmware.com>
To: "aarcange@redhat.com" <aarcange@redhat.com>, "jannh@google.com"
 <jannh@google.com>, "oleg@redhat.com" <oleg@redhat.com>, "peterx@redhat.com"
 <peterx@redhat.com>, "rppt@linux.ibm.com" <rppt@linux.ibm.com>,
 "jgg@mellanox.com" <jgg@mellanox.com>, "mhocko@suse.com" <mhocko@suse.com>
Subject: Re: [PATCH v5 0/3] [v4.9.y] coredump: fix race condition between
 mmget_not_zero()/get_task_mm() and core dumping
Thread-Topic: [PATCH v5 0/3] [v4.9.y] coredump: fix race condition between
 mmget_not_zero()/get_task_mm() and core dumping
Thread-Index: AQHVL/h+GI4Pt8Sp2UWWD50ZJ8kpwqbHZHEA
Date: Fri, 12 Jul 2019 13:17:45 +0000
Message-ID: <77C72259-6378-4161-952D-D94D7412D85C@vmware.com>
References: <1562005928-1929-1-git-send-email-akaher@vmware.com>
 <1562005928-1929-4-git-send-email-akaher@vmware.com>
In-Reply-To: <1562005928-1929-4-git-send-email-akaher@vmware.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=akaher@vmware.com; 
x-originating-ip: [103.19.212.1]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e33fffbb-a3e4-4774-2bcd-08d706cb544f
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MN2PR05MB6719; 
x-ms-traffictypediagnostic: MN2PR05MB6719:
x-ld-processed: b39138ca-3cee-4b4a-a4d6-cd83d9dd62f0,ExtAddr
x-microsoft-antispam-prvs: <MN2PR05MB67190F364AA0312F75CC8ABABBF20@MN2PR05MB6719.namprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 00963989E5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(39860400002)(366004)(396003)(376002)(199004)(189003)(2201001)(54906003)(6506007)(71200400001)(71190400001)(66446008)(64756008)(66556008)(66476007)(66946007)(7416002)(4744005)(4326008)(110136005)(6116002)(3846002)(76116006)(91956017)(5660300002)(2501003)(6246003)(486006)(53936002)(8676002)(102836004)(76176011)(66066001)(25786009)(6512007)(86362001)(36756003)(11346002)(68736007)(33656002)(2906002)(229853002)(476003)(446003)(2616005)(81156014)(8936002)(186003)(81166006)(26005)(6486002)(14454004)(6436002)(256004)(7736002)(316002)(305945005)(478600001)(99286004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR05MB6719;
 H:MN2PR05MB6208.namprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: vmware.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: QdPkjnJdIhMnKYPyPqHJjX0qtSvUhVXY2PNr6QxoTVXr+COKCTyPNeV9aflYELRtHlgWVqzWQTlxPotmdbspj5wdVQq8AJQzwkVPOVpBa8ATN1/FgrLmpGcqKnWlVBBf5qWKaQPmNzFsEk1NJJx5iWClmpvH/Iyntbccv4Q16tyGuEwtLLybFFetksoV8MotR33nirXQ+A2Ch26gSx23eVw147Clpxlkb6QVqk7XWzOlxUWNc1YIzvRKbWQaKCzH+dKH00G9x3xCc4KlA6VdKo4wnxGn4+i/TxCV4t6cxq+Bkwo40qzT6rLDWdT+9uqoA8QqT62HS+UXCmM+OP4gADep20QDg/0Y7J0R0bOUU006Qq6hOUW/WpgUQQsOjIPHy4EqESY6GhIW9ZQBNrLkYSaN2W+rXrEkj7sQzVyiCGY=
Content-ID: <4184F8DE6E30494DA75193C8ACF308A5@namprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: vmware.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e33fffbb-a3e4-4774-2bcd-08d706cb544f
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jul 2019 13:17:45.4689 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b39138ca-3cee-4b4a-a4d6-cd83d9dd62f0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: akaher@vmware.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR05MB6719
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 Alexey Makhalov <amakhalov@vmware.com>,
 "sean.hefty@intel.com" <sean.hefty@intel.com>,
 "srivatsa@csail.mit.edu" <srivatsa@csail.mit.edu>,
 Srivatsa Bhat <srivatsab@vmware.com>,
 "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
 "dledford@redhat.com" <dledford@redhat.com>,
 "riandrews@android.com" <riandrews@android.com>,
 "hal.rosenstock@gmail.com" <hal.rosenstock@gmail.com>,
 Vasavi Sirnapalli <vsirnapalli@vmware.com>,
 "leonro@mellanox.com" <leonro@mellanox.com>,
 "jglisse@redhat.com" <jglisse@redhat.com>,
 "viro@zeniv.linux.org.uk" <viro@zeniv.linux.org.uk>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "yishaih@mellanox.com" <yishaih@mellanox.com>,
 "matanb@mellanox.com" <matanb@mellanox.com>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 "arve@android.com" <arve@android.com>,
 "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>,
 "torvalds@linux-foundation.org" <torvalds@linux-foundation.org>,
 "mike.kravetz@oracle.com" <mike.kravetz@oracle.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

R3JlZywgSSBob3BlIHlvdSB3b3VsZCBsaWtlIHRvIGluY2x1ZGUgdGhlc2UgcGF0Y2hlcyBpbiBu
ZXh0IHJlbGVhc2UuDQpJbiBjYXNlIGFueSByZXZpZXcgY29tbWVudCBwbGVhc2UgbGV0IG1lIGtu
b3cuDQoNCi0gQWpheQ0KDQoNCu+7v09uIDAxLzA3LzE5LCA0OjAzIFBNLCAiQWpheSBLYWhlciIg
PGFrYWhlckB2bXdhcmUuY29tPiB3cm90ZToNCg0KPiBjb3JlZHVtcDogZml4IHJhY2UgY29uZGl0
aW9uIGJldHdlZW4gbW1nZXRfbm90X3plcm8oKS9nZXRfdGFza19tbSgpDQo+IGFuZCBjb3JlIGR1
bXBpbmcNCiAgICANCj4gW1BBVENIIHY1IDEvM106DQo+IEJhY2twb3J0aW5nIG9mIGNvbW1pdCAw
NGY1ODY2ZTQxZmI3MDY5MGUyODM5NzQ4N2Q4YmQ4ZWVhN2Q3MTJhIHVwc3RyZWFtLg0KICAgIA0K
PiBbUEFUQ0ggdjUgMi8zXToNCj4gRXh0ZW5zaW9uIG9mIGNvbW1pdCAwNGY1ODY2ZTQxZmIgdG8g
Zml4IHRoZSByYWNlIGNvbmRpdGlvbiBiZXR3ZWVuDQo+IGdldF90YXNrX21tKCkgYW5kIGNvcmUg
ZHVtcGluZyBmb3IgSUItPm1seDQgYW5kIElCLT5tbHg1IGRyaXZlcnMuDQogICAgDQo+IFtQQVRD
SCB2NSAzLzNdDQo+IEJhY2twb3J0aW5nIG9mIGNvbW1pdCA1OWVhNmQwNmNmYTkyNDdiNTg2YTY5
NWMyMWY5NGFmYTcxODNhZjc0IHVwc3RyZWFtLg0KICAgIA0KPiBbZGlmZiBmcm9tIHY0XToNCj4g
LSBDb3JyZWN0ZWQgU3ViamVjdCBsaW5lIGZvciBbUEFUQ0ggdjUgMi8zXSwgW1BBVENIIHY1IDMv
M10NCiAgICANCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDov
L2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVy
ZGV2LWRldmVsCg==

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 941621A9922
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Apr 2020 11:41:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5535A87277;
	Wed, 15 Apr 2020 09:41:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y-MqJw4s2GeE; Wed, 15 Apr 2020 09:41:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 153F5863CE;
	Wed, 15 Apr 2020 09:41:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 093D71BF95A
 for <devel@linuxdriverproject.org>; Wed, 15 Apr 2020 09:41:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0154F85F90
 for <devel@linuxdriverproject.org>; Wed, 15 Apr 2020 09:41:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VxMyziJDxMUd for <devel@linuxdriverproject.org>;
 Wed, 15 Apr 2020 09:40:58 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam12on2085.outbound.protection.outlook.com [40.107.243.85])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9C6968508E
 for <devel@driverdev.osuosl.org>; Wed, 15 Apr 2020 09:40:58 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jNzZtv/Ka3UAAFGSNamaPHazGZNkZ7UOGW+gdKcRlbJoaDXEmv4lEAgoxochkbJlVKyk01N2/KenJS3ConarD/E9HSd1MQgm2n+y1+a6abCvi9zgm+mlowUjuJ5gcqBE5mIk54qR8/PgIbnD/ttSgTrmXotEQpYOBj4Wu8Z7cIWW9qCO5YdnkIcZYLZrwrCZVd8Ep9zNkiM5+wd0nY50pxxdGDYXfDajn901y2jdtgSm4YTNXDeE3i5hiwD6tlyjszxIqZsNB2zais6QWIZ5mc2i0zXU9FlSzH1Hr3eN7k8YtipkXQ6+H2smA9VWivsE/e3NHryRoJgFhGt1680RFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uzPM2bFjichi8cmEwIsh3rEQyZSJG5LS9i1D9r5dlLE=;
 b=QkXkLTGQOjmuL3jaVWYF1ZXoaWZTu5wWvpWdLMKqo02jB3YJQEYCr3SAy2vMXDe2mdgOMp+WaxG7Ez/dspTrUl4JYmO978Td1SiEkYhTuqbYL64pneQWSvr6CLzMaTBfjdOY251lBmFvf5H35WojluV3j7uZVhHez0rWykX2W/EdPKknAe4oTRgvnCgp4PZFUjqTWE9bLh7N4qRVo1gr5/IhxelFT8bgiTrfIbM8dl/rFxmGuTH5xGhYG+h9vbpNEUeggfqkM/uahMXOzJ+CTDg3g5xeRZRfIUiEMdvJDt0Fv43P7olOdDUIA9xB2dDqlMm6JzXKx09nwoKeNn6sKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uzPM2bFjichi8cmEwIsh3rEQyZSJG5LS9i1D9r5dlLE=;
 b=fnkdFJ3v+1ia9PrSID7Lyg3Ht5gOZbYO7B75M/EWW1yMMH177EaAKpBfUfpjYQLU2stYAY3Ezh0LDp90wfGWzgwQi34+sUoxH3oq5oigoelcFsglOXZfOXxMt6E2UqQNf5YvwDmgSp+96haptR/2kigOpjD7kOH9ALHt2bFi8LI=
Received: from MWHPR11MB1775.namprd11.prod.outlook.com (2603:10b6:300:10e::14)
 by MWHPR11MB1503.namprd11.prod.outlook.com (2603:10b6:301:f::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.28; Wed, 15 Apr
 2020 09:40:55 +0000
Received: from MWHPR11MB1775.namprd11.prod.outlook.com
 ([fe80::81d5:b62b:3770:ffbe]) by MWHPR11MB1775.namprd11.prod.outlook.com
 ([fe80::81d5:b62b:3770:ffbe%10]) with mapi id 15.20.2921.024; Wed, 15 Apr
 2020 09:40:55 +0000
From: =?iso-8859-1?Q?J=E9r=F4me_Pouiller?= <Jerome.Pouiller@silabs.com>
To: "driverdev-devel@linuxdriverproject.org"
 <driverdev-devel@linuxdriverproject.org>
Subject: Re: [staging:staging-next 127/127] drivers/staging/wfx/bh.c:88:32:
 sparse: warning: restricted __le16 degrades to integer
Thread-Topic: [staging:staging-next 127/127] drivers/staging/wfx/bh.c:88:32:
 sparse: warning: restricted __le16 degrades to integer
Thread-Index: AQHWEkLzL5XihvG5T0WoWxFgh1TM46h4ZhmAgAGJSYA=
Date: Wed, 15 Apr 2020 09:40:55 +0000
Message-ID: <2038274.3UdEj8IezB@pc-42>
References: <202004141712.L6CqySje%lkp@intel.com>
 <20200414101315.GB37302@kroah.com>
In-Reply-To: <20200414101315.GB37302@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jerome.Pouiller@silabs.com; 
x-originating-ip: [82.67.86.106]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 81d538c9-6c4e-4053-0d2e-08d7e1211880
x-ms-traffictypediagnostic: MWHPR11MB1503:
x-microsoft-antispam-prvs: <MWHPR11MB15032B1F1CA389E1F7EF432293DB0@MWHPR11MB1503.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:635;
x-forefront-prvs: 0374433C81
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1775.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(7916004)(136003)(396003)(346002)(39850400004)(376002)(366004)(91956017)(54906003)(64756008)(33716001)(966005)(66946007)(26005)(71200400001)(9686003)(186003)(66476007)(66556008)(66446008)(66574012)(76116006)(6506007)(6916009)(8936002)(2906002)(8676002)(6486002)(81156014)(4326008)(86362001)(316002)(5660300002)(6512007)(478600001)(39026012);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0/4cCoP+SvgD8fCZutdJJYEsh3U5zNgb0HFG4k6LyJf0puGQcVNfu2xZPexfMp4Y0gCbpSZujeoJpugWD+FIgI6OBkzkSf8oLAptuFknzcFrfChceFZFG0yEsIrYtvBm+ss8OpVzPjYmCPixqIlmm3NdCODLEF97bQ7/S6vWB0/ZppGYI+bVHUSmuq9GmUf2zAiLWo9H7pgsulww9cMclMLQ7aqk8y6U9ax08jl/jgq5hYW8IcqsVgNYyCCUI25G5qhRwik9Zg3JL0dAubP+S7ZiEcWtW3PRacWL79jg3ybke9eB/4801wAbmpDna8cML1FtdKgjhmdRnIr1BYBNfEBYfIiymotKViM2KXK1pNsuGxOofVEn42mjv4qtAF2K/2zbg8qVlQLIpiJXnm+fYuSdKcoOGV6EkKsWVwn27XJOFEhCwB8+UvZjjQ1bTzbXUCy1Gyuqs8nxp4GetJfVs9FTNynyvvXuIPtcH3e8q7WzlPZVKdJLdRNviSELF2QJ/BlX9jJ4eB3/9frcDPhsnIr4LQS+ZkMCNE28shRVi4WfmHXuK9vJcuZEm3yTkrk9ri+zbtbzA10ZBNUy1YHyAQ==
x-ms-exchange-antispam-messagedata: Pq5QAzisB23GW28VQpbbKjNshBAt6JivZ1x3Zv5UpP1jbCxHyo7UAtCDwkQji6OPp56jIAl50oitB74orcWbcIfclFM5/9p9BuZW4TjHIVEo6TLQuBY5EyRGUq33Y2Yo1HXMQ2khhLB0+2qkhxnGcw==
x-ms-exchange-transport-forked: True
Content-ID: <B6A457F871999343B9698C3FCC7F1F4D@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 81d538c9-6c4e-4053-0d2e-08d7e1211880
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Apr 2020 09:40:55.6050 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TSK97dmNPCekV9MsJgeMFhIXcnRf7ttNLMtgrxRHMyjo8y2FBtQBVGCmPO1rzeGQMLpFGE/JEQICe/kbq2LgRg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1503
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
Cc: Malcolm Priestley <tvboxspy@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "kbuild-all@lists.01.org" <kbuild-all@lists.01.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tuesday 14 April 2020 12:13:15 CEST Greg Kroah-Hartman wrote:
> On Tue, Apr 14, 2020 at 05:55:15PM +0800, kbuild test robot wrote:
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.=
git staging-next
> > head:   ce920326663b3df22c94ade99a8b234baa6ccaa5
> > commit: ce920326663b3df22c94ade99a8b234baa6ccaa5 [127/127] staging: vt6=
656: formulate rspinf values into tables
> > reproduce:
> >         # apt-get install sparse
> >         # sparse version:
> >         git checkout ce920326663b3df22c94ade99a8b234baa6ccaa5
> >         make ARCH=3Dx86_64 allmodconfig
> >         make C=3D1 CF=3D'-fdiagnostic-prefix -D__CHECK_ENDIAN__'
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kbuild test robot <lkp@intel.com>
> =

> I don't think that the warning you point out here, is caused by the
> patch you say.  Please fix up on the 0-day side...


The warning is probably caused by:

    staging: wfx: fix endianness of hif API

    The chip expects little endian in all structs it sends/receives. This
    patch fixes the hif API to reflect this fact. Sparse should now report
    meaningful errors.

And indeed, Sparse now reports ton of errors :). I am currently working
on these warnings. I hope to provide a patch soon.


-- =

J=E9r=F4me Pouiller

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

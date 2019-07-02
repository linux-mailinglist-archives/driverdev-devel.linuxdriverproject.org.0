Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DEC35CCAA
	for <lists+driverdev-devel@lfdr.de>; Tue,  2 Jul 2019 11:30:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C974886D7A;
	Tue,  2 Jul 2019 09:30:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Phnu3xlyQ5oI; Tue,  2 Jul 2019 09:30:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DD1EE85F4B;
	Tue,  2 Jul 2019 09:30:17 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CCE5C1BF302
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  2 Jul 2019 09:30:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C99C2848ED
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  2 Jul 2019 09:30:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sFzx0Wj5wTtA
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  2 Jul 2019 09:29:58 +0000 (UTC)
X-Greylist: delayed 03:01:00 by SQLgrey-1.7.6
Received: from APC01-HK2-obe.outbound.protection.outlook.com
 (mail-eopbgr1300054.outbound.protection.outlook.com [40.107.130.54])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7223885008
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  2 Jul 2019 09:29:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=teoenmingcorp.onmicrosoft.com; s=selector1-teoenmingcorp-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oDQ56oU+xsiXcPyh2B04xJC6NaFEV4Y+Cy8t7xKGj5U=;
 b=Dci040FKdXkleg7tPl+cHCIk1EkvfWYHCH89lTm1jgdWG02r6Fyjy2Y5hyE6qpjvy9cQCOn0cEykC0qnUF1/BAIhnz63qiV6hY4/NGPOC4xeUPLFEnQUlKTPx0QDHzxSBBCVjCxfgCYYfBk9OHQS4gnSlih772zJS+EKEbDwvDo=
Received: from SG2PR01MB2141.apcprd01.prod.exchangelabs.com (10.170.143.19) by
 SG2PR01MB3470.apcprd01.prod.exchangelabs.com (52.132.232.146) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2032.18; Tue, 2 Jul 2019 09:29:48 +0000
Received: from SG2PR01MB2141.apcprd01.prod.exchangelabs.com
 ([fe80::d503:3d71:ce06:19d2]) by SG2PR01MB2141.apcprd01.prod.exchangelabs.com
 ([fe80::d503:3d71:ce06:19d2%6]) with mapi id 15.20.2032.019; Tue, 2 Jul 2019
 09:29:48 +0000
From: Turritopsis Dohrnii Teo En Ming <ceo@teo-en-ming-corp.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: RE: What device drivers for Linux does this project develop?
Thread-Topic: What device drivers for Linux does this project develop?
Thread-Index: AdUwskSbGSpl0JkuQB2Vy0K/ZYhNrQABdNGAAAAJ5nA=
Date: Tue, 2 Jul 2019 09:29:47 +0000
Message-ID: <SG2PR01MB2141BC4ACDA0472CF4B5FBAE87F80@SG2PR01MB2141.apcprd01.prod.exchangelabs.com>
References: <SG2PR01MB2141506D87714AA856B0DE1587F80@SG2PR01MB2141.apcprd01.prod.exchangelabs.com>
 <20190702092531.GA10692@kroah.com>
In-Reply-To: <20190702092531.GA10692@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=ceo@teo-en-ming-corp.com; 
x-originating-ip: [118.189.211.120]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 000d910d-5cd2-4a2d-5449-08d6fecfd392
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:SG2PR01MB3470; 
x-ms-traffictypediagnostic: SG2PR01MB3470:
x-ms-exchange-purlcount: 4
x-microsoft-antispam-prvs: <SG2PR01MB347080D626B6CCA0EEB6ED7A87F80@SG2PR01MB3470.apcprd01.prod.exchangelabs.com>
x-ms-oob-tlc-oobclassifiers: OLM:1417;
x-forefront-prvs: 008663486A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(366004)(136003)(39830400003)(346002)(376002)(13464003)(189003)(199004)(54906003)(25786009)(305945005)(86362001)(5660300002)(74316002)(68736007)(316002)(52536014)(6916009)(256004)(64756008)(66476007)(66556008)(7736002)(66446008)(66946007)(73956011)(508600001)(76116006)(14454004)(966005)(4326008)(486006)(53546011)(6506007)(71190400001)(71200400001)(53936002)(9686003)(6116002)(8676002)(7696005)(81166006)(81156014)(3846002)(229853002)(186003)(6306002)(102836004)(55016002)(476003)(99286004)(6436002)(6246003)(2906002)(76176011)(66066001)(107886003)(26005)(8936002)(446003)(11346002)(33656002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SG2PR01MB3470;
 H:SG2PR01MB2141.apcprd01.prod.exchangelabs.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: teo-en-ming-corp.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 20J11TdobuU9N+UNU5hEw2MjYZZ3J+qNeL+uOmf+s5xpUxhSkybHkr9sgka3YYS2FGNQhW/EKXoUaOzG3Pi7drE/r10cJwAJ7qhamZvjOMgzY8mHzry9FGlu6GYncy1Q9r6X6w8mlWj8MvRRj6uEI56kC4SfJlzmZ+nhju/dIUFkg+lZ/yT9I3aMMFtGRkZVEkIBc/sCsar7CWCarOiU0cn0/b9Ov1nn2+UUMvu44Hl8ReuC/tgxp9eCw2tqqFesWFq4E96zmBjTZ+HTWFeL4STuuSNlQdGTviVuHHOB8J7Vs3Qwc6p224DHXVqNnpSUQocUhCA2eTWNvOkB5AzjUquglTKTbR9snr8HF/VD9KEzxGbTqjc7Th7EvjJTtVlOCmlOASnFJTPvLV7w9ldMGaOsN5QtbpSG0McDzbz3YKQ=
MIME-Version: 1.0
X-OriginatorOrg: teo-en-ming-corp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 000d910d-5cd2-4a2d-5449-08d6fecfd392
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jul 2019 09:29:47.8862 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 23b3f6ae-c453-4b93-aec9-f17508e5885c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ceo@teo-en-ming-corp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SG2PR01MB3470
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
Cc: "driverdev-devel@linuxdriverproject.org"
 <driverdev-devel@linuxdriverproject.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Greg KH,

My Hauppauge WinTV-HVR-935 HD Tri-Mode TV Stick DVB-T2 TV Tuner in Singapore is currently not supported by Linux.


-----Original Message-----
From: Greg KH <gregkh@linuxfoundation.org> 
Sent: Tuesday, 2 July 2019 5:26 PM
To: Turritopsis Dohrnii Teo En Ming <ceo@teo-en-ming-corp.com>
Cc: driverdev-devel@linuxdriverproject.org
Subject: Re: What device drivers for Linux does this project develop?

On Tue, Jul 02, 2019 at 08:44:14AM +0000, Turritopsis Dohrnii Teo En Ming wrote:
> Good afternoon from Singapore,
> 
> What device drivers for Linux does this project develop?

All taht is needed.  What type of device do you have that Linux currently does not support?

greg k-h

-----BEGIN EMAIL SIGNATURE-----

The Gospel for all Targeted Individuals (TIs):

[The New York Times] Microwave Weapons Are Prime Suspect in Ills of
U.S. Embassy Workers

Link: https://www.nytimes.com/2018/09/01/science/sonic-attack-cuba-microwave.html

********************************************************************************************

Singaporean Mr. Turritopsis Dohrnii Teo En Ming's Academic
Qualifications as at 14 Feb 2019

[1] https://tdtemcerts.wordpress.com/

[2] https://tdtemcerts.blogspot.sg/

[3] https://www.scribd.com/user/270125049/Teo-En-Ming

-----END EMAIL SIGNATURE-----
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

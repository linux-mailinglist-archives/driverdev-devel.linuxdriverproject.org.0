Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 969335CC28
	for <lists+driverdev-devel@lfdr.de>; Tue,  2 Jul 2019 10:44:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A6FBE86AF9;
	Tue,  2 Jul 2019 08:44:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tOUqbxnmqSHn; Tue,  2 Jul 2019 08:44:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id AF0FB868FF;
	Tue,  2 Jul 2019 08:44:24 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 696F51BF860
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  2 Jul 2019 08:44:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 666F620372
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  2 Jul 2019 08:44:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5KfskaKFkuvl
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  2 Jul 2019 08:44:20 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from APC01-SG2-obe.outbound.protection.outlook.com
 (mail-eopbgr1310084.outbound.protection.outlook.com [40.107.131.84])
 by silver.osuosl.org (Postfix) with ESMTPS id 62F841FD21
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  2 Jul 2019 08:44:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=teoenmingcorp.onmicrosoft.com; s=selector1-teoenmingcorp-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nYhdxbezyGzXZ7c5bB9MIqRbmXHhmfJvYnHATZuVhwk=;
 b=nw5buqlYhf9uDJh3UCMd2oB072hDajRJyHtKMb7BM2f79XHrVZ2KiPCPxwkk+zvujb61ZS2Y8Nry9P/D4jGyBcMBoepebOdp1bYRoAQWgf+1fQ6iOHyUuWMKzMkXwNv9L+9Tj16x56jHG0KHb/j7RUyOAajoWVscnMZ1cZYo7Ok=
Received: from SG2PR01MB2141.apcprd01.prod.exchangelabs.com (10.170.143.19) by
 SG2PR01MB2029.apcprd01.prod.exchangelabs.com (52.133.136.145) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2032.20; Tue, 2 Jul 2019 08:44:14 +0000
Received: from SG2PR01MB2141.apcprd01.prod.exchangelabs.com
 ([fe80::d503:3d71:ce06:19d2]) by SG2PR01MB2141.apcprd01.prod.exchangelabs.com
 ([fe80::d503:3d71:ce06:19d2%6]) with mapi id 15.20.2032.019; Tue, 2 Jul 2019
 08:44:14 +0000
From: Turritopsis Dohrnii Teo En Ming <ceo@teo-en-ming-corp.com>
To: "driverdev-devel@linuxdriverproject.org"
 <driverdev-devel@linuxdriverproject.org>
Subject: What device drivers for Linux does this project develop?
Thread-Topic: What device drivers for Linux does this project develop?
Thread-Index: AdUwskSbGSpl0JkuQB2Vy0K/ZYhNrQ==
Date: Tue, 2 Jul 2019 08:44:14 +0000
Message-ID: <SG2PR01MB2141506D87714AA856B0DE1587F80@SG2PR01MB2141.apcprd01.prod.exchangelabs.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=ceo@teo-en-ming-corp.com; 
x-originating-ip: [118.189.211.120]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bcda8491-4b66-4f2a-2e0e-08d6fec97661
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:SG2PR01MB2029; 
x-ms-traffictypediagnostic: SG2PR01MB2029:
x-ms-exchange-purlcount: 4
x-microsoft-antispam-prvs: <SG2PR01MB2029E0E4B475B3AF915F1F9C87F80@SG2PR01MB2029.apcprd01.prod.exchangelabs.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 008663486A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(396003)(346002)(136003)(376002)(39830400003)(199004)(189003)(7696005)(102836004)(476003)(6506007)(53936002)(486006)(2906002)(26005)(8676002)(186003)(9686003)(256004)(6306002)(5640700003)(6436002)(316002)(55016002)(14454004)(107886003)(71190400001)(966005)(2501003)(71200400001)(6916009)(64756008)(4744005)(6116002)(76116006)(3846002)(66446008)(73956011)(66946007)(68736007)(2351001)(66556008)(66476007)(81166006)(33656002)(4326008)(508600001)(99286004)(8936002)(25786009)(5660300002)(81156014)(66066001)(74316002)(305945005)(52536014)(7736002)(86362001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SG2PR01MB2029;
 H:SG2PR01MB2141.apcprd01.prod.exchangelabs.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: teo-en-ming-corp.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: JkvgqZXQMRRBJG1Bm7af1fI+EPUSh9Kl5q0lllyqGJHhmrEw8fIrY0CQWc1kHF1vZbxEtcHhGsy+Sd+z8SP8NHWAIj5jbmTg98e1xdm9XK2LT1sBswlcI0t/DKRcNwAWOkLCX8LLuyfcnkBPXeuHqPrM3fnnL7Cir2RFqtj5KzFq9sNcms2qyRB4+TA1zsqd+QNujlD/ByEDpP9ZYWiteVM8NOO1p65BmGjB2xpEZ2boDK8IbZyTid6VZBA9Dx0qFn4o0q/KbFoNbNsOV0li05iPz9hV5i960XXXGuTOk/KCKQUpliFMR6OIpSfOdqWapn0PhKXIYEu3ByiKkOUJn0r58pND5vTRL3AU8NtX+eDh+L99b2x5td3TuvHnwW3UxIekRJI0Zrali4fdvD1CCfhKahujhdj84HZWCMhpXIY=
MIME-Version: 1.0
X-OriginatorOrg: teo-en-ming-corp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bcda8491-4b66-4f2a-2e0e-08d6fec97661
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jul 2019 08:44:14.6756 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 23b3f6ae-c453-4b93-aec9-f17508e5885c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ceo@teo-en-ming-corp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SG2PR01MB2029
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Good afternoon from Singapore,

What device drivers for Linux does this project develop?

Thank you.



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

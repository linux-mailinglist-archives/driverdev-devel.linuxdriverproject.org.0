Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C967E5CE13
	for <lists+driverdev-devel@lfdr.de>; Tue,  2 Jul 2019 13:05:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2BC0C20788;
	Tue,  2 Jul 2019 11:05:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id frdDuT2YEi3i; Tue,  2 Jul 2019 11:05:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 43D5820554;
	Tue,  2 Jul 2019 11:05:17 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A1D431BF335
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  2 Jul 2019 11:05:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9EBA584BF0
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  2 Jul 2019 11:05:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dgBzwrNLE3XO
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  2 Jul 2019 11:05:12 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from APC01-SG2-obe.outbound.protection.outlook.com
 (mail-eopbgr1310047.outbound.protection.outlook.com [40.107.131.47])
 by hemlock.osuosl.org (Postfix) with ESMTPS id F3FA2847E8
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  2 Jul 2019 11:05:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=teoenmingcorp.onmicrosoft.com; s=selector1-teoenmingcorp-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Fc7W/pJkojmFNhRzNXyvfqPVgoTTiOa4SHIoU+SKZlI=;
 b=JHGOBqzr3e3oaTq8liLCGQbjwUnGz8DIAj9XgeAtbP3j+4o9ObLSkOxgU6ZV5r0k1Uj7F7VuJu/0e7vyedUIKGLDSMqAmRYWXe2tjDei4FgFXOWp/qszwSLJOFy0Qd2BBADhp0mRELKj/ubeXF+ytLx8vGun7ePOcLxo2k5Wh/8=
Received: from SG2PR01MB2141.apcprd01.prod.exchangelabs.com (10.170.143.19) by
 SG2PR01MB3366.apcprd01.prod.exchangelabs.com (20.178.135.11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2032.18; Tue, 2 Jul 2019 11:05:06 +0000
Received: from SG2PR01MB2141.apcprd01.prod.exchangelabs.com
 ([fe80::d503:3d71:ce06:19d2]) by SG2PR01MB2141.apcprd01.prod.exchangelabs.com
 ([fe80::d503:3d71:ce06:19d2%6]) with mapi id 15.20.2032.019; Tue, 2 Jul 2019
 11:05:06 +0000
From: Turritopsis Dohrnii Teo En Ming <ceo@teo-en-ming-corp.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: RE: What device drivers for Linux does this project develop?
Thread-Topic: What device drivers for Linux does this project develop?
Thread-Index: AdUwskSbGSpl0JkuQB2Vy0K/ZYhNrQABdNGAAAAJ5nAAAbiQAAABroFA
Date: Tue, 2 Jul 2019 11:05:05 +0000
Message-ID: <SG2PR01MB2141FFAF38ADC64364E8942E87F80@SG2PR01MB2141.apcprd01.prod.exchangelabs.com>
References: <SG2PR01MB2141506D87714AA856B0DE1587F80@SG2PR01MB2141.apcprd01.prod.exchangelabs.com>
 <20190702092531.GA10692@kroah.com>
 <SG2PR01MB2141BC4ACDA0472CF4B5FBAE87F80@SG2PR01MB2141.apcprd01.prod.exchangelabs.com>
 <20190702101554.GA18036@kroah.com>
In-Reply-To: <20190702101554.GA18036@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=ceo@teo-en-ming-corp.com; 
x-originating-ip: [118.189.211.120]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1a907915-9556-49c1-6070-08d6fedd23c1
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:SG2PR01MB3366; 
x-ms-traffictypediagnostic: SG2PR01MB3366:
x-ms-exchange-purlcount: 4
x-microsoft-antispam-prvs: <SG2PR01MB3366824FD51F476644A02F5B87F80@SG2PR01MB3366.apcprd01.prod.exchangelabs.com>
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-forefront-prvs: 008663486A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(346002)(396003)(136003)(39830400003)(376002)(13464003)(199004)(189003)(8936002)(81156014)(486006)(8676002)(66476007)(102836004)(476003)(66556008)(2906002)(446003)(508600001)(6506007)(81166006)(186003)(4326008)(53546011)(6306002)(66946007)(64756008)(76116006)(74316002)(11346002)(66446008)(73956011)(33656002)(6246003)(26005)(14454004)(25786009)(9686003)(107886003)(52536014)(76176011)(7696005)(6436002)(53936002)(99286004)(68736007)(5660300002)(55016002)(256004)(66066001)(71200400001)(71190400001)(316002)(54906003)(86362001)(229853002)(3846002)(305945005)(966005)(6116002)(7736002)(6916009);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SG2PR01MB3366;
 H:SG2PR01MB2141.apcprd01.prod.exchangelabs.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: teo-en-ming-corp.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: UPmsiRYZKDW/CQTIOTgIdNElT26XRsXzLTcn/kD59jm6L3HMtmno5e6Lpw1Ndh2bTNiM/N9CbVXKGZnQ4zMC+sq3q8+NrYoTwl+9bcWxSEvr5glph3jRUXRCv7xSVQKPIln+t+5PjEYYq0ltxx3LkKdPUYw0WJrGn9Z3Jhe6xO45lIB8kfLqRJh/rWatwrwikc86c+/vjkYJ5+4hlFdxp/H8biBmDz7FCrAPuSzKX6qpV6ukvnJbk7/OHtOl0iZLlNDMFDUhrHoAczPV0ZnByZeMHMD3hwEelXZizjz1xo7MewQKlZ2J4DoGniHOne9dkx4xy4YSFm2iwvjFahO3jK5pdHt0Nm4g2U+i0sFK4MWQTOmos+/CMEMCAwXQ6ogjkAphDq34LgBF/gvixEh80ZuSPFlrhmv5zTMVQckCsbs=
MIME-Version: 1.0
X-OriginatorOrg: teo-en-ming-corp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a907915-9556-49c1-6070-08d6fedd23c1
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jul 2019 11:05:05.9527 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 23b3f6ae-c453-4b93-aec9-f17508e5885c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ceo@teo-en-ming-corp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SG2PR01MB3366
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

Noted with thanks!


-----Original Message-----
From: Greg KH <gregkh@linuxfoundation.org> 
Sent: Tuesday, 2 July 2019 6:16 PM
To: Turritopsis Dohrnii Teo En Ming <ceo@teo-en-ming-corp.com>
Cc: driverdev-devel@linuxdriverproject.org
Subject: Re: What device drivers for Linux does this project develop?

On Tue, Jul 02, 2019 at 09:29:47AM +0000, Turritopsis Dohrnii Teo En Ming wrote:
> My Hauppauge WinTV-HVR-935 HD Tri-Mode TV Stick DVB-T2 TV Tuner in 
> Singapore is currently not supported by Linux.

Have you tried contacting the linux-media@vger.kernel.org mailing list first?  The developers for those types of devices are there and should be able to help you out.

good luck!

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

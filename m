Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF76721076
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 May 2019 00:15:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 45EDE88293;
	Thu, 16 May 2019 22:15:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A2X+IwFedYGU; Thu, 16 May 2019 22:15:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id AFBB688167;
	Thu, 16 May 2019 22:15:01 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 825591BF28E
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 16 May 2019 22:15:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7CC388814B
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 16 May 2019 22:15:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4Y3dDFkLOAfh
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 16 May 2019 22:14:59 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM02-CY1-obe.outbound.protection.outlook.com
 (mail-eopbgr760077.outbound.protection.outlook.com [40.107.76.77])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1D91B8813E
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 16 May 2019 22:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=daktronics.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UEHwOSfJQu4YQZHyQhavKo49Jwg3rqX6xEJ78oRcYbw=;
 b=N7lL+OJuCC8GUAIml2qDEDEQCnriHcCsiWTxM0VZ4ddOH7sb+LmjYMeIcS49lBzoqxFjYc86FziEqTnSejCZoIDsvBzObXtqRm5P5E/a7/AjLUyNLEoY4AtPI/T+M9qOtYjPz4cvM/szUBdesTA9fU8GiM2Jav9yxrZKETmPRlc=
Received: from SN6PR02MB4016.namprd02.prod.outlook.com (52.135.69.145) by
 SN6PR02MB4767.namprd02.prod.outlook.com (52.135.114.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.17; Thu, 16 May 2019 22:14:56 +0000
Received: from SN6PR02MB4016.namprd02.prod.outlook.com
 ([fe80::60d8:13ef:ed32:4a6f]) by SN6PR02MB4016.namprd02.prod.outlook.com
 ([fe80::60d8:13ef:ed32:4a6f%5]) with mapi id 15.20.1900.010; Thu, 16 May 2019
 22:14:56 +0000
From: Matt Sickler <Matt.Sickler@daktronics.com>
To: Jeremy Sowden <jeremy@azazel.net>, Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Subject: RE: [PATCH v2 5/9] staging: kpc2000: use atomic_t to assign card
 numbers.
Thread-Topic: [PATCH v2 5/9] staging: kpc2000: use atomic_t to assign card
 numbers.
Thread-Index: AQHVDC+0C6poPz0wCECoKtnU88u/jKZuTslg
Date: Thu, 16 May 2019 22:14:56 +0000
Message-ID: <SN6PR02MB4016B72A558E9A754FFA5C41EE0A0@SN6PR02MB4016.namprd02.prod.outlook.com>
References: <20190516200411.17715-1-jeremy@azazel.net>
 <20190516213814.22232-1-jeremy@azazel.net>
 <20190516213814.22232-6-jeremy@azazel.net>
In-Reply-To: <20190516213814.22232-6-jeremy@azazel.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Matt.Sickler@daktronics.com; 
x-originating-ip: [63.85.214.4]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4c370c6b-f602-4f5f-e0e8-08d6da4bedab
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:SN6PR02MB4767; 
x-ms-traffictypediagnostic: SN6PR02MB4767:
x-microsoft-antispam-prvs: <SN6PR02MB4767E0A0C2839E3186383881EE0A0@SN6PR02MB4767.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0039C6E5C5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(346002)(366004)(376002)(39850400004)(396003)(199004)(189003)(13464003)(3846002)(316002)(6116002)(76176011)(186003)(5660300002)(86362001)(478600001)(71200400001)(7696005)(33656002)(14444005)(72206003)(110136005)(256004)(71190400001)(7736002)(81156014)(66066001)(99286004)(305945005)(8676002)(74316002)(52536014)(81166006)(8936002)(26005)(6506007)(446003)(229853002)(25786009)(476003)(486006)(9686003)(4326008)(14454004)(55016002)(68736007)(53936002)(2906002)(66946007)(66476007)(66556008)(64756008)(66446008)(73956011)(76116006)(6246003)(102836004)(6436002)(11346002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SN6PR02MB4767;
 H:SN6PR02MB4016.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: daktronics.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 4KyD0gbvrGIoI7tZbzwYNLqsTB+NXDHIJN09Q462abG/emLMEKhLtVKiybrzL+Kks+ASQbE6uh+MWP7wBTG99k09l4XEvsIlhwhZGVtuzHZEoukuA56O2HKPDOwoYE0tCQ3bZOfUtdEVip3vmSS/CGcE/fIS+xG/p4CG+TPDRx4WOrNymC1MlE0iGF6FZU2KzlKXZqPv85inCeuq1crL2xX+GNdPQ5SPhq1rfgeRP3vtTGIR393wLbgyNo/RuT8Dapi+ylVb6VRs8T69C46/2q205buNXCZKKztHDFhBJVV83ayTeILHCepvH9cL2DLl1vEuOLIKByn9yC2th22v2GfK3Gm3RnopbzWqEC4zVLwB4eSi4dFyQ2MByfZe5NKmrdL3QvuJJTabS7DcTOabFrNnqBN2fXrW0R+11zXTOmI=
MIME-Version: 1.0
X-OriginatorOrg: daktronics.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c370c6b-f602-4f5f-e0e8-08d6da4bedab
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 May 2019 22:14:56.2991 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: be88af81-0945-42aa-a3d2-b122777351a2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR02MB4767
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
Cc: Greg KH <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

>-----Original Message-----
>From: devel <driverdev-devel-bounces@linuxdriverproject.org> On Behalf Of
>Previously the next card number was assigned from a static int local variable,
>which was read and later incremented.  This was not thread- safe, so now we
>use an atomic_t and atomic_fetch_add instead.

Switching to atomic_fetch_add is definitely an improvement over what that code
was doing prior, but is that the proper solution?  How do other parts of the
kernel handle giving devices unique ID numbers?

Honestly, the atomic_t solution might be "good enough".  Our PCIe devices get
removed and reprobed at least once per boot.  We do this so they boot into a
"bootloader" program so we can verify that the "production" image stored in
the on-board flash is the correct type/version.  We then tell the card to
reconfigure itself while we remove the PCIe device and then rescan the PCIe
bus for the "new" device.  That ends up increasing this card count more.
This would never be a problem in production (given that we only do this maybe
a half dozen times per boot, worst case).  Even in dev, we've never reconfigured
enough times for this counter to overflow.
That was maybe rambling a bit, just wanted to point it out in case there's a
"proper" way we should be doing this.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

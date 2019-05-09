Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4870D18ED4
	for <lists+driverdev-devel@lfdr.de>; Thu,  9 May 2019 19:19:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1535D87961;
	Thu,  9 May 2019 17:19:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w3tWdmVmlbVN; Thu,  9 May 2019 17:19:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CC2EB8792E;
	Thu,  9 May 2019 17:19:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 106901BF964
 for <devel@linuxdriverproject.org>; Thu,  9 May 2019 17:19:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0CDB022D0D
 for <devel@linuxdriverproject.org>; Thu,  9 May 2019 17:19:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Hf0qfwBnB14p for <devel@linuxdriverproject.org>;
 Thu,  9 May 2019 17:19:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM02-CY1-obe.outbound.protection.outlook.com
 (mail-eopbgr760072.outbound.protection.outlook.com [40.107.76.72])
 by silver.osuosl.org (Postfix) with ESMTPS id 6F14222C31
 for <devel@driverdev.osuosl.org>; Thu,  9 May 2019 17:19:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=daktronics.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eSdswEyGaMcvhuHEdUVNq02LnG4S1W46qYKXhppIMes=;
 b=mkbiOUDTSYun4hO5TwxrAkyWnC0naXn8aCV0zbuMxRJ5LGcM3yVbsG+3EvM0E8C/U+oByDd6zXlAxiD/JlkcLkmMOBTdcDsKgQa1RPlOp7EDOvXIgvwNRKjuyyhUyWIjSwDDgVCHmZ3dKefwm4rp5LEsp/szpUl3Ov6qd7u3amw=
Received: from SN6PR02MB4016.namprd02.prod.outlook.com (52.135.69.145) by
 SN6PR02MB4367.namprd02.prod.outlook.com (52.135.119.156) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.11; Thu, 9 May 2019 14:47:50 +0000
Received: from SN6PR02MB4016.namprd02.prod.outlook.com
 ([fe80::9159:5594:9b0a:df2d]) by SN6PR02MB4016.namprd02.prod.outlook.com
 ([fe80::9159:5594:9b0a:df2d%2]) with mapi id 15.20.1878.019; Thu, 9 May 2019
 14:47:50 +0000
From: Matt Sickler <Matt.Sickler@daktronics.com>
To: Dan Carpenter <dan.carpenter@oracle.com>, "'gregkh@linuxfoundation.org'"
 <gregkh@linuxfoundation.org>
Subject: RE: [PATCH v2] kpc_i2c: Remove unused file
Thread-Topic: [PATCH v2] kpc_i2c: Remove unused file
Thread-Index: AdUGbHODCASY7QLYQRSl3nQVqiUvogABNEiAAABR3XA=
Date: Thu, 9 May 2019 14:47:50 +0000
Message-ID: <SN6PR02MB401611F8B4C2FDC9DEE82B58EE330@SN6PR02MB4016.namprd02.prod.outlook.com>
References: <SN6PR02MB4016E93EC94A46E6C79A76DBEE330@SN6PR02MB4016.namprd02.prod.outlook.com>
 <20190509141243.GE21059@kadam>
In-Reply-To: <20190509141243.GE21059@kadam>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Matt.Sickler@daktronics.com; 
x-originating-ip: [2620:9b:8000:6046:f4cf:9f33:7f85:77db]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: df4e826b-2265-4265-4151-08d6d48d4f30
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:SN6PR02MB4367; 
x-ms-traffictypediagnostic: SN6PR02MB4367:
x-microsoft-antispam-prvs: <SN6PR02MB4367CB6EE17AC7E22421F112EE330@SN6PR02MB4367.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 003245E729
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(376002)(39860400002)(136003)(366004)(396003)(189003)(199004)(13464003)(66946007)(66446008)(64756008)(66556008)(66476007)(76116006)(99286004)(73956011)(52536014)(6436002)(5660300002)(229853002)(2906002)(6116002)(55016002)(53936002)(25786009)(6246003)(9686003)(4326008)(46003)(33656002)(102836004)(8936002)(72206003)(478600001)(11346002)(446003)(305945005)(7696005)(6506007)(68736007)(476003)(86362001)(186003)(7736002)(486006)(74316002)(76176011)(8676002)(81156014)(14444005)(71200400001)(71190400001)(45080400002)(14454004)(256004)(81166006)(316002)(110136005)(71610200001)(491001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SN6PR02MB4367;
 H:SN6PR02MB4016.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: daktronics.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: pwTwUay3fa+L6feYt++bF0YIBTpIO9rvcypxzGvIEMtyc8uU7J1EdUVTo8wdKtux/pbVEx6F/n1a4ivq8/0tf0cmzM5VXnyfeTNoh5BZAUfkg5+kszxQ+QwA4YyOg3JfdUBTXC2h8KN0bTEEucxGAThG32o04WJHW9pAznysziHRQVa8gsjukDMawZsZLxhpJYHM6ngCemTtv81P5dcWAMTx7HzwBd6fhQ2WaR3ejctr2IBnZkDRUGw3mkflyDVfUBHBoBYUj6jtIDT0wF4ckfpvWlkLe4GXNeK4EdRCT7C3Rv35YOtZ4Y/shXLhYIlfiloqLeo0PJgp62Ju9Ad5Q3H6aRlxGCCLFmWGFUEyjglGqJgNtoIsQv+SAh3WX+QudlOSKQp06sJpF1BHE49coqLO+ftvTCLNXNQpn2kubcs=
MIME-Version: 1.0
X-OriginatorOrg: daktronics.com
X-MS-Exchange-CrossTenant-Network-Message-Id: df4e826b-2265-4265-4151-08d6d48d4f30
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 May 2019 14:47:50.2863 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: be88af81-0945-42aa-a3d2-b122777351a2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR02MB4367
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

>-----Original Message-----
>From: Dan Carpenter <dan.carpenter@oracle.com>
>
>Add Staging: to the subject.

Added to my notes so I don't forget it next time.

>[PATCH v2] Staging: kpc_i2c: Remove unused file fileops.c
>
>On Thu, May 09, 2019 at 01:38:27PM +0000, Matt Sickler wrote:
>> The whole file was wrapped in an #if 0.  I'm guessing it was a
>> leftover file from when we were first developing the driver and we just
>forgot about it.
>>
>> V2: Forgot the signed-off-by line on the first patch.
>
>Put this after the --- cut off line
>
>>
>> Signed-off-by: Matt Sickler <matt.sickler@daktronics.com>
>> ---
>  ^^^
>
>Here.

Noted.  I just looked up a "v2" patch in the mailing list
archive to see what that looks like.  I'll try to do that
next time.

>
>There is something else wrong with the patch and it's corrupted a bit or
>something.  Please read the first paragraph of Documentation/process/email-
>clients.rst

Ugh.  I'm about to throw Outlook in the trash and just use
my personal email account.
I know most subsystem maintainers don't accept pull requests
but Daktronics does have a github account that I could push
my changes to and use git-request-pull to ask Greg to pull
from.  Greg, would that be an acceptable solution?  If not,
I can continue struggle-bussing with Outlook.

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

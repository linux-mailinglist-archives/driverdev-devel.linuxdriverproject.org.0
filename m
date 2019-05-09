Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CA5C918D24
	for <lists+driverdev-devel@lfdr.de>; Thu,  9 May 2019 17:41:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 09FA88786E;
	Thu,  9 May 2019 15:41:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BkpjURpnfozl; Thu,  9 May 2019 15:41:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B49E6878E5;
	Thu,  9 May 2019 15:41:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 294CC1BF573
 for <devel@linuxdriverproject.org>; Thu,  9 May 2019 15:41:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 264EC868C9
 for <devel@linuxdriverproject.org>; Thu,  9 May 2019 15:41:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RqTuiTmenExI for <devel@linuxdriverproject.org>;
 Thu,  9 May 2019 15:41:50 +0000 (UTC)
X-Greylist: delayed 00:39:47 by SQLgrey-1.7.6
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
 (mail-eopbgr770077.outbound.protection.outlook.com [40.107.77.77])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CACCF868A9
 for <devel@driverdev.osuosl.org>; Thu,  9 May 2019 15:41:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=daktronics.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rfam4FUaofRWzd7crnvrCW2mCJcur3c754sD+sLb8wo=;
 b=bP/CZbzjTA+unhyRPkaGqYuOQPB2n3hwl0RMFJuihYRtig45vicVGirkc5kUbFqN0g0oELKG+oqMP7Q4iwNA4OccFX0OJKo6kX914M0wFs/woua+39yg++oNoiEWqoaoDdfErGGlJpApax2PKbDMaF7vs85ed4pn4DBQieekyP0=
Received: from SN6PR02MB4016.namprd02.prod.outlook.com (52.135.69.145) by
 SN6PR02MB5261.namprd02.prod.outlook.com (52.135.103.158) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.22; Thu, 9 May 2019 15:41:48 +0000
Received: from SN6PR02MB4016.namprd02.prod.outlook.com
 ([fe80::9159:5594:9b0a:df2d]) by SN6PR02MB4016.namprd02.prod.outlook.com
 ([fe80::9159:5594:9b0a:df2d%2]) with mapi id 15.20.1878.019; Thu, 9 May 2019
 15:41:48 +0000
From: Matt Sickler <Matt.Sickler@daktronics.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: RE: [PATCH v2] kpc_i2c: Remove unused file
Thread-Topic: [PATCH v2] kpc_i2c: Remove unused file
Thread-Index: AdUGbHODCASY7QLYQRSl3nQVqiUvogABNEiAAABR3XAAAS/tAAABNjVg
Date: Thu, 9 May 2019 15:41:48 +0000
Message-ID: <SN6PR02MB4016278AA68186BD808728F7EE330@SN6PR02MB4016.namprd02.prod.outlook.com>
References: <SN6PR02MB4016E93EC94A46E6C79A76DBEE330@SN6PR02MB4016.namprd02.prod.outlook.com>
 <20190509141243.GE21059@kadam>
 <SN6PR02MB401611F8B4C2FDC9DEE82B58EE330@SN6PR02MB4016.namprd02.prod.outlook.com>
 <20190509145552.GA16030@kadam>
In-Reply-To: <20190509145552.GA16030@kadam>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Matt.Sickler@daktronics.com; 
x-originating-ip: [2620:9b:8000:6046:f4cf:9f33:7f85:77db]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d1c194af-43c4-46fe-6555-08d6d494d932
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:SN6PR02MB5261; 
x-ms-traffictypediagnostic: SN6PR02MB5261:
x-microsoft-antispam-prvs: <SN6PR02MB52614D967C3B29D921D87B6AEE330@SN6PR02MB5261.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 003245E729
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(54534003)(13464003)(189003)(199004)(14454004)(476003)(229853002)(55016002)(86362001)(52536014)(6246003)(72206003)(5660300002)(486006)(46003)(71200400001)(71190400001)(68736007)(4326008)(6506007)(102836004)(73956011)(76116006)(66556008)(64756008)(66446008)(8676002)(7696005)(66476007)(66946007)(76176011)(498600001)(81156014)(2906002)(81166006)(186003)(99286004)(14444005)(54906003)(25786009)(33656002)(256004)(6116002)(8936002)(11346002)(446003)(6916009)(53936002)(9686003)(6436002)(45080400002)(305945005)(74316002)(7736002)(71610200001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SN6PR02MB5261;
 H:SN6PR02MB4016.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: daktronics.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ni8SCzIi2aTBSo9Fpw/KDnj1KJaiDuXNp6KJg7Qly8Zac7ZIot2xyREeDxT7hJdjfRkdmOHO6QHc76+Jjp0IvBYgGmGXk3Z/NIu0nbS8RPzUWxOaV4wtbIui0RC5RK1C2VdZ+HlPpe5jbxMGL+43pH2/k8eccWOw9SDX6TF4OtE7s1IAat6d7Mi9IilMavA72u9m8SQNu8Jr3CHHC+CTSJyVN9UK4aebYiGa28AfqJivfRK0yIH+SaRWJGl0dVibjptc6O4nBj1mCBUMKeT6AOsTJtT4/iWMuiVafIt6tIYmAJujTKSIpI+4RqJVlZS2jkDhME7lJeQ3OnzJAUizEZ+YHTjGaCBjsHaVPATHPPThrb6cITOF3ABkSEoOmPVKYTkN1w01SOPwltaTG6qGm/CHca644OcAL9yJrmVsmUk=
MIME-Version: 1.0
X-OriginatorOrg: daktronics.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d1c194af-43c4-46fe-6555-08d6d494d932
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 May 2019 15:41:48.2670 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: be88af81-0945-42aa-a3d2-b122777351a2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR02MB5261
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
 "'gregkh@linuxfoundation.org'" <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

>-----Original Message-----
>From: Dan Carpenter <dan.carpenter@oracle.com>>
>On Thu, May 09, 2019 at 02:47:50PM +0000, Matt Sickler wrote:
>
>A few people/subsystems (DRM) put the change log in the commit message
>but that's pretty weird and I don't know if they do it on purpose or
>they're just not aware how to do it properly...  :P
>
>When it's under the --- then it isn't stored in the permanent git log.

Good to know the "why" behind that process!

>> Ugh.  I'm about to throw Outlook in the trash and just use
>> my personal email account.
>> I know most subsystem maintainers don't accept pull requests
>> but Daktronics does have a github account that I could push
>> my changes to and use git-request-pull to ask Greg to pull
>> from.  Greg, would that be an acceptable solution?  If not,
>> I can continue struggle-bussing with Outlook.
>
>You can't just use git send-email?  Outlook is going to give you
>headaches forever.  I use mutt, but one subsystem only accept patches
>from git send-email so I have to add a fake "X-Mailer: git-send-email"
>header to my patches...

I guess I have not tried.  Daktronics uses Outlook and Office
365 and lots of "security" junk like Okta 2FA.  I had assumed
that mutt wouldn't work because of those settings.  Our IT
is very much windows-only, so they probably wouldn't make any
exceptions for me to allow mutt to work.  I'll give it a try
though.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

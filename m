Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 93E3321177
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 May 2019 02:52:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 678C231380;
	Fri, 17 May 2019 00:52:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6PrV9W3v7YSo; Fri, 17 May 2019 00:52:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id F34EE228EF;
	Fri, 17 May 2019 00:51:59 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2E6411BF339
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 17 May 2019 00:51:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2BA5722708
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 17 May 2019 00:51:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z2FmdvCgcF+J
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 17 May 2019 00:51:46 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM03-BY2-obe.outbound.protection.outlook.com
 (mail-eopbgr780084.outbound.protection.outlook.com [40.107.78.84])
 by silver.osuosl.org (Postfix) with ESMTPS id 35627226B7
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 17 May 2019 00:51:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=daktronics.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BtvE8f7u27n3aNUj4q1k4RwpoiWyERY64zMrkktH8Fs=;
 b=IoSWk3EnQfaJRr7nbywxYMRwK0SPhxQF0f1od3VaZ2ajCPseeOUklRjUzuh3tXNrYz1N6Q+06ly5WKxgnqiVwI08L6kG06OfWIty03s0dtIoRELd5i07Pvi3/vQA1yMRr1MCi2vmBqbLuJ3qDvS4ta6F2AS+BOYaTRlhnJkG3jU=
Received: from SN6PR02MB4016.namprd02.prod.outlook.com (52.135.69.145) by
 SN6PR02MB5456.namprd02.prod.outlook.com (20.177.250.83) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.17; Thu, 16 May 2019 20:17:51 +0000
Received: from SN6PR02MB4016.namprd02.prod.outlook.com
 ([fe80::60d8:13ef:ed32:4a6f]) by SN6PR02MB4016.namprd02.prod.outlook.com
 ([fe80::60d8:13ef:ed32:4a6f%5]) with mapi id 15.20.1900.010; Thu, 16 May 2019
 20:17:51 +0000
From: Matt Sickler <Matt.Sickler@daktronics.com>
To: Jeremy Sowden <jeremy@azazel.net>, Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Subject: RE: [PATCH 02/11] staging: kpc2000: add separate show functions for
 kpc_uio_class device attributes.
Thread-Topic: [PATCH 02/11] staging: kpc2000: add separate show functions for
 kpc_uio_class device attributes.
Thread-Index: AQHVDCKRgwCPxpdN50mKbDnl4iLxvKZuL3tg
Date: Thu, 16 May 2019 20:17:51 +0000
Message-ID: <SN6PR02MB4016EB785F03A89ADC6518ABEE0A0@SN6PR02MB4016.namprd02.prod.outlook.com>
References: <20190516200411.17715-1-jeremy@azazel.net>
 <20190516200411.17715-3-jeremy@azazel.net>
In-Reply-To: <20190516200411.17715-3-jeremy@azazel.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Matt.Sickler@daktronics.com; 
x-originating-ip: [63.85.214.4]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3cd3319e-1302-4bd1-3ce5-08d6da3b9246
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:SN6PR02MB5456; 
x-ms-traffictypediagnostic: SN6PR02MB5456:
x-microsoft-antispam-prvs: <SN6PR02MB54568DC3BF68519787708918EE0A0@SN6PR02MB5456.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-forefront-prvs: 0039C6E5C5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(366004)(346002)(376002)(396003)(136003)(199004)(189003)(13464003)(99286004)(5660300002)(52536014)(110136005)(4744005)(76176011)(7696005)(6506007)(256004)(26005)(66066001)(55016002)(72206003)(9686003)(102836004)(2906002)(74316002)(3846002)(6116002)(86362001)(6436002)(8936002)(446003)(478600001)(71200400001)(11346002)(53936002)(316002)(476003)(66476007)(6246003)(73956011)(66946007)(486006)(14454004)(76116006)(186003)(8676002)(229853002)(68736007)(81166006)(25786009)(81156014)(33656002)(4326008)(66556008)(64756008)(66446008)(71190400001)(7736002)(305945005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SN6PR02MB5456;
 H:SN6PR02MB4016.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: daktronics.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: psWrFz1swaom7qJCiZpiMiCYcNJWb0SYdISLxQIehkyUcHCOPdH12EvYNecbC0T/VrKjuAyq0shkwXkJFSCwhrwtGEIK6tfZCpIfnmfCeZXyPo6HO/Z7Fen+ZzxqK1xckzKPtp0jR95PgaE2Vmv4pgTI0o9NmrmwX8zGlLdOXpKw8dFkFgsO1hvJsug+oPBoL89QRePiQEbiB+SUYQMVh1IowGgKw+LRovFGsFnk8+L0LCH88XDzmcbNTjjUcxJy7VKtKnpIbogYA0V0aAGh1flaE5PtkKmvvs0jjwR4XBL1c6lNJm9sHdZZkuHZ+Rj3Aj4KChwnmrNEU5KCt66L1/BaTDB8Mt7pE5IouJfxlgLgHCpi5pvglIbPICw5ntS3Xk7UDnSGkZumz4wk5ZH1raYrbCXmQ+X3yovWbb0AZGQ=
MIME-Version: 1.0
X-OriginatorOrg: daktronics.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3cd3319e-1302-4bd1-3ce5-08d6da3b9246
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 May 2019 20:17:51.0186 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: be88af81-0945-42aa-a3d2-b122777351a2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR02MB5456
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
>Define separate simple show functions for each attribute instead of having a
>one big one containing a chain of conditionals.
>
>+static ssize_t s2c_dma_ch_show(struct device *dev,
>+                              struct device_attribute *attr, char *buf)
>+{
>+       return 0;
>+}
>+
>+static ssize_t c2s_dma_ch_show(struct device *dev,
>+                              struct device_attribute *attr, char *buf)
>+{
>+       return 0;
>+}

These two can be removed.  Technically, that would be a userspace-breaking
change, but I can guarantee that all existing userspace consumers don't actually
read that sysfs node.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

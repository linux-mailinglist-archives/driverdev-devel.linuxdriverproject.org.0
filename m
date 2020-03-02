Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11BE0176031
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Mar 2020 17:41:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1F20C87820;
	Mon,  2 Mar 2020 16:41:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DRYd3+AL-E+a; Mon,  2 Mar 2020 16:41:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C5F20877E4;
	Mon,  2 Mar 2020 16:41:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D6C601BF321
 for <devel@linuxdriverproject.org>; Mon,  2 Mar 2020 16:41:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D3A9E204B1
 for <devel@linuxdriverproject.org>; Mon,  2 Mar 2020 16:41:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tTsSN0NP--1P for <devel@linuxdriverproject.org>;
 Mon,  2 Mar 2020 16:41:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa6.microchip.iphmx.com (esa6.microchip.iphmx.com
 [216.71.154.253])
 by silver.osuosl.org (Postfix) with ESMTPS id 48609204AF
 for <devel@driverdev.osuosl.org>; Mon,  2 Mar 2020 16:41:28 +0000 (UTC)
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Ajay.Kathat@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Ajay.Kathat@microchip.com";
 x-sender="Ajay.Kathat@microchip.com"; x-conformance=spf_only;
 x-record-type="v=spf1"; x-record-text="v=spf1 mx
 a:ushub1.microchip.com a:smtpout.microchip.com
 -exists:%{i}.spf.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Ajay.Kathat@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Ajay.Kathat@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: kYz0JriBI6+MeLZNK9L3z2hBGZ4NcVqkGraQaP4yKum8ZPuRbouHd0drnXUBgu/sDDPNT1HH29
 Y4hdQns4uiGhtA9bMiU1+xmvXlJ3bQ5jZUaxuLbSOr0qMYZL8Rvj+XTIZkXXceQ2TjRd6fHYQc
 fzeNefPjaXc4FtDzNDjWe+ZdnyeHy2hIamtYVMhWLehfbSrYbtdA0U26QMGmf+CCPl4/mKMjCw
 qp77l1Uqkvz8sjIhkuVnETZgrquzyUrQbxn5ghQEx9wtoTIzMUENRju4aPxv8QuYzqqKEYpxn9
 U+Q=
X-IronPort-AV: E=Sophos;i="5.70,507,1574146800"; 
   d="scan'208";a="4187796"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 02 Mar 2020 09:41:27 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 2 Mar 2020 09:41:27 -0700
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Mon, 2 Mar 2020 09:41:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=idiOsq8oDXT1yivvxKqjM4VSkxBiy/m63IfcuFzq4iHoLHfxdZJ5m2cbWb08VqLniH6uwbzVmWfeKTE65L2W0Zql42t/leZuZAHsTBXwX931/GUNYT4OEIRLPRh0mGm9zm/iZc3+02xbEmXywndltj3o3wc1LeMHh/qGzIdtnMbFFTNDfN5I6KSpQFEO49UDAr95y4Hq3M3OtsKDZplBq/HvvRFlQyCppSc5XgUsIoYoYw1JkyN/4jIavomouADMHMazarwQepVc/e96qce3NG5DQn/z6Ai7LDXq01bc+B9LJG9kf+/JtIKMi8Gci6vGamBUnQCBnM2ixFH0UmE/ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R2Cd5Uw3gFwO4QY96RH+l0lPsbamxj24yyHiW12Ztvo=;
 b=UDJYOR0CYNLmLwAHQ26JZgmvTUNmCd+nMnifJvkLjlmUL/CpDua55ClQeOJZcLYnFUKXmQPaW5cwfu5teXL9qrx4gwo2qafmhamYupY5HHzIAtqVV3Zr8/g9A5tqd1RpdOc3th3E7RLzhh3HqaAOUa6x9dVH8vF/80KmrJAUexTwmBYrdwxfzkVHzXFdX3jupdM5lkKOoGKAX3DfxT9e79AiyFd08S/daT3VNqDeaafIXBG2XkHma44LDxSR6kxCyuZlwjaF6A5m5+p/WRkRA/36aCI5ipoZlFT1Y1CYdGL95hxJ7cI3Z7PFRP0WRn9lo0myQ5bcIyoDpSRFsfTRiQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R2Cd5Uw3gFwO4QY96RH+l0lPsbamxj24yyHiW12Ztvo=;
 b=q6sWDDd/NmGIUeMuerkjwmfY1LdKPJE/i4IKjjtuxtbJEP60XRAQpzFd7l6gAql5J90t+VNBabS8b3WrHcvi2dp+zw2oqZ2xb2ZC7bjXWvSYAxPO8Lu/5p4udeCUQYfHpLctEZ98vNqTj1q3c+BeC5+R5YoqcC6U6Jxr3r3BRjw=
Received: from BN6PR11MB3985.namprd11.prod.outlook.com (2603:10b6:405:7b::14)
 by BN6PR11MB2018.namprd11.prod.outlook.com (2603:10b6:404:4a::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.15; Mon, 2 Mar
 2020 16:31:05 +0000
Received: from BN6PR11MB3985.namprd11.prod.outlook.com
 ([fe80::ec62:e7fd:f17c:dfd4]) by BN6PR11MB3985.namprd11.prod.outlook.com
 ([fe80::ec62:e7fd:f17c:dfd4%3]) with mapi id 15.20.2772.019; Mon, 2 Mar 2020
 16:31:05 +0000
From: <Ajay.Kathat@microchip.com>
To: <dan.carpenter@oracle.com>
Subject: Re: [PATCH v3 00/18] wilc1000: move out of staging
Thread-Topic: [PATCH v3 00/18] wilc1000: move out of staging
Thread-Index: AQHV667y+zVJzO3Rq0qfZ397NNWe/ag1ES4AgAB3VAA=
Date: Mon, 2 Mar 2020 16:31:04 +0000
Message-ID: <46e42e91-bd9b-dc3c-49d6-1ebe762b2814@microchip.com>
References: <20200225074105.7740-1-ajay.kathat@microchip.com>
 <20200302092346.GA24308@kadam>
In-Reply-To: <20200302092346.GA24308@kadam>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [121.244.27.38]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 263ca700-26c7-454b-1eb2-08d7bec71aaf
x-ms-traffictypediagnostic: BN6PR11MB2018:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN6PR11MB20189D67A8B78D53F785E2FDE3E70@BN6PR11MB2018.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 033054F29A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(396003)(346002)(366004)(39860400002)(136003)(189003)(199004)(71200400001)(4326008)(5660300002)(91956017)(86362001)(36756003)(76116006)(66946007)(64756008)(478600001)(66476007)(66556008)(8676002)(316002)(66446008)(81156014)(81166006)(31696002)(6916009)(54906003)(6512007)(2906002)(2616005)(6506007)(31686004)(26005)(6486002)(4744005)(186003)(53546011)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN6PR11MB2018;
 H:BN6PR11MB3985.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QwmU9B7UCbklR6fGdicI18R3RAphP8ZgAQ+ZSmzRnw015xOAi7ys6PcjH3iNP0J0tkLKHft3K6ygqxEQnMpbQheCkAg5E5JHRW/RamDWKaoQWUNUf9Ct9vmFNWSJD3Im4B1jSqH2by9tAIMgd83kedudqCMF+hV9/+fO4rDdjLufvf6dWacbuQ9cVJ6zLG09UC5K1V5rQ9igs8FCoT2A9pfy+Grxf5kfFm+QLX2OiqezuGspGzJQvfWAd4xhkayrz6EtsGAlWOY2wNeii/nXkGtIN62FiZXjzTuJInEqyIxGfg1LVOuO+Q5CMsZU9h4NNNIqSyo5x4f1QXBwP+CgwZXQFrhf0YYbKXPJQWLm/FH10mYPn3jKE8w7rZKUiqpOIkUEMOJYVMrVoo6z2ccjfHy++92p9vl+ow7BV9N1c/qPrU7IiKI8yA8IVGK+fJ4m
x-ms-exchange-antispam-messagedata: GRckWMsHyOxZeep+6cqXNzNBBT3T8361YNQaRNWoxyUMm0K2v3o1oVywyPIeqScPhaux3sWVv+Qt+hjesZlBaeDfeGdsGMb8CwIazcCZrnQfhaglqYZWg52sAkHqAgI4kecP3w1L24P6yqJgo48Rqg==
Content-ID: <DBBD8FFE0F223F46A64AF455F059B82F@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 263ca700-26c7-454b-1eb2-08d7bec71aaf
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2020 16:31:04.9439 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: e6U6AgNwpnaWM331rAgqloS0xAdLMENZvhSaH+eAAkItsHOf3i/DUkYS08up2M25/+Y3s2ev31P18y0Voi0B0IJaTcdntTLtVZQ8KZ5PfZo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB2018
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Venkateswara.Kaja@microchip.com, gregkh@linuxfoundation.org,
 linux-wireless@vger.kernel.org, Nicolas.Ferre@microchip.com,
 Adham.Abozaeid@microchip.com, johannes@sipsolutions.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Dan,


On 02/03/20 2:53 pm, Dan Carpenter wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> There are a few static checker warnings from Friday's linux-next.  Only
> the first one is important.  (Not all these Smatch warnings have been
> published).

Thanks. I have submitted a patch series to address Smatch static checker
warnings in staging ml. I will send v4 for this series by including
those changes.

Regards
Ajay
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

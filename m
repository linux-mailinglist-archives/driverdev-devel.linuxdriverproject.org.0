Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0562F10D097
	for <lists+driverdev-devel@lfdr.de>; Fri, 29 Nov 2019 04:06:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5A11C22F26;
	Fri, 29 Nov 2019 03:06:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9b1BMFpVme-r; Fri, 29 Nov 2019 03:06:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7AB1322D55;
	Fri, 29 Nov 2019 03:06:45 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 145BC1BF3C8
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 29 Nov 2019 03:06:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D9EF4884DE
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 29 Nov 2019 03:06:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JRX1Wp5gOCO9
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 29 Nov 2019 03:06:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from APC01-SG2-obe.outbound.protection.outlook.com
 (mail-oln040092253081.outbound.protection.outlook.com [40.92.253.81])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D1254880F9
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 29 Nov 2019 03:06:24 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SHTqBkTfrPZDztNezpFuQ8jMiW3loZESSNEeAncI3Vt0nej65GIUvSnQk2jf1jQnAgk7DPGcp+IUry5IDY5bnsLNMwbV3P2GYM8yvshw0a4TU/XSb0+4P69BFS4GIrGgVj/ieE+yhljDicfr6jza0ikKsMhYDqMni4moJqMrcGNleKtUgrhlOSDayR3HW3UMUOuR5PgoPq56x4/V7GuVUN2Ise0+75jcc0LIMyKIFStcgEGkOr7RNfdVFVQCEfw9PWd2rj1BWDLlSZFkGteYp/sgcrfv+fDKOe90wlSyctfrJlbQY9SC9log21qtRUgztBpLPDUmL5xs05hmbhN9VA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ryQCbwJEf/k6OOQr/1QWusE4c2M89BseJ8g1zfuJXrs=;
 b=aIY8keuJRsP5J6/oUaqN2455jAVs1/PrvUVTGDanfRGMOErXBroW5qsWVVXauSj7tooKPsysnTbNNGDJEKl5EDdWgdcTFMAxs9ODHEkLIJFrXPd83jgNL3cX8fneMhvyGe3g6HpajeExdc4UqByoY2wfuqO4tttCOtnHEsKaY5dxlSBYgnQvhewYH7cqUWqmhYpWtje+g6+1+GzH+jBxOD5xGZPLStcg8s5fI8Sfl6Er98cLNkODEpM8NrXqKWYX93SZ9I2RbDPZo5p6onA1ma50KSvVfBHYwkg945LhATWbry0iyzxVsK2ayWI18y0Pv7DC+XO7XGoHecRVRmmKmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ryQCbwJEf/k6OOQr/1QWusE4c2M89BseJ8g1zfuJXrs=;
 b=FFCXqimE4Cg0Mr43LWH2ERHLz2wNgTz5jxgoWy6dQuZUZ8d1lhEjGAb67YWxMU6GV8adlZ8u87EJsx/JXuthKYPqS7eKJPwIgjqW4Iwihn6+oLa3jXyvjPJoXDBdRvCmYYjAZancgm1APk6Yh6rO39UHtQvGxsh0hE28En0u+A91fkTXalA+lJ0CdtJw9CG9Sosyci+QwKXNoc1mimfh+BQpa5bm9OZHSJ7lkO7YUYFn0zrZ6EKQg33HYtmzqqRvwUPGwET84SzzG2W8lSjlW0KcUpwmucnLor/qt+4aEcMF31MAPnEYNORt9NAWdGsgTpqao/gm22vvPCoT69bVdw==
Received: from PU1APC01FT008.eop-APC01.prod.protection.outlook.com
 (10.152.252.60) by PU1APC01HT237.eop-APC01.prod.protection.outlook.com
 (10.152.253.155) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2474.17; Fri, 29 Nov
 2019 03:06:04 +0000
Received: from SL2P216MB0905.KORP216.PROD.OUTLOOK.COM (10.152.252.56) by
 PU1APC01FT008.mail.protection.outlook.com (10.152.252.66) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.17 via Frontend Transport; Fri, 29 Nov 2019 03:06:03 +0000
Received: from SL2P216MB0905.KORP216.PROD.OUTLOOK.COM
 ([fe80::1dac:12c7:67b3:a062]) by SL2P216MB0905.KORP216.PROD.OUTLOOK.COM
 ([fe80::1dac:12c7:67b3:a062%6]) with mapi id 15.20.2495.014; Fri, 29 Nov 2019
 03:06:03 +0000
From: top top <top-manufacturer27@hotmail.com>
Subject: Handles Limited
Thread-Topic: Handles Limited
Thread-Index: AQHVpl+UgYOHG5umS0q+BMN1ERx0ew==
Date: Fri, 29 Nov 2019 03:06:03 +0000
Message-ID: <eb5796e044524f7680a9f7285798ff09SL2P216MB090524513A5CE7608AFCCD409B460@SL2P216MB0905.KORP216.PROD.OUTLOOK.COM>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:6F86837F74C5F6B6190DD7ED45F36474C8CAB336B4ADD6E6E529935A008DC2E4;
 UpperCasedChecksum:EC8528209E3A510ABD8BCF6D1AFEB19F984C3E58622D59B7363E97D290E70B1F;
 SizeAsReceived:6796; Count:42
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [3AGv4gdZ66ztqtTG4TJLFw+Sn8YY+RM0]
x-ms-publictraffictype: Email
x-incomingheadercount: 42
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 9ebed4b3-6cd2-49b1-2758-08d7747911e6
x-ms-exchange-slblob-mailprops: 0FgZtA3W0emHHkQcSAGtj46vkbOtMABi5s6ZXXlzUJcavqzvKWDCL6w/mKX4XQkHNd8kBqDnwlai6fWy5nTsMT4aIdzk81ZTxDElLtxR9R86KG3AAfLIX37r6jnQX7Kk1rn8MhbPvqhvTUZooJNkaWkKEWb6ns8ctB9nbNgWb+MIesNEkr2WjNEV1z6ty/xK6F5QO8SKnUo0Esj/SdS0tBnAjzuG6+gpPwIWXJvyuCHHWix1dyZNpwhPcp/SaVDaJ5lQBr3t1Q9zpHdOTIcsXUmrV+9qt29QMaCwPdfy0yedCWuvLQwgGvwD5Zq4zpyKLBSU66zndxKGEuQkczgKOp+8/s+E4McExjt+l2AXkJ/ZlIEUTVnS1dIeD2lmP14ZiD/oKYWwIbindhT/cm/uTEL0NiKy09yvdcX7jWyaizDZX9s2ZCWO6QdGAfGL9IAtigC9HtsAtzKLs8Yd9h1siuCW5S7HMr88YqXCuL2kTPJLRglRRyWnXu7eQHIdNxSuj42VPwit0q9gJOM4zIK4ru87Mgm1p/BaGflrJAdrRbG8jmEGf4yXzKoNF+oyzDBL58MDX5b5qC/S7F3CMamu4A==
x-ms-traffictypediagnostic: PU1APC01HT237:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: e3tlRbD849L+Gd8Ng7QBvUWCLKureF2pqsysz62HzgQmMG+Ny7HrdXC+4COjtIdkdpGeIu8lPF8yM32yFbuSHGIhamgGmRWFkyuBJDarDxCpQ9waTBnGlTNVF6pNmMOBIcA1paZzGSVNCA0D3N6+YE7ulz3HSCRPe3xrBwDKmfvSsLtyy1WFN9ezbvXBaWEW
x-ms-exchange-transport-forked: True
Content-ID: <1072CEB1E566BF4BA4707FE31F119EEE@KORP216.PROD.OUTLOOK.COM>
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ebed4b3-6cd2-49b1-2758-08d7747911e6
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Nov 2019 03:06:03.5545 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PU1APC01HT237
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

Hello,
Good day!
This is Top a Handles Co.,ltd. from China.
We specialize in a Handles for 15 years,capable production,promised delivery time and high level quality!
Also we have our own professional designers to meet any of your requirements.
Please sent purchase detail info(as type/specifications/quantity Ect).We can provide you with the best price.
Sincerely,
John
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

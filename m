Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9392527ABFD
	for <lists+driverdev-devel@lfdr.de>; Mon, 28 Sep 2020 12:41:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CBE6E204BB;
	Mon, 28 Sep 2020 10:41:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cgCHS+tz7PpN; Mon, 28 Sep 2020 10:41:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B15C32047B;
	Mon, 28 Sep 2020 10:41:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3EE3F1BF405
 for <devel@linuxdriverproject.org>; Mon, 28 Sep 2020 10:41:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3B08D8560C
 for <devel@linuxdriverproject.org>; Mon, 28 Sep 2020 10:41:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tEMleoljT6ow for <devel@linuxdriverproject.org>;
 Mon, 28 Sep 2020 10:41:44 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from GBR01-CWL-obe.outbound.protection.outlook.com
 (mail-eopbgr110105.outbound.protection.outlook.com [40.107.11.105])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B55038560B
 for <devel@driverdev.osuosl.org>; Mon, 28 Sep 2020 10:41:43 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UAcoXDq3UaEE/rjY8OC+hZoQzzSxy4/ecUzUsqZBflY731t5zaTez0OTMrjnMq7YbJgvl9Vu0aMvLtLYNBsUsz+i87fPepywtcy3dsqAxq90rjHQoDise35TKXIMNCorC5+V0cuY1t7eLDanxmEpCjpmaK7JoMkj4PUzy10flgJTeY6DrHVhcrlFZ8Bk/S6blM2ujmgLgfOahqV1aSIRKFoARa37jgnhW/Vt4/GAswBEpXz4viQCci3FpBG/3mVp7NojNEwz7s/t7FJEY3tgsaSahNjP6PxQYtOS7m9A/E2YQyrn6hc0lJpyJca2DRfDjvSDQ4z9puoGQBsz5BjR7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aXussICYDt1GeqqN6M+erVdRYdk0soTIgN+DdPBngFE=;
 b=QmasOmeS2hYQX3NJnE4rhaV/BkpBBXDRjID8SweDtEyllfZhBNuqLUczLaedcuJnuQQPlHwqGFTkZb7Aq5E9NpLx+QbO609ySkI/D3ArcW7UBo5hFpYSX29otg97UphrzjXLMT8CwP3vQOGruCYKUR4c7VbZd8iarWkU01OSZkjtktiOtUU9YptS3PWRHR8tmoT1YvPvg9d3Ouhz93Bld+0/O69rlj6eV9J03XHbonjp0JUvnLzgCy7t9l0J3NOJDlsIdMuXgbCpbZlmZMx5i78+H5pf3Js4hTejxzFuU3mTURWZzFiDb2dbGiB925uHvVGQQ8v2zhumKxbRdvAD4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=purelifi.com; dmarc=pass action=none header.from=purelifi.com;
 dkim=pass header.d=purelifi.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=purevlc.onmicrosoft.com; s=selector2-purevlc-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aXussICYDt1GeqqN6M+erVdRYdk0soTIgN+DdPBngFE=;
 b=mlwobn/aHOp9d29u4HJI41ainXdPh3rDkU10b7zCcDkIn/CO7i7umDMQ2B+rM4FqJHs93x6URHMfmH0bh9IkBdA5BcE/3QxLxjw+LhK8izzpPcTF6qDEXg6bCkHMwBrTKixa8834Ps7sFFezWqoWevvWB4pZOiKscExo8xGRHuk=
Received: from CWLP265MB1972.GBRP265.PROD.OUTLOOK.COM (2603:10a6:400:6f::14)
 by CWLP265MB0324.GBRP265.PROD.OUTLOOK.COM (2603:10a6:401:1a::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3412.28; Mon, 28 Sep
 2020 10:27:38 +0000
Received: from CWLP265MB1972.GBRP265.PROD.OUTLOOK.COM
 ([fe80::e102:fffb:c3b6:780f]) by CWLP265MB1972.GBRP265.PROD.OUTLOOK.COM
 ([fe80::e102:fffb:c3b6:780f%8]) with mapi id 15.20.3412.029; Mon, 28 Sep 2020
 10:27:37 +0000
From: Srinivasan Raju <srini.raju@purelifi.com>
To: Randy Dunlap <rdunlap@infradead.org>
Subject: Re: [PATCH] staging: Initial driver submission for pureLiFi devices
Thread-Topic: [PATCH] staging: Initial driver submission for pureLiFi devices
Thread-Index: AQHWkoZE6X9fo+Lqi0q3sBmm77AkSal4G9iAgAXC0r0=
Date: Mon, 28 Sep 2020 10:27:37 +0000
Message-ID: <CWLP265MB197240BE125442129C3BCA9BE0350@CWLP265MB1972.GBRP265.PROD.OUTLOOK.COM>
References: <20200924151910.21693-1-srini.raju@purelifi.com>,
 <a57f6bf1-2504-577b-4316-ed609dbb17ee@infradead.org>
In-Reply-To: <a57f6bf1-2504-577b-4316-ed609dbb17ee@infradead.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: infradead.org; dkim=none (message not signed)
 header.d=none; infradead.org; dmarc=none action=none header.from=purelifi.com; 
x-originating-ip: [103.104.125.106]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 55d2ace4-e0df-409f-76ea-08d863991f57
x-ms-traffictypediagnostic: CWLP265MB0324:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CWLP265MB03248AF98A21BA6D5A948194E0350@CWLP265MB0324.GBRP265.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +ZgukHFyAl+vniBxU1+u5gRHt77TVOIVbAjFQSqQV8Ju/HfSQr48CwKNyr95Hg9Jhn7bcvg3evaRICMTBS5Iv+WZwg0+y/alsc+jDR7Cb0a0eXGshvL885QHplgKlVVgsOJNsq8fEPEnizz8fy8eYR/gPOWaNM43YdEYxCYcIv2+H/hcQ4dkC8Zwda28hUZcpGRIQ5nT1gdbMiREbmI/FLOzBzzAThrurf1CBp3H5cvj4DjUqQqbyBffoF6x84CLPtrncvIj/KfRY0QlaIUluChaE7NW4bjLsJd4H6D+3/2fKs5/SeR1MF/U9RZ3mB3b1k11Gb0PQ/kmTFdZmUMOlNMnMOr1i3Mfnmtkm4GHvR1qsJkmokEZ21th5gMQGGtl
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CWLP265MB1972.GBRP265.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(6029001)(4636009)(136003)(396003)(366004)(346002)(39830400003)(376002)(26005)(2906002)(8936002)(7696005)(8676002)(55016002)(9686003)(76116006)(316002)(33656002)(91956017)(4326008)(66946007)(186003)(54906003)(71200400001)(6506007)(52536014)(6916009)(5660300002)(558084003)(66446008)(478600001)(66556008)(64756008)(86362001)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: LBrrfWjYFDJv/JTzGOhBcPPEnR6SHBfcWdcJJJITWD+1+tmkRJl0Q5OvtCtFURLRScGDZpXDqcutDlmkVmQp81uBE94GzSKKBuTWtvx7NSNobqIgFwiDCdpTDVW5un7EQnvbbdeB5t3kAih+yNY2WaC2mAyyLAYnY2zZdl3PC9IgPOGzns8KJ461pkhYmy7J7nNGAPouatzPXoMZDKso92h+aR09WpVZAk12AIm5eYm5Au1RQ62JkCrEUgZyp93t+jMZivesH0g6Gr/LLnYn9WmpUz4upgiilzaoWpGJaGOFKOCwCbsLWlt0fWHjHXtyxiJZoSMcqhp0KPEm+/EXMYD0mPaf/rIlIG1soL8K8hnBscytCYTVJNWaeoBOq2vHl0rV14sLhiIyHyVbh4nj3SOdWEbyiv19qXpQDjHWgLT4kUtVovDCKGSC0Z0bms0IDM8zX5rmiDUQLTu19KJVRYgcG3HzxoQpqYaklCSOg2HNMq8gs1PNSkpApXyrlQUsWw3Z+wFrm847gcfpNEPvNzComrKO4JT/7BC5G+U9p269UBaV52hzmR5VbjrwEzSvtM4qBzcB1KN9GxuhqzJLyUxI1HdbY9nvp9HSoXjgmYOYFo7lUtVwRZO4NLm/ux2N79kKptPFWG0+gPuN5cueMA==
MIME-Version: 1.0
X-OriginatorOrg: purelifi.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CWLP265MB1972.GBRP265.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 55d2ace4-e0df-409f-76ea-08d863991f57
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Sep 2020 10:27:37.8971 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5cf4eba2-7b8f-4236-bed4-a2ac41f1a6dc
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NIfwaKKowe9Twxnlchpc8smFg3kpY67YmJveCKNqb7CgkLAF6yH+rIBYIXqfz6KMNK1U67po67ghJ17IIQyFXQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CWLP265MB0324
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Rob Herring <robh@kernel.org>, information <info@purelifi.com>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mostafa Afgani <mostafa.afgani@purelifi.com>,
 open list <linux-kernel@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


> It would be more common just to check for CONFIG_PURELIFI_AP in the source
> file(s) instead of adding a synonym for it.

Thanks for your comments Randy, Addressed your comments and resubmitted in /net/wireless

Thanks
Srini
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

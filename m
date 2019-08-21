Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 13ACB97DEE
	for <lists+driverdev-devel@lfdr.de>; Wed, 21 Aug 2019 17:01:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EE4F586F87;
	Wed, 21 Aug 2019 15:01:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d4pYkmOiWHei; Wed, 21 Aug 2019 15:01:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C01E186C37;
	Wed, 21 Aug 2019 15:01:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CFC741BF360
 for <devel@linuxdriverproject.org>; Wed, 21 Aug 2019 15:01:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C9C5386C37
 for <devel@linuxdriverproject.org>; Wed, 21 Aug 2019 15:01:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wzAHnmT5E1y9 for <devel@linuxdriverproject.org>;
 Wed, 21 Aug 2019 15:01:18 +0000 (UTC)
X-Greylist: delayed 02:31:33 by SQLgrey-1.7.6
Received: from EUR02-AM5-obe.outbound.protection.outlook.com
 (mail-eopbgr00065.outbound.protection.outlook.com [40.107.0.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id AE23186CB4
 for <devel@driverdev.osuosl.org>; Wed, 21 Aug 2019 15:01:17 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZLCGY5juTq329rcOrCULdNNvJb1/SohowXOsg9srtBFO+RUMT3xE+ZVxpx+lQcblcDLdCRCWUqnT3v0NLRe/NbSx823sin8gX0SoCtVoymVhdjNv/Axx6gOa70Y0J59TdZ+GDMeGEpc5UVGzjTZiOpq61AUZIjd7wUJE0x6SEuY6uoT7y0tcd8lzMzLu+7FUQv4PZiXNjIe8DBqzkK0iYIevZQ1eTYKU9ob3UlB7c7wT+WHIE6L8xd9GJVo0y63nU86ekXPsbJkBQK6NELGtPL6a6W0T9ziuPUZnSTLgs/uGQIX6NwYN86md6uy1rwOlGodf3ULyiRDRIFFPOpf82g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oLqbqxBOQN2/GPnlvANSCnHFiFVbmLEjPu39txbea6g=;
 b=CxSE3z5uq5FQ3r04uY6ETPnDAZmyd4h/0T26JZijXOEp6+5n4P8q2bTd7VvSAZbVUoubNTN6nk/lr9DDx3VV9PdQJ2V6XFBW8mg0/g6UTzvfzTVPv9mUQdSAykTsk6YLb+U6N3juqT/5bHdLzG+GtqbU5Cys+lC1M14sxxUtwtJEVVNJxAOr1RPMs4LyT29SfKqAY3Bg4EVOT5enID3BpwoRhbTJhk1ECKyteldgIvZuh2HPifoW5c62RvzYA7WQUMoCidTntit7aM2rNyG663DPMqS+3LBIM54SHLSdXyRe1eLVlC01EjFHoq8BlfksgSgzLszwpkySGgT3f/Wbjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=itdev.co.uk; dmarc=pass action=none header.from=itdev.co.uk;
 dkim=pass header.d=itdev.co.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=itdevltd.onmicrosoft.com; s=selector2-itdevltd-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oLqbqxBOQN2/GPnlvANSCnHFiFVbmLEjPu39txbea6g=;
 b=axDB/EoDsXhVAZmSF+RB/k1R74duriQRTFU5OxeYU6TCAzy3gggfyjshGiEknQ+bUJxLrtVDouaavyo2lNTf6uluH74yLfikTIaPvbVDXVr8ZBQGdHMv6ZN9zX5ix+oRIJzyO0Q/YuXBaa5V74jnPxORP7p2TebKZORd+jUpJyo=
Received: from VI1PR08MB3168.eurprd08.prod.outlook.com (52.133.15.143) by
 VI1PR08MB5535.eurprd08.prod.outlook.com (52.133.247.151) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Wed, 21 Aug 2019 12:29:39 +0000
Received: from VI1PR08MB3168.eurprd08.prod.outlook.com
 ([fe80::586d:db76:56c3:51e5]) by VI1PR08MB3168.eurprd08.prod.outlook.com
 ([fe80::586d:db76:56c3:51e5%6]) with mapi id 15.20.2178.018; Wed, 21 Aug 2019
 12:29:39 +0000
From: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
To: Markus Elfring <Markus.Elfring@web.de>
Subject: =?Windows-1252?Q?Re:_[PATCH]_staging:_vt6656:_Delete_an_unnecessary_check?=
 =?Windows-1252?Q?_before_the_macro_call_=93dev=5Fkfree=5Fskb=94?=
Thread-Topic: =?Windows-1252?Q?[PATCH]_staging:_vt6656:_Delete_an_unnecessary_check_bef?=
 =?Windows-1252?Q?ore_the_macro_call_=93dev=5Fkfree=5Fskb=94?=
Thread-Index: AQHVWBkdo33lx9Cu5UScsQk7wN549acFh/6A
Date: Wed, 21 Aug 2019 12:29:39 +0000
Message-ID: <20190821122936.GA17249@qd-ubuntu>
References: <ff6e12fb-f144-351b-25e9-a864b58d7acf@web.de>
In-Reply-To: <ff6e12fb-f144-351b-25e9-a864b58d7acf@web.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LO2P265CA0265.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a1::13) To VI1PR08MB3168.eurprd08.prod.outlook.com
 (2603:10a6:803:47::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=quentin.deslandes@itdev.co.uk; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [89.21.227.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f077eee4-0ce7-4f88-c61c-08d726333c50
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(5600148)(711020)(4605104)(1401327)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(2017052603328)(7193020);
 SRVR:VI1PR08MB5535; 
x-ms-traffictypediagnostic: VI1PR08MB5535:
x-microsoft-antispam-prvs: <VI1PR08MB553585B9854D3C362E493C09B3AA0@VI1PR08MB5535.eurprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1751;
x-forefront-prvs: 0136C1DDA4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(7916004)(136003)(366004)(396003)(376002)(346002)(39830400003)(199004)(189003)(5660300002)(476003)(2906002)(446003)(66946007)(305945005)(11346002)(53936002)(44832011)(3846002)(6116002)(6486002)(86362001)(66446008)(66476007)(66556008)(64756008)(102836004)(8936002)(186003)(486006)(7736002)(6246003)(81156014)(6512007)(9686003)(6506007)(386003)(81166006)(26005)(508600001)(6916009)(229853002)(76176011)(256004)(6436002)(33656002)(66066001)(99286004)(71200400001)(4744005)(316002)(1076003)(54906003)(25786009)(33716001)(14454004)(4326008)(71190400001)(52116002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR08MB5535;
 H:VI1PR08MB3168.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: itdev.co.uk does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: eILLsWoQQI+u7jgGSq+pjbbXhgDVDsIjV8YMBVGBrmrF22sw7nq1pVB9qDX0D3tbNI5SH/0aCYu/b+CU59eN6wzDEr+A7JTzlpLy7wJYNE6NJEfsy7crz3t+iC7I/5SWyfd51fDTJNYsSo7ooJ+R+pIJqbQYzNyBlwZgyOCiTZcfl9b1CZ1flyle+N+iEm5CyQfMFQIwjDcLZ3+mS1pfg0g866r4HlQsZz+qI7SI3jOBzHyHG5Md+e1ER2MJPJOdhF64OveAxKvl0082qRs/WBuzQi9XNAkpWdPvcz69DSZjk2TJxjZ/aBpBsrvoB1jVagXWLKwnUSaX+PpMSKm0K/XklYIqcZYQq2OSD/iMiOFI/dpJcLDaMJJW3SYVJXMdFq0F3ylKL8i5hZdc1LnxVLo53TM5Tb2HsujwSoSSm00=
x-ms-exchange-transport-forked: True
Content-ID: <A94C004902C25A41B81281DBB938D576@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: itdev.co.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: f077eee4-0ce7-4f88-c61c-08d726333c50
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Aug 2019 12:29:39.5467 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 2d2930c4-2251-45b4-ad79-3582c5f41740
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3V++MHc9rJRi/MR6o+yUBlBncSqDs+epd2F8hPK/PYuFgus1JYgLC+bxeqTLpFr4xnenOsnIKUeSQQF2Nw9FRf9kYhR7Cob2ZHv+OMm9tws=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB5535
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>,
 Forest Bond <forest@alittletooquiet.net>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Aug 21, 2019 at 02:07:56PM +0200, Markus Elfring wrote:
> From: Markus Elfring <elfring@users.sourceforge.net>
> Date: Wed, 21 Aug 2019 13:56:35 +0200
> 
> The dev_kfree_skb() function performs also input parameter validation.
> Thus the test around the call is not needed.
> 
> This issue was detected by using the Coccinelle software.
> 
> Signed-off-by: Markus Elfring <elfring@users.sourceforge.net>
> ---
>  drivers/staging/vt6656/main_usb.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/vt6656/main_usb.c b/drivers/staging/vt6656/main_usb.c
> index 856ba97aec4f..f57e890659aa 100644
> --- a/drivers/staging/vt6656/main_usb.c
> +++ b/drivers/staging/vt6656/main_usb.c
> @@ -422,8 +422,7 @@ static void vnt_free_rx_bufs(struct vnt_private *priv)
>  		}
> 
>  		/* deallocate skb */
> -		if (rcb->skb)
> -			dev_kfree_skb(rcb->skb);
> +		dev_kfree_skb(rcb->skb);
> 
>  		kfree(rcb);
>  	}
> --
> 2.23.0
> 

Reviewed-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>

Regards,
Quentin
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

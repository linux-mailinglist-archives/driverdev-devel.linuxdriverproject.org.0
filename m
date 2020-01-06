Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 143F8131AEC
	for <lists+driverdev-devel@lfdr.de>; Mon,  6 Jan 2020 23:00:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2BF418679E;
	Mon,  6 Jan 2020 22:00:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Sr-eKfWyzyZy; Mon,  6 Jan 2020 22:00:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 91E6D866E5;
	Mon,  6 Jan 2020 22:00:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 499A71BF20D
 for <devel@linuxdriverproject.org>; Mon,  6 Jan 2020 22:00:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 411C622720
 for <devel@linuxdriverproject.org>; Mon,  6 Jan 2020 22:00:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lPjwdpdBMFOg for <devel@linuxdriverproject.org>;
 Mon,  6 Jan 2020 21:59:58 +0000 (UTC)
X-Greylist: delayed 00:14:35 by SQLgrey-1.7.6
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
 (mail-vi1eur05on2050.outbound.protection.outlook.com [40.107.21.50])
 by silver.osuosl.org (Postfix) with ESMTPS id 08508204E4
 for <devel@driverdev.osuosl.org>; Mon,  6 Jan 2020 21:59:57 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NUwYM6ZE2AMlhO3szRhlXHBMDEj229iw0a1BrtzrZO9ublz+UYne6AfZAM7V4VaJqh938B8JeUVMGkY2UMell5HYhltTPtFkXstp9LBFGvCVQMxE8lbxinHsXz586Y1lREeYEhcvWpUa+jrjdf+EoYrtHIZmz/migGowEwhWmborvVJhyLejN84vnm/WrzTWGf2e1SajFw3pMrqt6TmidY1a4ck14MFmBwnMFJxkrCisI5u5H52KiwkeKaJND+YcCbTXjrzACmqv3usmuG6ePpid9Lb6qXOl2MT/+kU3J2N4Mrtry8zB5K2P/fU0KApLOPRKmWth5y+ePhrzigNPzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Gvjs+rXZrZsXLPctegPht/ltNqL/RJEn/xT1ze+XDew=;
 b=OjTnpW/bTb4LLZ0GrVZnDbjbOj6EzQrJ5KymAv3wdH5sTH8XMBWK+iVbuV3fLVgjpHHt0wm/oKgecUqmF4G/Df5BYDg+o9ixQcshj+2t9Yus9r8C0jsarv8oN9izU/672gn+rhUBTPsiXCw4QRs8baA6rEGjMZj0krsrlTuPPugMKlzeI7693ZJkOwUEIxx6q+Iunte3fHwiu6W9wlEaS1PYptugn/6mxG1l6fW8bCA//yKLgJuE9OeUXZNRKghJgACuwsjrOKlCr+cEjUSlWQo0xbSZCfGqMbhP0L9yMVqt2nGkC/CZuOeZIv6wn7hXEqX3HJE9lDhDZJ28Wfgoow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=itdev.co.uk; dmarc=pass action=none header.from=itdev.co.uk;
 dkim=pass header.d=itdev.co.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=itdevltd.onmicrosoft.com; s=selector2-itdevltd-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Gvjs+rXZrZsXLPctegPht/ltNqL/RJEn/xT1ze+XDew=;
 b=YIQeOHZXIMeTamX3M9FMnjd55N24yxOHm11lHWvPAIzXIr5bc+t27AzxQomK3I4UFyfC1Ymvk/I+YMGfhMWgCAsQyfsayP4gL/s/OJ9PorWvVzQtXCO/annpLKlu4eT9isupKqUyCAwzAJCPelKAh++4Z2n95gpXFH3POG5oWGE=
Received: from DBBPR08MB4491.eurprd08.prod.outlook.com (20.179.44.144) by
 DBBPR08MB4838.eurprd08.prod.outlook.com (10.255.79.202) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.12; Mon, 6 Jan 2020 21:45:20 +0000
Received: from DBBPR08MB4491.eurprd08.prod.outlook.com
 ([fe80::11b4:6ffd:de3:a862]) by DBBPR08MB4491.eurprd08.prod.outlook.com
 ([fe80::11b4:6ffd:de3:a862%5]) with mapi id 15.20.2602.015; Mon, 6 Jan 2020
 21:45:20 +0000
Received: from jiffies (54.37.17.75) by LO2P265CA0222.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:b::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2602.11 via Frontend
 Transport; Mon, 6 Jan 2020 21:45:19 +0000
From: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH 1/5] staging: vt6656: Fix non zero logical return of,
 usb_control_msg
Thread-Topic: [PATCH 1/5] staging: vt6656: Fix non zero logical return of,
 usb_control_msg
Thread-Index: AQHVwiS5TJ/e4byEDUuwSY/vq1EUWafeMOMA
Date: Mon, 6 Jan 2020 21:45:20 +0000
Message-ID: <20200106214518.GB54084@jiffies>
References: <08e88842-6f78-a2e3-a7a0-139fec960b2b@gmail.com>
 <20200103105734.GD3911@kadam>
In-Reply-To: <20200103105734.GD3911@kadam>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LO2P265CA0222.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:b::18) To DBBPR08MB4491.eurprd08.prod.outlook.com
 (2603:10a6:10:d2::16)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=quentin.deslandes@itdev.co.uk; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [54.37.17.75]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8c8e472a-9d72-43a1-88f8-08d792f1b9f1
x-ms-traffictypediagnostic: DBBPR08MB4838:
x-microsoft-antispam-prvs: <DBBPR08MB48388B45F4C3CED25A31757AB33C0@DBBPR08MB4838.eurprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0274272F87
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(376002)(396003)(366004)(39830400003)(136003)(199004)(189003)(66476007)(4326008)(33716001)(64756008)(66556008)(66946007)(66446008)(33656002)(6916009)(54906003)(316002)(8936002)(81156014)(44832011)(1076003)(9576002)(508600001)(5660300002)(8676002)(81166006)(52116002)(2906002)(6666004)(86362001)(26005)(55016002)(6496006)(9686003)(53546011)(956004)(71200400001)(16526019)(186003)(55236004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DBBPR08MB4838;
 H:DBBPR08MB4491.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: itdev.co.uk does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3vI+U8icpobYKZ6VITfCFTIDn0tWOSCPAK5U4uhFcgdIMllg3Hrg6V3Qz/n82MxGFy3WuZZZuuRrTiPxB7ZJxh6zwsl7ZYg8jqjLeZwIVOmoRfykyQkVGtDIlSb2/rEGky5CiJTIl8Zg60Mmkz3/1Dab1SN/A52THQhz0OIy7+X4MNDm5+q6Rmw1p5nm0jyy3PelL1hrLr9NsQFgjK5SNTi7ReFdySaXCJfWkI1QBe0YTzthbdlwyKpCq4cdZ9zuM9hqfvdPWiS733FLfZrI2oJd9CPKLQg8x88o4/SZR9u1IG9ZfAyt11bbuNafFMcymtMMaeVulK2UeWOC1gPtobIq+jLk67aoilRgITsvhL9KuzObzdjyirTyNEuQyw6xseBEaLOvu7Vy1+qPMTqWZ9afTI85fMz4EST2A3LC7Jwjlf6dFP90FsnfnBNjlhbo
x-ms-exchange-transport-forked: True
Content-ID: <021625D9A06F694C97F53D7AA0CA1D14@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: itdev.co.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c8e472a-9d72-43a1-88f8-08d792f1b9f1
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jan 2020 21:45:20.2821 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 2d2930c4-2251-45b4-ad79-3582c5f41740
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4P466se7kjJsnd9ojW3m3k3AnBZ5TK2ne8GoN3s9Dr2cFgphs2Ub14U+MnFe43Xo/DDcEZbPkRoFTgmnlGXgYylQp7uhwatD90Vl2t45kIc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB4838
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
Cc: Malcolm Priestley <tvboxspy@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 01/03/20 13:58:08, Dan Carpenter wrote:
> On Fri, Dec 20, 2019 at 09:14:59PM +0000, Malcolm Priestley wrote:
> > Starting with commit 59608cb1de1856
> > ("staging: vt6656: clean function's error path in usbpipe.c")
> > the usb control functions have returned errors throughout driver
> > with only logical variable checking.
> 
> Use the Fixes tag for this.
> 
> Fixes: 59608cb1de18 ("staging: vt6656: clean function's error path in usbpipe.c")
> 
> 12 digits to the hash.  Add Quentin to the CC list.
> 
> > 
> > However, usb_control_msg return the amount of bytes transferred
> > this means that normal operation causes errors.
> > 
> > Correct the return function so only return zero when transfer
> > is successful.
> > 
> > Cc: stable <stable@vger.kernel.org> # v5.3+
> > Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
> > ---
> >  drivers/staging/vt6656/usbpipe.c | 8 ++++++--
> >  1 file changed, 6 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/staging/vt6656/usbpipe.c b/drivers/staging/vt6656/usbpipe.c
> > index d3304df6bd53..488ebd98773d 100644
> > --- a/drivers/staging/vt6656/usbpipe.c
> > +++ b/drivers/staging/vt6656/usbpipe.c
> > @@ -59,7 +59,9 @@ int vnt_control_out(struct vnt_private *priv, u8 request, u16 value,
> >  
> >  	kfree(usb_buffer);
> >  
> > -	if (ret >= 0 && ret < (int)length)
> > +	if (ret == (int)length)
> 
> No need for this cast (no need in the original either).
> 
> > +		ret = 0;
> > +	else
> >  		ret = -EIO;
> 
> It would be better to preserve the error codes from usb_control_msg().
> 
> 	if (ret == length)
> 		ret = 0;
> 	else if (ret >= 0)
> 		ret = -EIO;
> 
> regards,
> dan carpenter
> 

Thanks for CC.

Nice catch. Dan is right, we should forward any error code from
usb_control_msg().

Regards,
Quentin Deslandes
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

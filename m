Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FF2A19BEB9
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Apr 2020 11:34:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0489386D61;
	Thu,  2 Apr 2020 09:34:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LKEDLuWQ-9kD; Thu,  2 Apr 2020 09:34:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AC80385E27;
	Thu,  2 Apr 2020 09:34:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A4D451BF32B
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 09:33:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9E5E085E27
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 09:33:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5s97IvLWep6B for <devel@linuxdriverproject.org>;
 Thu,  2 Apr 2020 09:33:57 +0000 (UTC)
X-Greylist: delayed 00:14:34 by SQLgrey-1.7.6
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
 (mail-db8eur05on2058.outbound.protection.outlook.com [40.107.20.58])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E08EF85D59
 for <devel@driverdev.osuosl.org>; Thu,  2 Apr 2020 09:33:56 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B6ReMiGa1tEI/jP8zB+J1GmfmjoARiw5zgFhe2Nv1WkobBjS+2iUtztLDaVoXgN7EcVLWaH63UeDkevCY87Slr9W3e4VNG/VGq7C5OVd+lgiZBJir4vDjC2vtDP+AzCIcThVz8NIE7f0jwDIphje2iqWPKWYc8L9MJX0nLC8lLc6QJgQBpULUYZSp2B7b7NhgZod1azKh4hFgzE57wF9yukny8Pn/LhCGU0PoML5J6gy2UwbyqF0Hf9P9HI6qoJK8rG6uxrAP6bfzdfaLDsaxu2Rd+U/wD1rnhErZBZhwB1g8Sgz1A8+1WsbJBV3TNP+emOgQSdjXslPrJrKNkUv1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cONIPHo3DaIw3IAmhK8U9+X801g6ClQ4vjWscwqQbwI=;
 b=iMT+uYh7/tMR//MxbA/DTqzImG/ynkBNSAWK0X9Gp0gTseOSPYHN15U7cTomyaNn8A9F2uAG9hN1o5a1w2XtpZn/pxeG5S5d27zNGvGDc3k5Yam8rHDt4VZ9msw/AOjXYD/e3zjNbpezVWIHy0l4Ms3ZhDUCaN1mOKtHqC/c8saEKdQXYvpoRmKIx2y2suBCazvx2V3Qf6oi8JGEIyG7bzAghD02EdM4Kmyl6wz3G62WKiHtN852DcRs8IFoEQy9lxSK7A6oncy55sycEKYblpzOv+zTEL/W0qeh0Wj1PlQ1M/IByh9BmX6H7Sf3arLDt7zI1hF5+GSEOLx+vME2gQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=itdev.co.uk; dmarc=pass action=none header.from=itdev.co.uk;
 dkim=pass header.d=itdev.co.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=itdevltd.onmicrosoft.com; s=selector2-itdevltd-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cONIPHo3DaIw3IAmhK8U9+X801g6ClQ4vjWscwqQbwI=;
 b=B4WkmXfde5bfVv3pM+vYgC5y95Qhhtl2BBOWSzQJIZSVf2i7ZAwcWpLRPr93bPQfsnFzpVJKTc7Z9Xj6QrxWS5M5hok2YE+e9S/8+bvXOinE5/tET2YMP9x3Nq3+Ck8AfLHJtBEcjHeVSFurzmIdfJSfUxSigh2fOY8AYWDOtpE=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=quentin.deslandes@itdev.co.uk; 
Received: from DBBPR08MB4491.eurprd08.prod.outlook.com (20.179.44.144) by
 DBBSPR01MB0006.eurprd08.prod.outlook.com (20.179.47.213) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2878.15; Thu, 2 Apr 2020 09:19:19 +0000
Received: from DBBPR08MB4491.eurprd08.prod.outlook.com
 ([fe80::cce9:f055:f034:3659]) by DBBPR08MB4491.eurprd08.prod.outlook.com
 ([fe80::cce9:f055:f034:3659%4]) with mapi id 15.20.2878.016; Thu, 2 Apr 2020
 09:19:19 +0000
Date: Thu, 2 Apr 2020 10:19:17 +0100
From: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
To: Oscar Carter <oscar.carter@gmx.com>
Subject: Re: [PATCH] staging: vt6656: Use defines in vnt_mac_reg_bits_*
 functions
Message-ID: <20200402091917.GA17323@jiffies>
References: <20200328095433.7879-1-oscar.carter@gmx.com>
 <20200331102906.GA2066@kadam> <20200401165537.GC3109@ubuntu>
Content-Disposition: inline
In-Reply-To: <20200401165537.GC3109@ubuntu>
X-ClientProxiedBy: LO2P265CA0096.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:8::36) To DBBPR08MB4491.eurprd08.prod.outlook.com
 (2603:10a6:10:d2::16)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from jiffies (5.151.93.48) by LO2P265CA0096.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:8::36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2856.20 via Frontend
 Transport; Thu, 2 Apr 2020 09:19:18 +0000
X-Originating-IP: [5.151.93.48]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7f4ccc0e-44bc-4600-4602-08d7d6e6ec3f
X-MS-TrafficTypeDiagnostic: DBBSPR01MB0006:
X-Microsoft-Antispam-PRVS: <DBBSPR01MB0006C60F282FB5729B2E3F1CB3C60@DBBSPR01MB0006.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-Forefront-PRVS: 0361212EA8
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4491.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(346002)(39830400003)(396003)(366004)(136003)(376002)(8936002)(81156014)(6916009)(4326008)(55016002)(66476007)(44832011)(9576002)(1076003)(5660300002)(33656002)(66946007)(9686003)(66556008)(7416002)(86362001)(26005)(8676002)(52116002)(2906002)(54906003)(81166006)(33716001)(508600001)(956004)(16526019)(6496006)(186003)(316002)(53546011)(518174003);
 DIR:OUT; SFP:1101; 
Received-SPF: None (protection.outlook.com: itdev.co.uk does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: n4u0K6O63BDc/gC9mbx2arKxvK3uUoizy1LQR+NT+Uo4zlv3g1cI1HdXCjE1VQsEIvNHe/kr7Nt6zu+fCd2SzFVnP4HBa5X1zIwG2mrD2wYGvTuE/7wZ9q22QYpJpDZFIJwzbP0VVREYOAnkrM5w7Hq1vjvX/b8PUM04RilJwoogPyUCcqsDcqNOq7+FoBD0wZn3UO5y/yARTxJW8XlZVemNibBk/9WLtxnOjtcF6hxNeMY+FEviK4WDBvjyKmroZZt18psZEcd7dhzH+PidRFf9Our0Be7sb57xiPVeL9LZsoiWOpUhKih98U9GGSTCrZp1/3iSDEyqB6pfomIf7+FnNQnBD8E9r3eJtoHv+EzxSUUbC+PrE+KWP4LeE4K0NfybnOaBvSf/nuGclTHZiOAynsMPeETdm4BuQSHV+Fg2C8UrdjYcH5L1gygGwECa8fOXMKipdG2kYVpzYZ4xpWSQBMWoqy4hu/eB5+M406JYeXii7lunD+/xwoprH6BM
X-MS-Exchange-AntiSpam-MessageData: wNe6RYRJg9FZFDEDU3m4Uw3Bgneik9mZ18cQMwragI0OLyi6llxaGkatlyrNrxxtE82fhuaA1HZ3G6L+pq7EMo0YRKKZ+Hbfe/jlsVnJKfS4cDPZCHgz7Ghj9MpTuTzwv/khEjDeMni8Tidpo+xWFg==
X-OriginatorOrg: itdev.co.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f4ccc0e-44bc-4600-4602-08d7d6e6ec3f
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Apr 2020 09:19:19.4294 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2d2930c4-2251-45b4-ad79-3582c5f41740
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rgxYo4Z0cVdgBPZl1NOvyJjYc8TcLeXALWTXZ/7g0YDGRjkBvb8jMCV6Uj151Ou353DduwXBix/8gic9VwM1OPX3O5grZks+t4+e8Ms8YEw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBSPR01MB0006
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
Cc: devel@driverdev.osuosl.org, Malcolm Priestley <tvboxspy@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Forest Bond <forest@alittletooquiet.net>,
 Gabriela Bittencourt <gabrielabittencourt00@gmail.com>,
 Colin Ian King <colin.king@canonical.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 04/01/20 18:55:38, Oscar Carter wrote:
> On Tue, Mar 31, 2020 at 01:29:06PM +0300, Dan Carpenter wrote:
> > On Sat, Mar 28, 2020 at 10:54:33AM +0100, Oscar Carter wrote:
> > > Define the necessary bits in the CHANNEL, PAPEDELAY and GPIOCTL0
> > > registers to can use them in the calls to vnt_mac_reg_bits_on and
> > > vnt_mac_reg_bits_off functions. In this way, avoid the use of BIT()
> > > macros and clarify the code.
> > >
> > > Fixes: 3017e587e368 ("staging: vt6656: Use BIT() macro in vnt_mac_reg_bits_* functions")
> > > Suggested-by: Dan Carpenter <dan.carpenter@oracle.com>
> > > Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
> > > ---
> > >  drivers/staging/vt6656/baseband.c |  6 ++++--
> > >  drivers/staging/vt6656/card.c     |  3 +--
> > >  drivers/staging/vt6656/mac.h      | 12 ++++++++++++
> > >  drivers/staging/vt6656/main_usb.c |  2 +-
> > >  4 files changed, 18 insertions(+), 5 deletions(-)
> > >
> > > diff --git a/drivers/staging/vt6656/baseband.c b/drivers/staging/vt6656/baseband.c
> > > index a19a563d8bcc..dd3c3bf5e8b5 100644
> > > --- a/drivers/staging/vt6656/baseband.c
> > > +++ b/drivers/staging/vt6656/baseband.c
> > > @@ -442,7 +442,8 @@ int vnt_vt3184_init(struct vnt_private *priv)
> > >  		if (ret)
> > >  			goto end;
> > >
> > > -		ret = vnt_mac_reg_bits_on(priv, MAC_REG_PAPEDELAY, BIT(0));
> > > +		ret = vnt_mac_reg_bits_on(priv, MAC_REG_PAPEDELAY,
> > > +					  PAPEDELAY_B0);
> >
> > This doesn't clarify anything.  It makes it less clear because someone
> > would assume B0 means something but it's just hiding a magic number
> > behind a meaningless define.  B0 means BIT(0) which means nothing.  So
> > now we have to jump through two hoops to find out that we don't know
> > anything.
> >
> I created this names due to the lack of information about the hardware. I
> searched but I did not find anything.
> 
> > Just leave it as-is.  Same for the rest.
> Ok.
> 
> >
> > There problem is a hardware spec which explains what this stuff is.
> >
> It's possible to find a datasheet of this hardware to make this modification
> accordingly to the correct bit names of registers ?

I haven't found any so far, if your researches are luckier than mine, I
would be interested too. Even getting your hands on the actual device is
complicated.

Thanks,
Quentin
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

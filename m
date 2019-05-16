Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 657B920419
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 May 2019 13:09:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E1D7A87288;
	Thu, 16 May 2019 11:09:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nifrMXL2Rzkw; Thu, 16 May 2019 11:09:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A59D287097;
	Thu, 16 May 2019 11:09:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D77631BF343
 for <devel@linuxdriverproject.org>; Thu, 16 May 2019 11:09:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D42CE87261
 for <devel@linuxdriverproject.org>; Thu, 16 May 2019 11:09:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OP1HoIcgEMZU for <devel@linuxdriverproject.org>;
 Thu, 16 May 2019 11:09:04 +0000 (UTC)
X-Greylist: delayed 00:09:38 by SQLgrey-1.7.6
Received: from EUR02-AM5-obe.outbound.protection.outlook.com
 (mail-eopbgr00079.outbound.protection.outlook.com [40.107.0.79])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0930E86DAE
 for <devel@driverdev.osuosl.org>; Thu, 16 May 2019 11:09:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=itdevltd.onmicrosoft.com; s=selector1-itdevltd-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9qccUdhnmdBW4Z5bLa6fiQHLDIDBOpy8mTBQcMI+QQE=;
 b=gdfuCTGaAtocOdTrOu05p3dhN60+WOVNulIWjU2xko474zven5m7pnV9tOKbAdHadi0QvGzyjyRMm0kW+461kS91MUzBH9qbjioFb3yWL4lNnHAOQ94xKa6GHVG8+Gp/sDyItLCC+bAr2muC8lzdwqoK2dXOy8yXVaf7BtTPnmE=
Received: from VI1PR08MB3168.eurprd08.prod.outlook.com (52.133.15.143) by
 VI1SPR01MB333.eurprd08.prod.outlook.com (52.134.27.161) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.16; Thu, 16 May 2019 10:27:31 +0000
Received: from VI1PR08MB3168.eurprd08.prod.outlook.com
 ([fe80::8e9:9487:4f0a:fdaf]) by VI1PR08MB3168.eurprd08.prod.outlook.com
 ([fe80::8e9:9487:4f0a:fdaf%3]) with mapi id 15.20.1878.024; Thu, 16 May 2019
 10:27:31 +0000
From: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] staging: vt6656: remove unused variable
Thread-Topic: [PATCH] staging: vt6656: remove unused variable
Thread-Index: AQHVC8oVWbJV7t4C7kCfosLx3wTTvKZtfwmAgAATxID///dsgIAAAh4A
Date: Thu, 16 May 2019 10:27:31 +0000
Message-ID: <20190516102728.GA3884@qd-ubuntu>
References: <20190516093046.1400-1-quentin.deslandes@itdev.co.uk>
 <20190516093951.GA19798@kroah.com> <20190516095035.GA1692@qd-ubuntu>
 <20190516101953.GA22358@kroah.com>
In-Reply-To: <20190516101953.GA22358@kroah.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM6PR07CA0029.eurprd07.prod.outlook.com
 (2603:10a6:209:2a::42) To VI1PR08MB3168.eurprd08.prod.outlook.com
 (2603:10a6:803:47::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=quentin.deslandes@itdev.co.uk; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [89.21.227.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 99a5144d-e94c-45f8-091e-08d6d9e91a41
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:VI1SPR01MB333; 
X-MS-TrafficTypeDiagnostic: VI1SPR01MB333:|VI1SPR01MB333:|VI1SPR01MB333:
x-microsoft-antispam-prvs: <VI1SPR01MB33341FBDE9BD4953B5A9612B30A0@VI1SPR01MB333.eurprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0039C6E5C5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(979002)(7916004)(346002)(376002)(39830400003)(366004)(396003)(136003)(51444003)(199004)(189003)(40764003)(316002)(2906002)(7736002)(11346002)(305945005)(68736007)(486006)(508600001)(476003)(66066001)(229853002)(446003)(26005)(186003)(6246003)(8676002)(14454004)(76176011)(33716001)(386003)(6506007)(9686003)(6512007)(99286004)(54906003)(52116002)(66476007)(66556008)(64756008)(66446008)(73956011)(66946007)(102836004)(53936002)(25786009)(1076003)(6486002)(71200400001)(6116002)(6436002)(4326008)(71190400001)(81166006)(256004)(3846002)(8936002)(14444005)(86362001)(33656002)(6916009)(81156014)(5660300002)(74482002)(44832011)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1SPR01MB333;
 H:VI1PR08MB3168.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: itdev.co.uk does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Ke87eIHk4wZ3WPMx+GhB1r/k3bCntXfvTky13ab/xGDtW/w0nz+8VjW5+zqiYSGgC9JiXvIuhS9+fcM5krWOad4XhlSayF67wslEub9ivsEn/2Tj8OKMt8Qjok+Jz0dlSEMhqdcCfldIEHtnBhJRL1nXaBaqbAmzYXIYiX9OVyfzm+PHo6rwQL6i2Dz8RdCgTLfZgdMrOoceXRsiIsX29Pc6UhV/VArxWhRi2Jn2HiLihIAeVn+uEwwTNA0fTLdL6jGPeYcB+DZ5VDQUl0zwu/7H7W0Xsf0HTC5VzscLvpznkEQ/fayGqB18uA198L0sWy/aIPM81n3+ZXJbNPU56vGv5XDVpCg9PgBnH9u7uE0ZYNi2wdOAsu5fL1zz/FE3kybHPTZ83MYyS/jjV17OCaDdQZ5eESVKpaHndZ2g2BU=
Content-ID: <5AD57285E719E34DACF59958AD5054C9@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 99a5144d-e94c-45f8-091e-08d6d9e91a41
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 May 2019 10:27:31.3463 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 2d2930c4-2251-45b4-ad79-3582c5f41740
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1SPR01MB333
X-OriginatorOrg: itdev.co.uk
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
 "kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>,
 Forest Bond <forest@alittletooquiet.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, May 16, 2019 at 12:19:53PM +0200, Greg Kroah-Hartman wrote:
> On Thu, May 16, 2019 at 09:50:38AM +0000, Quentin Deslandes wrote:
> > On Thu, May 16, 2019 at 11:39:51AM +0200, Greg Kroah-Hartman wrote:
> > > On Thu, May 16, 2019 at 09:31:05AM +0000, Quentin Deslandes wrote:
> > > > Fixed 'set but not used' warning message on a status variable. The
> > > > called function returning the status code 'vnt_start_interrupt_urb()'
> > > > clean up after itself and the caller function
> > > > 'vnt_int_start_interrupt()' does not returns any value.
> > > > 
> > > > Signed-off-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
> > > > ---
> > > >  drivers/staging/vt6656/int.c | 3 +--
> > > >  1 file changed, 1 insertion(+), 2 deletions(-)
> > > > 
> > > > diff --git a/drivers/staging/vt6656/int.c b/drivers/staging/vt6656/int.c
> > > > index 504424b19fcf..ac30ce72db5a 100644
> > > > --- a/drivers/staging/vt6656/int.c
> > > > +++ b/drivers/staging/vt6656/int.c
> > > > @@ -42,13 +42,12 @@ static const u8 fallback_rate1[5][5] = {
> > > >  void vnt_int_start_interrupt(struct vnt_private *priv)
> > > >  {
> > > >  	unsigned long flags;
> > > > -	int status;
> > > >  
> > > >  	dev_dbg(&priv->usb->dev, "---->Interrupt Polling Thread\n");
> > > >  
> > > >  	spin_lock_irqsave(&priv->lock, flags);
> > > >  
> > > > -	status = vnt_start_interrupt_urb(priv);
> > > > +	vnt_start_interrupt_urb(priv);
> > > 
> > > Shouldn't you fix this by erroring out if this fails?  Why ignore the
> > > errors?
> > > 
> > > thanks,
> > > 
> > > greg k-h
> > 
> > I could, however 'vnt_start_interrupt_urb()' already call 'dev_dbg()' if
> > it fails. Nothing is done after this debug call except returning an
> > error code.
> 
> Returning an error code is fine for that function.  But then you have to
> do something with that error.
> 
> > 'vnt_int_start_interrupt()' should, IMHO, return a status code, but the
> > original developer may have good reasons not to do so.
> 
> I think that is the real problem that needs to be fixed here, don't
> paper over the issue by ignoring the return value.
> 
> thanks,
> 
> greg k-h

Thus I'll return an error value to handle this in the caller function
and then send a v2.

Thank you for your help,
Quentin
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

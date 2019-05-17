Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F199F21958
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 May 2019 15:50:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D0E638798D;
	Fri, 17 May 2019 13:50:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TEGdGOD2wffi; Fri, 17 May 2019 13:50:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2551487977;
	Fri, 17 May 2019 13:50:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5D85E1BF322
 for <devel@linuxdriverproject.org>; Fri, 17 May 2019 13:50:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 59EAF822AE
 for <devel@linuxdriverproject.org>; Fri, 17 May 2019 13:50:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9ry3porxFv94 for <devel@linuxdriverproject.org>;
 Fri, 17 May 2019 13:50:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from EUR03-AM5-obe.outbound.protection.outlook.com
 (mail-eopbgr30041.outbound.protection.outlook.com [40.107.3.41])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 40A5281A62
 for <devel@driverdev.osuosl.org>; Fri, 17 May 2019 13:50:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=itdevltd.onmicrosoft.com; s=selector1-itdevltd-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4Bq7kxBYjSuOHBzHUWiVirE24zmLr+g86XteVOR1cZo=;
 b=aI2em27oo6vCRHywUqDi76TC+/kf1026UtdBSoo59M7LUtBnP9yzG6tmICAWqYXRtPMqhAuVyQjRmUlBthrP/PbNdoxU7mfydnNUTfL/33ZF2qu++fA6lNtIc/27LE1bz1pSTTnVtHCeQDGQeM3A/RJbCJG2MZB7HNdhXJBuMsE=
Received: from VI1PR08MB3168.eurprd08.prod.outlook.com (52.133.15.143) by
 VI1PR08MB3264.eurprd08.prod.outlook.com (52.134.30.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.17; Fri, 17 May 2019 13:15:43 +0000
Received: from VI1PR08MB3168.eurprd08.prod.outlook.com
 ([fe80::8e9:9487:4f0a:fdaf]) by VI1PR08MB3168.eurprd08.prod.outlook.com
 ([fe80::8e9:9487:4f0a:fdaf%3]) with mapi id 15.20.1878.028; Fri, 17 May 2019
 13:15:43 +0000
From: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v3] staging: vt6656: returns error code on
 vnt_int_start_interrupt fail
Thread-Topic: [PATCH v3] staging: vt6656: returns error code on
 vnt_int_start_interrupt fail
Thread-Index: AQHVDIWpJheiltxkuEGGqxIJz+Vw2aZvCaCAgABClAA=
Date: Fri, 17 May 2019 13:15:43 +0000
Message-ID: <20190517131539.GA9842@qd-ubuntu>
References: <20190516093046.1400-1-quentin.deslandes@itdev.co.uk>
 <20190517075331.3658-1-quentin.deslandes@itdev.co.uk>
 <20190517091723.GA4602@kroah.com>
In-Reply-To: <20190517091723.GA4602@kroah.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: DB6PR0202CA0030.eurprd02.prod.outlook.com
 (2603:10a6:4:a5::16) To VI1PR08MB3168.eurprd08.prod.outlook.com
 (2603:10a6:803:47::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=quentin.deslandes@itdev.co.uk; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [89.21.227.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 542f9ec4-977b-41d7-f205-08d6dac9c3d1
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:VI1PR08MB3264; 
x-ms-traffictypediagnostic: VI1PR08MB3264:
x-microsoft-antispam-prvs: <VI1PR08MB3264C7CE129C5C2D37FD720AB30B0@VI1PR08MB3264.eurprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0040126723
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(7916004)(346002)(396003)(366004)(376002)(136003)(39830400003)(189003)(199004)(40764003)(8936002)(68736007)(7736002)(6512007)(66446008)(66556008)(66946007)(44832011)(486006)(9686003)(66476007)(54906003)(316002)(3846002)(6116002)(52116002)(26005)(33656002)(1076003)(476003)(386003)(8676002)(81156014)(81166006)(33716001)(186003)(76176011)(73956011)(64756008)(11346002)(6506007)(229853002)(305945005)(6486002)(6916009)(2906002)(6436002)(99286004)(102836004)(66066001)(25786009)(446003)(14444005)(53936002)(6246003)(5660300002)(4326008)(71190400001)(86362001)(256004)(508600001)(71200400001)(74482002)(14454004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR08MB3264;
 H:VI1PR08MB3168.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: itdev.co.uk does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: +MXDBJHJ5GC9kAO9OqBPs2U6gKdHeN97GtEl+BnzdEW921VcicCH2ze4EsaEEgulcvgqsZrwPG3tzPIve2QRhmjL9UtTOE/QhzkFHVpekSJ1x2iFO4l2wKVsA3PdbsEAb0UClzo/doK+amnH8qWP2vtkq4ghteQnrs+CkJGf7HAhXJqCQ0p/jZlBAQtjMtShl2ykJK9JXWyUK79/xtvf0WQA0p8xkpPM/7GgSYFlFbnCguCgWn3k5SoqDQ0JTQlSPCq1+3/RahGQopO78atA1cldJ48LKY0AhfSHCPZc5RQnYwbs3perGgvs9gBqFS81uFj7zfKGidA/g3cWoI78J5nYBYTnMmto2MI0WSBT2T/oi7J/t9DsoE8sI1KzQ8Onz+vw25YPU3WjkPTajZklRgvcZtyGcRgO4WNIQV2ojRg=
Content-ID: <6C5DE0311380A844B362DFE6208B51BA@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: itdev.co.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: 542f9ec4-977b-41d7-f205-08d6dac9c3d1
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 May 2019 13:15:43.3505 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 2d2930c4-2251-45b4-ad79-3582c5f41740
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB3264
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
 Mukesh Ojha <mojha@codeaurora.org>,
 "kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Forest Bond <forest@alittletooquiet.net>,
 Ojaswin Mujoo <ojaswin25111998@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, May 17, 2019 at 11:17:23AM +0200, Greg Kroah-Hartman wrote:
> On Fri, May 17, 2019 at 07:53:49AM +0000, Quentin Deslandes wrote:
> > Returns error code from 'vnt_int_start_interrupt()' so the device's private
> > buffers will be correctly freed and 'struct ieee80211_hw' start function
> > will return an error code.
> > 
> > Signed-off-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
> > ---
> > v2: returns 'status' value to caller instead of removing it.
> > v3: add patch version details. Thanks to Greg K-H for his help.
> 
> Looking better!
> 
> But a few minor things below:
> 
> > 
> >  drivers/staging/vt6656/int.c      |  4 +++-
> >  drivers/staging/vt6656/int.h      |  2 +-
> >  drivers/staging/vt6656/main_usb.c | 12 +++++++++---
> >  3 files changed, 13 insertions(+), 5 deletions(-)
> > 
> > diff --git a/drivers/staging/vt6656/int.c b/drivers/staging/vt6656/int.c
> > index 504424b19fcf..f3ee2198e1b3 100644
> > --- a/drivers/staging/vt6656/int.c
> > +++ b/drivers/staging/vt6656/int.c
> > @@ -39,7 +39,7 @@ static const u8 fallback_rate1[5][5] = {
> >  	{RATE_54M, RATE_54M, RATE_36M, RATE_18M, RATE_18M}
> >  };
> >  
> > -void vnt_int_start_interrupt(struct vnt_private *priv)
> > +int vnt_int_start_interrupt(struct vnt_private *priv)
> >  {
> >  	unsigned long flags;
> >  	int status;
> > @@ -51,6 +51,8 @@ void vnt_int_start_interrupt(struct vnt_private *priv)
> >  	status = vnt_start_interrupt_urb(priv);
> >  
> >  	spin_unlock_irqrestore(&priv->lock, flags);
> > +
> > +	return status;
> >  }
> >  
> >  static int vnt_int_report_rate(struct vnt_private *priv, u8 pkt_no, u8 tsr)
> > diff --git a/drivers/staging/vt6656/int.h b/drivers/staging/vt6656/int.h
> > index 987c454e99e9..8a6d60569ceb 100644
> > --- a/drivers/staging/vt6656/int.h
> > +++ b/drivers/staging/vt6656/int.h
> > @@ -41,7 +41,7 @@ struct vnt_interrupt_data {
> >  	u8 sw[2];
> >  } __packed;
> >  
> > -void vnt_int_start_interrupt(struct vnt_private *priv);
> > +int vnt_int_start_interrupt(struct vnt_private *priv);
> >  void vnt_int_process_data(struct vnt_private *priv);
> >  
> >  #endif /* __INT_H__ */
> > diff --git a/drivers/staging/vt6656/main_usb.c b/drivers/staging/vt6656/main_usb.c
> > index ccafcc2c87ac..71e10b9ae253 100644
> > --- a/drivers/staging/vt6656/main_usb.c
> > +++ b/drivers/staging/vt6656/main_usb.c
> > @@ -483,6 +483,7 @@ static void vnt_tx_80211(struct ieee80211_hw *hw,
> >  
> >  static int vnt_start(struct ieee80211_hw *hw)
> >  {
> > +	int err = 0;
> >  	struct vnt_private *priv = hw->priv;
> >  
> >  	priv->rx_buf_sz = MAX_TOTAL_SIZE_WITH_ALL_HEADERS;
> > @@ -496,15 +497,20 @@ static int vnt_start(struct ieee80211_hw *hw)
> >  
> >  	if (vnt_init_registers(priv) == false) {
> >  		dev_dbg(&priv->usb->dev, " init register fail\n");
> > +		err = -ENOMEM;
> 
> Why ENOMEM?  vnt_init_registers() should return a proper error code,
> based on what went wrong, not true/false.  So fix that up first, and
> then you can do this patch.
> 
> See, your one tiny coding style fix is turning into real cleanups, nice!
> 
> >  		goto free_all;
> >  	}
> >  
> > -	if (vnt_key_init_table(priv))
> > +	if (vnt_key_init_table(priv)) {
> > +		err = -ENOMEM;
> 
> Same here, vnt_key_init_table() should return a real error value, and
> then just return that here.
> 
> >  		goto free_all;
> > +	}
> >  
> >  	priv->int_interval = 1;  /* bInterval is set to 1 */
> >  
> > -	vnt_int_start_interrupt(priv);
> > +	err = vnt_int_start_interrupt(priv);
> > +	if (err)
> > +		goto free_all;
> 
> Like this, that is the correct thing.
> 
> So, this is now going to be a patch series, fixing up those two
> functions (and any functions they call possibly), and then this can be
> the last patch of the series.
> 
> thanks,
> 
> greg k-h

Thank you for your help, this is getting really exciting! However, I had
a look at these function (vnt_init_registers() and vnt_key_init_table())
and some questions popped in my mind.

If I understand correctly, your request is to fix these function so they
can return an error code instead of just failing, as I did with
vnt_int_start_interrupt() in the third patch, which is also the most
logical behaviour.

So, vnt_init_registers() is a big function (~240 lines), which should
return a proper error code. For this, all the function called in
vnt_init_registers() should also return a proper error code, right?

What about functions called that does not return any value, but their only
action is to call a function that return a status code? As I learn with this
patch, discarding error values is not a acceptable behaviour. Why would we write
functions returning an error code solely to discard it? So such function should
be changed too?

I listed up to 22 function that need to be updated in order to correctly
propagate errors up to vnt_start() so it could "nicely" fail and here is
the last problem: regarding this fair amount of changes, how to ensure
the device will work as well as before? I don't have this device at home
or at work and it doesn't seems easy to find.

Thank you,
Quentin
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

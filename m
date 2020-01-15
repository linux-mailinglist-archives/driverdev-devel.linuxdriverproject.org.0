Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A5CA413C7C9
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Jan 2020 16:33:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AEAEB85DC4;
	Wed, 15 Jan 2020 15:33:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RHkaWVE7xVxb; Wed, 15 Jan 2020 15:33:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0034585725;
	Wed, 15 Jan 2020 15:33:02 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 975251BF42C
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 Jan 2020 15:33:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 93CAC8536C
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 Jan 2020 15:33:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZHCYM1EmFjd0
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 Jan 2020 15:32:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7B0718531D
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 Jan 2020 15:32:55 +0000 (UTC)
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Christian.Gromm@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Christian.Gromm@microchip.com";
 x-sender="Christian.Gromm@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Christian.Gromm@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Christian.Gromm@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: kJoRKwvKAvLKt+JT1A6648UehOrEFoCgxs+QflqMGsTI1w7zQOnbFkrNrATwWIXpGiE5jGsath
 x0PSoUtyD3VQujdeyIg9HtqOhdqpywHtfg9FaOEuEvv52Ay6PYTR+gi8dcftLxWVdnU3SqCeeF
 u4/jpYhEoc5a6PVbTZc7vVgxYq7ozkH2sZyv4I0o8Pw+1+WUFVAuhSJoO8BesF4axQozpnTYxt
 linRgJZSxtf3t3CrmNlpKWkAiTJB2bh+KjxHGtyAf6qYk8nEUVK1kIWXdHaryzjwfri+dfo1Za
 /2U=
X-IronPort-AV: E=Sophos;i="5.70,322,1574146800"; d="scan'208";a="62017340"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 15 Jan 2020 08:32:53 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 15 Jan 2020 08:32:52 -0700
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Wed, 15 Jan 2020 08:32:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jRAdRUMsfB6i9qc+uIMwiaxdDaqc84Kvisybp6K86ECVcnLzenOz8b4GeqZVeioGMN6OelkjqhsBKA4+uEeSLjsq9VYmZSGKFPNenH5NYpgYMvRgMeM6fs9NNOWls/mlFU7oEexnvjGaQe6bjazGyad+BzXZITxyoeLSPxZgp8ntb4rgey949dnQCbykh7cJFU+Xr+DwCRie5gUtjr4d26MDgmX1Y1EMqke6eY/1KL7CCMoBCqzxTYwaGUuisL1gOXCfgDCi8QIj9lyVFL3/dN1N61bbL6Kp/HN6rsQTFB+2XeWegXmwk564jMPeLieUZVPGYxBSqkYd2nXjsStlBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aTL+KMWFfednD/vO7W9pVqSmfvM+MC2dpf6Z+hu9QdQ=;
 b=nQkuY+wMth81XFVVzqZc5SfJ2ob80pNA4+ODBxhOQSuSbd6+ug6azyYGyOHr0RNPPDkewwpn/fyyNykDep0r/alI8LKXw0BE2we7M4P6ytTqbPiwa4O8XPo/qg+WqOWdN+0aQN3DKXyXDMPpaZWUklfp+gBZPKgCZHdE0SiHRId7EseFjJMm/ueQKeTbLNpKIAFHF9T0deKe1DpKpXeS5yMApLz7bvO32/DWlmxFIj5McbkYYnnYnrzEtQzI6NLvk7GQ+rTcMylTNNgo1kxnPymTC7hqrK8Y2QgTRKrFy+HhZC68PaR+hkwjgmUCmB+FlF4OdtMVqhYhA7Tnnq1FBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aTL+KMWFfednD/vO7W9pVqSmfvM+MC2dpf6Z+hu9QdQ=;
 b=p7ZbhC0G2KpGHwJDtAakQBcbognZpNYZZtWTk49VIM0DIt5gL7mGIhtknjwRJcAjnDlWBzNk4rJHr8lcuNmIebn89NS9680kFCbHJiHVXHhpv+xPOjVUvhFA9A51TAE5pIiRs5zuyJGLQVSa5F3mm6Mcwznn+wovZaHWvwgIm30=
Received: from MN2PR11MB3710.namprd11.prod.outlook.com (20.178.252.147) by
 MN2PR11MB4429.namprd11.prod.outlook.com (52.135.37.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.9; Wed, 15 Jan 2020 15:32:48 +0000
Received: from MN2PR11MB3710.namprd11.prod.outlook.com
 ([fe80::41f4:f9c9:fca6:8ba2]) by MN2PR11MB3710.namprd11.prod.outlook.com
 ([fe80::41f4:f9c9:fca6:8ba2%4]) with mapi id 15.20.2623.018; Wed, 15 Jan 2020
 15:32:48 +0000
From: <Christian.Gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: Re: [PATCH RFC v3 5/9] staging: most: usb: check for NULL device
Thread-Topic: [PATCH RFC v3 5/9] staging: most: usb: check for NULL device
Thread-Index: AQHVyvNzgQPvJRUlS0mATpsj8oj3g6frpcGAgAA3CIA=
Date: Wed, 15 Jan 2020 15:32:48 +0000
Message-ID: <570cc8ba04c4939b57726e21064ea5a1357417cb.camel@microchip.com>
References: <1579017478-3339-1-git-send-email-christian.gromm@microchip.com>
 <1579017478-3339-6-git-send-email-christian.gromm@microchip.com>
 <20200115121801.GB3394319@kroah.com>
In-Reply-To: <20200115121801.GB3394319@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [62.154.213.229]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 41d972c6-3ae1-418f-2047-08d799d02d45
x-ms-traffictypediagnostic: MN2PR11MB4429:
x-microsoft-antispam-prvs: <MN2PR11MB4429C1A63489DBA2E0D754B6F8370@MN2PR11MB4429.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 02830F0362
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(376002)(136003)(366004)(39860400002)(346002)(189003)(199004)(86362001)(6486002)(6506007)(66556008)(8676002)(66446008)(71200400001)(5660300002)(4326008)(316002)(8936002)(64756008)(6916009)(36756003)(81156014)(76116006)(91956017)(26005)(6512007)(186003)(81166006)(2906002)(66946007)(2616005)(66476007)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4429;
 H:MN2PR11MB3710.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HCc4FTEswMCS04SOrv4DFl0EXFRerF1PnSeQ1A/sblA4HkrQOo6h8JrClSFws3VU8Qt/ggKgZ4973+m+JQl6U6/8cCxIQcri3gBpRg2zdMzpML3F9bpg+rLjyWbHKLrTMAflFMueobDmGEeQR9gBUY5r8guZmr3ruyc6wv4GuscszATIllDz/kKDxKtOCoREnhf20/695gKkYG/s94xSYPZOTWVDCJL1Fm78V4FxIsmsczWfxcvwsm6GH3C3isfNk/CLKkBZZJJOjcoxWYdEDMiYzG32pi3VJwZoHoeIUBqGmAbyySGNlPOxiOOMAcDaPoGdg8PiKLEmsiy1KwwYvFLzAa3BXxT3wHLxAZLA9BfemIiBjYkQhrqHLdWNbYE4QPyXBFEVAqdXdjPBrLMqo6CYQbU8wEuU4N7n3TS2zPMUFHnNfnK9xHNcldZpjHoI
x-ms-exchange-transport-forked: True
Content-ID: <D0563C903CDB284C96CA36C3D26B380F@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 41d972c6-3ae1-418f-2047-08d799d02d45
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jan 2020 15:32:48.6337 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PdJ3si10NsLo1kWp3oPIbPzveFH/BQLpqVWRNIzc6G/nm7VbLPBi3x6dqQM6w5/KO8EKpTtT6r8y3KJKgeHJDH1Nm2fQh4JUXgtx+q/5AWQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4429
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
Cc: driverdev-devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, 2020-01-15 at 13:18 +0100, Greg KH wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you
> know the content is safe
> 
> On Tue, Jan 14, 2020 at 04:57:54PM +0100, Christian Gromm wrote:
> > Check if the dci structer has been allocated before trying to
> > release it.
> > 
> > Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
> > ---
> > v3:
> >       This patch has been added to the series.
> > 
> >  drivers/staging/most/usb/usb.c | 6 ++++--
> >  1 file changed, 4 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/staging/most/usb/usb.c
> > b/drivers/staging/most/usb/usb.c
> > index fe3384a..cae7553 100644
> > --- a/drivers/staging/most/usb/usb.c
> > +++ b/drivers/staging/most/usb/usb.c
> > @@ -1205,8 +1205,10 @@ static void hdm_disconnect(struct
> > usb_interface *interface)
> >       del_timer_sync(&mdev->link_stat_timer);
> >       cancel_work_sync(&mdev->poll_work_obj);
> > 
> > -     most_put_iface_dev(mdev->dci->dev.parent);
> > -     device_unregister(&mdev->dci->dev);
> > +     if (mdev->dci) {
> > +             most_put_iface_dev(mdev->dci->dev.parent);
> > +             device_unregister(&mdev->dci->dev);
> > +     }
> 
> How can this happen?

Depending on the Vendor/Product ID pair of the device that
probes the USB driver, this 'dci' structure is being allocated
and registered or not. And that is why this check is necessary. 

> 
> And why is it up to the child function here to unregister the device,

Child function? The device is being registered in the probe function
and unregistered in the disconnect function. What is wrong here?

thanks,
Chris

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

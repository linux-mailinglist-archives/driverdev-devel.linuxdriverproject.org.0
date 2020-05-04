Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3291C1C3E61
	for <lists+driverdev-devel@lfdr.de>; Mon,  4 May 2020 17:22:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 95CEB20356;
	Mon,  4 May 2020 15:22:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7W8x7uE2qaOH; Mon,  4 May 2020 15:22:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E241522EC9;
	Mon,  4 May 2020 15:22:13 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 970EF1BF3E0
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  4 May 2020 15:22:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 90E2286113
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  4 May 2020 15:22:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AiEfCtyzYrZR
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  4 May 2020 15:22:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa4.microchip.iphmx.com (esa4.microchip.iphmx.com
 [68.232.154.123])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1135F86102
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  4 May 2020 15:22:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1588605730; x=1620141730;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=YS7iBXuSUCq26cLNlydD8k+TVY7aMsGXjRwAIXaxMOU=;
 b=XVUnGYQqRsGd28bicuEPt+DCadHhZzln5w6y9ygMaE8mRrS+5P6/K81j
 Dlya5MDZKaZyoIwK2zeEB8d38QMSspxypoFUT/9nlloRxv3nuoAZhN6RR
 KvtaQLZwdv0U0tI2TxNjkdMr/L/kanF+idAucMgAxiORf74cGDvjJwkBh
 r4xQyOwX/26VpGpdpHNTIzYAkRJ9u8uh4k4ui5w525PW62pP6MB86iueW
 NDxSzff4b017u4r+fyBy2388N4ulD9COJzOZkTMOLWC1jI7VQkLqUJ6pi
 AI4sa9mE57S11UJk/h1N4WJnf57tXj5J9GTsDRx6W4QaiVoQXJqfVV5eT g==;
IronPort-SDR: 5lgJTtjTEYEECZHECAF5QcAbMgsmLQ4hZi0rkpBNLhx5hlpdJo9BYyRnWDa4mNCD69t+w00qCC
 O79fk4QkzV+Ipkd1FEILOGgw7HRxENV4uW6fUflHUfv11X9agWZxtT1dAo0gAkswmsmUjIphVk
 +cfNHFHkNjalEzPWiUAGkaHPsJNPpVPE6oLP2UjcDpr38OsMpLIygNr8tDVnDU1h7P0qqcRUwE
 DXmAmRFadTn+CwxPM8vaKrAwIlDocbNSeETt1vnsMUxuS3iOKg7fcSDeOoSMvvYAUjt+H1tlr1
 MyQ=
X-IronPort-AV: E=Sophos;i="5.73,352,1583218800"; d="scan'208";a="72347260"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 04 May 2020 08:22:09 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 4 May 2020 08:22:13 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Mon, 4 May 2020 08:22:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Qp1H06UWW0prqtS0nYecxbAxbzT53/IqNmtA9n/7FIk6TjLBxggAgCHeZh+msrIOtQu+me+D0EIGqmldAUeI1EL6Vg/L4pJr/o6FNJVI4djQscPhirgoMTeKrFGTdwAJtKsDyVNsp7+NOVoAlo9wh40FiiuZ+GzszztZeeyicUI8jYjRzjXBVxqQfltS8QH4dobCGc/rUxbQQGNQSolTHfSnBR4hol3pdkMLUfSK3UkTRry9l5hG3YgnZRN9dF3ZHuQKzKvRyhi/qagG8kL1HDVlMHw/EfZe27Qm991RjjN8r8U991Bljct3fAxzRL+1zv4LHRSIMJzaLpbycgQCIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YS7iBXuSUCq26cLNlydD8k+TVY7aMsGXjRwAIXaxMOU=;
 b=mgNeOMenJucsJld4VuQIku3l5OqFRrSS/2RkTdawBbyHUzGO8DlSQSsl4yjuMqc8NmjKLuxxnkmnfDYZRwPh0Nqwxz5uIMvI+tSGJ/10es2D303t1PItfTqmAh9Rs70kTV8iwdk36Sj9+qCmlx0kT/YBqGH1UG9SUP56vkANfXcBkSX3T8ZTG0U/YOJkkepO1vGU9rS45I+HQ4c0BsWsTnZV5G7Vv46iEAMeKw/Icij4lC56l9LuVV+4SZ0lt7M9jKpLKS3dn4AN/hbbGAu3GeYVpSL6E0Ryzgfo0O/82BZIKhzxCCes7Z+KfN3ps3iqQ9XZGg5kGBr9uo1ox+M0fA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YS7iBXuSUCq26cLNlydD8k+TVY7aMsGXjRwAIXaxMOU=;
 b=QvHKp0Km8VaH3YvlPZ0XZm9zLAiU1goRT3zMG65oCtSnMREB67fi9iOcT4cI4YE/MCV25UYspCLULi9vjuhUJ+eHU3rVEO4zf13K4MNkOwaEscPrJQbuS2E8tUv/hgAZzy9lUi/vKQGhCDcTD7IFj5IkK7wkl6S3b520FhXXdl0=
Received: from DM6PR11MB3420.namprd11.prod.outlook.com (2603:10b6:5:69::31) by
 DM6PR11MB4674.namprd11.prod.outlook.com (2603:10b6:5:2a0::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2958.19; Mon, 4 May 2020 15:22:08 +0000
Received: from DM6PR11MB3420.namprd11.prod.outlook.com
 ([fe80::91cb:6555:db9b:53fa]) by DM6PR11MB3420.namprd11.prod.outlook.com
 ([fe80::91cb:6555:db9b:53fa%7]) with mapi id 15.20.2958.030; Mon, 4 May 2020
 15:22:08 +0000
From: <Christian.Gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] staging: most: usb: fix exception handling
Thread-Topic: [PATCH] staging: most: usb: fix exception handling
Thread-Index: AQHWIhoVnv7HMheeEU+zKrWe/lCBBaiX8zcAgAAYIIA=
Date: Mon, 4 May 2020 15:22:08 +0000
Message-ID: <d73c0031012925edca79d5d2a8419d2f2ffc7f5c.camel@microchip.com>
References: <1588599840-13237-1-git-send-email-christian.gromm@microchip.com>
 <20200504135546.GB2311301@kroah.com>
In-Reply-To: <20200504135546.GB2311301@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.30.5-1.1 
authentication-results: linuxfoundation.org; dkim=none (message not signed)
 header.d=none;linuxfoundation.org; dmarc=none action=none
 header.from=microchip.com;
x-originating-ip: [46.142.167.48]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8d1929ae-b03f-4d5f-5da4-08d7f03ee8e4
x-ms-traffictypediagnostic: DM6PR11MB4674:
x-microsoft-antispam-prvs: <DM6PR11MB4674CD54FC66E47B5B546AA4F8A60@DM6PR11MB4674.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:4125;
x-forefront-prvs: 03932714EB
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: TjjpElFAHf/7AoPRSBDBn4VAluDdbhT3C7Qi7BMnaH+JL5qzqU3a2zM7BTzgMmlCRNCK+gmE1AiKqo85v9ByjU7awMAZGyg7+65BQaxBECIf2yO3MUXawyTFyVdzA0q/67S6tkhLNKGkowm53pGJilQuggrw3jCABRJCYvd6pOrQdEsgpSZK4MJDhSrzlhnFm3BR0PIheOPilRRdJQfoF3DLMTlw86T4Z+lfmxihjUCsqIROhH9zFd2ky9TPLDFmTYB3sb1bqIm7JQsJLwRSE+wLAJNV8BzdRbXQOBPB52W3JXQ+addLn2Fnw+Vj89mU236x9KJXi+vaHLELKCDOIIztXUQyEstw1GoVmD8iTlnNGMqdA81e2+NYFnx8A+zaIOMQMTGr8HhX8UBRPuiaQTku9EQZrUtY+0hidOe9SQw6q4hKA0Ck2Tk7tZacSr0Y
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(376002)(396003)(366004)(346002)(136003)(39860400002)(2616005)(66556008)(66476007)(66946007)(6916009)(64756008)(5660300002)(76116006)(91956017)(66446008)(2906002)(36756003)(8676002)(4326008)(6486002)(6512007)(86362001)(8936002)(316002)(71200400001)(478600001)(26005)(186003)(6506007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: hG24/VuCYpZrzTrmei7mrvM+/DPJFXBz+ZGIuq3VfYKGmCOQqGKh29MpUGgqt30FJRhEthGOGvM3hm1bYQm+foNuhq/bv8FWeCZFaXvu459FCZFq+3oeRSWGRmrOoEm0EPTuMa2//t2u9Lm/5yxrkC1D2xuDW/47mic4pL93G/OuzeI3X16vpukZ1s2imjPRACQXkNiL09NkDtMaUneqqZrDcFTwWjUNmN2BFlad3QN5PqozW79+wqWfFR1HJdzdwWp5ll0H3ky3ell0MS98frvHfnrdJBxFuMh23UH7TKk+tm+AcIyTSK+/bnGr3ioy7bwuc4f2pXLVVodJ0QRkJqHXyGX0pKK5w2t1KVhwa33HRCCcv7Is33VdlWMyQWQRtLl6XV0uPrS8Py/2zQn7LEQR34WCkQyg2ChqJtHLWmWbaZR6pqzWErJfUXbIHMNxILxOCf2njZ2AxLGiYA19tevTB925qQ7B0py0qXyAaKVZGam25b+QZISBtHWeLHHXHY6nerLUw3j7F/DyaDx/woYKvVQRwvHKRTOZWQGQphQ8+69z6kq3T8FFhOu1iEJ3W6H9+Ub40WQkZq3k1SSx7NVMydtAX4Yr9S7PxZ1hUZ1RgJsj6OdrREgDO4njq8PonUVWXSF9+LbGgLs6Uem8jdBwcwhrBdZxHQrba+eLdMPUL2ob3DGFcCk3NZoxQwxnWSqhd3c0c+s+8zENGM/50kcwuK0hMuMhvGNdzUOaR57eeMw69vdVglZ48+21NrXVlPh2WYJeUkBc4MHtRJHidGegO/9aQ8Py4G+t974sCdA=
x-ms-exchange-transport-forked: True
Content-ID: <93A5559CB9FE554F88AA08C374AB41A6@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d1929ae-b03f-4d5f-5da4-08d7f03ee8e4
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 May 2020 15:22:08.1004 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: s5G8fZUuFA64ET3UPxQgIN52DGklVm1sLm4Hsi7bkVmz7/i/lj8XRGCs3T0n99a/6egBRaxset3rhwalhz7hYJ8pBOEE6N81XqYgBE9VyYQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4674
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

On Mon, 2020-05-04 at 15:55 +0200, Greg KH wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you
> know the content is safe
> 
> On Mon, May 04, 2020 at 03:44:00PM +0200, Christian Gromm wrote:
> > This patch fixes error handling on function parameters.
> > 
> > Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
> > ---
> >  drivers/staging/most/usb/usb.c | 33 +++++++++++++++++-------------
> > ---
> >  1 file changed, 17 insertions(+), 16 deletions(-)
> > 
> > diff --git a/drivers/staging/most/usb/usb.c
> > b/drivers/staging/most/usb/usb.c
> > index e8c5a8c..e5276524 100644
> > --- a/drivers/staging/most/usb/usb.c
> > +++ b/drivers/staging/most/usb/usb.c
> > @@ -229,14 +229,14 @@ static unsigned int
> > get_stream_frame_size(struct most_channel_config *cfg)
> >   */
> >  static int hdm_poison_channel(struct most_interface *iface, int
> > channel)
> >  {
> > -     struct most_dev *mdev = to_mdev(iface);
> > +     struct most_dev *mdev;
> >       unsigned long flags;
> >       spinlock_t *lock; /* temp. lock */
> > 
> >       if (unlikely(!iface)) {
> > -             dev_warn(&mdev->usb_device->dev, "Poison: Bad
> > interface.\n");
> > -             return -EIO;
> > +             return -EFAULT;
> 
> -EFAULT is ONLY for when you have an error with copying memory
> to/from
> userspace.

Ok.

> 
> This should just be -EINVAL, right?
> 
> And how can iface ever be NULL?

It should never become NULL. But you never know, right?
Too paranoid?

> 
> And why unlikely() there, can you measure the difference with/without
> it?  If not, please drop as the compiler/CPU can do it faster than
> you
> ever can.
> 
> thanks,
> 
> greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

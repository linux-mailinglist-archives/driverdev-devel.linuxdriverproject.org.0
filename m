Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DEDF1C3F4D
	for <lists+driverdev-devel@lfdr.de>; Mon,  4 May 2020 18:03:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E4A0488CCE;
	Mon,  4 May 2020 16:03:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 07KQ4faIjdyG; Mon,  4 May 2020 16:03:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4A39088B0B;
	Mon,  4 May 2020 16:03:55 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B5AA01BF3E0
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  4 May 2020 16:03:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B19A3876CB
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  4 May 2020 16:03:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3U6L0QB3IaLQ
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  4 May 2020 16:03:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa3.microchip.iphmx.com (esa3.microchip.iphmx.com
 [68.232.153.233])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C5F98869EA
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  4 May 2020 16:03:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1588608229; x=1620144229;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=TNCOVddrv1I7GKGY4O5DscOzBLLQ26keurnGugA8MiI=;
 b=XQBTEISF+lPAld5MVV4RTAHxagbSMXFwFlQsENcczVzF5I1tVZ40YFdj
 Y2Adp8d88B16M7WXQnW/RD898F8d3u1cZzWOQn+hsaiE7ugzugTAASWWP
 rYsriJ4fcOZBDHA0Bxr3cEoCQZ/JKiafuqXUFL9rZ3vwwOAkA5fzeFZtC
 v/TcERDoeDd4JfQTsSVH8fSkzOnW1euYoo4c8ofrPUuHmq4RmM/xELer0
 ksMaycVayHkPkG2RkiyP0Pr94MvfbIxXQ/a4cL8ni85rigkAPF+2ASVjj
 El7Wr/GJ1hLne8VRffAdKGAYGmJhtno72EkVSujtK5iqiiz+I5WrnTD2t A==;
IronPort-SDR: XjjOzgb6dEegPl3G8O66qD31mteTwvoV0w39BlBtrRpouGpyXB5jsHrM0XsdXkv7DFW0tKQFSa
 i9rtn3eKRrYcy8f9i/yGxZ0IAK67NTIxVQUUcgxUaS4ybdGU6jtPDJ70hO+zSFZIKV4FfRR9Px
 eJimO/qTR7oEDMM3jPVQiF8VLVLnNyVKRnJOGG9ETBU8PLxM2goHfPKQrTcn3onekUxCdWFs2t
 az3nFRknLXDEG0hsQkFxQmt3LgzwuK5tAoZUxJssMA6ErrY3j0qE5FNG92NF9RVqadvpjs/V0N
 OWw=
X-IronPort-AV: E=Sophos;i="5.73,352,1583218800"; d="scan'208";a="75440174"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 04 May 2020 09:03:49 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 4 May 2020 09:03:48 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Mon, 4 May 2020 09:03:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Te8vTTC8V/3edfl8F+Ehiq5D4LTJ/P9h2yvWMEzCKRX1PMX/+WSZ7sx+ca09TdsTPUxVUsiWzSLzqZ/0/ZS1JWdZyDJBfWfj3Pr7keFyZxmG35LvGJi5mi2Zsq0pam3vaPm8YALYZT83FXo9FyXGEmQ6fbM2f+xEV7UYStDHLe4m1UEXN2P6JX2TIaOFlPw/t0TyqLtSW486xQXDz79lQ21NtUCp4lrHCNoMCe+c4GeWDu1eHERYEF4igqzZD1XA0NobS3U85Rql3UxJShLJjDtEh1vvzXstqoha56h1JGTfH3S5CfoQk+M6HmfZFVqYla1qzfraZJ3QTnKGXsLeng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TNCOVddrv1I7GKGY4O5DscOzBLLQ26keurnGugA8MiI=;
 b=kUqlkOdtclcdmnyyI/u0R/C98Co5vWTf12u9486aorDFVB9Y7XtqEq+m/Ju3z9N5/5jhQf/Af9U87PFqxpmmP6haB0+hs5Uwq/pkizMOxb9VSYMJN7G/QHvM0m745BMWXAgzT961+JZB9sixa1gvThmBya+H86y6lTseont6z9+V0iZjLbdSDCQt2+jaZ4HK04ss6A9ff7dTrbfm/U3g09J3II5OP0A1qYTfcaf+J7xxE+oC9bJ0H0eiGD4vToTdsoFE3nEPc5q0m3YpkSMbtG157fUm2kmho633Q6/u8M6KWwqj1+tHMOupdE2VeM8NhNXnkxfOe4x4EI+0fW7RmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TNCOVddrv1I7GKGY4O5DscOzBLLQ26keurnGugA8MiI=;
 b=IA8XkByOeD93ZmSouQql8VQ1G1J63oGt+o3ffNIOMeO3DjLjVFQziWn9LfTyMRF0j8PDZgcJDNm8n8eo7ybm4mrjR4WNG3Om2jxb2cQr3Sxz6o8GbEaTxp8p+WYoj9w0YWo5RvPAe3G5r/AIP6yEkpwKHtAKI4HhJvtf9qScB6w=
Received: from DM6PR11MB3420.namprd11.prod.outlook.com (2603:10b6:5:69::31) by
 DM6PR11MB2569.namprd11.prod.outlook.com (2603:10b6:5:c6::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2958.20; Mon, 4 May 2020 16:03:47 +0000
Received: from DM6PR11MB3420.namprd11.prod.outlook.com
 ([fe80::91cb:6555:db9b:53fa]) by DM6PR11MB3420.namprd11.prod.outlook.com
 ([fe80::91cb:6555:db9b:53fa%7]) with mapi id 15.20.2958.030; Mon, 4 May 2020
 16:03:47 +0000
From: <Christian.Gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] staging: most: usb: fix exception handling
Thread-Topic: [PATCH] staging: most: usb: fix exception handling
Thread-Index: AQHWIhoVnv7HMheeEU+zKrWe/lCBBaiX8t2AgAAXSgCAAAYfgIAABrQA
Date: Mon, 4 May 2020 16:03:47 +0000
Message-ID: <acba33c5bf57ba07f63987bc8341a06ce61d0649.camel@microchip.com>
References: <1588599840-13237-1-git-send-email-christian.gromm@microchip.com>
 <20200504135431.GA2311301@kroah.com>
 <5a1b21ac4bc63312784ee2cfb0cf153044d8d8d7.camel@microchip.com>
 <20200504153947.GA2687183@kroah.com>
In-Reply-To: <20200504153947.GA2687183@kroah.com>
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
x-ms-office365-filtering-correlation-id: 69032a74-83ab-4dfa-78a7-08d7f044bab3
x-ms-traffictypediagnostic: DM6PR11MB2569:
x-microsoft-antispam-prvs: <DM6PR11MB25694461086ED09A5165F6A6F8A60@DM6PR11MB2569.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 03932714EB
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: L8blXTjmJK8YLHW2z4W44KmtdVVig4JOcy8PbGtu5r31Fl3D8vaBcP0rKar/G+Fhs5nSyfLsXdFbF1X8NNv3vtD2R5JC3t62DMHyFnnLmSMx2ZoFl5fb4Hx6BgN/s53G+wh2ZkumpSmcTtY7bBdIo7eRsm37gecBog1FtTf2g7VdNCp9fNAw6UNxlcM5QUjj5GvcVUKF1TdNepwuPQnElAtpnE/tuTBdH0USfGTelSNRkQzcqfAlda1JREjZA1c5XM+qz7FNTlowjLcTXFpC+hWrIHEgSzgeHkW++GYWAbkhN8w9tF31D8a0E9LA2gwcbudrCaHslxf9rmw9Bp/ST9MGHT/68d6+vJAI+FvmO6AkpWBqpuiQcK/Y41G3Z9jkfH9lzoCc3UuhnL2Y/6qZ4bvrYaVb7RiP1ZRtjPNgU7ach0KkX8LE/ta+ao3Ewtld
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(396003)(39860400002)(346002)(366004)(376002)(136003)(66556008)(478600001)(186003)(316002)(2906002)(6506007)(26005)(66446008)(6486002)(91956017)(76116006)(2616005)(6512007)(64756008)(66946007)(6916009)(71200400001)(5660300002)(66476007)(8676002)(86362001)(4326008)(8936002)(36756003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: nomppFi07En22UTWvw9aadh/ZgOon18DXlulikK2IZYmyIl4tmpkCUBfqJvOhKM9E5CJZqspLJ7wZRjXDyKY2EqlHioB0c7I5aywDYzRDItqRHIimF96eeSXrFaite1/tIZhPFhfJB85jMp3zJ85YHDIev3aiHVoqiWEB+Aef5bPNgPRq431EvNLBtL89XlRj4mVgg1RMx/YfkFVy3R08+AtcCq5Y0gdyCS4aXxAMoOWnjr8jb/l2WvMI3uWzWFkyhGcFAh6eYF4XEmqmcn/mi8rlcDtIJuFxSSTGeLTXtDoDUlLl7Fh3/iTG1/yChJKXcxJAmq4vP3yZzAMQN2KRtMDysVEveCTc3bw5EQR3ChrhNKon8e71QLyHfs+7hAEr2yHu8OZKsy82d1P+NpAynOgJiezKK7WtvOrPk+eDLiADjsZN+2Cf7hgGawj2m25psxLxEAc0LAHy9BrQuBMyT/UkZnqH2u6QGicHpsMxHNuoDVbX2Tq0YixohEl68NZyh49QB7K9zoOZz0+sm0LP3It6RnsXnt24ZKZWR81fFBy1199SFl5eJE+DSFd+IkT+cwjtY7tx5W4InkeF7jMkvrKwk5hyQH+j2YVcHfjAM5OQEprsHhWgEj+H8Dj6OOliMoG5/Jjz7O+IABrcTxy+Ue5W8Plky/4F0wRqlVXx+PRfhbZeVdVZNl6PMRantbANt2Y7ZAxu6NtcV4MJttuJjbiUvdoHBq+PBf27WZMIPGvoDTUt5cf4ahFDzORAo0TxTlc82I949A9fyT5ceHak6or4oi493wmBRPU5FBayW8=
x-ms-exchange-transport-forked: True
Content-ID: <5C5C8F62A351C2438A4723C0C2B5ADED@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 69032a74-83ab-4dfa-78a7-08d7f044bab3
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 May 2020 16:03:47.5811 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ahbdSBumsgoSog7+Vw7Skiz6CNKjHzg5GnO5xsvIHSaQVu9B/OR3TgXeuXGUVpmKQAqF+nAXUc55DY0Lvvqbfy8QSN5CVpCiCoifrMJEj9Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2569
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

On Mon, 2020-05-04 at 17:39 +0200, Greg KH wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you
> know the content is safe
> 
> On Mon, May 04, 2020 at 03:17:53PM +0000, 
> Christian.Gromm@microchip.com wrote:
> > On Mon, 2020-05-04 at 15:54 +0200, Greg KH wrote:
> > > EXTERNAL EMAIL: Do not click links or open attachments unless you
> > > know the content is safe
> > > 
> > > On Mon, May 04, 2020 at 03:44:00PM +0200, Christian Gromm wrote:
> > > > This patch fixes error handling on function parameters.
> > > 
> > > What does that mean?  If I don't understand it, I think it needs
> > > to
> > > be
> > > made a lot more explicit as to why you are making these changes
> > > :)
> > > 
> > > > Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
> > > 
> > > Any "Fixes:" tag for this?
> > 
> > No. Just wanted to fix some obvious things, before adding
> > it to stable, as discussed in our last email thread.
> 
> Remember, no one has context when reading a git commit log, please
> spell
> it out :)
> 
> > > SHould it go to stable if it really resolves issues?
> > 
> > No. Once you accept this, I'll add it to stable anyway.
> 
> How?  Put the cc: stable on a patch if it fixes a real bug.  I don't
> see
> what this "fixes" still...

The interface pointer provided as a function parameter has already
been used before it has been checked against NULL. :(

Once I have the unnecessary parameter checking removed, the problem 
will be removed too.

Can you please drop this patch and I'll send a new one. V2 does not
make very much sense, as the patch will be doing somethig differnt 
now.

thanks,
Chris
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

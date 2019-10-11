Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FB99D3A87
	for <lists+driverdev-devel@lfdr.de>; Fri, 11 Oct 2019 10:07:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BAA168800A;
	Fri, 11 Oct 2019 08:07:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B7pwN5UNkxwM; Fri, 11 Oct 2019 08:07:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0158A87FEE;
	Fri, 11 Oct 2019 08:07:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 82C9E1BF83C
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 08:06:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7E881203BF
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 08:06:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f1a2B20o1Hh1 for <devel@linuxdriverproject.org>;
 Fri, 11 Oct 2019 08:06:58 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM03-CO1-obe.outbound.protection.outlook.com
 (mail-eopbgr790113.outbound.protection.outlook.com [40.107.79.113])
 by silver.osuosl.org (Postfix) with ESMTPS id 80DE8203BB
 for <devel@driverdev.osuosl.org>; Fri, 11 Oct 2019 08:06:58 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F3IwkygC1AMTN07vkq0dbTh7uHjZ15J1KvWcxV6ZeStHKJitUhA1Bsk5jUBecaFLGKbqEB1akx9/5nehVHbyy0g+F0O1gjUjy/TyKZmyl6R5Qk3OKpCR524nPJnGZkiqvN0Q0pQKr2y8ZQBr8bfzIg7l/gck9uGbNdmz5E2RpRNJGpQm0YH+ByV7AmRZG40CbHGp1N31MM0wt3FXPwb89MV1JHdCsaNQG7OcJKjkncnWirt2bzWTClhyogcb1Qp+do7XJzbnqMnyyw/uBxhUsnyjfwDxRlrrDb1h8ilXS5Wq5IcEqCeSXDasHkG2qo2uuztR1aRy1YTSBWcfEL1k+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CDbHP/9aR2tv027b/L5g11T/XkXT4O5sq7twKVQLbdY=;
 b=f1wDcgK2ZbAxqXKgM5Ffmb+rcHmf99gaRBErMhDol8Wu+IrTTzn/ouUbbISv2401cLMCK33XFYy+4SdNUX+bHOYjUNVfvLQOyMjjmURyeSz0jBxXkmOqcvk3zW6xjYkiofdYA/ZZHY8Q0YJALO2miCwrxXP4vjIiq1x6V2TiY1poQsAswpf6EFDT4P38Q83eFlu/x8/Mfl/KD2EPxGX1YC+JHvo3j3D+ZgN+q2SQSMIkfhxGVnFfTvW6TwU5MZh7m8poJn2/iwqKqQz6LIxPGw/5xNSiy85EK096ZaxiMx0y1/T3Tc+S7eRdq0r/cegzEwnl54JlF1OWk9ji44bQDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analogixsemi.com; dmarc=pass action=none
 header.from=analogixsemi.com; dkim=pass header.d=analogixsemi.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Analogixsemi.onmicrosoft.com; s=selector2-Analogixsemi-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CDbHP/9aR2tv027b/L5g11T/XkXT4O5sq7twKVQLbdY=;
 b=cS3PCk+zWubceG9BMFBYnjYhPN3dSkxFyHhAcP2QGEKAlVoPjIa3iNdiUAgXwM1LS/J4ieF2WUg9YrJy6BuXNzTauviOdNWZAUz28DVVHBbR20pF5znVNKBUYn4yV3mywETre9D8CzzPm9nUvTmIhATesfNga909Ef1xVv8DfYY=
Received: from SN6PR04MB4543.namprd04.prod.outlook.com (52.135.120.29) by
 SN6PR04MB4846.namprd04.prod.outlook.com (52.135.122.208) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.17; Fri, 11 Oct 2019 07:52:03 +0000
Received: from SN6PR04MB4543.namprd04.prod.outlook.com
 ([fe80::c55e:6c70:adbb:cf87]) by SN6PR04MB4543.namprd04.prod.outlook.com
 ([fe80::c55e:6c70:adbb:cf87%5]) with mapi id 15.20.2347.021; Fri, 11 Oct 2019
 07:52:03 +0000
From: Xin Ji <xji@analogixsemi.com>
To: Andrzej Hajda <a.hajda@samsung.com>
Subject: Re: [PATCH v2 0/2] Add initial support for slimport anx7625
Thread-Topic: [PATCH v2 0/2] Add initial support for slimport anx7625
Thread-Index: AQHVf9p+5jx9EdYoKE6ltb5FxvHRTadU9iCAgAAbpwA=
Date: Fri, 11 Oct 2019 07:52:03 +0000
Message-ID: <20191011075152.GA26183@xin-VirtualBox>
References: <CGME20191011022055epcas5p37790ed31cbe63d0be0f6b5786ce1392a@epcas5p3.samsung.com>
 <cover.1570760115.git.xji@analogixsemi.com>
 <1544211b-d2c7-601c-93b3-a130178b8697@samsung.com>
In-Reply-To: <1544211b-d2c7-601c-93b3-a130178b8697@samsung.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HK2PR03CA0058.apcprd03.prod.outlook.com
 (2603:1096:202:17::28) To SN6PR04MB4543.namprd04.prod.outlook.com
 (2603:10b6:805:a8::29)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=xji@analogixsemi.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [114.247.245.252]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: faebfdc0-abb3-463a-ae1a-08d74e1fe750
x-ms-traffictypediagnostic: SN6PR04MB4846:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR04MB4846876866B4362557ADBD01C7970@SN6PR04MB4846.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0187F3EA14
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(7916004)(346002)(39850400004)(396003)(136003)(366004)(376002)(199004)(189003)(53754006)(5660300002)(1076003)(102836004)(446003)(476003)(11346002)(6916009)(7736002)(2906002)(26005)(486006)(186003)(305945005)(33716001)(6116002)(3846002)(7416002)(54906003)(316002)(6512007)(9686003)(229853002)(6436002)(6486002)(86362001)(33656002)(66066001)(53546011)(6506007)(386003)(76176011)(99286004)(52116002)(25786009)(4326008)(6246003)(14454004)(107886003)(478600001)(64756008)(66446008)(66476007)(66946007)(66556008)(8936002)(81166006)(8676002)(81156014)(14444005)(256004)(71200400001)(71190400001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB4846;
 H:SN6PR04MB4543.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: analogixsemi.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nBnOBEz8AiMnpPhMFXjd+SovByA1Nhe3/73/MT8gOhuI6LbW+4lrF13A2kD5EBW3VQBZqDdWL+Rn+/uNDTaMg8+guvF+3INltvygosPn5Ief9rNHmqRfOIVffY809kWhZQge5FYDHyFsD3wzKpK5sHMfixOuZYumNdlPpy9fB57GANFLydCug57Cmh3lcbZ18bLvP+51Suwp65do3CNkHo5zT8WxCkSSvNI1x2Nq/tWriRTxPYU/fX9RBCD2+HW/BbE/jjwUcSfe+lI0v8NvZzkMeikP4fYT0/tj+PMvohoV+2yhpHrfWFRqjwPjJ66r2WgJ1QYdnPjY8YI8z0yLcGRsJyJj1ai/grVah2zuRKMnqOtN2Z9t89eU1jhdPTcv9Z0t6CNx6MT4Fk9F8Se9+qWIgM9Y6F3BhPDVhBQsc88=
Content-ID: <F27D817832AD7645982B845ED0B03618@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: analogixsemi.com
X-MS-Exchange-CrossTenant-Network-Message-Id: faebfdc0-abb3-463a-ae1a-08d74e1fe750
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Oct 2019 07:52:03.3908 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b099b0b4-f26c-4cf5-9a0f-d5be9acab205
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MEr8Y0mZ96eP1+UNYXA6tGTra3o0/TWpTw1K8YPu9cPyV17vP1awgZ9KWLRSorsjYNYTN8vrwSQzR0YJXi0mig==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4846
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
 Jernej Skrabec <jernej.skrabec@siol.net>, Jonas Karlman <jonas@kwiboo.se>,
 David Airlie <airlied@linux.ie>, Neil Armstrong <narmstrong@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Dan Carpenter <dan.carpenter@oracle.com>,
 Sheng Pan <span@analogixsemi.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Andrzej, OK, I'll increment patchset version number next time.

Thanks,
Xin

On Fri, Oct 11, 2019 at 08:12:53AM +0200, Andrzej Hajda wrote:
> On 11.10.2019 04:20, Xin Ji wrote:
> > Hi all,
> >
> > The following series add initial support for the Slimport ANX7625 transmitter, a
> > ultra-low power Full-HD 4K MIPI to DP transmitter designed for portable device.
> >
> > This is the initial version, any mistakes, please let me know, I will fix it in
> > the next series.
> >
> > Thanks,
> > Xin
> 
> 
> Next time please increment patchset version number - this is third
> iteration of v2.
> 
> 
> Regards
> 
> Andrzej
> 
> 
> >
> >
> > Xin Ji (2):
> >   dt-bindings: drm/bridge: anx7625: MIPI to DP transmitter binding
> >   drm/bridge: anx7625: Add anx7625 MIPI DSI/DPI to DP bridge driver
> >
> >  .../bindings/display/bridge/anx7625.yaml           |   96 +
> >  drivers/gpu/drm/bridge/Makefile                    |    2 +-
> >  drivers/gpu/drm/bridge/analogix/Kconfig            |    6 +
> >  drivers/gpu/drm/bridge/analogix/Makefile           |    1 +
> >  drivers/gpu/drm/bridge/analogix/anx7625.c          | 2153 ++++++++++++++++++++
> >  drivers/gpu/drm/bridge/analogix/anx7625.h          |  406 ++++
> >  6 files changed, 2663 insertions(+), 1 deletion(-)
> >  create mode 100644 Documentation/devicetree/bindings/display/bridge/anx7625.yaml
> >  create mode 100644 drivers/gpu/drm/bridge/analogix/anx7625.c
> >  create mode 100644 drivers/gpu/drm/bridge/analogix/anx7625.h
> >
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

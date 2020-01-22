Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29FD3144E37
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 Jan 2020 10:08:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 53D8687C09;
	Wed, 22 Jan 2020 09:07:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PK8XoWbQzX5O; Wed, 22 Jan 2020 09:07:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 37AC387B36;
	Wed, 22 Jan 2020 09:07:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CEE861BF40E
 for <devel@linuxdriverproject.org>; Wed, 22 Jan 2020 09:07:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CB56585F87
 for <devel@linuxdriverproject.org>; Wed, 22 Jan 2020 09:07:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SxB9liFpnb-7 for <devel@linuxdriverproject.org>;
 Wed, 22 Jan 2020 09:07:53 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from eu-smtp-delivery-167.mimecast.com
 (eu-smtp-delivery-167.mimecast.com [207.82.80.167])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 02A5F841B4
 for <devel@driverdev.osuosl.org>; Wed, 22 Jan 2020 09:07:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=displaylink.com;
 s=mimecast20151025; t=1579684071;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=pYhvcLodsYCv1zZZcC0OL7bCXNNu+SPnBUOlhR+GRuc=;
 b=ATwtGgQUslyalM1AfzqBrnYUtAZVpppUouayIrpVVo8Dx89gFWFMxdKKCU5WsLMa6EFDiV
 4PhUCUym2eZ/FvDMqGMTubMMb3FjRTHZ4xBuJHSsji3YAWqylMILSufm66K0KcXxH+RPo8
 oQLe45JOGJa9MN/C90NodaY3REb3pTI=
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
 (mail-db5eur01lp2058.outbound.protection.outlook.com [104.47.2.58]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-136-r5VKoD5sNCe5jt47ZGIw9A-1; Wed, 22 Jan 2020 09:07:49 +0000
Received: from VI1PR10MB1965.EURPRD10.PROD.OUTLOOK.COM (52.134.27.157) by
 VI1PR10MB1870.EURPRD10.PROD.OUTLOOK.COM (52.134.21.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.20; Wed, 22 Jan 2020 09:07:48 +0000
Received: from VI1PR10MB1965.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::7cc2:599e:25ce:49b2]) by VI1PR10MB1965.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::7cc2:599e:25ce:49b2%6]) with mapi id 15.20.2644.027; Wed, 22 Jan 2020
 09:07:48 +0000
Received: from [172.17.183.132] (80.93.235.40) by
 VI1PR07CA0291.eurprd07.prod.outlook.com (2603:10a6:800:130::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2665.14 via Frontend
 Transport; Wed, 22 Jan 2020 09:07:48 +0000
From: Vladimir Stankovic <vladimir.stankovic@displaylink.com>
To: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
Subject: Re: [External] Re: staging: Add MA USB Host driver
Thread-Topic: [External] Re: staging: Add MA USB Host driver
Thread-Index: AQHVz3K8AIv1fzzvAkakA28tJGe9z6fzRtUggAL+SgCAABtLgP//8WiAgAAHrgCAAAlHgIAABSYA
Date: Wed, 22 Jan 2020 09:07:48 +0000
Message-ID: <2873029f-1259-60a0-4590-24f6a97ba29a@displaylink.com>
References: <VI1PR10MB19659B32E563620B4D63AF1A91320@VI1PR10MB1965.EURPRD10.PROD.OUTLOOK.COM>
 <VI1PR10MB1965A077526FE296608D5B1191320@VI1PR10MB1965.EURPRD10.PROD.OUTLOOK.COM>
 <VI1PR10MB19658F2B6FDAD88FAA05546591320@VI1PR10MB1965.EURPRD10.PROD.OUTLOOK.COM>
 <20200122070312.GB2068857@kroah.com>
 <aba22f24-1124-2203-b9f6-4a5e9274a8a8@displaylink.com>
 <20200122074839.GA2099857@kroah.com>
 <98df2373-6f19-df36-c78c-e0384ddb8730@displaylink.com>
 <20200122084921.GA2420736@kroah.com>
In-Reply-To: <20200122084921.GA2420736@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR07CA0291.eurprd07.prod.outlook.com
 (2603:10a6:800:130::19) To VI1PR10MB1965.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:803:37::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [80.93.235.40]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 78850b7a-c867-479a-a3d3-08d79f1a8d17
x-ms-traffictypediagnostic: VI1PR10MB1870:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR10MB187023C95A395CBDFCA3499C910C0@VI1PR10MB1870.EURPRD10.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:628;
x-forefront-prvs: 029097202E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(346002)(136003)(366004)(39840400004)(396003)(189003)(199004)(36756003)(6916009)(52116002)(4326008)(26005)(107886003)(186003)(8676002)(5660300002)(44832011)(66556008)(66446008)(66476007)(16526019)(64756008)(81156014)(8936002)(956004)(71200400001)(31686004)(2616005)(81166006)(66946007)(19625735003)(6486002)(478600001)(966005)(31696002)(16576012)(316002)(54906003)(86362001)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR10MB1870;
 H:VI1PR10MB1965.EURPRD10.PROD.OUTLOOK.COM; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: TWuu6yw+4ShyXvF6Z5JLZ/Hhk1m7w6EQkmllGRI+kyWPFcU8kj1vt2z5gAD3nE/NFlP3svWUS8KvMnRiLYppiTzGKTH2Ht3E+cL8ZfkY/YU7Qp6RZOfDakJdJVp2cJ7Do8KYJEhUXyQ5y0+IXREdJmuC9mFqC428a+HajcEm3z2MrHdHFWgr/+yYAc1XkQ7OsQ/ugNGBpA6AW6mE5KKJjU7eK2o0wWwyrpPnIhtNnOaJA+0h0WELE3yNPArgHhvzvtEt/jE2VBvARArnaNwQLb2W2OJlqmTxavAiF4udBm5XAzeaYJd2BsHPPrcAAXbXt84u0HbOmMw9AXm3fKUruHYWXvzausUVEdOIIs8XGWI0OXdddPmmkWPvvXzOmsOd1izkqDXt5PVk+QFlER8DbT0Khuau2iix5OoMk1sg+v8x9LBetE6qB9WTru4MQwBJOMzjEHiEoW8k7rxafpvAkd3qoCN/jMQXy0f8p6qssns=
Content-ID: <091E55DA90AE2348BA806342518A99A2@EURPRD10.PROD.OUTLOOK.COM>
MIME-Version: 1.0
X-OriginatorOrg: displaylink.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 78850b7a-c867-479a-a3d3-08d79f1a8d17
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jan 2020 09:07:48.2736 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a4bda75a-b444-4312-9c90-44a7c4b2c91a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JgbOJua5us+kmz8e01/tTBctfyf3eOp3D0fY4ECVhDeOkviZoPhrMqM1vgTJFZaBRU5F1/GvNGdr/q47nMb5tTY3aI43/P8/culcQf9mH7W6ryT3HBfDckouAK8uy5Xv
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR10MB1870
X-MC-Unique: r5VKoD5sNCe5jt47ZGIw9A-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: displaylink.com
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
 Petar Kovacevic <petar.kovacevic@displaylink.com>,
 Nikola Simic <nikola.simic@displaylink.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Marko Miljkovic <marko.miljkovic@displaylink.com>,
 Stefan Lugonjic <stefan.lugonjic@displaylink.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 22.1.20. 09:49, gregkh@linuxfoundation.org wrote:
> A: http://en.wikipedia.org/wiki/Top_post 
> <http://en.wikipedia.org/wiki/Top_post>
> Q: Were do I find info about this thing called top-posting?
> A: Because it messes up the order in which people normally read text.
> Q: Why is top-posting such a bad thing?
> A: Top-posting.
> Q: What is the most annoying thing in e-mail?
> 
> A: No.
> Q: Should I include quotations after my reply?
> 
> http://daringfireball.net/2007/07/on_top 
> <http://daringfireball.net/2007/07/on_top>
> 
> On Wed, Jan 22, 2020 at 08:16:09AM +0000, Vladimir Stankovic wrote:
>  > Hi Greg,
>  >
>  > It was section 2.5 of the kernel development process, "staging trees".
>  > In particular, statement "where many sub-directories for drivers or
>  > filesystems that are on their way to being added to the kernel tree
>  > live" caught our attention.
>  >
>  > Now, by reading it once again, I see that the rest of the section is in
>  > line with your comment.
>  >
>  > We'll address all comments received so far, and resubmit patch onto
>  > appropriate repository. With that being said, is USB subsystem tree
>  > (drivers/usb within usb.git repo) correct one? Please, advise.
> 
> If this is a USB host driver, then yes, drivers/usb/host/ would be the
> correct location for this.
> 
> Note, at first glance, there is a bunch of work to do on this to get it
> into "real" mergable shape. Be sure to at the very least get it
> 'checkpatch.pl clean' before submitting it, that will help out a lot, if
> it is not already done.
> 
> thanks,
> 
> greg k-h

Failed to set my Thunderbird properly, sorry.

Thanks for your feedback. We'll proceed as advised.

Regards,
Vladimir.

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

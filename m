Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D7B7144C93
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 Jan 2020 08:47:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0CBAE87B9B;
	Wed, 22 Jan 2020 07:47:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LMpcukjJ83wA; Wed, 22 Jan 2020 07:47:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4365787B41;
	Wed, 22 Jan 2020 07:47:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9CB191BF397
 for <devel@linuxdriverproject.org>; Wed, 22 Jan 2020 07:47:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 96CFC87B41
 for <devel@linuxdriverproject.org>; Wed, 22 Jan 2020 07:47:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 89DZl5TQ4Zff for <devel@linuxdriverproject.org>;
 Wed, 22 Jan 2020 07:47:27 +0000 (UTC)
X-Greylist: delayed 00:06:21 by SQLgrey-1.7.6
Received: from eu-smtp-delivery-167.mimecast.com
 (eu-smtp-delivery-167.mimecast.com [207.82.80.167])
 by hemlock.osuosl.org (Postfix) with ESMTPS id F2D7687B36
 for <devel@driverdev.osuosl.org>; Wed, 22 Jan 2020 07:47:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=displaylink.com;
 s=mimecast20151025; t=1579679244;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=2fYKJrBZVTPT3U4PyJx9j9qfCZSLNRdN8+ofl8AlWnc=;
 b=VPzTODJdtNfZm2ogD6BsPznnnq+417TB8aHmMhkrDDDLGf/z4y5Xgtgja9uM1VOUI3pjel
 7OfYpi4Edr0fFymvhnaFD4rVeCJ0p10+wNQOXKsSMqlD3cczVzR5MqOQYrfLG3qHhAJRl9
 OJNcIpc8E5rBb2pL/wM8sZAh4p1JWnE=
Received: from EUR03-VE1-obe.outbound.protection.outlook.com
 (mail-ve1eur03lp2052.outbound.protection.outlook.com [104.47.9.52]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-182-gu5t1G3QOWmWlPNUOBX8hg-1; Wed, 22 Jan 2020 07:41:01 +0000
Received: from VI1PR10MB1965.EURPRD10.PROD.OUTLOOK.COM (52.134.27.157) by
 VI1PR10MB2254.EURPRD10.PROD.OUTLOOK.COM (20.177.62.26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.24; Wed, 22 Jan 2020 07:41:00 +0000
Received: from VI1PR10MB1965.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::7cc2:599e:25ce:49b2]) by VI1PR10MB1965.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::7cc2:599e:25ce:49b2%6]) with mapi id 15.20.2644.027; Wed, 22 Jan 2020
 07:41:00 +0000
Received: from [172.17.183.132] (80.93.235.40) by
 VI1PR08CA0228.eurprd08.prod.outlook.com (2603:10a6:802:15::37) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.20 via Frontend Transport; Wed, 22 Jan 2020 07:40:59 +0000
From: Vladimir Stankovic <vladimir.stankovic@displaylink.com>
To: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
Subject: Re: [External] Re: staging: Add MA USB Host driver
Thread-Topic: [External] Re: staging: Add MA USB Host driver
Thread-Index: AQHVz3K8AIv1fzzvAkakA28tJGe9z6fzRtUggAL+SgCAAAqHgA==
Date: Wed, 22 Jan 2020 07:40:59 +0000
Message-ID: <aba22f24-1124-2203-b9f6-4a5e9274a8a8@displaylink.com>
References: <VI1PR10MB19659B32E563620B4D63AF1A91320@VI1PR10MB1965.EURPRD10.PROD.OUTLOOK.COM>
 <VI1PR10MB1965A077526FE296608D5B1191320@VI1PR10MB1965.EURPRD10.PROD.OUTLOOK.COM>
 <VI1PR10MB19658F2B6FDAD88FAA05546591320@VI1PR10MB1965.EURPRD10.PROD.OUTLOOK.COM>
 <20200122070312.GB2068857@kroah.com>
In-Reply-To: <20200122070312.GB2068857@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR08CA0228.eurprd08.prod.outlook.com
 (2603:10a6:802:15::37) To VI1PR10MB1965.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:803:37::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [80.93.235.40]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ecae8780-9398-4e3c-8197-08d79f0e6c8e
x-ms-traffictypediagnostic: VI1PR10MB2254:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR10MB2254549C35E094D075878D14910C0@VI1PR10MB2254.EURPRD10.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 029097202E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(376002)(39840400004)(396003)(366004)(199004)(189003)(316002)(52116002)(2616005)(956004)(26005)(86362001)(4326008)(478600001)(16576012)(81156014)(8936002)(5660300002)(31696002)(186003)(8676002)(16526019)(81166006)(54906003)(2906002)(6916009)(6486002)(107886003)(44832011)(66476007)(66946007)(66556008)(66446008)(64756008)(71200400001)(36756003)(31686004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR10MB2254;
 H:VI1PR10MB1965.EURPRD10.PROD.OUTLOOK.COM; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: k7+pbklvosKf/CSG1PNYuDyxAQpeAVSQ0EaM6ltGgRq7yV1ACITIFrhwM2bvyrIfx0Z8RlmV+SIXzqblKtfrxEjiY8XgbaHjmEgP8Gm+A97Dp7w3psiVtaSCIV97VwIF1cqH7Nv8dL52o0RAs2zz6N+EDD2cK1s1xXYwQd7GMlA1u6jNDIwc6CnVqMLdGNrPTXdSw2Mqib0ZPJhzk1Ky/3Ue8zU97bnddCyACP0BXbgZjm/33FTDaZ7Ul91Xpf9lQWQ4rC+eTHaNqkTIQPisWOJ21dpfP2887Xr4ixkBFpfC/IBc0SsLuWljVylu05yZbsDqEC63UlYWh0A62SIL0kRdVgTmsC5LgmeQ2ukTY0u0Rnn60kbdS3ukv2yaehZz2fayWI4GHaF7WvfbEL3ZifYwAFd7I4+uqu9hBhPv715qiAuAV1OnwFGUPYUzohPP
Content-ID: <C24617F6B8CFBE4BA79492D23F98360A@EURPRD10.PROD.OUTLOOK.COM>
MIME-Version: 1.0
X-OriginatorOrg: displaylink.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ecae8780-9398-4e3c-8197-08d79f0e6c8e
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jan 2020 07:40:59.8130 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a4bda75a-b444-4312-9c90-44a7c4b2c91a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MGxT1vjbj6mbDotQLdcbzs4ZydUhacEhH9/ej2yyekYKG43q2I5e8kSNkG7/7hfZqt1erBDj93I4M47BuZvB5HburhmIdKxK/aHpCwycHdj2y5e5342BfJP5Y2Cuj4wU
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR10MB2254
X-MC-Unique: gu5t1G3QOWmWlPNUOBX8hg-1
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

Hi Greg,

Our intention was to follow Linux kernel development process and add our
driver to staging first.
Will resubmit patch with TODO added.

Regards,
Vladimir

On 22.1.20. 08:03, gregkh@linuxfoundation.org wrote:
> On Mon, Jan 20, 2020 at 09:30:43AM +0000, Vladimir Stankovic wrote:
>> MA-USB Host driver provides USB connectivity over an available
>> network, allowing host device to access remote USB devices attached
>> to one or more MA USB devices (accessible via network).
>>
>> This driver has been developed to enable the host to communicate
>> with DislayLink products supporting MA USB protocol (MA USB device,
>> in terms of MA USB Specification).
>>
>> MA-USB protocol used by MA-USB Host driver has been implemented in
>> accordance with MA USB Specification Release 1.0b.
>>
>> This driver depends on the functions provided by DisplayLink's
>> user-space driver.
>>
>> Signed-off-by: Vladimir Stankovic <vladimir.stankovic@displaylink.com>
> 
> Why is this being submitted to staging and not to the "real" part of the
> kernel?  You need a TODO file that lists what is left to be done to the
> driver to get it merged to the proper place in the kernel tree.  Can you
> please resubmit with that file added to the patch?
> 
> thanks,
> 
> greg k-h
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

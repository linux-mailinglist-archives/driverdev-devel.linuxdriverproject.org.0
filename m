Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 164182D97AA
	for <lists+driverdev-devel@lfdr.de>; Mon, 14 Dec 2020 12:51:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 62A4B23100;
	Mon, 14 Dec 2020 11:51:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r9D-7dzA5b8Y; Mon, 14 Dec 2020 11:51:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 27EC0204F5;
	Mon, 14 Dec 2020 11:51:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 34A891BF42E
 for <devel@linuxdriverproject.org>; Mon, 14 Dec 2020 11:51:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2BEC9204F5
 for <devel@linuxdriverproject.org>; Mon, 14 Dec 2020 11:51:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P4zL3Kl6jXcR for <devel@linuxdriverproject.org>;
 Mon, 14 Dec 2020 11:51:12 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from eu-smtp-delivery-151.mimecast.com
 (eu-smtp-delivery-151.mimecast.com [185.58.86.151])
 by silver.osuosl.org (Postfix) with ESMTPS id BB47620502
 for <devel@driverdev.osuosl.org>; Mon, 14 Dec 2020 11:51:11 +0000 (UTC)
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-28-pcqbKM3nOPiSyxuchKKX0Q-1; Mon, 14 Dec 2020 11:49:55 +0000
X-MC-Unique: pcqbKM3nOPiSyxuchKKX0Q-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Mon, 14 Dec 2020 11:49:56 +0000
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000; 
 Mon, 14 Dec 2020 11:49:56 +0000
From: David Laight <David.Laight@ACULAB.COM>
To: 'Philipp Gerlesberger' <Philipp.Gerlesberger@fau.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH v2 09/12] media: atomisp: Fix PARENTHESIS_ALIGNMENT
Thread-Topic: [PATCH v2 09/12] media: atomisp: Fix PARENTHESIS_ALIGNMENT
Thread-Index: AQHW0goctJOh4lWyOEi+CvaY+Uu+CKn2ej6g
Date: Mon, 14 Dec 2020 11:49:56 +0000
Message-ID: <61d5f8315efc42238a5516b1dc496760@AcuMS.aculab.com>
References: <20201214110358.7102-10-Philipp.Gerlesberger@fau.de>
In-Reply-To: <20201214110358.7102-10-Philipp.Gerlesberger@fau.de>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=C51A453 smtp.mailfrom=david.laight@aculab.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: aculab.com
Content-Language: en-US
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
 "linux-kernel@i4.cs.fau.de" <linux-kernel@i4.cs.fau.de>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "ij72uhux@stud.informatik.uni-erlangen.de"
 <ij72uhux@stud.informatik.uni-erlangen.de>,
 "sakari.ailus@linux.intel.com" <sakari.ailus@linux.intel.com>,
 "mchehab@kernel.org" <mchehab@kernel.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Philipp Gerlesberger
> Sent: 14 December 2020 11:04
> 
> You can sum up the two lines, because the maximum line length of
> 100 columns is not exceeded.

IIRC the 80 column limit is preferred.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

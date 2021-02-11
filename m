Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBA40318BFD
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Feb 2021 14:28:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DDCFB87586;
	Thu, 11 Feb 2021 13:28:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b0TN2+USUVsK; Thu, 11 Feb 2021 13:28:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 347228756C;
	Thu, 11 Feb 2021 13:28:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0050C1BF94D
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 13:28:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id EE3228756C
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 13:28:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bj-BjCj-TrXu for <devel@linuxdriverproject.org>;
 Thu, 11 Feb 2021 13:28:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from eu-smtp-delivery-151.mimecast.com
 (eu-smtp-delivery-151.mimecast.com [185.58.86.151])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D1A058756B
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 13:28:47 +0000 (UTC)
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-13-swhvU-StNEyBgOa2ePf8zg-1; Thu, 11 Feb 2021 13:28:43 +0000
X-MC-Unique: swhvU-StNEyBgOa2ePf8zg-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Thu, 11 Feb 2021 13:28:41 +0000
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000; 
 Thu, 11 Feb 2021 13:28:41 +0000
From: David Laight <David.Laight@ACULAB.COM>
To: 'Amey Narkhede' <ameynarkhede03@gmail.com>, "gregkh@linuxfoundation.org"
 <gregkh@linuxfoundation.org>, "dan.carpenter@oracle.com"
 <dan.carpenter@oracle.com>
Subject: RE: [PATCH v4] staging: gdm724x: Fix DMA from stack
Thread-Topic: [PATCH v4] staging: gdm724x: Fix DMA from stack
Thread-Index: AQHXADh2uOSDdqHkV0CFTPfMMb6Y/6pS8lIg
Date: Thu, 11 Feb 2021 13:28:41 +0000
Message-ID: <500e7317567548b48604ed9972062da2@AcuMS.aculab.com>
References: <20210211053819.34858-1-ameynarkhede03@gmail.com>
In-Reply-To: <20210211053819.34858-1-ameynarkhede03@gmail.com>
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
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

> Stack allocated buffers cannot be used for DMA
> on all architectures so allocate hci_packet buffer
> using kmalloc.

I wonder if the usb stack ought/could support a short bounce
buffer within the memory is already has to allocate?

For hci and lengths less than 8 the immediate data can be
placed directly in the ring structure replacing the data
pointer itself.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

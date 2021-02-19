Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFE5C31F69B
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 10:37:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 75EB587426;
	Fri, 19 Feb 2021 09:36:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jJm7Os8ZyxBB; Fri, 19 Feb 2021 09:36:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DAF8A87264;
	Fri, 19 Feb 2021 09:36:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 08C701BF853
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 09:36:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 369B886DA9
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 09:36:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yxNS8bV5Hn6p for <devel@linuxdriverproject.org>;
 Fri, 19 Feb 2021 09:36:54 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from eu-smtp-delivery-151.mimecast.com
 (eu-smtp-delivery-151.mimecast.com [207.82.80.151])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D4F2886CCE
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 09:36:52 +0000 (UTC)
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-212-TcjZYt7SNVyQ4wzD2XdMvA-1; Fri, 19 Feb 2021 09:36:48 +0000
X-MC-Unique: TcjZYt7SNVyQ4wzD2XdMvA-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Fri, 19 Feb 2021 09:36:48 +0000
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000; 
 Fri, 19 Feb 2021 09:36:48 +0000
From: David Laight <David.Laight@ACULAB.COM>
To: 'Dan Carpenter' <dan.carpenter@oracle.com>
Subject: RE: [PATCH] staging: comedi: cast to (unsigned int *)
Thread-Topic: [PATCH] staging: comedi: cast to (unsigned int *)
Thread-Index: AQHXBghs86N7pNMIM0eNnSVMq+7RAqpfL5hQgAAG6ICAAAGSoA==
Date: Fri, 19 Feb 2021 09:36:48 +0000
Message-ID: <abc2c1d0a23847c9aa581eb9bf9c5161@AcuMS.aculab.com>
References: <20210217165907.9777-1-atulgopinathan@gmail.com>
 <YC1T06VCh0K2BBW5@kroah.com> <20210217181000.GB10124@atulu-ubuntu>
 <YC1fzjVOwiqzO1nb@kroah.com> <3cfef23d-8d4a-205c-61e8-cbe8c9a0c0f4@mev.co.uk>
 <21a953261eb44e7ba302cfe74d8efa2d@AcuMS.aculab.com>
 <20210219092621.GU2087@kadam>
In-Reply-To: <20210219092621.GU2087@kadam>
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
 Greg KH <gregkh@linuxfoundation.org>, 'Ian Abbott' <abbotti@mev.co.uk>,
 Atul Gopinathan <atulgopinathan@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Dan Carpenter
> Sent: 19 February 2021 09:26
> 
> On Fri, Feb 19, 2021 at 09:03:59AM +0000, David Laight wrote:
> > > It's kind of moot anyway because the patch is outdated.  But the reason
> > > for the ___force is that the same `struct comedi_cmd` is used in both
> > > user and kernel contexts.  In user contexts, the `chanlist` member
> > > points to user memory and in kernel contexts it points to kernel memory
> > > (copied from userspace).
> >
> > Can't you use a union of the user and kernel pointers?
> > (Possibly even anonymous?)
> > Although, ideally, keeping them in separate fields is better.
> > 8 bytes for a pointer isn't going make a fat lot of difference.
> >
> 
> Creating a union is worse than adding casts.  With the casts, at least
> you know that you're doing something dangerous.  It's good that it looks
> scary because it is scary.
> 
> Keeping them in separate fields is a good idea, but this is part of the
> user space API so it's not possible.
> 
> The best we can do is adding some more comments so people know why we
> are doing the scary casts.

Another option is to use a longer structure in the kernel with the kernel
pointer in the 'extension'.
So you could have:
struct kernel_foo {
	struct foo;
	void *kernel_pointer;
};

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

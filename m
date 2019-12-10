Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 52A6F1188ED
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Dec 2019 13:55:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 54BA4221FF;
	Tue, 10 Dec 2019 12:55:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v5CCI3n--xFq; Tue, 10 Dec 2019 12:55:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 33201204DF;
	Tue, 10 Dec 2019 12:55:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 07EAB1BF329
 for <devel@linuxdriverproject.org>; Tue, 10 Dec 2019 12:55:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id F211B221AB
 for <devel@linuxdriverproject.org>; Tue, 10 Dec 2019 12:55:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ICVPewg6-mrm for <devel@linuxdriverproject.org>;
 Tue, 10 Dec 2019 12:55:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mxout017.mail.hostpoint.ch (mxout017.mail.hostpoint.ch
 [217.26.49.177])
 by silver.osuosl.org (Postfix) with ESMTPS id 20379204DF
 for <devel@driverdev.osuosl.org>; Tue, 10 Dec 2019 12:55:17 +0000 (UTC)
Received: from [10.0.2.46] (helo=asmtp013.mail.hostpoint.ch)
 by mxout017.mail.hostpoint.ch with esmtp (Exim 4.92.3 (FreeBSD))
 (envelope-from <sandro@volery.com>)
 id 1ief1x-000Mw2-Mt; Tue, 10 Dec 2019 13:54:21 +0100
Received: from [83.150.60.147] (helo=[10.167.67.21])
 by asmtp013.mail.hostpoint.ch with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3 (FreeBSD))
 (envelope-from <sandro@volery.com>)
 id 1ief1x-0001ma-Ja; Tue, 10 Dec 2019 13:54:21 +0100
X-Authenticated-Sender-Id: sandro@volery.com
From: Sandro Volery <sandro@volery.com>
Mime-Version: 1.0 (1.0)
Subject: Re: [PATCH 1/2] staging: octeon: delete driver
Date: Tue, 10 Dec 2019 13:54:19 +0100
Message-Id: <AF642334-CD43-417E-B924-D59517D21E2D@volery.com>
References: <20191210120120.GA3779155@kroah.com>
In-Reply-To: <20191210120120.GA3779155@kroah.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-Mailer: iPhone Mail (17B111)
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
Cc: devel@driverdev.osuosl.org, Branden Bonaby <brandonbonaby94@gmail.com>,
 Giovanni Gherdovich <bobdc9664@seznam.cz>, Paul Burton <paulburton@kernel.org>,
 Aaro Koskinen <aaro.koskinen@iki.fi>, Florian Westphal <fw@strlen.de>,
 YueHaibing <yuehaibing@huawei.com>, linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 David Daney <ddaney@caviumnetworks.com>, Julia Lawall <julia.lawall@lip6.fr>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Dan Carpenter <dan.carpenter@oracle.com>, Valery Ivanov <ivalery111@gmail.com>,
 =?utf-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>,
 "David S. Miller" <davem@davemloft.net>, Guenter Roeck <linux@roeck-us.net>,
 Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

CldlbGwgaWYgZG9jdW1lbnRhdGlvbiBpcyBtaXNzaW5nIHRoZW4gaXQncyB0aGVpciBmYXVsdC4u
IApHbyBhaGVhZCBhbmQgZGVsZXRlIGl0LCBldmVuIHRobyBpdCBraWxscyBtZSBzaW5jZSBteSBm
aXJzdCAKcGF0Y2ggd2FzIGluIHRoZXJlIDopCgpTYW5kcm8gVgoKPiBPbiAxMCBEZWMgMjAxOSwg
YXQgMTM6MDEsIEdyZWcgS3JvYWgtSGFydG1hbiA8Z3JlZ2toQGxpbnV4Zm91bmRhdGlvbi5vcmc+
IHdyb3RlOgo+IAo+IO+7v09uIFR1ZSwgRGVjIDEwLCAyMDE5IGF0IDEyOjQwOjU0UE0gKzAxMDAs
IFNhbmRybyBWb2xlcnkgd3JvdGU6Cj4+IERvZXNuJ3Qgb2N0ZW9uIGhhdmUgZHJpdmVycyBvdXQg
b2Ygc3RhZ2luZyBhbHJlYWR5Pwo+PiBXaGF0IGlzIHRoaXMgbW9kdWxlIGZvcj8KPiAKPiBJIGhh
dmUgbm8gaWRlYSA6KAo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcK
aHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8v
ZHJpdmVyZGV2LWRldmVsCg==

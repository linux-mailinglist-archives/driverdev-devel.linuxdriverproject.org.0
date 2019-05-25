Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F8362A2F1
	for <lists+driverdev-devel@lfdr.de>; Sat, 25 May 2019 07:01:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1581388CBA;
	Sat, 25 May 2019 05:01:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Qlla3tgoTH8a; Sat, 25 May 2019 05:01:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A4E1C88C96;
	Sat, 25 May 2019 05:01:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8D4F21BF292
 for <devel@linuxdriverproject.org>; Sat, 25 May 2019 05:01:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8A44288C9D
 for <devel@linuxdriverproject.org>; Sat, 25 May 2019 05:01:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uWeIglv1W5iG for <devel@linuxdriverproject.org>;
 Sat, 25 May 2019 05:01:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 12D1B88C96
 for <devel@driverdev.osuosl.org>; Sat, 25 May 2019 05:01:16 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 684B62177E;
 Sat, 25 May 2019 05:01:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558760475;
 bh=K2x3V9gQMbEthWVgYRvaGovpqU7FYDu4zGAHQOI+UrI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=q4JBXx4G+eF3CTr+DPwu9g2B9C+QAoRWW1ijSdSJ8IHIw0N5ST7MDyutvA47SRJlm
 bwuquF4sH/nuYrzNX2mdHkC4RXIiHGdqHEwNwp88SK5C2OAbrQv1G5yl7STZOnBNRj
 /O1c1NPeGh5UlhvyK2yoOXLXmLccvVflZfZ3i3EA=
Date: Sat, 25 May 2019 07:01:13 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Mao Wenan <maowenan@huawei.com>
Subject: Re: [PATCH net] staging: =?utf-8?Q?Remove_?=
 =?utf-8?Q?set_but_not_used_variable_=E2=80=98status=E2=80=99?=
Message-ID: <20190525050113.GB18684@kroah.com>
References: <20190525042642.78482-1-maowenan@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190525042642.78482-1-maowenan@huawei.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: devel@driverdev.osuosl.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gU2F0LCBNYXkgMjUsIDIwMTkgYXQgMTI6MjY6NDJQTSArMDgwMCwgTWFvIFdlbmFuIHdyb3Rl
Ogo+IEZpeGVzIGdjYyAnLVd1bnVzZWQtYnV0LXNldC12YXJpYWJsZScgd2FybmluZzoKPiAKPiBk
cml2ZXJzL3N0YWdpbmcva3BjMjAwMC9rcGNfc3BpL3NwaV9kcml2ZXIuYzogSW4gZnVuY3Rpb24K
PiDigJhrcF9zcGlfdHJhbnNmZXJfb25lX21lc3NhZ2XigJk6Cj4gZHJpdmVycy9zdGFnaW5nL2tw
YzIwMDAva3BjX3NwaS9zcGlfZHJpdmVyLmM6MjgyOjk6IHdhcm5pbmc6IHZhcmlhYmxlCj4g4oCY
c3RhdHVz4oCZIHNldCBidXQgbm90IHVzZWQgWy1XdW51c2VkLWJ1dC1zZXQtdmFyaWFibGVdCj4g
ICAgICBpbnQgc3RhdHVzID0gMDsKPiAgICAgICAgICBefn5+fn4KPiBUaGUgdmFyaWFibGUgJ3N0
YXR1cycgaXMgbm90IHVzZWQgYW55IG1vcmUsIHJlbXZlIGl0Lgo+IAo+IFNpZ25lZC1vZmYtYnk6
IE1hbyBXZW5hbiA8bWFvd2VuYW5AaHVhd2VpLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9zdGFnaW5n
L2twYzIwMDAva3BjX3NwaS9zcGlfZHJpdmVyLmMgfCAzIC0tLQo+ICAxIGZpbGUgY2hhbmdlZCwg
MyBkZWxldGlvbnMoLSkKCldoYXQgaXMgW1BBVENIIG5ldF0gaW4gdGhlIHN1YmplY3QgZm9yPyAg
VGhpcyBpcyBub3QgYSBuZXR3b3JraW5nIGRyaXZlcgo6KAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4
ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3Jn
L21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==

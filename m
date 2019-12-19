Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9309912663E
	for <lists+driverdev-devel@lfdr.de>; Thu, 19 Dec 2019 16:57:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2495A87F00;
	Thu, 19 Dec 2019 15:57:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tw8Xni5EfhgN; Thu, 19 Dec 2019 15:57:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C258D87EDE;
	Thu, 19 Dec 2019 15:57:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 753A11BF599
 for <devel@linuxdriverproject.org>; Thu, 19 Dec 2019 15:57:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 721A586E28
 for <devel@linuxdriverproject.org>; Thu, 19 Dec 2019 15:57:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FN_HhxZNLaA6 for <devel@linuxdriverproject.org>;
 Thu, 19 Dec 2019 15:57:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from imap2.colo.codethink.co.uk (imap2.colo.codethink.co.uk
 [78.40.148.184])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B748586783
 for <devel@driverdev.osuosl.org>; Thu, 19 Dec 2019 15:57:12 +0000 (UTC)
Received: from [167.98.27.226] (helo=[10.35.5.173])
 by imap2.colo.codethink.co.uk with esmtpsa  (Exim 4.92 #3 (Debian))
 id 1ihyAn-0008Km-JD; Thu, 19 Dec 2019 15:57:09 +0000
Subject: Re: [PATCH v1 1/3] gpio: tegra: Use generic
 readl_relaxed/writel_relaxed accessors
To: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Dmitry Osipenko <digetx@gmail.com>
References: <20191215183047.9414-1-digetx@gmail.com>
 <20191215183047.9414-2-digetx@gmail.com>
 <CAMpxmJUmLOZoKeeo4XMVEOWKRgwfS4O2szVboY-qTTYXg_aTVg@mail.gmail.com>
From: Ben Dooks <ben.dooks@codethink.co.uk>
Organization: Codethink Limited.
Message-ID: <b38cd167-4a61-4903-cf44-910dcb66f751@codethink.co.uk>
Date: Thu, 19 Dec 2019 15:57:09 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAMpxmJUmLOZoKeeo4XMVEOWKRgwfS4O2szVboY-qTTYXg_aTVg@mail.gmail.com>
Content-Language: en-GB
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
Cc: devel@driverdev.osuosl.org, Linus Walleij <linus.walleij@linaro.org>,
 LKML <linux-kernel@vger.kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-gpio <linux-gpio@vger.kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>, linux-tegra@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gMTkvMTIvMjAxOSAxMTowMSwgQmFydG9zeiBHb2xhc3pld3NraSB3cm90ZToKPiBuaWVkei4s
IDE1IGdydSAyMDE5IG8gMTk6MzEgRG1pdHJ5IE9zaXBlbmtvIDxkaWdldHhAZ21haWwuY29tPiBu
YXBpc2HFgihhKToKPj4KPj4gVGhlcmUgaXMgbm8gcG9pbnQgaW4gdXNpbmcgb2xkLXN0eWxlIHJh
dyBhY2Nlc3NvcnMsIHRoZSBnZW5lcmljIGFjY2Vzc29ycwo+PiBkbyB0aGUgc2FtZSB0aGluZyBh
bmQgYWxzbyB0YWtlIGludG8gYWNjb3VudCBDUFUgZW5kaWFubmVzcy4gVGVncmEgU29DcyBkbwo+
PiBub3Qgc3VwcG9ydCBiaWctZW5kaWFuIG1vZGUgaW4gdGhlIHVwc3RyZWFtIGtlcm5lbCwgYnV0
IGxldCdzIHN3aXRjaCBhd2F5Cj4+IGZyb20gdGhlIG91dGRhdGVkIHRoaW5ncyBhbnl3YXksIGp1
c3QgdG8ga2VlcCBjb2RlIHVwLXRvLWRhdGUuCgpHb29kIGlkZWEsIEkgdGhpbmsgSSBnb3QgbW9z
dCBvZiB0aGUgd2F5IHRvIGJvb3RpbmcgYSB0ZWdyYSBqZXRzb24gYm9hcmQKd2l0aCBhIGJpZyBl
bmRpYW4gaW1hZ2UgYSBmZXcgeWVhcnMgYWdvLCBidXQgbmV2ZXIgZ290IHRpbWUgdG8gZmluaXNo
CnRoZSB3b3JrLgoKLS0gCkJlbiBEb29rcwkJCQlodHRwOi8vd3d3LmNvZGV0aGluay5jby51ay8K
U2VuaW9yIEVuZ2luZWVyCQkJCUNvZGV0aGluayAtIFByb3ZpZGluZyBHZW5pdXMKCmh0dHBzOi8v
d3d3LmNvZGV0aGluay5jby51ay9wcml2YWN5Lmh0bWwKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJp
dmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21h
aWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D3F5292D22
	for <lists+driverdev-devel@lfdr.de>; Mon, 19 Oct 2020 19:52:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 529A786E4E;
	Mon, 19 Oct 2020 17:52:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W4SBi_fxWOE8; Mon, 19 Oct 2020 17:52:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 729A086DDA;
	Mon, 19 Oct 2020 17:52:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 34DCB1BF3C5
 for <devel@linuxdriverproject.org>; Mon, 19 Oct 2020 17:52:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 308D487661
 for <devel@linuxdriverproject.org>; Mon, 19 Oct 2020 17:52:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7xAlknn9NIB5 for <devel@linuxdriverproject.org>;
 Mon, 19 Oct 2020 17:52:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from smtp.smtpout.orange.fr (smtp01.smtpout.orange.fr
 [80.12.242.123])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 544638763B
 for <devel@driverdev.osuosl.org>; Mon, 19 Oct 2020 17:52:17 +0000 (UTC)
Received: from [192.168.42.210] ([81.185.173.144]) by mwinf5d19 with ME
 id htsA2300T37HXBD03tsBYd; Mon, 19 Oct 2020 19:52:14 +0200
X-ME-Helo: [192.168.42.210]
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Mon, 19 Oct 2020 19:52:14 +0200
X-ME-IP: 81.185.173.144
Subject: Re: [PATCH] staging: wfx: make a const array static, makes object
 smaller
To: Joe Perches <joe@perches.com>, Colin King <colin.king@canonical.com>,
 =?UTF-8?B?SsOpcsO0bWUgUG91aWxsZXI=?= <jerome.pouiller@silabs.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org
References: <20201016223303.687278-1-colin.king@canonical.com>
 <09cd7e609324d460afdf14829baf3c2f1a9cb9cd.camel@perches.com>
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Message-ID: <18f2f9d4-5199-d6d0-f4f5-c17d609a44a7@wanadoo.fr>
Date: Mon, 19 Oct 2020 19:52:09 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.1
MIME-Version: 1.0
In-Reply-To: <09cd7e609324d460afdf14829baf3c2f1a9cb9cd.camel@perches.com>
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

TGUgMTcvMTAvMjAyMCDDoCAwMjoxMSwgSm9lIFBlcmNoZXMgYSDDqWNyaXTCoDoKPiBPbiBGcmks
IDIwMjAtMTAtMTYgYXQgMjM6MzMgKzAxMDAsIENvbGluIEtpbmcgd3JvdGU6Cj4+IEZyb206IENv
bGluIElhbiBLaW5nIDxjb2xpbi5raW5nQGNhbm9uaWNhbC5jb20+Cj4+Cj4+IERvbid0IHBvcHVs
YXRlIGNvbnN0IGFycmF5IGZpbHRlcl9pZXMgb24gdGhlIHN0YWNrIGJ1dCBpbnN0ZWFkCj4+IG1h
a2UgaXQgc3RhdGljLiBNYWtlcyB0aGUgb2JqZWN0IGNvZGUgc21hbGxlciBieSAyNjEgYnl0ZXMu
Cj4+Cj4+IEJlZm9yZToKPj4gICAgIHRleHQJICAgZGF0YQkgICAgYnNzCSAgICBkZWMJICAgIGhl
eAlmaWxlbmFtZQo+PiAgICAyMTY3NAkgICAzMTY2CSAgICA0NDgJICAyNTI4OAkgICA2MmM4CWRy
aXZlcnMvc3RhZ2luZy93Zngvc3RhLm8KPj4KPj4gQWZ0ZXI6Cj4+ICAgICB0ZXh0CSAgIGRhdGEJ
ICAgIGJzcwkgICAgZGVjCSAgICBoZXgJZmlsZW5hbWUKPj4gICAgMjEzNDkJICAgMzIzMAkgICAg
NDQ4CSAgMjUwMjcJICAgNjFjMwlkcml2ZXJzL3N0YWdpbmcvd2Z4L3N0YS5vCj4gCj4gVGhhbmtz
Lgo+IAo+IEl0J3Mgb2RkIHRvIG1lIGl0J3Mgc28gbGFyZ2UgYSBjaGFuZ2UgYXMgaXQncyBvbmx5
Cj4gMjQgYnl0ZXMgb2YgaW5pdGlhbGl6YXRpb24uICgzIGVudHJpZXMsIGVhY2ggOCBieXRlcykK
PiAKClRoZSBmdW5jdGlvbiBsb29rcyBzbWFsbC4KTWF5YmUgaXQgaXMgaW5saW5lZCBieSBnY2Mg
aW4gZWFjaCBvZiB0aGUgMyBjYWxsZXJzPwoKQ0oKCj4gVGhpcyBsaW5lIGluIHRoZSBzYW1lIGZ1
bmN0aW9uOgo+IAo+IAkJaGlmX3NldF9iZWFjb25fZmlsdGVyX3RhYmxlKHd2aWYsIDMsIGZpbHRl
cl9pZXMpOwo+IAo+IG1pZ2h0IGFzIHdlbGwgdXNlIEFSUkFZX1NJWkUoZmlsdGVyX2llcykgaW5z
dGVhZCBvZiAzCj4gCj4gCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9y
ZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5m
by9kcml2ZXJkZXYtZGV2ZWwK

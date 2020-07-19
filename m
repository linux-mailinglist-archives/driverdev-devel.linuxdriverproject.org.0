Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CE4D2252B9
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 Jul 2020 18:08:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6436E84FB9;
	Sun, 19 Jul 2020 16:08:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MkLZAhQweiiV; Sun, 19 Jul 2020 16:08:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1FA1284D56;
	Sun, 19 Jul 2020 16:08:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CE15C1BF35D
 for <devel@linuxdriverproject.org>; Sun, 19 Jul 2020 16:07:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CB2E08673C
 for <devel@linuxdriverproject.org>; Sun, 19 Jul 2020 16:07:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qiJpUra5F9rx for <devel@linuxdriverproject.org>;
 Sun, 19 Jul 2020 16:07:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BA1CA8664C
 for <devel@driverdev.osuosl.org>; Sun, 19 Jul 2020 16:07:58 +0000 (UTC)
Received: from ip5f5af08c.dynamic.kabel-deutschland.de ([95.90.240.140]
 helo=wittgenstein) by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <christian.brauner@ubuntu.com>)
 id 1jxBqw-000719-EI; Sun, 19 Jul 2020 16:07:50 +0000
Date: Sun, 19 Jul 2020 18:07:49 +0200
From: Christian Brauner <christian.brauner@ubuntu.com>
To: Randy Dunlap <rdunlap@infradead.org>
Subject: Re: [PATCH] android: binder.h: drop a duplicated word
Message-ID: <20200719160749.26akaqytsugbdshw@wittgenstein>
References: <20200719002738.20210-1-rdunlap@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200719002738.20210-1-rdunlap@infradead.org>
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
Cc: devel@driverdev.osuosl.org, Todd Kjos <tkjos@android.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Suren Baghdasaryan <surenb@google.com>, Hridya Valsaraju <hridya@google.com>,
 Arve =?utf-8?B?SGrDuG5uZXbDpWc=?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>, Martijn Coenen <maco@android.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gU2F0LCBKdWwgMTgsIDIwMjAgYXQgMDU6Mjc6MzhQTSAtMDcwMCwgUmFuZHkgRHVubGFwIHdy
b3RlOgo+IERyb3AgdGhlIHJlcGVhdGVkIHdvcmQgInRoZSIgaW4gYSBjb21tZW50Lgo+IAo+IFNp
Z25lZC1vZmYtYnk6IFJhbmR5IER1bmxhcCA8cmR1bmxhcEBpbmZyYWRlYWQub3JnPgo+IENjOiBH
cmVnIEtyb2FoLUhhcnRtYW4gPGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3JnPgo+IENjOiBBcnZl
IEhqw7hubmV2w6VnIDxhcnZlQGFuZHJvaWQuY29tPgo+IENjOiBUb2RkIEtqb3MgPHRram9zQGFu
ZHJvaWQuY29tPgo+IENjOiBNYXJ0aWpuIENvZW5lbiA8bWFjb0BhbmRyb2lkLmNvbT4KPiBDYzog
Sm9lbCBGZXJuYW5kZXMgPGpvZWxAam9lbGZlcm5hbmRlcy5vcmc+Cj4gQ2M6IENocmlzdGlhbiBC
cmF1bmVyIDxjaHJpc3RpYW5AYnJhdW5lci5pbz4KPiBDYzogSHJpZHlhIFZhbHNhcmFqdSA8aHJp
ZHlhQGdvb2dsZS5jb20+Cj4gQ2M6IFN1cmVuIEJhZ2hkYXNhcnlhbiA8c3VyZW5iQGdvb2dsZS5j
b20+Cj4gQ2M6IGRldmVsQGRyaXZlcmRldi5vc3Vvc2wub3JnCj4gLS0tCgpUaGFua3MhCkFja2Vk
LWJ5OiBDaHJpc3RpYW4gQnJhdW5lciA8Y2hyaXN0aWFuLmJyYXVuZXJAdWJ1bnR1LmNvbT4KCj4g
IGluY2x1ZGUvdWFwaS9saW51eC9hbmRyb2lkL2JpbmRlci5oIHwgICAgMiArLQo+ICAxIGZpbGUg
Y2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiAKPiAtLS0gbGludXgtbmV4
dC0yMDIwMDcxNy5vcmlnL2luY2x1ZGUvdWFwaS9saW51eC9hbmRyb2lkL2JpbmRlci5oCj4gKysr
IGxpbnV4LW5leHQtMjAyMDA3MTcvaW5jbHVkZS91YXBpL2xpbnV4L2FuZHJvaWQvYmluZGVyLmgK
PiBAQCAtNDA0LDcgKzQwNCw3IEBAIGVudW0gYmluZGVyX2RyaXZlcl9yZXR1cm5fcHJvdG9jb2wg
ewo+ICAKPiAgCUJSX0ZBSUxFRF9SRVBMWSA9IF9JTygncicsIDE3KSwKPiAgCS8qCj4gLQkgKiBU
aGUgdGhlIGxhc3QgdHJhbnNhY3Rpb24gKGVpdGhlciBhIGJjVFJBTlNBQ1RJT04gb3IKPiArCSAq
IFRoZSBsYXN0IHRyYW5zYWN0aW9uIChlaXRoZXIgYSBiY1RSQU5TQUNUSU9OIG9yCj4gIAkgKiBh
IGJjQVRURU1QVF9BQ1FVSVJFKSBmYWlsZWQgKGUuZy4gb3V0IG9mIG1lbW9yeSkuICBObyBwYXJh
bWV0ZXJzLgo+ICAJICovCj4gIH07Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qu
b3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2RyaXZlcmRldi1kZXZlbAo=

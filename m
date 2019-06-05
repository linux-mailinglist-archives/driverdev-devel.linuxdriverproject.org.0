Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 68C633664E
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 Jun 2019 23:08:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B64F38758D;
	Wed,  5 Jun 2019 21:08:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TGcHEbgZLu+p; Wed,  5 Jun 2019 21:08:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 43AF487456;
	Wed,  5 Jun 2019 21:08:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 757851BF422
 for <devel@linuxdriverproject.org>; Wed,  5 Jun 2019 21:08:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7345B87E72
 for <devel@linuxdriverproject.org>; Wed,  5 Jun 2019 21:08:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UFMRSe3pI+Di for <devel@linuxdriverproject.org>;
 Wed,  5 Jun 2019 21:08:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net
 [217.70.183.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 261D887E58
 for <devel@driverdev.osuosl.org>; Wed,  5 Jun 2019 21:08:15 +0000 (UTC)
X-Originating-IP: 93.29.109.196
Received: from collins (196.109.29.93.rev.sfr.net [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 9B30F40003;
 Wed,  5 Jun 2019 21:08:07 +0000 (UTC)
Message-ID: <5c2217a4e80eaaa6a8eefd8752ce9a86933d0a80.camel@bootlin.com>
Subject: Re: [PATCH 5/7] media: cedrus: Don't set chroma size for scale &
 rotation
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Jernej Skrabec <jernej.skrabec@siol.net>, maxime.ripard@bootlin.com
Date: Wed, 05 Jun 2019 23:08:07 +0200
In-Reply-To: <20190530211516.1891-6-jernej.skrabec@siol.net>
References: <20190530211516.1891-1-jernej.skrabec@siol.net>
 <20190530211516.1891-6-jernej.skrabec@siol.net>
User-Agent: Evolution 3.32.1 
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, wens@csie.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGksCgpMZSBqZXVkaSAzMCBtYWkgMjAxOSDDoCAyMzoxNSArMDIwMCwgSmVybmVqIFNrcmFiZWMg
YSDDqWNyaXQgOgo+IFNjYWxlIGFuZCByb3RhdGlvbiBhcmUgY3VycmVudGx5IG5vdCBpbXBsZW1l
bnRlZCwgc28gaXQgbWFrZXMgbm8gc2Vuc2UgdG8KPiBzZXQgY2hyb21hIHNpemUgZm9yIGl0Lgo+
IAo+IFNpZ25lZC1vZmYtYnk6IEplcm5laiBTa3JhYmVjIDxqZXJuZWouc2tyYWJlY0BzaW9sLm5l
dD4KCkFja2VkLWJ5OiBQYXVsIEtvY2lhbGtvd3NraSA8cGF1bC5rb2NpYWxrb3dza2lAYm9vdGxp
bi5jb20+CkNoZWVycywKClBhdWwKCj4gLS0tCj4gIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9zdW54
aS9jZWRydXMvY2VkcnVzX2h3LmMgfCAzIC0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMyBkZWxldGlv
bnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL3N1bnhpL2NlZHJ1
cy9jZWRydXNfaHcuYyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9zdW54aS9jZWRydXMvY2VkcnVz
X2h3LmMKPiBpbmRleCA5YzU4MTlkZWYxODYuLjlkZTIwYWU0NzkxNiAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL3N0YWdpbmcvbWVkaWEvc3VueGkvY2VkcnVzL2NlZHJ1c19ody5jCj4gKysrIGIvZHJp
dmVycy9zdGFnaW5nL21lZGlhL3N1bnhpL2NlZHJ1cy9jZWRydXNfaHcuYwo+IEBAIC03OSw5ICs3
OSw2IEBAIHZvaWQgY2VkcnVzX2RzdF9mb3JtYXRfc2V0KHN0cnVjdCBjZWRydXNfZGV2ICpkZXYs
Cj4gIAkJcmVnID0gVkVfUFJJTUFSWV9PVVRfRk1UX05WMTI7Cj4gIAkJY2VkcnVzX3dyaXRlKGRl
diwgVkVfUFJJTUFSWV9PVVRfRk1ULCByZWcpOwo+ICAKPiAtCQlyZWcgPSBWRV9DSFJPTUFfQlVG
X0xFTl9TRFJUKGNocm9tYV9zaXplIC8gMik7Cj4gLQkJY2VkcnVzX3dyaXRlKGRldiwgVkVfQ0hS
T01BX0JVRl9MRU4sIHJlZyk7Cj4gLQo+ICAJCXJlZyA9IGNocm9tYV9zaXplIC8gMjsKPiAgCQlj
ZWRydXNfd3JpdGUoZGV2LCBWRV9QUklNQVJZX0NIUk9NQV9CVUZfTEVOLCByZWcpOwo+ICAKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxp
bmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGlu
dXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=

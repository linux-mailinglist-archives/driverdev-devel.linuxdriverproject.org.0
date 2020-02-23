Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 90292169892
	for <lists+driverdev-devel@lfdr.de>; Sun, 23 Feb 2020 17:06:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B03F28673C;
	Sun, 23 Feb 2020 16:06:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uOJzAd48xBdL; Sun, 23 Feb 2020 16:06:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8BBB68651F;
	Sun, 23 Feb 2020 16:06:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 14ABD1BF488
 for <devel@linuxdriverproject.org>; Sun, 23 Feb 2020 16:06:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0B7AE86430
 for <devel@linuxdriverproject.org>; Sun, 23 Feb 2020 16:06:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1H-8WZBj2Kaj for <devel@linuxdriverproject.org>;
 Sun, 23 Feb 2020 16:06:33 +0000 (UTC)
X-Greylist: delayed 00:05:53 by SQLgrey-1.7.6
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by whitealder.osuosl.org (Postfix) with ESMTPS id ED10A863D9
 for <devel@driverdev.osuosl.org>; Sun, 23 Feb 2020 16:06:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id 7BAAE1B46;
 Sun, 23 Feb 2020 17:00:36 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pIxNazIaEtLK; Sun, 23 Feb 2020 17:00:35 +0100 (CET)
Received: from function (lfbn-bor-1-797-11.w86-234.abo.wanadoo.fr
 [86.234.239.11])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id 397E69C3;
 Sun, 23 Feb 2020 17:00:35 +0100 (CET)
Received: from samy by function with local (Exim 4.93)
 (envelope-from <samuel.thibault@ens-lyon.org>)
 id 1j5te7-005TFX-Gy; Sun, 23 Feb 2020 16:58:19 +0100
Date: Sun, 23 Feb 2020 16:58:19 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Colin King <colin.king@canonical.com>
Subject: Re: [PATCH] staging: speakup: remove redundant initialization of
 pointer p_key
Message-ID: <20200223155819.hycmdvrsiid27jeg@function>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
 Colin King <colin.king@canonical.com>,
 William Hubbs <w.d.hubbs@gmail.com>,
 Chris Brannon <chris@the-brannons.com>,
 Kirk Reiser <kirk@reisers.ca>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 speakup@linux-speakup.org, devel@driverdev.osuosl.org,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20200223153954.420731-1-colin.king@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200223153954.420731-1-colin.king@canonical.com>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)
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
Cc: devel@driverdev.osuosl.org, Kirk Reiser <kirk@reisers.ca>,
 kernel-janitors@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, speakup@linux-speakup.org,
 linux-kernel@vger.kernel.org, Chris Brannon <chris@the-brannons.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Q29saW4gS2luZywgbGUgZGltLiAyMyBmw6l2ci4gMjAyMCAxNTozOTo1NCArMDAwMCwgYSBlY3Jp
dDoKPiBGcm9tOiBDb2xpbiBJYW4gS2luZyA8Y29saW4ua2luZ0BjYW5vbmljYWwuY29tPgo+IAo+
IFBvaW50ZXIgcF9rZXkgaXMgYmVpbmcgaW5pdGlhbGl6ZWQgd2l0aCBhIHZhbHVlIHRoYXQgaXMg
bmV2ZXIgcmVhZCwKPiBpdCBpcyBhc3NpZ25lZCBhIG5ldyB2YWx1ZSBsYXRlciBvbi4gVGhlIGlu
aXRpYWxpemF0aW9uIGlzIHJlZHVuZGFudAo+IGFuZCBjYW4gYmUgcmVtb3ZlZC4KPiAKPiBBZGRy
ZXNzZXMtQ292ZXJpdHk6ICgiVW51c2VkIHZhbHVlIikKPiBTaWduZWQtb2ZmLWJ5OiBDb2xpbiBJ
YW4gS2luZyA8Y29saW4ua2luZ0BjYW5vbmljYWwuY29tPgoKSW5kZWVkLCB0aGFua3MhCgpSZXZp
ZXdlZC1ieTogU2FtdWVsIFRoaWJhdWx0IDxzYW11ZWwudGhpYmF1bHRAZW5zLWx5b24ub3JnPgoK
PiAtLS0KPiAgZHJpdmVycy9zdGFnaW5nL3NwZWFrdXAva2V5aGVscC5jIHwgMiArLQo+ICAxIGZp
bGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9zdGFnaW5nL3NwZWFrdXAva2V5aGVscC5jIGIvZHJpdmVycy9zdGFnaW5nL3Nw
ZWFrdXAva2V5aGVscC5jCj4gaW5kZXggNWYxYmRhMzdmODZkLi44MjJjZWFjODMwNjggMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9zdGFnaW5nL3NwZWFrdXAva2V5aGVscC5jCj4gKysrIGIvZHJpdmVy
cy9zdGFnaW5nL3NwZWFrdXAva2V5aGVscC5jCj4gQEAgLTQ5LDcgKzQ5LDcgQEAgc3RhdGljIGlu
dCBjdXJfaXRlbSwgbnN0YXRlczsKPiAgc3RhdGljIHZvaWQgYnVpbGRfa2V5X2RhdGEodm9pZCkK
PiAgewo+ICAJdV9jaGFyICprcCwgY291bnRlcnNbTUFYRlVOQ1NdLCBjaCwgY2gxOwo+IC0JdV9z
aG9ydCAqcF9rZXkgPSBrZXlfZGF0YSwga2V5Owo+ICsJdV9zaG9ydCAqcF9rZXksIGtleTsKPiAg
CWludCBpLCBvZmZzZXQgPSAxOwo+ICAKPiAgCW5zdGF0ZXMgPSAoaW50KShzdGF0ZV90YmxbLTFd
KTsKPiAtLSAKPiAyLjI1LjAKPiAKCi0tIApTYW11ZWwKaidldGFpcyBlbiB0cmFpbiBkZSBuZXR0
b3llciBtYSBzb3VyaXMgZXQgbGUgY291cCBlc3QgcGFydGkuLi4KIC0rLSBzIHN1ciAjZW5zLW1p
bSAtIGV0IGVuIHBsdXMgYyB2cmFpLi4uIC0rLQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJw
cm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1h
bi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK

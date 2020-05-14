Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BC6EF1D3570
	for <lists+driverdev-devel@lfdr.de>; Thu, 14 May 2020 17:44:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5304886D81;
	Thu, 14 May 2020 15:44:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hzsn9c0QDrF4; Thu, 14 May 2020 15:44:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8612E88AF4;
	Thu, 14 May 2020 15:44:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9E9FE1BF37A
 for <devel@linuxdriverproject.org>; Thu, 14 May 2020 15:44:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 97E0227124
 for <devel@linuxdriverproject.org>; Thu, 14 May 2020 15:44:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a93gexeft0Pg for <devel@linuxdriverproject.org>;
 Thu, 14 May 2020 15:43:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by silver.osuosl.org (Postfix) with ESMTPS id 63AB222D10
 for <devel@driverdev.osuosl.org>; Thu, 14 May 2020 15:43:55 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: nicolas) with ESMTPSA id 08A7D2A2F7B
Message-ID: <9082c3117b9e9e65f35fc7ad91009c6ce412a842.camel@collabora.com>
Subject: Re: [PATCH] media: cedrus: Propagate OUTPUT resolution to CAPTURE
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Date: Thu, 14 May 2020 11:43:40 -0400
In-Reply-To: <20200514153903.341287-1-nicolas.dufresne@collabora.com>
References: <20200514153903.341287-1-nicolas.dufresne@collabora.com>
User-Agent: Evolution 3.36.1 (3.36.1-1.fc32) 
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
Cc: devel@driverdev.osuosl.org, kernel@collabora.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, stable@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

TGUgamV1ZGkgMTQgbWFpIDIwMjAgw6AgMTE6MzkgLTA0MDAsIE5pY29sYXMgRHVmcmVzbmUgYSDD
qWNyaXQgOgo+IEFzIHBlciBzcGVjLCB0aGUgQ0FQVFVSRSByZXNvbHV0aW9uIHNob3VsZCBiZSBh
dXRvbWF0aWNhbGx5IHNldCBiYXNlZCBvbgo+IHRoZSBPVFVQVVQgcmVzb2x1dGlvbi4gVGhpcyBw
YXRjaCBwcm9wZXJseSBwcm9wYWdhdGUgd2lkdGgvaGVpZ2h0IHRvIHRoZQo+IGNhcHR1cmUgd2hl
biB0aGUgT1VUUFVUIGZvcm1hdCBpcyBzZXQgYW5kIG92ZXJyaWRlIHRoZSB1c2VyIHByb3ZpZGVk
Cj4gd2lkdGgvaGVpZ2h0IHdpdGggY29uZmlndXJlZCBPVVRQVVQgcmVzb2x1dGlvbiB3aGVuIHRo
ZSBDQVBUVVJFIGZtdCBpcwo+IHVwZGF0ZWQuCj4gCj4gVGhpcyBhbHNvIHByZXZlbnRzIHVzZXJz
cGFjZSBmcm9tIHNlbGVjdGluZyBhIENBUFRVUkUgcmVzb2x1dGlvbiB0aGF0IGlzCj4gdG9vIHNt
YWxsLCBhdm9pZGluZyB1bndhbnRlZCBwYWdlIGZhdWx0cy4KClNpZGUgbm90ZSwgdGhpcyBwYXRj
aCBpcyBiYXNlZCBvbiB0b3Agb2YgIlNhbXVlbCBIb2xsYW5kIDxzYW11ZWxAc2hvbGxhbmQub3Jn
PiIKcGF0Y2hlczoKCglbUEFUQ0ggdjMgMS8yXSBtZWRpYTogY2VkcnVzOiBQcm9ncmFtIG91dHB1
dCBmb3JtYXQgZHVyaW5nIGVhY2ggcnVuCglbUEFUQ0ggdjMgMi8yXSBtZWRpYTogY2VkcnVzOiBJ
bXBsZW1lbnQgcnVudGltZSBQTQoKQXMgdGhlIHBhdGNoc2V0IGFsc28gZml4ZXMgY29uY3VycmVu
dCBkZWNvZGluZyBpc3N1ZXMuIFRoaXMgd2FzIHRlc3RlZCB1c2luZwpHU3RyZWFtZXIgaW1wbGVt
ZW50YXRpb24sIHdoaWNoIHN0cmljdGx5IGZvbGxvdyB0aGUgU3RhdGVsZXNzIENPREVDIHNwZWMg
YW5kCmV4cGVjdCBPVVRQVVQgdG8gQ0FQVFVSRSB3aWR0aC9oZWlnaHQgcHJvcGFnYXRpb24uCgo+
IAo+IFNpZ25lZC1vZmYtYnk6IE5pY29sYXMgRHVmcmVzbmUgPG5pY29sYXMuZHVmcmVzbmVAY29s
bGFib3JhLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9zdGFnaW5nL21lZGlhL3N1bnhpL2NlZHJ1cy9j
ZWRydXNfdmlkZW8uYyB8IDcgKysrKysrLQo+ICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25z
KCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9tZWRp
YS9zdW54aS9jZWRydXMvY2VkcnVzX3ZpZGVvLmMKPiBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9z
dW54aS9jZWRydXMvY2VkcnVzX3ZpZGVvLmMKPiBpbmRleCAxNmQ4MjMwOWU3YjYuLmE2ZDZiMTVh
ZGMyZSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvc3VueGkvY2VkcnVzL2Nl
ZHJ1c192aWRlby5jCj4gKysrIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL3N1bnhpL2NlZHJ1cy9j
ZWRydXNfdmlkZW8uYwo+IEBAIC0yNDcsNiArMjQ3LDggQEAgc3RhdGljIGludCBjZWRydXNfdHJ5
X2ZtdF92aWRfY2FwKHN0cnVjdCBmaWxlICpmaWxlLCB2b2lkCj4gKnByaXYsCj4gIAkJcmV0dXJu
IC1FSU5WQUw7Cj4gIAo+ICAJcGl4X2ZtdC0+cGl4ZWxmb3JtYXQgPSBmbXQtPnBpeGVsZm9ybWF0
Owo+ICsJcGl4X2ZtdC0+d2lkdGggPSBjdHgtPnNyY19mbXQud2lkdGg7Cj4gKwlwaXhfZm10LT5o
ZWlnaHQgPSBjdHgtPnNyY19mbXQuaGVpZ2h0Owo+ICAJY2VkcnVzX3ByZXBhcmVfZm9ybWF0KHBp
eF9mbXQpOwo+ICAKPiAgCXJldHVybiAwOwo+IEBAIC0zMTksMTEgKzMyMSwxNCBAQCBzdGF0aWMg
aW50IGNlZHJ1c19zX2ZtdF92aWRfb3V0KHN0cnVjdCBmaWxlICpmaWxlLCB2b2lkCj4gKnByaXYs
Cj4gIAkJYnJlYWs7Cj4gIAl9Cj4gIAo+IC0JLyogUHJvcGFnYXRlIGNvbG9yc3BhY2UgaW5mb3Jt
YXRpb24gdG8gY2FwdHVyZS4gKi8KPiArCS8qIFByb3BhZ2F0ZSBmb3JtYXQgaW5mb3JtYXRpb24g
dG8gY2FwdHVyZS4gKi8KPiAgCWN0eC0+ZHN0X2ZtdC5jb2xvcnNwYWNlID0gZi0+Zm10LnBpeC5j
b2xvcnNwYWNlOwo+ICAJY3R4LT5kc3RfZm10LnhmZXJfZnVuYyA9IGYtPmZtdC5waXgueGZlcl9m
dW5jOwo+ICAJY3R4LT5kc3RfZm10LnljYmNyX2VuYyA9IGYtPmZtdC5waXgueWNiY3JfZW5jOwo+
ICAJY3R4LT5kc3RfZm10LnF1YW50aXphdGlvbiA9IGYtPmZtdC5waXgucXVhbnRpemF0aW9uOwo+
ICsJY3R4LT5kc3RfZm10LndpZHRoID0gY3R4LT5zcmNfZm10LndpZHRoOwo+ICsJY3R4LT5kc3Rf
Zm10LmhlaWdodCA9IGN0eC0+c3JjX2ZtdC5oZWlnaHQ7Cj4gKwljZWRydXNfcHJlcGFyZV9mb3Jt
YXQoJmN0eC0+ZHN0X2ZtdCk7Cj4gIAo+ICAJcmV0dXJuIDA7Cj4gIH0KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZl
bEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9q
ZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=

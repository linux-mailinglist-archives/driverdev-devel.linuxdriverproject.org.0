Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67ADD3664A
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 Jun 2019 23:07:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DB5AB88045;
	Wed,  5 Jun 2019 21:07:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nY7piTVoHUIV; Wed,  5 Jun 2019 21:07:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 656E287E81;
	Wed,  5 Jun 2019 21:07:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id ACB3F1BF422
 for <devel@linuxdriverproject.org>; Wed,  5 Jun 2019 21:07:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A995A861FE
 for <devel@linuxdriverproject.org>; Wed,  5 Jun 2019 21:07:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NCilbsg0se7T for <devel@linuxdriverproject.org>;
 Wed,  5 Jun 2019 21:07:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from relay10.mail.gandi.net (relay10.mail.gandi.net [217.70.178.230])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 290C1861AA
 for <devel@driverdev.osuosl.org>; Wed,  5 Jun 2019 21:07:44 +0000 (UTC)
Received: from collins (196.109.29.93.rev.sfr.net [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 1E24924000B;
 Wed,  5 Jun 2019 21:07:33 +0000 (UTC)
Message-ID: <870e55d3697583841700258b184ed4f5f3a8fb03.camel@bootlin.com>
Subject: Re: [PATCH 4/7] media: cedrus: Remove dst_bufs from context
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Jernej Skrabec <jernej.skrabec@siol.net>, maxime.ripard@bootlin.com
Date: Wed, 05 Jun 2019 23:07:33 +0200
In-Reply-To: <20190530211516.1891-5-jernej.skrabec@siol.net>
References: <20190530211516.1891-1-jernej.skrabec@siol.net>
 <20190530211516.1891-5-jernej.skrabec@siol.net>
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
YSDDqWNyaXQgOgo+IFRoaXMgYXJyYXkgaXMganVzdCBkdXBsaWNhdGVkIGNhcHR1cmUgYnVmZmVy
IHF1ZXVlLiBSZW1vdmUgaXQgYW5kIGFkanVzdAo+IGNvZGUgdG8gbG9vayBpbnRvIGNhcHR1cmUg
YnVmZmVyIHF1ZXVlIGluc3RlYWQuCj4gCj4gU2lnbmVkLW9mZi1ieTogSmVybmVqIFNrcmFiZWMg
PGplcm5lai5za3JhYmVjQHNpb2wubmV0PgoKQWNrZWQtYnk6IFBhdWwgS29jaWFsa293c2tpIDxw
YXVsLmtvY2lhbGtvd3NraUBib290bGluLmNvbT4KCkNoZWVycyBhbmQgdGhhbmtzLAoKUGF1bAoK
PiAtLS0KPiAgZHJpdmVycy9zdGFnaW5nL21lZGlhL3N1bnhpL2NlZHJ1cy9jZWRydXMuaCAgIHwg
IDQgKy0tLQo+ICAuLi4vc3RhZ2luZy9tZWRpYS9zdW54aS9jZWRydXMvY2VkcnVzX2gyNjQuYyAg
fCAgNCArKy0tCj4gIC4uLi9zdGFnaW5nL21lZGlhL3N1bnhpL2NlZHJ1cy9jZWRydXNfdmlkZW8u
YyB8IDIyIC0tLS0tLS0tLS0tLS0tLS0tLS0KPiAgMyBmaWxlcyBjaGFuZ2VkLCAzIGluc2VydGlv
bnMoKyksIDI3IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcv
bWVkaWEvc3VueGkvY2VkcnVzL2NlZHJ1cy5oIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL3N1bnhp
L2NlZHJ1cy9jZWRydXMuaAo+IGluZGV4IDNmNDc2ZDBmZDk4MS4uZDhlNjc3N2U1ZTI3IDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9zdW54aS9jZWRydXMvY2VkcnVzLmgKPiAr
KysgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvc3VueGkvY2VkcnVzL2NlZHJ1cy5oCj4gQEAgLTEw
MCw4ICsxMDAsNiBAQCBzdHJ1Y3QgY2VkcnVzX2N0eCB7Cj4gIAlzdHJ1Y3QgdjRsMl9jdHJsX2hh
bmRsZXIJaGRsOwo+ICAJc3RydWN0IHY0bDJfY3RybAkJKipjdHJsczsKPiAgCj4gLQlzdHJ1Y3Qg
dmIyX2J1ZmZlcgkJKmRzdF9idWZzW1ZJREVPX01BWF9GUkFNRV07Cj4gLQo+ICAJdW5pb24gewo+
ICAJCXN0cnVjdCB7Cj4gIAkJCXZvaWQJCSptdl9jb2xfYnVmOwo+IEBAIC0xODcsNyArMTg1LDcg
QEAgc3RhdGljIGlubGluZSBkbWFfYWRkcl90IGNlZHJ1c19kc3RfYnVmX2FkZHIoc3RydWN0IGNl
ZHJ1c19jdHggKmN0eCwKPiAgCWlmIChpbmRleCA8IDApCj4gIAkJcmV0dXJuIDA7Cj4gIAo+IC0J
YnVmID0gY3R4LT5kc3RfYnVmc1tpbmRleF07Cj4gKwlidWYgPSBjdHgtPmZoLm0ybV9jdHgtPmNh
cF9xX2N0eC5xLmJ1ZnNbaW5kZXhdOwo+ICAJcmV0dXJuIGJ1ZiA/IGNlZHJ1c19idWZfYWRkcihi
dWYsICZjdHgtPmRzdF9mbXQsIHBsYW5lKSA6IDA7Cj4gIH0KPiAgCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvc3RhZ2luZy9tZWRpYS9zdW54aS9jZWRydXMvY2VkcnVzX2gyNjQuYyBiL2RyaXZlcnMv
c3RhZ2luZy9tZWRpYS9zdW54aS9jZWRydXMvY2VkcnVzX2gyNjQuYwo+IGluZGV4IGQwZWUzZjkw
ZmY0Ni4uYjIyOTBmOThkODFhIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9z
dW54aS9jZWRydXMvY2VkcnVzX2gyNjQuYwo+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9z
dW54aS9jZWRydXMvY2VkcnVzX2gyNjQuYwo+IEBAIC0xMTksNyArMTE5LDcgQEAgc3RhdGljIHZv
aWQgY2VkcnVzX3dyaXRlX2ZyYW1lX2xpc3Qoc3RydWN0IGNlZHJ1c19jdHggKmN0eCwKPiAgCQlp
ZiAoYnVmX2lkeCA8IDApCj4gIAkJCWNvbnRpbnVlOwo+ICAKPiAtCQljZWRydXNfYnVmID0gdmIy
X3RvX2NlZHJ1c19idWZmZXIoY3R4LT5kc3RfYnVmc1tidWZfaWR4XSk7Cj4gKwkJY2VkcnVzX2J1
ZiA9IHZiMl90b19jZWRydXNfYnVmZmVyKGNhcF9xLT5idWZzW2J1Zl9pZHhdKTsKPiAgCQlwb3Np
dGlvbiA9IGNlZHJ1c19idWYtPmNvZGVjLmgyNjQucG9zaXRpb247Cj4gIAkJdXNlZF9kcGJzIHw9
IEJJVChwb3NpdGlvbik7Cj4gIAo+IEBAIC0xOTQsNyArMTk0LDcgQEAgc3RhdGljIHZvaWQgX2Nl
ZHJ1c193cml0ZV9yZWZfbGlzdChzdHJ1Y3QgY2VkcnVzX2N0eCAqY3R4LAo+ICAJCWlmIChidWZf
aWR4IDwgMCkKPiAgCQkJY29udGludWU7Cj4gIAo+IC0JCXJlZl9idWYgPSB0b192YjJfdjRsMl9i
dWZmZXIoY3R4LT5kc3RfYnVmc1tidWZfaWR4XSk7Cj4gKwkJcmVmX2J1ZiA9IHRvX3ZiMl92NGwy
X2J1ZmZlcihjYXBfcS0+YnVmc1tidWZfaWR4XSk7Cj4gIAkJY2VkcnVzX2J1ZiA9IHZiMl92NGwy
X3RvX2NlZHJ1c19idWZmZXIocmVmX2J1Zik7Cj4gIAkJcG9zaXRpb24gPSBjZWRydXNfYnVmLT5j
b2RlYy5oMjY0LnBvc2l0aW9uOwo+ICAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL21l
ZGlhL3N1bnhpL2NlZHJ1cy9jZWRydXNfdmlkZW8uYyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9z
dW54aS9jZWRydXMvY2VkcnVzX3ZpZGVvLmMKPiBpbmRleCBlMmI1MzBiMWE5NTYuLjY4MWRmZTMz
NjdhNiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvc3VueGkvY2VkcnVzL2Nl
ZHJ1c192aWRlby5jCj4gKysrIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL3N1bnhpL2NlZHJ1cy9j
ZWRydXNfdmlkZW8uYwo+IEBAIC00MTEsMjYgKzQxMSw2IEBAIHN0YXRpYyB2b2lkIGNlZHJ1c19x
dWV1ZV9jbGVhbnVwKHN0cnVjdCB2YjJfcXVldWUgKnZxLCB1MzIgc3RhdGUpCj4gIAl9Cj4gIH0K
PiAgCj4gLXN0YXRpYyBpbnQgY2VkcnVzX2J1Zl9pbml0KHN0cnVjdCB2YjJfYnVmZmVyICp2YikK
PiAtewo+IC0Jc3RydWN0IHZiMl9xdWV1ZSAqdnEgPSB2Yi0+dmIyX3F1ZXVlOwo+IC0Jc3RydWN0
IGNlZHJ1c19jdHggKmN0eCA9IHZiMl9nZXRfZHJ2X3ByaXYodnEpOwo+IC0KPiAtCWlmICghVjRM
Ml9UWVBFX0lTX09VVFBVVCh2cS0+dHlwZSkpCj4gLQkJY3R4LT5kc3RfYnVmc1t2Yi0+aW5kZXhd
ID0gdmI7Cj4gLQo+IC0JcmV0dXJuIDA7Cj4gLX0KPiAtCj4gLXN0YXRpYyB2b2lkIGNlZHJ1c19i
dWZfY2xlYW51cChzdHJ1Y3QgdmIyX2J1ZmZlciAqdmIpCj4gLXsKPiAtCXN0cnVjdCB2YjJfcXVl
dWUgKnZxID0gdmItPnZiMl9xdWV1ZTsKPiAtCXN0cnVjdCBjZWRydXNfY3R4ICpjdHggPSB2YjJf
Z2V0X2Rydl9wcml2KHZxKTsKPiAtCj4gLQlpZiAoIVY0TDJfVFlQRV9JU19PVVRQVVQodnEtPnR5
cGUpKQo+IC0JCWN0eC0+ZHN0X2J1ZnNbdmItPmluZGV4XSA9IE5VTEw7Cj4gLX0KPiAtCj4gIHN0
YXRpYyBpbnQgY2VkcnVzX2J1Zl9vdXRfdmFsaWRhdGUoc3RydWN0IHZiMl9idWZmZXIgKnZiKQo+
ICB7Cj4gIAlzdHJ1Y3QgdmIyX3Y0bDJfYnVmZmVyICp2YnVmID0gdG9fdmIyX3Y0bDJfYnVmZmVy
KHZiKTsKPiBAQCAtNTE3LDggKzQ5Nyw2IEBAIHN0YXRpYyB2b2lkIGNlZHJ1c19idWZfcmVxdWVz
dF9jb21wbGV0ZShzdHJ1Y3QgdmIyX2J1ZmZlciAqdmIpCj4gIHN0YXRpYyBzdHJ1Y3QgdmIyX29w
cyBjZWRydXNfcW9wcyA9IHsKPiAgCS5xdWV1ZV9zZXR1cAkJPSBjZWRydXNfcXVldWVfc2V0dXAs
Cj4gIAkuYnVmX3ByZXBhcmUJCT0gY2VkcnVzX2J1Zl9wcmVwYXJlLAo+IC0JLmJ1Zl9pbml0CQk9
IGNlZHJ1c19idWZfaW5pdCwKPiAtCS5idWZfY2xlYW51cAkJPSBjZWRydXNfYnVmX2NsZWFudXAs
Cj4gIAkuYnVmX3F1ZXVlCQk9IGNlZHJ1c19idWZfcXVldWUsCj4gIAkuYnVmX291dF92YWxpZGF0
ZQk9IGNlZHJ1c19idWZfb3V0X3ZhbGlkYXRlLAo+ICAJLmJ1Zl9yZXF1ZXN0X2NvbXBsZXRlCT0g
Y2VkcnVzX2J1Zl9yZXF1ZXN0X2NvbXBsZXRlLAoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVy
cHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxt
YW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F12F552AA77
	for <lists+driverdev-devel@lfdr.de>; Tue, 17 May 2022 20:20:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 33D1141A0C;
	Tue, 17 May 2022 18:20:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id COs6CQqsR5WP; Tue, 17 May 2022 18:20:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A5366419F3;
	Tue, 17 May 2022 18:20:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id ED1C81BF855
 for <devel@linuxdriverproject.org>; Tue, 17 May 2022 18:20:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DC58F83E4D
 for <devel@linuxdriverproject.org>; Tue, 17 May 2022 18:20:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gratismspoints.com;
 domainkeys=pass (2048-bit key) header.from=sam.eas@gratismspoints.com
 header.d=gratismspoints.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ffh1oJa3UWrC for <devel@linuxdriverproject.org>;
 Tue, 17 May 2022 18:20:36 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from eddatermay.gratismspoints.com (eddatermay.gratismspoints.com
 [193.233.182.249])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1DE2783E52
 for <devel@driverdev.osuosl.org>; Tue, 17 May 2022 18:20:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=dkim;
 d=gratismspoints.com; 
 h=Reply-To:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding;
 i=sam.eas@gratismspoints.com; bh=sZDG7ri0Mv9bGcSob4G9u4juwlg=;
 b=FQbGt/T24k5QZ0DKZ3gqu7q8Xt7q3IeoKXhevasGkCxY+XaPkFQjpzPrtgtmOLP0qwhh+RCLPpoJ
 1rEJN1rYN8A91oXx1Lr6OasmVI28O6+uMcph03zXxd1YSh+8loi1n/AG207Yyldi/EpRX6n34VsW
 yn34D+oBY+K6+wtJjd/qRdNk5UfynAQcXO7HFR9eZUhonPDiXxomlleXMjPkQnZVhmaAV8mE3jWl
 8n5TUEfnCrgQddR+G1uot4tsuJYjhZlFdMw7+UWTekl9kSbsdgxuUeyxBSy9quHVG+4SDR3Dsm90
 lDp+/JPqHXC4oTOtU20Xc1nAxXwsQlXBLyoVeA==
DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=dkim; d=gratismspoints.com; 
 b=fwfkLPFhJKtJnjbCbDeRQng94FilUJsDn+fJm5d0KMzb7N2WNpZQM1Smumlc+I+ofedNVAMI18ew
 F2SzK49CT5z9B91bj8x15UAUGIVNvcEvD10lMSf+rVzjWiXw8/HGAL9qzU3scQmNkdq+Viy9J5G0
 EcQXzrbmJHXaHSfdYGXeWiVTweMG4PGf6KtZSLrqB0mcimtWYiwwqeee0NUn3X8DJx2Ic8Vbhv3A
 j41yIvnm6inyY+NPWZ0XZCPNJsHSb5v0UwHJZUGfvZPz0+XafkAJVx+8XUzcE6BYASYbQFZRR29C
 K2N6d1HBuuNTh8Z2TRO1mj6sFzmdDbpuuxpI2A==;
From: Mustafa Ayvaz <sam.eas@gratismspoints.com>
To: devel@driverdev.osuosl.org
Subject: MUT. PARTNER
Date: 17 May 2022 20:20:33 +0200
Message-ID: <20220517202033.3111A8DF22C0B4C0@gratismspoints.com>
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
Reply-To: me.mayvaz@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RGVhciBkZXZlbCwKCkkgYW0gTXVzdGFmYSBBeXZheiwgYSBwZXJzb25hbCBhdHRvcm5leSB0byB0
aGUgbGF0ZSBNci4gUm9iZXJ0LCAKd2hvIGxvc3QgaGlzIGxpZmUgZHVlIHRvIENvcm9uYXZpcnVz
IGRpc2Vhc2UsIHdoaWNoIGhlIGNvbnRyYWN0ZWQgCmR1cmluZyBoaXMgYnVzaW5lc3MgdHJpcCBp
biBDaGluYS4gSSBjb250YWN0ZWQgeW91IHRvIHdvcmsgd2l0aCAKbWUgaW4gc2VjdXJpbmcgdGhl
IHRyYW5zZmVyIG9mIGEgZnVuZDogRm91ciBtaWxsaW9uIGZvdXIgaHVuZHJlZCAKYW5kIHR3ZW50
eSB0aG91c2FuZCBVUyBkb2xsYXJzLCBsZWdhY3kgbGVmdCBieSBoaW0uCgpJIGhhdmUgdGhvcm91
Z2hseSBzZWFyY2hlZCBmb3IgdGhlIG5leHQgb2Yga2luIHRvIG15IGRlY2Vhc2VkIApjbGllbnQs
IGJ1dCBoYXZlIGZhaWxlZCBhcyBJIGRvIG5vdCBoYXZlIGhpcyBjdXJyZW50IHJlc2lkZW5jZSAK
YW5kIGNvbnRhY3QgZGV0YWlscy4gQXMgSSB3YXMgc2VhcmNoaW5nLCBJIGJ1bXBlZCBpbnRvIHlv
dXIgCnByb2ZpbGUgaGF2aW5nIHRoZSBzYW1lIGxhc3QgbmFtZSBhbmQgaW4gdGhlIHNhbWUgbG9j
YWxpdHkgd2l0aCAKdGhlIG5leHQgb2Yga2luLiBJIGRlY2lkZWQgdG8gY29udGFjdCB5b3UgYW5k
IHVzZSB5b3UgYXMgdGhlIApCb25hZmlkZSBuZXh0IG9mIGtpbi4KCkkgc29saWNpdCB5b3VyIGNv
bnNlbnQgdG8gcHJvZHVjZSB5b3UgYXMgdGhlIG5leHQgb2Yga2luIHRvIG15IApkZWNlYXNlZCBj
bGllbnQgc2luY2UgYm90aCBvZiB5b3UgYmVhciB0aGUgc2FtZSBsYXN0IG5hbWUuIFRoZSAKZnVu
ZHMgd2lsbCB0aGVuIGJlIHRyYW5zZmVycmVkIHRvIHlvdSBhcyB0aGUgYmVuZWZpY2lhcnkgYW5k
IApzaGFyZWQgYWNjb3JkaW5nIHRvIGEgcHJvcG9zZWQgc2hhcmluZyBwYXR0ZXJuIC8gcmF0aW8g
b2YgNjA6NDAgCmkuZS4gNjAlIGZvciBtZSBhbmQgNDAlIGZvciB5b3UuIEtpbmRseSBjb250YWN0
IG1lIGltbWVkaWF0ZWx5IApmb3IgbW9yZSBpbmZvcm1hdGlvbi4KClJlZ2FyZHMKTXVzdGFmYSBB
eXZhei4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KX19fX19fX19fX19fX19fX19fX19fX19fCgpMaWViZXIgZGV2ZWwsCgpJ
Y2ggYmluIE11c3RhZmEgQXl2YXosIGVpbiBwZXJzw7ZubGljaGVyIEFud2FsdCBkZXMgdmVyc3Rv
cmJlbmVuIApIZXJybiBSb2JlcnQsIGRlciBzZWluIExlYmVuIGF1ZmdydW5kIGVpbmVyIENvcm9u
YXZpcnVzLUtyYW5raGVpdCAKdmVybG9yZW4gaGF0LCBkaWUgZXIgc2ljaCB3w6RocmVuZCBzZWlu
ZXIgR2VzY2jDpGZ0c3JlaXNlIGluIENoaW5hIAp6dWdlem9nZW4gaGF0LiBJY2ggaGFiZSBTaWUg
a29udGFrdGllcnQsIHVtIG1pdCBtaXIgCnp1c2FtbWVuenVhcmJlaXRlbiwgdW0gZGllIMOcYmVy
d2Vpc3VuZyBlaW5lcyBGb25kcyAKc2ljaGVyenVzdGVsbGVuOiBWaWVyIE1pbGxpb25lbiB2aWVy
aHVuZGVydHp3YW56aWd0YXVzZW5kIFVTLQpEb2xsYXIsIGVpbiB2b24gaWhtIGhpbnRlcmxhc3Nl
bmVzIFZlcm3DpGNodG5pcy4KCkljaCBoYWJlIGdyw7xuZGxpY2ggbmFjaCBkZW4gbsOkY2hzdGVu
IEFuZ2Vow7ZyaWdlbiBtZWluZXMgCnZlcnN0b3JiZW5lbiBLbGllbnRlbiBnZXN1Y2h0LCBiaW4g
YWJlciBnZXNjaGVpdGVydCwgZGEgaWNoIApzZWluZW4gYWt0dWVsbGVuIFdvaG5zaXR6IHVuZCBz
ZWluZSBLb250YWt0ZGF0ZW4gbmljaHQgaGFiZS4gQmVpIAptZWluZXIgU3VjaGUgYmluIGljaCBh
dWYgSWhyIFByb2ZpbCBnZXN0b8OfZW4sIGRhcyBkZW4gZ2xlaWNoZW4gCk5hY2huYW1lbiBoYXQg
dW5kIHNpY2ggaW4gZGVyIGdsZWljaGVuIEdlZ2VuZCB3aWUgZGllIG7DpGNoc3RlbiAKQW5nZWjD
tnJpZ2VuIGJlZmluZGV0LiBJY2ggYmVzY2hsb3NzLCBTaWUgenUga29udGFrdGllcmVuIHVuZCBT
aWUgCmFscyBCb25hZmlkZS1Ow6RjaHN0ZW4genUgdmVyd2VuZGVuLgoKSWNoIGVyYml0dGUgSWhy
IEVpbnZlcnN0w6RuZG5pcywgU2llIGFscyBuw6RjaHN0ZW4gQW5nZWjDtnJpZ2VuIAptZWluZXMg
dmVyc3RvcmJlbmVuIE1hbmRhbnRlbiB2b3J6dXN0ZWxsZW4sIGRhIFNpZSBiZWlkZSAKZGVuc2Vs
YmVuIE5hY2huYW1lbiB0cmFnZW4uIERpZSBHZWxkZXIgd2VyZGVuIGRhbm4gYW4gU2llIGFscyAK
QmVnw7xuc3RpZ3RlbiDDvGJlcndpZXNlbiB1bmQgZ2Vtw6TDnyBlaW5lbSB2b3JnZXNjaGxhZ2Vu
ZW4gCkF1ZnRlaWx1bmdzbXVzdGVyIC8gVmVyaMOkbHRuaXMgdm9uIDYwOjQwIGdldGVpbHQsIGQu
aC4gNjAgJSBmw7xyIAptaWNoIHVuZCA0MCAlIGbDvHIgU2llLiBCaXR0ZSBrb250YWt0aWVyZW4g
U2llIG1pY2ggdW1nZWhlbmQgZsO8ciAKd2VpdGVyZSBJbmZvcm1hdGlvbmVuLgoKR3LDvMOfZQpN
dXN0YWZhIEF5dmF6LgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRw
Oi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2
ZXJkZXYtZGV2ZWwK

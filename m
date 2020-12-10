Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A2DDB2D5EF1
	for <lists+driverdev-devel@lfdr.de>; Thu, 10 Dec 2020 16:05:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5A149869C6;
	Thu, 10 Dec 2020 15:05:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LFjZBGwn7Lro; Thu, 10 Dec 2020 15:05:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 580578682F;
	Thu, 10 Dec 2020 15:05:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E9FE81BF2C5
 for <devel@linuxdriverproject.org>; Thu, 10 Dec 2020 15:05:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E600C87054
 for <devel@linuxdriverproject.org>; Thu, 10 Dec 2020 15:05:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GnEIRkZFJJ5s for <devel@linuxdriverproject.org>;
 Thu, 10 Dec 2020 15:05:39 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from cstnet.cn (smtp37.cstnet.cn [159.226.251.37])
 by hemlock.osuosl.org (Postfix) with ESMTP id 20C3787017
 for <devel@driverdev.osuosl.org>; Thu, 10 Dec 2020 15:05:38 +0000 (UTC)
Received: by ajax-webmail-APP-12 (Coremail) ; Thu, 10 Dec 2020 23:05:34
 +0800 (GMT+08:00)
X-Originating-IP: [125.120.23.64]
Date: Thu, 10 Dec 2020 23:05:34 +0800 (GMT+08:00)
X-CM-HeaderCharset: UTF-8
From: shaojie.dong@isrc.iscas.ac.cn
To: "Dan Carpenter" <dan.carpenter@oracle.com>
Subject: Re: Re: [PATCH] staging: rtl8712: check register_netdev() return value
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.13 build 20201118(d3a44678)
 Copyright (c) 2002-2020 www.mailtech.cn cnic.cn
In-Reply-To: <20201209174615.GI2767@kadam>
References: <20201209150124.23446-1-shaojie.dong@isrc.iscas.ac.cn>
 <20201209174615.GI2767@kadam>
MIME-Version: 1.0
Message-ID: <30d377fa.20bd.1764d2f9aa8.Coremail.shaojie.dong@isrc.iscas.ac.cn>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: tgCowADXpYE+OdJfGuECAA--.13404W
X-CM-SenderInfo: pvkd0ytlhov01qj6x21ufox2xfdvhtffof0/1tbiCggGBVz4jNnmH
	wABsI
X-Coremail-Antispam: 1Ur529EdanIXcx71UUUUU7IcSsGvfJ3iIAIbVAYjsxI4VWxJw
 CS07vEb4IE77IF4wCS07vE1I0E4x80FVAKz4kxMIAIbVAFxVCaYxvI4VCIwcAKzIAtYxBI
 daVFxhVjvjDU=
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
Cc: devel@driverdev.osuosl.org, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGkKCiZndDsgCiZndDsgVGhpcyBmdW5jdGlvbiBzaG91bGQgbm90IGJlIGNhbGxpbmcgcmVnaXN0
ZXJfbmV0ZGV2KCkuICBXaGF0IGRvZXMgdGhhdAomZ3Q7IGhhdmUgdG8gZG8gd2l0aCBmaXJtd2Fy
ZT8gIEl0IHNob3VsZCBhbHNvIG5vdCBmcmVlX25ldGRldigpIGJlY2F1c2UKJmd0OyB0aGF0IHdp
bGwganVzdCBsZWFkIHRvIGEgdXNlIGFmdGVyIGZyZWUgaW4gdGhlIGNhbGxlci4KJmd0OwoKLS0m
Z3Q7IGNoZWNrIGNvZGUgaGlzdG9yeSBhdXRob3I8bGFycnkuZmluZ2VyQGx3ZmluZ2VyLm5ldD4g
Y2hhbmdlZCBzeW5jaHJvbm91cyBmaXJtd2FyZSBsb2FkaW5nIHRvIGFzeW5jaHJvbm91cyBmaXJt
d2FyZSBsb2FkaW5nCiAgICBiZWZvcmUgdGhpcyBjaGFuZ2UsIHJlZ2lzdGVyX25ldGRldigpIHdh
cyBub3QgY2FsbGluZyBpbiBmaXJtd2FyZSByZWxhdGVkIGZ1bmN0aW9uLgogICAgRm9yIGFzeW5j
aHJvbm91cyBsb2FkaW5nLCBtYXliZSByZWdpc3Rlcl9uZXRkZXYoKSBiZSBjYWxsaW5nIGluIHJ0
bDg3MXhfbG9hZF9md19jYigpIGlzIHRvIGVuc3VyZSB0aGUgbmV0ZGV2IGJlIHJlZ2lzdGVyZWQg
YWZ0ZXIgZmlybXdhcmUgbG9hZGluZyBjb21wbGV0ZWQKCi0tJmd0OyBmb3IgcG90ZW50aWFsIHVz
ZSBhZnRlciBmcmVlIGlzc3VlCiAgICBDb3VsZCBJIG9ubHkgY2FsbCAiZnJlZV9pcnEoYWRhcHRl
ci0mZ3Q7cG5ldGRldi0mZ3Q7aXJxLCBhZGFwdGVyLSZndDtwbmV0ZGV2KSIgd2hlbiByZWdpc3Rl
cl9uZXRkZXYoKSBmYWlsZWQgPwogICAgSWYgbm8gbmVlZCB0byBjaGFuZ2UgZHJpdmVycy9zdGFn
aW5nL3J0bDg3MTIvaGFsX2luaXQuYyBmaWxlLCBJIGNvdWxkIGdpdmUgdXAgbXkgcGF0Y2gsIHRo
YW5rIHlvdSAhCgomZ3Q7IC0tLS0t5Y6f5aeL6YKu5Lu2LS0tLS0KJmd0OyDlj5Hku7bkuro6ICJE
YW4gQ2FycGVudGVyIiA8ZGFuLmNhcnBlbnRlckBvcmFjbGUuY29tPgomZ3Q7IOWPkemAgeaXtumX
tDogMjAyMC0xMi0xMCAwMTo0NjoxNSAo5pif5pyf5ZubKQomZ3Q7IOaUtuS7tuS6ujogc2hhb2pp
ZS5kb25nQGlzcmMuaXNjYXMuYWMuY24KJmd0OyDmioTpgIE6IExhcnJ5LkZpbmdlckBsd2Zpbmdl
ci5uZXQsIGZsb3JpYW4uYy5zY2hpbGhhYmVsQGdvb2dsZW1haWwuY29tLCBncmVna2hAbGludXhm
b3VuZGF0aW9uLm9yZywgZGV2ZWxAZHJpdmVyZGV2Lm9zdW9zbC5vcmcsIGxpbnV4LWtlcm5lbEB2
Z2VyLmtlcm5lbC5vcmcKJmd0OyDkuLvpopg6IFJlOiBbUEFUQ0hdIHN0YWdpbmc6IHJ0bDg3MTI6
IGNoZWNrIHJlZ2lzdGVyX25ldGRldigpIHJldHVybiB2YWx1ZQomZ3Q7IAomZ3Q7IE9uIFdlZCwg
RGVjIDA5LCAyMDIwIGF0IDExOjAxOjI0UE0gKzA4MDAsIHNoYW9qaWUuZG9uZ0Bpc3JjLmlzY2Fz
LmFjLmNuIHdyb3RlOgomZ3Q7ICZndDsgRnJvbTogInNoYW9qaWUuZG9uZyIgPHNoYW9qaWUuZG9u
Z0Bpc3JjLmlzY2FzLmFjLmNuPgomZ3Q7ICZndDsgCiZndDsgJmd0OyBGdW5jdGlvbiByZWdpc3Rl
cl9uZXRkZXYoKSBjYW4gZmFpbCwgc28gd2Ugc2hvdWxkIGNoZWNrIGl0J3MgcmV0dXJuIHZhbHVl
CiZndDsgJmd0OyAKJmd0OyAmZ3Q7IFNpZ25lZC1vZmYtYnk6IHNoYW9qaWUuZG9uZyA8c2hhb2pp
ZS5kb25nQGlzcmMuaXNjYXMuYWMuY24+CiZndDsgJmd0OyAtLS0KJmd0OyAmZ3Q7ICBkcml2ZXJz
L3N0YWdpbmcvcnRsODcxMi9oYWxfaW5pdC5jIHwgNSArKysrLQomZ3Q7ICZndDsgIDEgZmlsZSBj
aGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKJmd0OyAmZ3Q7IAomZ3Q7ICZn
dDsgZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9ydGw4NzEyL2hhbF9pbml0LmMgYi9kcml2
ZXJzL3N0YWdpbmcvcnRsODcxMi9oYWxfaW5pdC5jCiZndDsgJmd0OyBpbmRleCA3MTVmMWZlOGIu
LjM4YTNlM2Q0NCAxMDA2NDQKJmd0OyAmZ3Q7IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy9ydGw4NzEy
L2hhbF9pbml0LmMKJmd0OyAmZ3Q7ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9ydGw4NzEyL2hhbF9p
bml0LmMKJmd0OyAmZ3Q7IEBAIC00NSw3ICs0NSwxMCBAQCBzdGF0aWMgdm9pZCBydGw4NzF4X2xv
YWRfZndfY2IoY29uc3Qgc3RydWN0IGZpcm13YXJlICpmaXJtd2FyZSwgdm9pZCAqY29udGV4dCkK
Jmd0OyAmZ3Q7ICAJfQomZ3Q7ICZndDsgIAlhZGFwdGVyLSZndDtmdyA9IGZpcm13YXJlOwomZ3Q7
ICZndDsgIAkvKiBmaXJtd2FyZSBhdmFpbGFibGUgLSBzdGFydCBuZXRkZXYgKi8KJmd0OyAmZ3Q7
IC0JcmVnaXN0ZXJfbmV0ZGV2KGFkYXB0ZXItJmd0O3BuZXRkZXYpOwomZ3Q7ICZndDsgKwlpZiAo
cmVnaXN0ZXJfbmV0ZGV2KGFkYXB0ZXItJmd0O3BuZXRkZXYpICE9IDApIHsKJmd0OyAmZ3Q7ICsJ
CW5ldGRldl9lcnIoYWRhcHRlci0mZ3Q7cG5ldGRldiwgInJlZ2lzdGVyX25ldGRldigpIGZhaWxl
ZFxuIik7CiZndDsgJmd0OyArCQlmcmVlX25ldGRldihhZGFwdGVyLSZndDtwbmV0ZGV2KTsKJmd0
OyAmZ3Q7ICsJfQomZ3Q7IAomZ3Q7IFRoaXMgZnVuY3Rpb24gc2hvdWxkIG5vdCBiZSBjYWxsaW5n
IHJlZ2lzdGVyX25ldGRldigpLiAgV2hhdCBkb2VzIHRoYXQKJmd0OyBoYXZlIHRvIGRvIHdpdGgg
ZmlybXdhcmU/ICBJdCBzaG91bGQgYWxzbyBub3QgZnJlZV9uZXRkZXYoKSBiZWNhdXNlCiZndDsg
dGhhdCB3aWxsIGp1c3QgbGVhZCB0byBhIHVzZSBhZnRlciBmcmVlIGluIHRoZSBjYWxsZXIuCiZn
dDsgCiZndDsgcmVnYXJkcywKJmd0OyBkYW4gY2FycGVudGVyCiZndDsgCiZndDsgJmd0OyAgCWNv
bXBsZXRlKCZhbXA7YWRhcHRlci0mZ3Q7cnRsODcxMl9md19yZWFkeSk7CiZndDsgJmd0OyAgfQom
Z3Q7ICZndDsgIAomZ3Q7ICZndDsgLS0gCiZndDsgJmd0OyAyLjE3LjEKJmd0OyAmZ3Q7IAomZ3Q7
ICZndDsgX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KJmd0
OyAmZ3Q7IGRldmVsIG1haWxpbmcgbGlzdAomZ3Q7ICZndDsgZGV2ZWxAbGludXhkcml2ZXJwcm9q
ZWN0Lm9yZwomZ3Q7ICZndDsgaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3Jn
L21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCjwvc2hhb2ppZS5kb25nQGlzcmMuaXNj
YXMuYWMuY24+PC9zaGFvamllLmRvbmdAaXNyYy5pc2Nhcy5hYy5jbj48L2Rhbi5jYXJwZW50ZXJA
b3JhY2xlLmNvbT48L2xhcnJ5LmZpbmdlckBsd2Zpbmdlci5uZXQ+Cl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBs
aW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=

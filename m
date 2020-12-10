Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AD342D5F3F
	for <lists+driverdev-devel@lfdr.de>; Thu, 10 Dec 2020 16:15:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BF231204E9;
	Thu, 10 Dec 2020 15:15:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vibvZlsvXBhp; Thu, 10 Dec 2020 15:15:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1572220500;
	Thu, 10 Dec 2020 15:15:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 648411BF2C5
 for <devel@linuxdriverproject.org>; Thu, 10 Dec 2020 15:15:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4F758204E9
 for <devel@linuxdriverproject.org>; Thu, 10 Dec 2020 15:15:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TLOyY3kD+RFe for <devel@linuxdriverproject.org>;
 Thu, 10 Dec 2020 15:15:30 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from cstnet.cn (smtp37.cstnet.cn [159.226.251.37])
 by silver.osuosl.org (Postfix) with ESMTP id 8BD80204DC
 for <devel@driverdev.osuosl.org>; Thu, 10 Dec 2020 15:15:28 +0000 (UTC)
Received: by ajax-webmail-APP-12 (Coremail) ; Thu, 10 Dec 2020 23:15:26
 +0800 (GMT+08:00)
X-Originating-IP: [125.120.23.64]
Date: Thu, 10 Dec 2020 23:15:26 +0800 (GMT+08:00)
X-CM-HeaderCharset: UTF-8
From: shaojie.dong@isrc.iscas.ac.cn
To: "Greg KH" <gregkh@linuxfoundation.org>
Subject: Re: Re: [PATCH] staging: rtl8712: check register_netdev() return value
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.13 build 20201118(d3a44678)
 Copyright (c) 2002-2020 www.mailtech.cn cnic.cn
In-Reply-To: <X9DppHini6848vTM@kroah.com>
References: <20201209150124.23446-1-shaojie.dong@isrc.iscas.ac.cn>
 <X9DppHini6848vTM@kroah.com>
MIME-Version: 1.0
Message-ID: <4df7c198.210b.1764d38a318.Coremail.shaojie.dong@isrc.iscas.ac.cn>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: tgCowAAnL1OOO9JfceECAA--.9527W
X-CM-SenderInfo: pvkd0ytlhov01qj6x21ufox2xfdvhtffof0/1tbiCgkGBVz4jNnsX
	AAAsB
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
 linux-kernel@vger.kernel.org, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGkKClRoYW5rcyAhICBJIHdpbGwgbW9kaWZ5IHNpZ24gbmFtZSBjb3JyZWN0bHkgbGF0ZXIKClNv
cnJ5IHRvIHNheSB0aGF0IEkgaGF2ZSBubyBydGw4NzEyIGhhcmR3YXJlLCBzbyB0aGF0IEkgY291
bGQgbm90IHRlc3QgaXQuCgpGcm9tIERhbiBDYXJwZW50ZXIncyBlbWFpbCByZXBseSwgImZyZWVf
bmV0ZGV2KGFkYXB0ZXItJmd0O3BuZXRkZXYpIiBmdW5jdGlvbiBtYXkgY2F1c2UgdXNlIGFmdGVy
IGZyZWUgaXNzdWUKU28gdGhhdCBJIHJlcGx5IGVtYWlsIHRvIGVuc3VyZSBpZiB0aGlzIHJldHVy
biB2YWx1ZSBzaG91bGQgYmUgY2hlY2sgb3IgaG93IHRvIGhhbmRsZSB0aGlzIHJldHVybiB2YWx1
ZSBlcnJvcgoKCiZndDsgLS0tLS3ljp/lp4vpgq7ku7YtLS0tLQomZ3Q7IOWPkeS7tuS6ujogIkdy
ZWcgS0giIDxncmVna2hAbGludXhmb3VuZGF0aW9uLm9yZz4KJmd0OyDlj5HpgIHml7bpl7Q6IDIw
MjAtMTItMDkgMjM6MTM6NDAgKOaYn+acn+S4iSkKJmd0OyDmlLbku7bkuro6IHNoYW9qaWUuZG9u
Z0Bpc3JjLmlzY2FzLmFjLmNuCiZndDsg5oqE6YCBOiBMYXJyeS5GaW5nZXJAbHdmaW5nZXIubmV0
LCBmbG9yaWFuLmMuc2NoaWxoYWJlbEBnb29nbGVtYWlsLmNvbSwgZGV2ZWxAZHJpdmVyZGV2Lm9z
dW9zbC5vcmcsIGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmcKJmd0OyDkuLvpopg6IFJlOiBb
UEFUQ0hdIHN0YWdpbmc6IHJ0bDg3MTI6IGNoZWNrIHJlZ2lzdGVyX25ldGRldigpIHJldHVybiB2
YWx1ZQomZ3Q7IAomZ3Q7IE9uIFdlZCwgRGVjIDA5LCAyMDIwIGF0IDExOjAxOjI0UE0gKzA4MDAs
IHNoYW9qaWUuZG9uZ0Bpc3JjLmlzY2FzLmFjLmNuIHdyb3RlOgomZ3Q7ICZndDsgRnJvbTogInNo
YW9qaWUuZG9uZyIgPHNoYW9qaWUuZG9uZ0Bpc3JjLmlzY2FzLmFjLmNuPgomZ3Q7ICZndDsgCiZn
dDsgJmd0OyBGdW5jdGlvbiByZWdpc3Rlcl9uZXRkZXYoKSBjYW4gZmFpbCwgc28gd2Ugc2hvdWxk
IGNoZWNrIGl0J3MgcmV0dXJuIHZhbHVlCiZndDsgJmd0OyAKJmd0OyAmZ3Q7IFNpZ25lZC1vZmYt
Ynk6IHNoYW9qaWUuZG9uZyA8c2hhb2ppZS5kb25nQGlzcmMuaXNjYXMuYWMuY24+CiZndDsgCiZn
dDsgSSBkb3VidCB5b3Ugc2lnbiB5b3VyIG5hbWUgd2l0aCBhICcuJyBpbiBpdCwgcmlnaHQ/CiZn
dDsgCiZndDsgUGxlYXNlIHJlc2VuZCB3aXRoIHRoZSBjb3JyZWN0IG5hbWUsIGFuZCB1c2luZyBD
YXBpdGFsIGxldHRlcnMgd2hlcmUKJmd0OyBuZWVkZWQuCiZndDsgCiZndDsgJmd0OyAtLS0KJmd0
OyAmZ3Q7ICBkcml2ZXJzL3N0YWdpbmcvcnRsODcxMi9oYWxfaW5pdC5jIHwgNSArKysrLQomZ3Q7
ICZndDsgIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKJmd0
OyAmZ3Q7IAomZ3Q7ICZndDsgZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9ydGw4NzEyL2hh
bF9pbml0LmMgYi9kcml2ZXJzL3N0YWdpbmcvcnRsODcxMi9oYWxfaW5pdC5jCiZndDsgJmd0OyBp
bmRleCA3MTVmMWZlOGIuLjM4YTNlM2Q0NCAxMDA2NDQKJmd0OyAmZ3Q7IC0tLSBhL2RyaXZlcnMv
c3RhZ2luZy9ydGw4NzEyL2hhbF9pbml0LmMKJmd0OyAmZ3Q7ICsrKyBiL2RyaXZlcnMvc3RhZ2lu
Zy9ydGw4NzEyL2hhbF9pbml0LmMKJmd0OyAmZ3Q7IEBAIC00NSw3ICs0NSwxMCBAQCBzdGF0aWMg
dm9pZCBydGw4NzF4X2xvYWRfZndfY2IoY29uc3Qgc3RydWN0IGZpcm13YXJlICpmaXJtd2FyZSwg
dm9pZCAqY29udGV4dCkKJmd0OyAmZ3Q7ICAJfQomZ3Q7ICZndDsgIAlhZGFwdGVyLSZndDtmdyA9
IGZpcm13YXJlOwomZ3Q7ICZndDsgIAkvKiBmaXJtd2FyZSBhdmFpbGFibGUgLSBzdGFydCBuZXRk
ZXYgKi8KJmd0OyAmZ3Q7IC0JcmVnaXN0ZXJfbmV0ZGV2KGFkYXB0ZXItJmd0O3BuZXRkZXYpOwom
Z3Q7ICZndDsgKwlpZiAocmVnaXN0ZXJfbmV0ZGV2KGFkYXB0ZXItJmd0O3BuZXRkZXYpICE9IDAp
IHsKJmd0OyAmZ3Q7ICsJCW5ldGRldl9lcnIoYWRhcHRlci0mZ3Q7cG5ldGRldiwgInJlZ2lzdGVy
X25ldGRldigpIGZhaWxlZFxuIik7CiZndDsgJmd0OyArCQlmcmVlX25ldGRldihhZGFwdGVyLSZn
dDtwbmV0ZGV2KTsKJmd0OyAmZ3Q7ICsJfQomZ3Q7IAomZ3Q7IERpZCB5b3UgdGVzdCB0aGlzIHRv
IHNlZSBpZiB0aGlzIHJlYWxseSBwcm9wZXJseSBjbGVhbnMgZXZlcnl0aGluZyB1cD8KJmd0OyAK
Jmd0OyBBbmQgeW91ciBpZiBzdGF0ZW1lbnQgY2FuIGJlIHNpbXBsaWZpZWQsIHBsZWFzZSBkbyBz
by4KJmd0OyAKJmd0OyB0aGFua3MsCiZndDsgCiZndDsgZ3JlZyBrLWgKPC9zaGFvamllLmRvbmdA
aXNyYy5pc2Nhcy5hYy5jbj48L3NoYW9qaWUuZG9uZ0Bpc3JjLmlzY2FzLmFjLmNuPjwvZ3JlZ2to
QGxpbnV4Zm91bmRhdGlvbi5vcmc+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qu
b3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2RyaXZlcmRldi1kZXZlbAo=

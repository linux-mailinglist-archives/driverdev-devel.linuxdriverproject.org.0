Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B9932303EA
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 May 2019 23:15:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id F423A203E6;
	Thu, 30 May 2019 21:15:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xAzgIhjf6TeS; Thu, 30 May 2019 21:15:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 30DCD203DB;
	Thu, 30 May 2019 21:15:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 47C0E1BF2BA
 for <devel@linuxdriverproject.org>; Thu, 30 May 2019 21:14:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 44CA887767
 for <devel@linuxdriverproject.org>; Thu, 30 May 2019 21:14:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rYWINMPdkkTd for <devel@linuxdriverproject.org>;
 Thu, 30 May 2019 21:14:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic301-8.consmr.mail.ne1.yahoo.com
 (sonic301-8.consmr.mail.ne1.yahoo.com [66.163.184.241])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E927686E49
 for <devel@driverdev.osuosl.org>; Thu, 30 May 2019 21:14:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1559250897; bh=uKLO8Jxsflz5ATBf2FJ0xPL7TG/r4DOMkje1ndo/h+E=;
 h=Date:From:To:Cc:In-Reply-To:References:Subject:From:Subject;
 b=pCRiKxId1Y5bR8YXBwNDKHN+L+HxPa58ZGnASwhiWDnxoc9RNGc4fKfOiBDD/EdiQMQF1Bzb7YeuyEksY0q4re6K4vF2OP+bs4RyoSiDcODwIvb4f993lBHujb+3fuIwFAXDjgXjLrvRjorc0rIUMUVNdnpVsyaxwuR8h2CsBIjHedI1Hdx+4JYonJ6Uar+yesfoJaZYkuDQlR5PyQMdhXOIvvHdJfEkQKeD5otcO7mjOySwT3CVL4LqdeNjIjxSKTfyyeA/q1z/gXVn8y1MuVM0QWyljQ+mEpRTp3XtykGScwGyoFedF0nnnPU4aDpMN0ohBDZS4iADCwfDoyd9Sg==
X-YMail-OSG: N_6BpMEVRDvd.miR6A7lED5GPdAEx7ojsA--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic301.consmr.mail.ne1.yahoo.com with HTTP; Thu, 30 May 2019 21:14:57 +0000
Date: Thu, 30 May 2019 21:12:55 +0000 (UTC)
From: shobhit kukreti <shobhitkukreti@yahoo.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <589437019.1480104.1559250775753@mail.yahoo.com>
In-Reply-To: <20190523073016.GA14393@kroah.com>
References: <20190523010619.GA23217@t-1000> <20190523073016.GA14393@kroah.com>
Subject: Re: [PATCH] staging: pi433: cleanup to adhere with linux coding style
MIME-Version: 1.0
X-Mailer: WebService/1.1.13634 YMailNorrin Mozilla/5.0 (Windows NT 10.0; Win64;
 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169
 Safari/537.36
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

ClRoYW5rIHlvdSBmb3IgdGhlIGZlZWRiYWNrLiBJIGRyb3BwZWQgdGhlIHBhdGNoLsKgCgpCZXN0
LApTaG9iaGl0IEt1a3JldGkKCgpPbiBUaHVyc2RheSwgTWF5IDIzLCAyMDE5LCAxMjozMDoyMCBB
TSBQRFQsIEdyZWcgS3JvYWgtSGFydG1hbiA8Z3JlZ2toQGxpbnV4Zm91bmRhdGlvbi5vcmc+IHdy
b3RlOiAKCgpPbiBXZWQsIE1heSAyMiwgMjAxOSBhdCAwNjowNjoyMlBNIC0wNzAwLCBTaG9iaGl0
IEt1a3JldGkgd3JvdGU6Cj4gVGhlIGxpbnV4IGNvZGluZyBzdHlsZSBlbXBoYXNpemVzIG9uIGEg
bGltaXQgb2YgODAgY2hhcmFjdGVycwo+IHBlciBsaW5lLiBDbGVhbmVkIHVwIHNldmVyYWwgb3Zl
ciA4MCBjaGFyYWN0ZXIgd2FybmluZ3MgaW4gZm9sbG93aW5nIGZpbGVzOgo+IAo+IHBpNDMzX2lm
LmMKPiBwaTQzM19pZi5oCj4gcmY2OS5jCj4gCj4gU2lnbmVkLW9mZi1ieTogU2hvYmhpdCBLdWty
ZXRpIDxzaG9iaGl0a3VrcmV0aUB5YWhvby5jb20+Cj4gLS0tCj7CoCBkcml2ZXJzL3N0YWdpbmcv
cGk0MzMvcGk0MzNfaWYuYyB8IDE1ICsrKystLS0KPsKgIGRyaXZlcnMvc3RhZ2luZy9waTQzMy9w
aTQzM19pZi5oIHwgMjUgKysrKysrKy0tLS0KPsKgIGRyaXZlcnMvc3RhZ2luZy9waTQzMy9yZjY5
LmPCoCDCoCB8IDg5ICsrKysrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0KPsKg
IDMgZmlsZXMgY2hhbmdlZCwgNzggaW5zZXJ0aW9ucygrKSwgNTEgZGVsZXRpb25zKC0pCj4gCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9waTQzMy9waTQzM19pZi5jIGIvZHJpdmVycy9z
dGFnaW5nL3BpNDMzL3BpNDMzX2lmLmMKPiBpbmRleCBjODg5ZjBiLi4wNzcxNWM5IDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy9waTQzMy9waTQzM19pZi5jCj4gKysrIGIvZHJpdmVycy9z
dGFnaW5nL3BpNDMzL3BpNDMzX2lmLmMKPiBAQCAtNDM5LDggKzQzOSw3IEBAIHBpNDMzX3JlY2Vp
dmUodm9pZCAqZGF0YSkKPsKgIMKgwqDCoCDCoMKgwqAgLyogd2FpdCBmb3IgUlNTSSBsZXZlbCB0
byBiZWNvbWUgaGlnaCAqLwo+wqAgwqDCoMKgIMKgwqDCoCBkZXZfZGJnKGRldi0+ZGV2LCAicng6
IGdvaW5nIHRvIHdhaXQgZm9yIGhpZ2ggUlNTSSBsZXZlbCIpOwo+wqAgwqDCoMKgIMKgwqDCoCBy
ZXR2YWwgPSB3YWl0X2V2ZW50X2ludGVycnVwdGlibGUoZGV2LT5yeF93YWl0X3F1ZXVlLAo+IC3C
oMKgwqAgwqDCoMKgIMKgwqDCoCDCoMKgwqAgwqDCoMKgIMKgwqDCoCDCoCByZjY5X2dldF9mbGFn
KGRldi0+c3BpLAo+IC3CoMKgwqAgwqDCoMKgIMKgwqDCoCDCoMKgwqAgwqDCoMKgIMKgwqDCoCDC
oMKgwqAgwqDCoMKgIHJzc2lfZXhjZWVkZWRfdGhyZXNob2xkKSk7Cj4gK8KgwqDCoCDCoMKgwqAg
wqDCoMKgIHJmNjlfZ2V0X2ZsYWcoZGV2LT5zcGkswqDCoMKgIHJzc2lfZXhjZWVkZWRfdGhyZXNo
b2xkKSk7CgpJY2ssIG5vLsKgIFRoZSBvcmlnaW5hbCBjb2RlIGlzIGZpbmUgaGVyZSwgdGhpcyBt
YWtlcyBpdCBtdWNoIGhhcmRlciB0bwp1bmRlcnN0YW5kIHdoYXQgaXMgZ29pbmcgb24gaGVyZSwg
cmlnaHQ/CgoKPsKgIMKgwqDCoCDCoMKgwqAgaWYgKHJldHZhbCkgLyogd2FpdCB3YXMgaW50ZXJy
dXB0ZWQgKi8KPsKgIMKgwqDCoCDCoMKgwqAgwqDCoMKgIGdvdG8gYWJvcnQ7Cj7CoCDCoMKgwqAg
wqDCoMKgIGRldi0+aW50ZXJydXB0X3J4X2FsbG93ZWQgPSBmYWxzZTsKPiBAQCAtNDc1LDcgKzQ3
NCw3IEBAIHBpNDMzX3JlY2VpdmUodm9pZCAqZGF0YSkKPsKgIMKgwqDCoCAvKiBsZW5ndGggYnl0
ZSBlbmFibGVkPyAqLwo+wqAgwqDCoMKgIGlmIChkZXYtPnJ4X2NmZy5lbmFibGVfbGVuZ3RoX2J5
dGUgPT0gT1BUSU9OX09OKSB7Cj7CoCDCoMKgwqAgwqDCoMKgIHJldHZhbCA9IHdhaXRfZXZlbnRf
aW50ZXJydXB0aWJsZShkZXYtPmZpZm9fd2FpdF9xdWV1ZSwKPiAtwqDCoMKgIMKgwqDCoCDCoMKg
wqAgwqDCoMKgIMKgwqDCoCDCoMKgwqAgwqAgZGV2LT5mcmVlX2luX2ZpZm8gPCBGSUZPX1NJWkUp
Owo+ICvCoMKgwqAgwqDCoMKgIMKgwqDCoCDCoMKgwqAgwqDCoMKgIGRldi0+ZnJlZV9pbl9maWZv
IDwgRklGT19TSVpFKTsKCgpTYW1lIGZvciB0aGlzLCBhbmQgYWxsIHRoZSBvdGhlciBjaGFuZ2Vz
IHlvdSBtYWRlLsKgIFRoZSA4MCBjb2x1bW4gInJ1bGUiCmlzIGp1c3QgYSBzdHJvbmcgaGludC7C
oCBUaGVyZSBhcmUgb3RoZXIgd2F5cyB0byByZW1vdmUgaXQgaW5zdGVhZCBvZgpqdXN0IG1vdmlu
ZyBjb2RlIHRvIHRoZSBsZWZ0IGxpa2UgeW91IGRpZCBoZXJlLCBpZiB5b3UgcmVhbGx5IHdhbnQg
dG8KZml4IHRoZXNlIHdhcm5pbmdzIHVwLgoKdGhhbmtzLAoKZ3JlZyBrLWgKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApk
ZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJw
cm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=

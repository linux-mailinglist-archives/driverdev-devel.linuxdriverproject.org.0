Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 00FA5154308
	for <lists+driverdev-devel@lfdr.de>; Thu,  6 Feb 2020 12:28:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C5BF221551;
	Thu,  6 Feb 2020 11:28:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NNyif1opyO2G; Thu,  6 Feb 2020 11:28:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7F41621526;
	Thu,  6 Feb 2020 11:28:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0870F1BF48B
 for <devel@linuxdriverproject.org>; Thu,  6 Feb 2020 11:28:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id EC39A85F3A
 for <devel@linuxdriverproject.org>; Thu,  6 Feb 2020 11:28:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nJZCI7u0Lemc for <devel@linuxdriverproject.org>;
 Thu,  6 Feb 2020 11:28:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A019F85F34
 for <devel@driverdev.osuosl.org>; Thu,  6 Feb 2020 11:28:33 +0000 (UTC)
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2CB4520730;
 Thu,  6 Feb 2020 11:28:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580988513;
 bh=GJcI9nYq59RUzy22koTUfdP4WIB6ekJBAEFQMZMEzGA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=1QUaqJh1fQnn9mSBJ2cQhTN0wOrKTr1cZG6oCzKXsGeLqlytmoih/5WRAF1SVehI2
 it+QZuC9Z/m6LHD6jVIKjaxDyxIXPM+K4joB08g2OUDAsv+X+YMwrncr8s1klYEsJh
 kK4alG0ZJrDHygZKxXzjE0N6q72nPznqqRkwrdx8=
Date: Thu, 6 Feb 2020 11:28:29 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: "Sa, Nuno" <Nuno.Sa@analog.com>
Subject: Re: [PATCH 2/4] iio: imu: adis: Refactor adis_initial_startup
Message-ID: <20200206112829.4aef53f3@archlinux>
In-Reply-To: <c46b2821098a07b5fb8bf42b26605e1841672d77.camel@analog.com>
References: <20200120142051.28533-1-alexandru.ardelean@analog.com>
 <20200120142051.28533-2-alexandru.ardelean@analog.com>
 <20200201170839.4ab98d8e@archlinux>
 <da82db5f81e116c7ecc36f5d9833b90b4f7cd15d.camel@gmail.com>
 <20200203120338.000044c1@Huawei.com>
 <182c1f94c7311580aea1b4cabe0ab2ae26bed3a6.camel@analog.com>
 <20200205145938.00006a35@Huawei.com>
 <edea0212d5882842c92c638df13bb6e4ed8a1a82.camel@analog.com>
 <20200206094501.68f47948@archlinux>
 <c46b2821098a07b5fb8bf42b26605e1841672d77.camel@analog.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Bogdan,
 Dragos" <Dragos.Bogdan@analog.com>,
 "Jonathan.Cameron@Huawei.com" <Jonathan.Cameron@Huawei.com>, "Ardelean, 
 Alexandru" <alexandru.Ardelean@analog.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gVGh1LCA2IEZlYiAyMDIwIDEwOjE5OjA5ICswMDAwCiJTYSwgTnVubyIgPE51bm8uU2FAYW5h
bG9nLmNvbT4gd3JvdGU6Cgo+IE9uIFRodSwgMjAyMC0wMi0wNiBhdCAwOTo0NSArMDAwMCwgSm9u
YXRoYW4gQ2FtZXJvbiB3cm90ZToKPiA+IE9uIFdlZCwgNSBGZWIgMjAyMCAxNjo0NDoxMyArMDAw
MAo+ID4gIlNhLCBOdW5vIiA8TnVuby5TYUBhbmFsb2cuY29tPiB3cm90ZToKPiA+ICAgCj4gPiA+
IE9uIFdlZCwgMjAyMC0wMi0wNSBhdCAxNDo1OSArMDAwMCwgSm9uYXRoYW4gQ2FtZXJvbiB3cm90
ZTogIAo+ID4gPiA+IE9uIFdlZCwgNSBGZWIgMjAyMCAxMjoyNTo0MCArMDAwMAo+ID4gPiA+ICJT
YSwgTnVubyIgPE51bm8uU2FAYW5hbG9nLmNvbT4gd3JvdGU6Cj4gPiA+ID4gICAgIAo+ID4gPiA+
ID4gT24gTW9uLCAyMDIwLTAyLTAzIGF0IDEyOjAzICswMDAwLCBKb25hdGhhbiBDYW1lcm9uIHdy
b3RlOiAgICAKPiA+ID4gPiA+ID4gT24gTW9uLCAzIEZlYiAyMDIwIDEwOjMxOjMwICswMTAwCj4g
PiA+ID4gPiA+IE51bm8gU8OhIDxub25hbWUubnVub0BnbWFpbC5jb20+IHdyb3RlOgo+ID4gPiA+
ID4gPiAgICAgICAKPiA+ID4gPiA+ID4gPiBIaSBKb25hdGhhbiwKPiA+ID4gPiA+ID4gPiAKPiA+
ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiBPbiBTYXQsIDIwMjAtMDItMDEgYXQgMTc6MDggKzAw
MDAsIEpvbmF0aGFuIENhbWVyb24KPiA+ID4gPiA+ID4gPiB3cm90ZTogICAgICAKPiA+ID4gPiA+
ID4gPiA+IE9uIE1vbiwgMjAgSmFuIDIwMjAgMTY6MjA6NDkgKzAyMDAKPiA+ID4gPiA+ID4gPiA+
IEFsZXhhbmRydSBBcmRlbGVhbiA8YWxleGFuZHJ1LmFyZGVsZWFuQGFuYWxvZy5jb20+IHdyb3Rl
Ogo+ID4gPiA+ID4gPiA+ID4gICAgICAgICAKPiA+ID4gPiA+ID4gPiA+ID4gRnJvbTogTnVubyBT
w6EgPG51bm8uc2FAYW5hbG9nLmNvbT4KPiA+ID4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4g
PiA+IEFsbCB0aGUgQURJUyBkZXZpY2VzIHBlcmZvcm0sIGF0IHRoZSBiZWdpbm5pbmcsIGEgc2Vs
Zgo+ID4gPiA+ID4gPiA+ID4gPiB0ZXN0Cj4gPiA+ID4gPiA+ID4gPiA+IHRvCj4gPiA+ID4gPiA+
ID4gPiA+IG1ha2UKPiA+ID4gPiA+ID4gPiA+ID4gc3VyZQo+ID4gPiA+ID4gPiA+ID4gPiB0aGUg
ZGV2aWNlIGlzIGluIGEgc2FuZSBzdGF0ZS4gRnVydGhlcm1vcmUsIHNvbWUKPiA+ID4gPiA+ID4g
PiA+ID4gZHJpdmVycwo+ID4gPiA+ID4gPiA+ID4gPiBhbHNvCj4gPiA+ID4gPiA+ID4gPiA+IGRv
IGEKPiA+ID4gPiA+ID4gPiA+ID4gY2FsbAo+ID4gPiA+ID4gPiA+ID4gPiB0byBgYWRpc19yZXNl
dCgpYCBiZWZvcmUgdGhlIHRlc3Qgd2hpY2ggaXMgYWxzbyBhIGdvb2QKPiA+ID4gPiA+ID4gPiA+
ID4gcHJhY3RpY2UuCj4gPiA+ID4gPiA+ID4gPiA+IFRoaXMKPiA+ID4gPiA+ID4gPiA+ID4gcGF0
Y2ggdW5pZmllcyBhbGwgdGhvc2Ugb3BlcmF0aW9uIHNvIHRoYXQsIHRoZXJlJ3Mgbm8KPiA+ID4g
PiA+ID4gPiA+ID4gbmVlZAo+ID4gPiA+ID4gPiA+ID4gPiBmb3IKPiA+ID4gPiA+ID4gPiA+ID4g
Y29kZQo+ID4gPiA+ID4gPiA+ID4gPiBkdXBsaWNhdGlvbi4gRnVydGhlcm1vcmUsIHRoZSByc3Qg
cGluIGlzIGFsc28gY2hlY2tlZAo+ID4gPiA+ID4gPiA+ID4gPiB0bwo+ID4gPiA+ID4gPiA+ID4g
PiBtYWtlCj4gPiA+ID4gPiA+ID4gPiA+IHN1cmUKPiA+ID4gPiA+ID4gPiA+ID4gdGhlCj4gPiA+
ID4gPiA+ID4gPiA+IGRldmljZSBpcyBub3QgaW4gSFcgcmVzZXQuIE9uIHRvcCBvZiB0aGlzLCBz
b21lIGRyaXZlcnMKPiA+ID4gPiA+ID4gPiA+ID4gYWxzbwo+ID4gPiA+ID4gPiA+ID4gPiByZWFk
Cj4gPiA+ID4gPiA+ID4gPiA+IHRoZQo+ID4gPiA+ID4gPiA+ID4gPiBkZXZpY2UgcHJvZHVjdCBp
ZCBhbmQgY29tcGFyZSBpdCB3aXRoIHRoZSBkZXZpY2UgYmVpbmcKPiA+ID4gPiA+ID4gPiA+ID4g
cHJvYmVkCj4gPiA+ID4gPiA+ID4gPiA+IHRvCj4gPiA+ID4gPiA+ID4gPiA+IG1ha2UKPiA+ID4g
PiA+ID4gPiA+ID4gc3VyZSB0aGUgY29ycmVjdCBkZXZpY2UgaXMgYmVpbmcgaGFuZGxlZC4gVGhp
cyBjYW4gYWxzbwo+ID4gPiA+ID4gPiA+ID4gPiBiZQo+ID4gPiA+ID4gPiA+ID4gPiBwYXNzZWQK
PiA+ID4gPiA+ID4gPiA+ID4gdG8gdGhlCj4gPiA+ID4gPiA+ID4gPiA+IGxpYnJhcnkgYnkgaW50
cm9kdWNpbmcgYSB2YXJpYWJsZSBob2xkaW5nIHRoZSBQUk9EX0lECj4gPiA+ID4gPiA+ID4gPiA+
IHJlZ2lzdGVyCj4gPiA+ID4gPiA+ID4gPiA+IG9mCj4gPiA+ID4gPiA+ID4gPiA+IHRoZQo+ID4g
PiA+ID4gPiA+ID4gPiBkZXZpY2UuCj4gPiA+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ID4g
PiBTaWduZWQtb2ZmLWJ5OiBOdW5vIFPDoSA8bnVuby5zYUBhbmFsb2cuY29tPgo+ID4gPiA+ID4g
PiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBBbGV4YW5kcnUgQXJkZWxlYW4gPCAgICAgIAo+ID4gPiA+
ID4gPiA+ID4gPiBhbGV4YW5kcnUuYXJkZWxlYW5AYW5hbG9nLmNvbT4gICAgICAKPiA+ID4gPiA+
ID4gPiA+ID4gLS0tCj4gPiA+ID4gPiA+ID4gPiA+ICBkcml2ZXJzL2lpby9pbXUvS2NvbmZpZyAg
ICAgIHwgIDEgKwo+ID4gPiA+ID4gPiA+ID4gPiAgZHJpdmVycy9paW8vaW11L2FkaXMuYyAgICAg
ICB8IDYzCj4gPiA+ID4gPiA+ID4gPiA+ICsrKysrKysrKysrKysrKysrKysrKysrKysrCj4gPiA+
ID4gPiA+ID4gPiA+IC0tLS0KPiA+ID4gPiA+ID4gPiA+ID4gLS0tLS0tCj4gPiA+ID4gPiA+ID4g
PiA+ICBpbmNsdWRlL2xpbnV4L2lpby9pbXUvYWRpcy5oIHwgMTUgKysrKysrKystCj4gPiA+ID4g
PiA+ID4gPiA+ICAzIGZpbGVzIGNoYW5nZWQsIDYxIGluc2VydGlvbnMoKyksIDE4IGRlbGV0aW9u
cygtKQo+ID4gPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiA+ID4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvaWlvL2ltdS9LY29uZmlnCj4gPiA+ID4gPiA+ID4gPiA+IGIvZHJpdmVycy9paW8vaW11
L0tjb25maWcKPiA+ID4gPiA+ID4gPiA+ID4gaW5kZXggNjBiYjEwMjllNzU5Li42MzAzNmNmNDcz
YzcgMTAwNjQ0Cj4gPiA+ID4gPiA+ID4gPiA+IC0tLSBhL2RyaXZlcnMvaWlvL2ltdS9LY29uZmln
Cj4gPiA+ID4gPiA+ID4gPiA+ICsrKyBiL2RyaXZlcnMvaWlvL2ltdS9LY29uZmlnCj4gPiA+ID4g
PiA+ID4gPiA+IEBAIC04NSw2ICs4NSw3IEBAIGVuZG1lbnUKPiA+ID4gPiA+ID4gPiA+ID4gIAo+
ID4gPiA+ID4gPiA+ID4gPiAgY29uZmlnIElJT19BRElTX0xJQgo+ID4gPiA+ID4gPiA+ID4gPiAg
CXRyaXN0YXRlCj4gPiA+ID4gPiA+ID4gPiA+ICsJZGVwZW5kcyBvbiBHUElPTElCCj4gPiA+ID4g
PiA+ID4gPiA+ICAJaGVscAo+ID4gPiA+ID4gPiA+ID4gPiAgCSAgQSBzZXQgb2YgSU8gaGVscGVy
IGZ1bmN0aW9ucyBmb3IgdGhlIEFuYWxvZwo+ID4gPiA+ID4gPiA+ID4gPiBEZXZpY2VzCj4gPiA+
ID4gPiA+ID4gPiA+IEFESVMqCj4gPiA+ID4gPiA+ID4gPiA+IGRldmljZSBmYW1pbHkuCj4gPiA+
ID4gPiA+ID4gPiA+ICAKPiA+ID4gPiA+ID4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvaWlv
L2ltdS9hZGlzLmMKPiA+ID4gPiA+ID4gPiA+ID4gYi9kcml2ZXJzL2lpby9pbXUvYWRpcy5jCj4g
PiA+ID4gPiA+ID4gPiA+IGluZGV4IGQwMmIxOTExYjBmMi4uMWVjYTUyNzEzODBlIDEwMDY0NAo+
ID4gPiA+ID4gPiA+ID4gPiAtLS0gYS9kcml2ZXJzL2lpby9pbXUvYWRpcy5jCj4gPiA+ID4gPiA+
ID4gPiA+ICsrKyBiL2RyaXZlcnMvaWlvL2ltdS9hZGlzLmMKPiA+ID4gPiA+ID4gPiA+ID4gQEAg
LTcsNiArNyw3IEBACj4gPiA+ID4gPiA+ID4gPiA+ICAgKi8KPiA+ID4gPiA+ID4gPiA+ID4gIAo+
ID4gPiA+ID4gPiA+ID4gPiAgI2luY2x1ZGUgPGxpbnV4L2RlbGF5Lmg+Cj4gPiA+ID4gPiA+ID4g
PiA+ICsjaW5jbHVkZSA8bGludXgvZ3Bpby9jb25zdW1lci5oPgo+ID4gPiA+ID4gPiA+ID4gPiAg
I2luY2x1ZGUgPGxpbnV4L211dGV4Lmg+Cj4gPiA+ID4gPiA+ID4gPiA+ICAjaW5jbHVkZSA8bGlu
dXgvZGV2aWNlLmg+Cj4gPiA+ID4gPiA+ID4gPiA+ICAjaW5jbHVkZSA8bGludXgva2VybmVsLmg+
Cj4gPiA+ID4gPiA+ID4gPiA+IEBAIC0zNjUsMzYgKzM2Niw2NCBAQCBzdGF0aWMgaW50IGFkaXNf
c2VsZl90ZXN0KHN0cnVjdAo+ID4gPiA+ID4gPiA+ID4gPiBhZGlzCj4gPiA+ID4gPiA+ID4gPiA+
ICphZGlzKQo+ID4gPiA+ID4gPiA+ID4gPiAgfQo+ID4gPiA+ID4gPiA+ID4gPiAgCj4gPiA+ID4g
PiA+ID4gPiA+ICAvKioKPiA+ID4gPiA+ID4gPiA+ID4gLSAqIGFkaXNfaW5pdGFsX3N0YXJ0dXAo
KSAtIFBlcmZvcm1zIGRldmljZSBzZWxmLXRlc3QKPiA+ID4gPiA+ID4gPiA+ID4gKyAqIF9fYWRp
c19pbml0aWFsX3N0YXJ0dXAoKSAtIERldmljZSBpbml0aWFsIHNldHVwCj4gPiA+ID4gPiA+ID4g
PiA+ICAgKiBAYWRpczogVGhlIGFkaXMgZGV2aWNlCj4gPiA+ID4gPiA+ID4gPiA+ICAgKgo+ID4g
PiA+ID4gPiA+ID4gPiArICogVGhpcyBmdW5jdGlvbnMgbWFrZXMgc3VyZSB0aGUgZGV2aWNlIGlz
IG5vdCBpbgo+ID4gPiA+ID4gPiA+ID4gPiByZXNldCwKPiA+ID4gPiA+ID4gPiA+ID4gdmlhCj4g
PiA+ID4gPiA+ID4gPiA+IHJzdAo+ID4gPiA+ID4gPiA+ID4gPiBwaW4uCj4gPiA+ID4gPiA+ID4g
PiA+ICsgKiBGdXJ0aGVybW9yZSBpdCBwZXJmb3JtcyBhIFNXIHJlc2V0IChvbmx5IGluIHRoZQo+
ID4gPiA+ID4gPiA+ID4gPiBjYXNlIHdlCj4gPiA+ID4gPiA+ID4gPiA+IGFyZQo+ID4gPiA+ID4g
PiA+ID4gPiBub3QKPiA+ID4gPiA+ID4gPiA+ID4gY29taW5nIGZyb20KPiA+ID4gPiA+ID4gPiA+
ID4gKyAqIHJlc2V0IGFscmVhZHkpIGFuZCBhIHNlbGYgdGVzdC4gSXQgYWxzbyBjb21wYXJlcwo+
ID4gPiA+ID4gPiA+ID4gPiB0aGUKPiA+ID4gPiA+ID4gPiA+ID4gcHJvZHVjdCBpZAo+ID4gPiA+
ID4gPiA+ID4gPiB3aXRoIHRoZQo+ID4gPiA+ID4gPiA+ID4gPiArICogZGV2aWNlIGlkIGlmIHRo
ZSBwcm9kX2lkX3JlZyB2YXJpYWJsZSBpcyBzZXQuCj4gPiA+ID4gPiA+ID4gPiA+ICsgKgo+ID4g
PiA+ID4gPiA+ID4gPiAgICogUmV0dXJucyAwIGlmIHRoZSBkZXZpY2UgaXMgb3BlcmF0aW9uYWws
IGEgbmVnYXRpdmUKPiA+ID4gPiA+ID4gPiA+ID4gZXJyb3IKPiA+ID4gPiA+ID4gPiA+ID4gY29k
ZQo+ID4gPiA+ID4gPiA+ID4gPiBvdGhlcndpc2UuCj4gPiA+ID4gPiA+ID4gPiA+ICAgKgo+ID4g
PiA+ID4gPiA+ID4gPiAgICogVGhpcyBmdW5jdGlvbiBzaG91bGQgYmUgY2FsbGVkIGVhcmx5IG9u
IGluIHRoZQo+ID4gPiA+ID4gPiA+ID4gPiBkZXZpY2UKPiA+ID4gPiA+ID4gPiA+ID4gaW5pdGlh
bGl6YXRpb24gc2VxdWVuY2UKPiA+ID4gPiA+ID4gPiA+ID4gICAqIHRvIGVuc3VyZSB0aGF0IHRo
ZSBkZXZpY2UgaXMgaW4gYSBzYW5lIGFuZCBrbm93bgo+ID4gPiA+ID4gPiA+ID4gPiBzdGF0ZQo+
ID4gPiA+ID4gPiA+ID4gPiBhbmQKPiA+ID4gPiA+ID4gPiA+ID4gdGhhdAo+ID4gPiA+ID4gPiA+
ID4gPiBpdCBpcyB1c2FibGUuCj4gPiA+ID4gPiA+ID4gPiA+ICAgKi8KPiA+ID4gPiA+ID4gPiA+
ID4gLWludCBhZGlzX2luaXRpYWxfc3RhcnR1cChzdHJ1Y3QgYWRpcyAqYWRpcykKPiA+ID4gPiA+
ID4gPiA+ID4gK2ludCBfX2FkaXNfaW5pdGlhbF9zdGFydHVwKHN0cnVjdCBhZGlzICphZGlzKQo+
ID4gPiA+ID4gPiA+ID4gPiAgewo+ID4gPiA+ID4gPiA+ID4gPiAgCWludCByZXQ7Cj4gPiA+ID4g
PiA+ID4gPiA+IC0KPiA+ID4gPiA+ID4gPiA+ID4gLQltdXRleF9sb2NrKCZhZGlzLT5zdGF0ZV9s
b2NrKTsKPiA+ID4gPiA+ID4gPiA+ID4gKwlzdHJ1Y3QgZ3Bpb19kZXNjICpncGlvOwo+ID4gPiA+
ID4gPiA+ID4gPiArCWNvbnN0IHN0cnVjdCBhZGlzX3RpbWVvdXQgKnRpbWVvdXRzID0gYWRpcy0g
IAo+ID4gPiA+ID4gPiA+ID4gPiA+ZGF0YS0gICAgCj4gPiA+ID4gPiA+ID4gPiA+ID4gdGltZW91
dHM7ICAgICAgCj4gPiA+ID4gPiA+ID4gPiA+ICsJY29uc3QgY2hhciAqaWlvX25hbWUgPSBzcGlf
Z2V0X2RldmljZV9pZChhZGlzLSAgCj4gPiA+ID4gPiA+ID4gPiA+ID5zcGkpLSAgICAKPiA+ID4g
PiA+ID4gPiA+ID4gPiBuYW1lOyAgICAgIAo+ID4gPiA+ID4gPiA+ID4gPiArCXUxNiBwcm9kX2lk
LCBkZXZfaWQ7Cj4gPiA+ID4gPiA+ID4gPiA+ICsKPiA+ID4gPiA+ID4gPiA+ID4gKwkvKiBjaGVj
ayBpZiB0aGUgZGV2aWNlIGhhcyByc3QgcGluIGxvdyAqLwo+ID4gPiA+ID4gPiA+ID4gPiArCWdw
aW8gPSBkZXZtX2dwaW9kX2dldF9vcHRpb25hbCgmYWRpcy0+c3BpLT5kZXYsCj4gPiA+ID4gPiA+
ID4gPiA+ICJyZXNldCIsCj4gPiA+ID4gPiA+ID4gPiA+IEdQSU9EX0FTSVMpOwo+ID4gPiA+ID4g
PiA+ID4gPiArCWlmIChJU19FUlIoZ3BpbykpIHsKPiA+ID4gPiA+ID4gPiA+ID4gKwkJcmV0dXJu
IFBUUl9FUlIoZ3Bpbyk7ICAgICAgICAKPiA+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ID4g
R2l2ZW4geW91IGFyZSByZXR1cm5pbmcgaGVyZSwgbm8gbmVlZCBmb3IgZWxzZSB0byBmb2xsb3cK
PiA+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ID4gaWYgKGdwaW8uLi4KPiA+ID4gPiA+ID4g
PiA+ICAgICAgICAgCj4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gRGVmaW5pdGVseS4uLgo+
ID4gPiA+ID4gPiA+ICAgICAgIAo+ID4gPiA+ID4gPiA+ID4gPiArCX0gZWxzZSBpZiAoZ3BpbyAm
Jgo+ID4gPiA+ID4gPiA+ID4gPiBncGlvZF9nZXRfdmFsdWVfY2Fuc2xlZXAoZ3BpbykpIHsKPiA+
ID4gPiA+ID4gPiA+ID4gKwkJLyogYnJpbmcgZGV2aWNlIG91dCBvZiByZXNldCAqLwo+ID4gPiA+
ID4gPiA+ID4gPiArCQlncGlvZF9zZXRfdmFsdWVfY2Fuc2xlZXAoZ3BpbywKPiA+ID4gPiA+ID4g
PiA+ID4gMCk7ICAgICAgICAKPiA+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ID4gSG1tLiBT
byBpcyBhIHNvZnR3YXJlIHJlc2V0IHRoZSBiZXN0IG9wdGlvbiBpZiB3ZSBoYXZlIGEKPiA+ID4g
PiA+ID4gPiA+IGhhcmR3YXJlCj4gPiA+ID4gPiA+ID4gPiByZXNldAo+ID4gPiA+ID4gPiA+ID4g
bGluZSBidXQgaXQncyBub3QgY3VycmVudGx5IGluIHRoZSByZXNldCBtb2RlPwo+ID4gPiA+ID4g
PiA+ID4gICAgICAgICAKPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiBIbW0sIHRoYXQncyBh
IGZhaXIgcXVlc3Rpb24uIE5vdyB0aGF0IEkgdGhpbmsgYWJvdXQgaXQsIGlmCj4gPiA+ID4gPiA+
ID4gd2UKPiA+ID4gPiA+ID4gPiBkbwo+ID4gPiA+ID4gPiA+IGhhdmUgYQo+ID4gPiA+ID4gPiA+
IGdwaW8gd2Ugc2hvdWxkIGp1c3QgYXNzdW1lIGl0J3MgaW4gcmVzZXQgYW5kIGNhbGwKPiA+ID4g
PiA+ID4gPiBgZ3Bpb2Rfc2V0X3ZhbHVlX2NhbnNsZWVwYC4gU28sIEkgZ3Vlc3Mgd2UgY291bGQg
anVzdCBkaXRjaAo+ID4gPiA+ID4gPiA+IHRoZQo+ID4gPiA+ID4gPiA+IGBncGlvZF9nZXRfdmFs
dWVfY2Fuc2xlZXAoZ3BpbylgIHBhcnQuICAgICAgCj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiBO
b3Qgc3VyZSBJIGFncmVlLiAgIEZvciBleGFtcGxlIHRoZSBkcml2ZXIgbWF5IHdlbGwgaGF2ZSBi
ZWVuCj4gPiA+ID4gPiA+IHVuYm91bmQKPiA+ID4gPiA+ID4gYW5kIHJlYm91bmQgZm9yIHNvbWUg
cmVhc29uLiAgICAgIAo+ID4gPiA+ID4gCj4gPiA+ID4gPiBZZXMsIHRoYXQgaXMgdHJ1ZS4uCj4g
PiA+ID4gPiAgICAgCj4gPiA+ID4gPiA+IEkgd291bGQgYXJndWUgeW91IHNob3VsZCBqdXN0IGRv
IGEgc2V0IC8gcmVzZXQgY3ljbGUgd2l0aAo+ID4gPiA+ID4gPiBhcHByb3ByaWF0ZQo+ID4gPiA+
ID4gPiBzbGVlcAo+ID4gPiA+ID4gPiBpbiBiZXR3ZWVuLiAgSWYgaXQncyBhbHJlYWR5IHNldCB0
aGVuIG5vIGhhcm0gZG9uZSwgaWYgaXQKPiA+ID4gPiA+ID4gaXNuJ3QKPiA+ID4gPiA+ID4geW91
Cj4gPiA+ID4gPiA+IGZvcmNlCj4gPiA+ID4gPiA+IGEgaGFyZHdhcmUgcmVzZXQuICAgICAgCj4g
PiA+ID4gPiAKPiA+ID4gPiA+IFNvLCBBcyBJbSB1bmRlcnN0YW5kaW5nLCBpdCBjb21lcyBkb3du
IHRvIHdoYXQgc2hvdWxkIHdlCj4gPiA+ID4gPiBjb25zaWRlcgo+ID4gPiA+ID4gYXMKPiA+ID4g
PiA+IGRlZmF1bHQuIFlvdSBzdWdnZXN0IHRvIGZpcnN0IGRvIHRoZSBzdyByZXNldCBhbmQgdGhl
IGNoZWNrIHRoZQo+ID4gPiA+ID4gZ3Bpbwo+ID4gPiA+ID4gc3RhdGUgYW5kIGlmIG5lZWRlZCwg
YnJpbmcgdGhlIGRldmljZSBvdXQgb2YgcmVzZXQsIHJpZ2h0PyBOb3cKPiA+ID4gPiA+IHRoYXQK
PiA+ID4gPiA+IEkKPiA+ID4gPiA+IHRoaW5rIGFib3V0IGl0LCBJIHRoaW5rIHRoZSBvbmx5IHJl
YXNvbiBJIGhhdmVuJ3QgZG9uZSBsaWtlCj4gPiA+ID4gPiB0aGF0IGlzCj4gPiA+ID4gPiBiZWNh
dXNlIHlvdSBtaWdodCBlbmQgdXAgc2xlZXBpbmcgcXVpdGUgc29tZSB0aW1lIChzdyByZXNldCAr
Cj4gPiA+ID4gPiBodwo+ID4gPiA+ID4gcmVzZXQpLiBFaXRoZXIgd2F5LCBJJ20gZmluZSB3aXRo
IGJvdGggb3B0aW9ucy4gTm90IHN1cmUgaWYKPiA+ID4gPiA+IEFsZXgKPiA+ID4gPiA+IGhhcwo+
ID4gPiA+ID4gc29tZXRoaW5nIHRvIGFkZC4uLiAgICAKPiA+ID4gPiAKPiA+ID4gPiBFaXRoZXIg
cmVzZXQgc2hvdWxkIGJlIGdvb2Qgb24gaXQncyBvd24uICBJIHdvdWxkIHVzZSBoYXJkd2FyZQo+
ID4gPiA+IHJlc2V0Cj4gPiA+ID4gaWYgdGhlIHBpbiBpcyB0aGVyZS4gSWYgaXQncyBub3QsIHRo
ZW4gdXNlIHRoZSBzb2Z0d2FyZSByZXNldC4KPiA+ID4gPiAKPiA+ID4gPiBGb3IgaGFyZHdhcmUg
YWx3YXlzIHNldCB0aGUgcGluIGV4cGxpY2l0bHkgdG8gcmVzZXQgYXMgdGhhdAo+ID4gPiA+IGd1
YXJhbnRlZXMKPiA+ID4gPiBhZ2FpbnN0IGFueSByYWNlIGNvbmRpdGlvbnMsIGV2ZW4gaWYgc29t
ZXRoaW5nIG9kZCBoYXBwZW5zLgo+ID4gPiA+IAo+ID4gPiA+IEpvbmF0aGFuICAgIAo+ID4gPiAK
PiA+ID4gSG1tLCBJIHRoaW5rIEknbSBub3QgZ2V0dGluZyB0aGUgcG9pbnQgb3IgbWF5YmUgSSBm
YWlsZWQgdG8gZXhwbGFpbgo+ID4gPiB3aGF0IEkgd2FzIGRvaW5nLi4uIFNvLCBvbiB0aGUgY29k
ZSBpbiB0aGlzIHBhdGNoLCB0aGVyZSdzIG5vIEhXCj4gPiA+IHJlc2V0Lgo+ID4gPiBJdCBjaGVj
a3MgdGhlIHJlc2V0IHBpbiBhbmQgc2VlcyBpZiB0aGUgcGFydCBpcyBpbiByZXNldCBhbmQsIGlm
IGl0Cj4gPiA+IGlzLAo+ID4gPiBpdCBicmluZ3MgaXQgb3V0IG9mIHJlc2V0LiBJbiB0aGF0IGNh
c2UsIG5vIG5lZWQgZm9yIHN3IHJlc2V0IHNpbmNlCj4gPiA+IHdlCj4gPiA+IGFyZSBjb21pbmcg
YWxyZWFkeSBmcm9tIHJlc2V0LiBPbiB0aGUgb3RoZXIgaGFuZCwgaWYgdGhlcmUncyBubwo+ID4g
PiByZXNldAo+ID4gPiBwaW4gY29uZmlndXJlZCBvciB0aGUgcGFydCBpcyBhbHJlYWR5IHBvd2Vy
ZWQsIHRoZW4gSSB3YXMgZm9yY2luZyBhCj4gPiA+IHN3Cj4gPiA+IHJlc2V0IHRvIGd1YXJhbnRl
ZSBhIHNhbmUgc3RhdGUgd2hlbiBzdGFydGluZy4uLiAgCj4gPiAKPiA+IEFncmVlZCB0aGF0IGlz
IHdoYXQgeW91ciBwYXRjaCBpcyBkb2luZy4gICBIb3dldmVyIEknbSBzdWdnZXN0aW5nIHlvdQo+
ID4gZG8KPiA+IHNvbWV0aGluZyBkaWZmZXJlbnQuICBEZWNpZGUgd2hpY2ggdHlwZSBvZiByZXNl
dCB0YWtlcyBwcmVjZWRlbmNlLgo+ID4gTm9ybWFsbHkgdGhhdCBpcyBoYXJkd2FyZSByZXNldCBp
ZiBpdCBpcyB3aXJlZCB1cCwgYnV0IHRoZXJlIGlzIG5vCj4gPiBwYXJ0aWN1bGFyIHJlYXNvbiBp
dCBjYW4ndCBiZSB0aGUgc29mdHdhcmUgcmVzZXQgaWYgdGhleSBkbyBleGFjdGx5Cj4gPiB0aGUK
PiA+IHNhbWUgdGhpbmcuCj4gPiAKPiA+IFBsYW4gYSwKPiA+IElmIHlvdSBkZWNpZGUgdGhlIHNv
ZnR3YXJlIHRha2VzIHByZWNlZGVuY2UgeW91IG5lZWQgdG8gY2hlY2sgaWYgdGhlCj4gPiBoYXJk
d2FyZSByZXNldCBpcyBhbHJlYWR5IHNldC4gIElmIHNvIHlvdSBuZWVkIHRvIHJlbGVhc2UgaXQg
YW5kCj4gPiBjYXJyeSBvbi4KPiA+IElmIGhhcmR3YXJlIHJlc2V0IGlzIG5vdCBwcm92aWRlZCBv
ciBub3Qgc2V0IHRoZW4geW91IGp1c3QgY2FsbCB0aGUKPiA+IHNvZnR3YXJlCj4gPiByZXNldC4K
PiA+IAo+ID4gUGxhbiBiLCB3aGljaCBpcyB0aGUgbW9zdCBjb21tb24gb25lIGZvciBkcml2ZXJz
IElJUkMuLi4KPiA+IElmIHlvdSBkZWNpZGUgdG8gbWFrZSB0aGUgaGFyZHdhcmUgcmVzZXQgdGFr
ZSBwcmVjZWRlbmNlIGFuZCBpdCdzCj4gPiB0aGVyZSwgdGhlbiB5b3UKPiA+ICdhbHdheXMnIHNl
dCB0aGUgcGluIGZvciBhcHByb3ByaWF0ZSB0aW1lIHRvIHRyaWdnZXIgYSByZXNldC4gIFlvdQo+
ID4gZG9uJ3QKPiA+IGNhcmUgd2hhdCBzdGF0ZSBpdCB3YXMgcHJldmlvdXNseSBpbiBhcyBlaXRo
ZXIgaXQncyBhbHJlYWR5IGluIHJlc2V0Cj4gPiBpbiB3aGljaAo+ID4gY2FzZSB5b3UgYXJlIG1h
a2luZyBubyBjaGFuZ2UsIG9yIG5vdCBpbiB3aGljaCBjYXNlIHlvdSBlbnRlciByZXNldC4KPiA+
IE5vdGUgdGhpcyBhbHNvIHdvcmtzIGlmIHlvdSBoYXZlIGFuIG91dHB1dCBvbmx5IHBpbiBhbmQg
bm8gYWNjZXNzIHRvCj4gPiB3aGF0Cj4gPiBpdHMgY3VycmVudCBzdGF0ZSBpcyAodHlwaWNhbGx5
IGJlY2F1c2UgaXQgd2FzIHNldCBieSBmaXJtd2FyZSkuCj4gPiAKPiA+IFRoZW4geW91IHJhaXNl
IHRoZSBncGlvIHRvIHRha2UgaXQgb3V0IG9mIHJlc2V0IGFuZCBtb3ZlIG9uLiAgSWYgdGhlCj4g
PiByZXNldCBpcyBub3QgcHJvdmlkZWQgdGhlbiB5b3UgZmFsbCBiYWNrIHRvIHRoZSBzb2Z0d2Fy
ZSByZXNldC4gIAo+IAo+IE9rLCBOb3cgSSBiZWxpZXZlIEkgZ290IGl0LiBJZiBJbSB1bmRlcnN0
YW5kaW5nIGNvcnJlY3RseSwgd2hhdCBpcwo+IGhhcHBlbmluZyByaWdodCBrbm93IGlzIHBsYW4g
QS4gU28sIG9uIHBsYW4gQiwgd2UgYWN0dWFsbHkgZm9yY2UgdGhlIEhXCj4gcmVzZXQgKGlmIHRo
ZSBwaW4gaXMgdGhlcmUpIGluc3RlYWQgb2YganVzdCBicmluZ2luZyBpdCBvdXQgb2YgcmVzZXQu
Li4KCll1cC4gRXhhY3RseSB0aGF0Lgo+IAo+IEkgYWxyZWFkeSBzcG9rZSB3aXRoIEFsZXggYW5k
IHdlIGFncmVlZCBoZSBpcyBzZW5kaW5nIHYyIHNpbmNlIGhlCj4gc3RhcnRlZCB0aGlzIHNlcmll
cy4gU28sIEhlIGlzIGRlY2lkaW5nIHdoaWNoIHBsYW4gdG8gZ28gZm9yIDopCgpDb29sCgpKb25h
dGhhbgoKPiAKPiBUaGFua3MgZm9yIHlvdXIgZXhwbGFuYXRpb24hCj4gTnVubyBTw6EKPiA+IEpv
bmF0aGFuCj4gPiAKPiA+IAo+ID4gCj4gPiAgIAo+ID4gPiA+ID4gTnVubyBTw6EgICAgIAo+ID4g
PiA+ID4gPiA+ID4gPiArCQltc2xlZXAodGltZW91dHMtPnJlc2V0X21zKTsKPiA+ID4gPiA+ID4g
PiA+ID4gKwl9IGVsc2Ugewo+ID4gPiA+ID4gPiA+ID4gPiArCQlyZXQgPSBfX2FkaXNfcmVzZXQo
YWRpcyk7Cj4gPiA+ID4gPiA+ID4gPiA+ICsJCWlmIChyZXQpCj4gPiA+ID4gPiA+ID4gPiA+ICsJ
CQlyZXR1cm4gcmV0Owo+ID4gPiA+ID4gPiA+ID4gPiArCX0KPiA+ID4gPiA+ID4gPiA+ID4gIAo+
ID4gPiA+ID4gPiA+ID4gPiAgCXJldCA9IGFkaXNfc2VsZl90ZXN0KGFkaXMpOwo+ID4gPiA+ID4g
PiA+ID4gPiAtCWlmIChyZXQpIHsKPiA+ID4gPiA+ID4gPiA+ID4gLQkJZGV2X2VycigmYWRpcy0+
c3BpLT5kZXYsICJTZWxmLXRlc3QKPiA+ID4gPiA+ID4gPiA+ID4gZmFpbGVkLAo+ID4gPiA+ID4g
PiA+ID4gPiB0cnlpbmcKPiA+ID4gPiA+ID4gPiA+ID4gcmVzZXQuXG4iKTsKPiA+ID4gPiA+ID4g
PiA+ID4gLQkJX19hZGlzX3Jlc2V0KGFkaXMpOwo+ID4gPiA+ID4gPiA+ID4gPiAtCQlyZXQgPSBh
ZGlzX3NlbGZfdGVzdChhZGlzKTsKPiA+ID4gPiA+ID4gPiA+ID4gLQkJaWYgKHJldCkgewo+ID4g
PiA+ID4gPiA+ID4gPiAtCQkJZGV2X2VycigmYWRpcy0+c3BpLT5kZXYsCj4gPiA+ID4gPiA+ID4g
PiA+ICJTZWNvbmQgc2VsZi0KPiA+ID4gPiA+ID4gPiA+ID4gdGVzdAo+ID4gPiA+ID4gPiA+ID4g
PiBmYWlsZWQsIGdpdmluZyB1cC5cbiIpOwo+ID4gPiA+ID4gPiA+ID4gPiAtCQkJZ290byBvdXRf
dW5sb2NrOwo+ID4gPiA+ID4gPiA+ID4gPiAtCQl9Cj4gPiA+ID4gPiA+ID4gPiA+IC0JfQo+ID4g
PiA+ID4gPiA+ID4gPiArCWlmIChyZXQpCj4gPiA+ID4gPiA+ID4gPiA+ICsJCXJldHVybiByZXQ7
Cj4gPiA+ID4gPiA+ID4gPiA+ICAKPiA+ID4gPiA+ID4gPiA+ID4gLW91dF91bmxvY2s6Cj4gPiA+
ID4gPiA+ID4gPiA+IC0JbXV0ZXhfdW5sb2NrKCZhZGlzLT5zdGF0ZV9sb2NrKTsKPiA+ID4gPiA+
ID4gPiA+ID4gLQlyZXR1cm4gcmV0Owo+ID4gPiA+ID4gPiA+ID4gPiArCWlmICghYWRpcy0+ZGF0
YS0+cHJvZF9pZF9yZWcpCj4gPiA+ID4gPiA+ID4gPiA+ICsJCXJldHVybiAwOwo+ID4gPiA+ID4g
PiA+ID4gPiArCj4gPiA+ID4gPiA+ID4gPiA+ICsJcmV0ID0gYWRpc19yZWFkX3JlZ18xNihhZGlz
LCBhZGlzLT5kYXRhLSAgCj4gPiA+ID4gPiA+ID4gPiA+ID5wcm9kX2lkX3JlZywgIAo+ID4gPiA+
ID4gPiA+ID4gPiAmcHJvZF9pZCk7Cj4gPiA+ID4gPiA+ID4gPiA+ICsJaWYgKHJldCkKPiA+ID4g
PiA+ID4gPiA+ID4gKwkJcmV0dXJuIHJldDsKPiA+ID4gPiA+ID4gPiA+ID4gKwo+ID4gPiA+ID4g
PiA+ID4gPiArCXJldCA9IHNzY2FuZihpaW9fbmFtZSwgImFkaXMlaHVcbiIsCj4gPiA+ID4gPiA+
ID4gPiA+ICZkZXZfaWQpOyAgICAgICAgCj4gPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiA+
IEhtbS4gSSBoYXZlIGEgZ2VuZXJhbCBkaXNsaWtlIG9mIHB1bGxpbmcgcGFydCBuYW1lCj4gPiA+
ID4gPiA+ID4gPiBzdHJpbmdzCj4gPiA+ID4gPiA+ID4gPiBhcGFydAo+ID4gPiA+ID4gPiA+ID4g
dG8KPiA+ID4gPiA+ID4gPiA+IGdldAo+ID4gPiA+ID4gPiA+ID4gSURzLiAgSXQgdGVuZHMgdG8g
YnJlYWsgd2hlbiBzb21lb25lIGNvbWVzIGFsb25nIGFuZCBhZGRzCj4gPiA+ID4gPiA+ID4gPiBh
Cj4gPiA+ID4gPiA+ID4gPiBwYXJ0Cj4gPiA+ID4gPiA+ID4gPiB3aXRoCj4gPiA+ID4gPiA+ID4g
PiBuZXcKPiA+ID4gPiA+ID4gPiA+IGJyYW5kaW5nLiAgUGVyaGFwcyBqdXN0IHB1dCBpdCBpbiB0
aGUgcmVsZXZhbnQgZGV2aWNlCj4gPiA+ID4gPiA+ID4gPiBwYXJ0Cj4gPiA+ID4gPiA+ID4gPiBz
cGVjaWZpYwo+ID4gPiA+ID4gPiA+ID4gc3RydWN0dXJlcwo+ID4gPiA+ID4gPiA+ID4gZGlyZWN0
bHk/Cj4gPiA+ID4gPiA+ID4gPiAgICAgICAgIAo+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+
IEknbGwgYWRtaXQgdGhhdCB0aGlzIHRvIG9yaWVudGF0ZWQgdG8gQURJIGRldmljZXMgYW5kIEkK
PiA+ID4gPiA+ID4gPiBiYXNpY2FsbHkKPiA+ID4gPiA+ID4gPiBqdXN0Cj4gPiA+ID4gPiA+ID4g
dG9vayB3aGF0IGFsbCB0aGUgZHJpdmVycyB3ZXJlIGRvaW5nIGFuZCBwbGFjZWQgaXQgaW5zaWRl
Cj4gPiA+ID4gPiA+ID4gdGhlCj4gPiA+ID4gPiA+ID4gbGlicmFyeS4uLgo+ID4gPiA+ID4gPiA+
IAo+ID4gPiA+ID4gPiA+IFNvLCB5b3UgbWVhbiBwYXNzaW5nIHRoaXMgdG8gZWFjaCBgY2hpcF9p
bmZvYCBhbmQgdGhlbgo+ID4gPiA+ID4gPiA+IHBhc3NpbmcKPiA+ID4gPiA+ID4gPiBpdAo+ID4g
PiA+ID4gPiA+IHRvCj4gPiA+ID4gPiA+ID4gdGhlIGxpYnJhcnkgdGhyb3VnaCBgYWRpc19kYXRh
YD8gICAgICAKPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+IFllcy4gIFBlb3BsZSBkb24ndCB0ZW5k
IHRvIGV4cGVjdCBzdHJpbmdzIHRvIG5lZWQgdG8gdGFrZSBhCj4gPiA+ID4gPiA+IHBhcnRpY3Vs
YXIgZm9ybSwKPiA+ID4gPiA+ID4gc28gcHVsbGluZyB0aGVtIGFwYXJ0IGluIGEgbGlicmFyeSBj
YW4gZ2l2ZSB1bmV4cGVjdGVkCj4gPiA+ID4gPiA+IHJlc3VsdHMuLi4KPiA+ID4gPiA+ID4gICAg
ICAgCj4gPiA+ID4gPiA+ID4gPiA+ICsJaWYgKHJldCAhPSAxKQo+ID4gPiA+ID4gPiA+ID4gPiAr
CQlyZXR1cm4gLUVJTlZBTDsKPiA+ID4gPiA+ID4gPiA+ID4gKwo+ID4gPiA+ID4gPiA+ID4gPiAr
CWlmIChwcm9kX2lkICE9IGRldl9pZCkKPiA+ID4gPiA+ID4gPiA+ID4gKwkJZGV2X3dhcm4oJmFk
aXMtPnNwaS0+ZGV2LAo+ID4gPiA+ID4gPiA+ID4gPiArCQkJICJEZXZpY2UgSUQoJXUpIGFuZCBw
cm9kdWN0Cj4gPiA+ID4gPiA+ID4gPiA+IElEKCV1KSBkbwo+ID4gPiA+ID4gPiA+ID4gPiBub3QK
PiA+ID4gPiA+ID4gPiA+ID4gbWF0Y2guIiwKPiA+ID4gPiA+ID4gPiA+ID4gKwkJCSBkZXZfaWQs
IHByb2RfaWQpOwo+ID4gPiA+ID4gPiA+ID4gPiArCj4gPiA+ID4gPiA+ID4gPiA+ICsJcmV0dXJu
IDA7Cj4gPiA+ID4gPiA+ID4gPiA+ICB9Cj4gPiA+ID4gPiA+ID4gPiA+IC1FWFBPUlRfU1lNQk9M
X0dQTChhZGlzX2luaXRpYWxfc3RhcnR1cCk7Cj4gPiA+ID4gPiA+ID4gPiA+ICtFWFBPUlRfU1lN
Qk9MX0dQTChfX2FkaXNfaW5pdGlhbF9zdGFydHVwKTsKPiA+ID4gPiA+ID4gPiA+ID4gIAo+ID4g
PiA+ID4gPiA+ID4gPiAgLyoqCj4gPiA+ID4gPiA+ID4gPiA+ICAgKiBhZGlzX3NpbmdsZV9jb252
ZXJzaW9uKCkgLSBQZXJmb3JtcyBhIHNpbmdsZSBzYW1wbGUKPiA+ID4gPiA+ID4gPiA+ID4gY29u
dmVyc2lvbgo+ID4gPiA+ID4gPiA+ID4gPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9paW8v
aW11L2FkaXMuaAo+ID4gPiA+ID4gPiA+ID4gPiBiL2luY2x1ZGUvbGludXgvaWlvL2ltdS9hZGlz
LmgKPiA+ID4gPiA+ID4gPiA+ID4gaW5kZXggZDIxYTAxM2QxMTIyLi5jNDNlNzkyMmFiMzIgMTAw
NjQ0Cj4gPiA+ID4gPiA+ID4gPiA+IC0tLSBhL2luY2x1ZGUvbGludXgvaWlvL2ltdS9hZGlzLmgK
PiA+ID4gPiA+ID4gPiA+ID4gKysrIGIvaW5jbHVkZS9saW51eC9paW8vaW11L2FkaXMuaAo+ID4g
PiA+ID4gPiA+ID4gPiBAQCAtNDEsNiArNDEsNyBAQCBzdHJ1Y3QgYWRpc190aW1lb3V0IHsKPiA+
ID4gPiA+ID4gPiA+ID4gICAqIEBnbG9iX2NtZF9yZWc6IFJlZ2lzdGVyIGFkZHJlc3Mgb2YgdGhl
IEdMT0JfQ01ECj4gPiA+ID4gPiA+ID4gPiA+IHJlZ2lzdGVyCj4gPiA+ID4gPiA+ID4gPiA+ICAg
KiBAbXNjX2N0cmxfcmVnOiBSZWdpc3RlciBhZGRyZXNzIG9mIHRoZSBNU0NfQ1RSTAo+ID4gPiA+
ID4gPiA+ID4gPiByZWdpc3Rlcgo+ID4gPiA+ID4gPiA+ID4gPiAgICogQGRpYWdfc3RhdF9yZWc6
IFJlZ2lzdGVyIGFkZHJlc3Mgb2YgdGhlIERJQUdfU1RBVAo+ID4gPiA+ID4gPiA+ID4gPiByZWdp
c3Rlcgo+ID4gPiA+ID4gPiA+ID4gPiArICogQHByb2RfaWRfcmVnOiBSZWdpc3RlciBhZGRyZXNz
IG9mIHRoZSBQUk9EX0lECj4gPiA+ID4gPiA+ID4gPiA+IHJlZ2lzdGVyCj4gPiA+ID4gPiA+ID4g
PiA+ICAgKiBAc2VsZl90ZXN0X3JlZzogUmVnaXN0ZXIgYWRkcmVzcyB0byByZXF1ZXN0IHNlbGYK
PiA+ID4gPiA+ID4gPiA+ID4gdGVzdAo+ID4gPiA+ID4gPiA+ID4gPiBjb21tYW5kCj4gPiA+ID4g
PiA+ID4gPiA+ICAgKiBAc3RhdHVzX2Vycm9yX21zZ3M6IEFycmF5IG9mIGVycm9yIG1lc3NnYWVz
Cj4gPiA+ID4gPiA+ID4gPiA+ICAgKiBAc3RhdHVzX2Vycm9yX21hc2s6Cj4gPiA+ID4gPiA+ID4g
PiA+IEBAIC01NCw2ICs1NSw3IEBAIHN0cnVjdCBhZGlzX2RhdGEgewo+ID4gPiA+ID4gPiA+ID4g
PiAgCXVuc2lnbmVkIGludCBnbG9iX2NtZF9yZWc7Cj4gPiA+ID4gPiA+ID4gPiA+ICAJdW5zaWdu
ZWQgaW50IG1zY19jdHJsX3JlZzsKPiA+ID4gPiA+ID4gPiA+ID4gIAl1bnNpZ25lZCBpbnQgZGlh
Z19zdGF0X3JlZzsKPiA+ID4gPiA+ID4gPiA+ID4gKwl1bnNpZ25lZCBpbnQgcHJvZF9pZF9yZWc7
Cj4gPiA+ID4gPiA+ID4gPiA+ICAKPiA+ID4gPiA+ID4gPiA+ID4gIAl1bnNpZ25lZCBpbnQgc2Vs
Zl90ZXN0X21hc2s7Cj4gPiA+ID4gPiA+ID4gPiA+ICAJdW5zaWduZWQgaW50IHNlbGZfdGVzdF9y
ZWc7Cj4gPiA+ID4gPiA+ID4gPiA+IEBAIC0yOTksNiArMzAxLDcgQEAgc3RhdGljIGlubGluZSBp
bnQKPiA+ID4gPiA+ID4gPiA+ID4gYWRpc19yZWFkX3JlZ18zMihzdHJ1Y3QKPiA+ID4gPiA+ID4g
PiA+ID4gYWRpcwo+ID4gPiA+ID4gPiA+ID4gPiAqYWRpcywgdW5zaWduZWQgaW50IHJlZywKPiA+
ID4gPiA+ID4gPiA+ID4gIAo+ID4gPiA+ID4gPiA+ID4gPiAgaW50IGFkaXNfZW5hYmxlX2lycShz
dHJ1Y3QgYWRpcyAqYWRpcywgYm9vbCBlbmFibGUpOwo+ID4gPiA+ID4gPiA+ID4gPiAgaW50IF9f
YWRpc19jaGVja19zdGF0dXMoc3RydWN0IGFkaXMgKmFkaXMpOwo+ID4gPiA+ID4gPiA+ID4gPiAr
aW50IF9fYWRpc19pbml0aWFsX3N0YXJ0dXAoc3RydWN0IGFkaXMgKmFkaXMpOwo+ID4gPiA+ID4g
PiA+ID4gPiAgCj4gPiA+ID4gPiA+ID4gPiA+ICBzdGF0aWMgaW5saW5lIGludCBhZGlzX2NoZWNr
X3N0YXR1cyhzdHJ1Y3QgYWRpcyAqYWRpcykKPiA+ID4gPiA+ID4gPiA+ID4gIHsKPiA+ID4gPiA+
ID4gPiA+ID4gQEAgLTMxMSw3ICszMTQsMTcgQEAgc3RhdGljIGlubGluZSBpbnQKPiA+ID4gPiA+
ID4gPiA+ID4gYWRpc19jaGVja19zdGF0dXMoc3RydWN0Cj4gPiA+ID4gPiA+ID4gPiA+IGFkaXMg
KmFkaXMpCj4gPiA+ID4gPiA+ID4gPiA+ICAJcmV0dXJuIHJldDsKPiA+ID4gPiA+ID4gPiA+ID4g
IH0KPiA+ID4gPiA+ID4gPiA+ID4gIAo+ID4gPiA+ID4gPiA+ID4gPiAtaW50IGFkaXNfaW5pdGlh
bF9zdGFydHVwKHN0cnVjdCBhZGlzICphZGlzKTsKPiA+ID4gPiA+ID4gPiA+ID4gKy8qIGxvY2tl
ZCB2ZXJzaW9uIG9mIF9fYWRpc19pbml0aWFsX3N0YXJ0dXAoKSAqLwo+ID4gPiA+ID4gPiA+ID4g
PiArc3RhdGljIGlubGluZSBpbnQgYWRpc19pbml0aWFsX3N0YXJ0dXAoc3RydWN0IGFkaXMKPiA+
ID4gPiA+ID4gPiA+ID4gKmFkaXMpCj4gPiA+ID4gPiA+ID4gPiA+ICt7Cj4gPiA+ID4gPiA+ID4g
PiA+ICsJaW50IHJldDsKPiA+ID4gPiA+ID4gPiA+ID4gKwo+ID4gPiA+ID4gPiA+ID4gPiArCW11
dGV4X2xvY2soJmFkaXMtPnN0YXRlX2xvY2spOwo+ID4gPiA+ID4gPiA+ID4gPiArCXJldCA9IF9f
YWRpc19pbml0aWFsX3N0YXJ0dXAoYWRpcyk7Cj4gPiA+ID4gPiA+ID4gPiA+ICsJbXV0ZXhfdW5s
b2NrKCZhZGlzLT5zdGF0ZV9sb2NrKTsKPiA+ID4gPiA+ID4gPiA+ID4gKwo+ID4gPiA+ID4gPiA+
ID4gPiArCXJldHVybiByZXQ7Cj4gPiA+ID4gPiA+ID4gPiA+ICt9Cj4gPiA+ID4gPiA+ID4gPiA+
ICAKPiA+ID4gPiA+ID4gPiA+ID4gIGludCBhZGlzX3NpbmdsZV9jb252ZXJzaW9uKHN0cnVjdCBp
aW9fZGV2ICppbmRpb19kZXYsCj4gPiA+ID4gPiA+ID4gPiA+ICAJY29uc3Qgc3RydWN0IGlpb19j
aGFuX3NwZWMgKmNoYW4sIHVuc2lnbmVkIGludAo+ID4gPiA+ID4gPiA+ID4gPiBlcnJvcl9tYXNr
LCAgICAgICAgCj4gPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiA+ICAgICAgICAgCj4gPiA+
ID4gPiA+IAo+ID4gPiA+ID4gPiAgICAgICAKPiA+ID4gPiAKPiA+ID4gPiAgICAgCj4gCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5n
IGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4
ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK

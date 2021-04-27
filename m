Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FFA936C621
	for <lists+driverdev-devel@lfdr.de>; Tue, 27 Apr 2021 14:34:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A8DB5608B2;
	Tue, 27 Apr 2021 12:34:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wSsPI7QFI9sg; Tue, 27 Apr 2021 12:34:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DB093607C0;
	Tue, 27 Apr 2021 12:34:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CD25A1BF5F6
 for <devel@linuxdriverproject.org>; Tue, 27 Apr 2021 12:34:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BCACD40148
 for <devel@linuxdriverproject.org>; Tue, 27 Apr 2021 12:34:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6o2fvjXubdDE for <devel@linuxdriverproject.org>;
 Tue, 27 Apr 2021 12:34:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2011E40122
 for <devel@driverdev.osuosl.org>; Tue, 27 Apr 2021 12:34:44 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 90CBE60FDB;
 Tue, 27 Apr 2021 12:34:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1619526883;
 bh=2u2zN97nbfniLslz6+tVNkTFqx3EDnz7hhOVKt92qRc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sKzOuoFEa/Wvf/ILU8eTcUFqo+b4qV0l1RKh9EhORzhyatWwOH4rvATRmwObNkF0c
 bNEX5xgvL3ug7N5JpnVzytvoMP/twQvedUN7z2g8T4aMGKjkiv7kUBVEi+xh34aG/e
 8qsI+9KrRkgQe9JlOQrC7IONDp8fLnLQsZmrCocRtXgd9VNgIiWhAUDiafc0V3xPeD
 FYotF73zLpWUNEUls2dIAi0CKlDUvlSs0bRhwL+HAokEZIVi7RaR4Us6/ee/evpezL
 54ZRi70XgRnQumI0zsliwvG7z9CZRXMtfjryoF2ZfnC10Z4H5YkL/18IR/f1otNKUh
 e8GWYFESdmQWQ==
Received: from johan by xi.lan with local (Exim 4.93.0.4)
 (envelope-from <johan@kernel.org>)
 id 1lbMvY-0002Wx-DN; Tue, 27 Apr 2021 14:34:57 +0200
Date: Tue, 27 Apr 2021 14:34:56 +0200
From: Johan Hovold <johan@kernel.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH 17/78] staging: media: vde: use pm_runtime_resume_and_get()
Message-ID: <YIgE8PfASn6nua5B@hovoldconsulting.com>
References: <cover.1619191723.git.mchehab+huawei@kernel.org>
 <0eeb886803679cd908cb4576d35b2314993abd2c.1619191723.git.mchehab+huawei@kernel.org>
 <2349831b-e7cd-d38d-fc19-5fabf06f773e@gmail.com>
 <20210427112250.5d40c4f4@coco.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210427112250.5d40c4f4@coco.lan>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linuxarm@huawei.com, Jonathan Hunter <jonathanh@nvidia.com>,
 mauro.chehab@huawei.com, Thierry Reding <thierry.reding@gmail.com>,
 linux-tegra@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gVHVlLCBBcHIgMjcsIDIwMjEgYXQgMTE6MjI6NTBBTSArMDIwMCwgTWF1cm8gQ2FydmFsaG8g
Q2hlaGFiIHdyb3RlOgo+IEhpIERtaXRyeSwKPiAKPiBFbSBTYXQsIDI0IEFwciAyMDIxIDEwOjM1
OjIyICswMzAwCj4gRG1pdHJ5IE9zaXBlbmtvIDxkaWdldHhAZ21haWwuY29tPiBlc2NyZXZldToK
PiAKPiA+IDI0LjA0LjIwMjEgMDk6NDQsIE1hdXJvIENhcnZhbGhvIENoZWhhYiDQv9C40YjQtdGC
Ogo+ID4gPiBDb21taXQgZGQ4MDg4ZDVhODk2ICgiUE06IHJ1bnRpbWU6IEFkZCBwbV9ydW50aW1l
X3Jlc3VtZV9hbmRfZ2V0IHRvIGRlYWwgd2l0aCB1c2FnZSBjb3VudGVyIikKPiA+ID4gYWRkZWQg
cG1fcnVudGltZV9yZXN1bWVfYW5kX2dldCgpIGluIG9yZGVyIHRvIGF1dG9tYXRpY2FsbHkgaGFu
ZGxlCj4gPiA+IGRldi0+cG93ZXIudXNhZ2VfY291bnQgZGVjcmVtZW50IG9uIGVycm9ycy4KPiA+
ID4gCj4gPiA+IFVzZSB0aGUgbmV3IEFQSSwgaW4gb3JkZXIgdG8gY2xlYW51cCB0aGUgZXJyb3Ig
Y2hlY2sgbG9naWMuCj4gPiA+IAo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBNYXVybyBDYXJ2YWxobyBD
aGVoYWIgPG1jaGVoYWIraHVhd2VpQGtlcm5lbC5vcmc+Cj4gPiA+IC0tLQo+ID4gPiAgZHJpdmVy
cy9zdGFnaW5nL21lZGlhL3RlZ3JhLXZkZS92ZGUuYyB8IDE2ICsrKysrKysrKystLS0tLS0KPiA+
ID4gIDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQo+ID4g
PiAKPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS90ZWdyYS12ZGUvdmRl
LmMgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvdGVncmEtdmRlL3ZkZS5jCj4gPiA+IGluZGV4IDI4
ODQ1YjViYWZhZi4uODkzNmYxNDBhMjQ2IDEwMDY0NAo+ID4gPiAtLS0gYS9kcml2ZXJzL3N0YWdp
bmcvbWVkaWEvdGVncmEtdmRlL3ZkZS5jCj4gPiA+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRp
YS90ZWdyYS12ZGUvdmRlLmMKPiA+ID4gQEAgLTc3NSw5ICs3NzUsOSBAQCBzdGF0aWMgaW50IHRl
Z3JhX3ZkZV9pb2N0bF9kZWNvZGVfaDI2NChzdHJ1Y3QgdGVncmFfdmRlICp2ZGUsCj4gPiA+ICAJ
aWYgKHJldCkKPiA+ID4gIAkJZ290byByZWxlYXNlX2RwYl9mcmFtZXM7Cj4gPiA+ICAKPiA+ID4g
LQlyZXQgPSBwbV9ydW50aW1lX2dldF9zeW5jKGRldik7Cj4gPiA+ICsJcmV0ID0gcG1fcnVudGlt
ZV9yZXN1bWVfYW5kX2dldChkZXYpOwo+ID4gPiAgCWlmIChyZXQgPCAwKQo+ID4gPiAtCQlnb3Rv
IHB1dF9ydW50aW1lX3BtOwo+ID4gPiArCQlnb3RvIHVubG9jazsKPiA+ID4gIAo+ID4gPiAgCS8q
Cj4gPiA+ICAJICogV2UgcmVseSBvbiB0aGUgVkRFIHJlZ2lzdGVycyByZXNldCB2YWx1ZSwgb3Ro
ZXJ3aXNlIFZERQo+ID4gPiBAQCAtODQzLDYgKzg0Myw4IEBAIHN0YXRpYyBpbnQgdGVncmFfdmRl
X2lvY3RsX2RlY29kZV9oMjY0KHN0cnVjdCB0ZWdyYV92ZGUgKnZkZSwKPiA+ID4gIHB1dF9ydW50
aW1lX3BtOgo+ID4gPiAgCXBtX3J1bnRpbWVfbWFya19sYXN0X2J1c3koZGV2KTsKPiA+ID4gIAlw
bV9ydW50aW1lX3B1dF9hdXRvc3VzcGVuZChkZXYpOwo+ID4gPiArCj4gPiA+ICt1bmxvY2s6Cj4g
PiA+ICAJbXV0ZXhfdW5sb2NrKCZ2ZGUtPmxvY2spOwo+ID4gPiAgCj4gPiA+ICByZWxlYXNlX2Rw
Yl9mcmFtZXM6Cj4gPiA+IEBAIC0xMDY5LDggKzEwNzEsOCBAQCBzdGF0aWMgaW50IHRlZ3JhX3Zk
ZV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ID4gPiAgCSAqIHBvd2VyLWN5
Y2xlIGl0IGluIG9yZGVyIHRvIHB1dCBoYXJkd2FyZSBpbnRvIGEgcHJlZGljdGFibGUgbG93ZXIK
PiA+ID4gIAkgKiBwb3dlciBzdGF0ZS4KPiA+ID4gIAkgKi8KPiA+ID4gLQlwbV9ydW50aW1lX2dl
dF9zeW5jKGRldik7Cj4gPiA+IC0JcG1fcnVudGltZV9wdXQoZGV2KTsKPiA+ID4gKwlpZiAocG1f
cnVudGltZV9yZXN1bWVfYW5kX2dldChkZXYpID49IDApCj4gPiA+ICsJCXBtX3J1bnRpbWVfcHV0
KGRldik7Cj4gPiA+ICAKPiA+ID4gIAlyZXR1cm4gMDsKPiA+ID4gIAo+ID4gPiBAQCAtMTA4OCw4
ICsxMDkwLDkgQEAgc3RhdGljIGludCB0ZWdyYV92ZGVfcmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9k
ZXZpY2UgKnBkZXYpCj4gPiA+ICB7Cj4gPiA+ICAJc3RydWN0IHRlZ3JhX3ZkZSAqdmRlID0gcGxh
dGZvcm1fZ2V0X2RydmRhdGEocGRldik7Cj4gPiA+ICAJc3RydWN0IGRldmljZSAqZGV2ID0gJnBk
ZXYtPmRldjsKPiA+ID4gKwlpbnQgcmV0Owo+ID4gPiAgCj4gPiA+IC0JcG1fcnVudGltZV9nZXRf
c3luYyhkZXYpOwo+ID4gPiArCXJldCA9IHBtX3J1bnRpbWVfcmVzdW1lX2FuZF9nZXQoZGV2KTsK
PiA+ID4gIAlwbV9ydW50aW1lX2RvbnRfdXNlX2F1dG9zdXNwZW5kKGRldik7Cj4gPiA+ICAJcG1f
cnVudGltZV9kaXNhYmxlKGRldik7Cj4gPiA+ICAKPiA+ID4gQEAgLTEwOTcsNyArMTEwMCw4IEBA
IHN0YXRpYyBpbnQgdGVncmFfdmRlX3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2
KQo+ID4gPiAgCSAqIEJhbGFuY2UgUlBNIHN0YXRlLCB0aGUgVkRFIHBvd2VyIGRvbWFpbiBpcyBs
ZWZ0IE9OIGFuZCBoYXJkd2FyZQo+ID4gPiAgCSAqIGlzIGNsb2NrLWdhdGVkLiBJdCdzIHNhZmUg
dG8gcmVib290IG1hY2hpbmUgbm93Lgo+ID4gPiAgCSAqLwo+ID4gPiAtCXBtX3J1bnRpbWVfcHV0
X25vaWRsZShkZXYpOwo+ID4gPiArCWlmIChyZXQgPj0gMCkKPiA+ID4gKwkJcG1fcnVudGltZV9w
dXRfbm9pZGxlKGRldik7Cj4gPiA+ICAJY2xrX2Rpc2FibGVfdW5wcmVwYXJlKHZkZS0+Y2xrKTsK
PiA+ID4gIAo+ID4gPiAgCW1pc2NfZGVyZWdpc3RlcigmdmRlLT5taXNjZGV2KTsKPiA+ID4gICAK
PiA+IAo+ID4gSGVsbG8gTWF1cm8sCj4gPiAKPiA+IFRoYW5rIHlvdSB2ZXJ5IG11Y2ggZm9yIHRo
ZSBwYXRjaC4gSXQgbG9va3MgdG8gbWUgdGhhdCB0aGUgb3JpZ2luYWwKPiA+IHZhcmlhbnQgd2Fz
IGEgYml0IHNpbXBsZXIsIHRoaXMgcGF0Y2ggYWRkcyBtb3JlIGNvZGUgbGluZXMgd2l0aG91dAo+
ID4gY2hhbmdpbmcgdGhlIHByZXZpb3VzIGJlaGF2aW91ci4gT3IgYW0gSSBtaXNzaW5nIHNvbWV0
aGluZz8KCkkgYWdyZWUsIHRoZSBhYm92ZSBkb2VzIG5vdCBsb29rIGxpa2UgYW4gaW1wcm92ZW1l
bnQgYXQgYWxsLgoKPiBXaGlsZSBvbiBzZXZlcmFsIHBsYWNlcyB0aGUgbmV3ZXIgY29kZSBpcyBz
aW1wbGVyLCB0aGUgZW5kIGdvYWwgaGVyZSBpcwo+IHRvIHJlcGxhY2UgYWxsIG9jY3VycmVuY2Vz
IG9mIHBtX3J1bnRpbWVfZ2V0X3N5bmMoKSBmcm9tIHRoZSBtZWRpYSAKPiBzdWJzeXN0ZW0sIGR1
ZSB0byB0aGUgbnVtYmVyIG9mIHByb2JsZW1zIHdlJ3JlIGhhdmluZyB3aXRoIHRoaXM6Cj4gCj4g
MS4gZGVzcGl0ZSBpdHMgbmFtZSwgdGhpcyBpcyBhY3R1YWxseSBhIFBNIHJ1bnRpbWUgcmVzdW1l
IGNhbGwsCj4gICAgYnV0IHNvbWUgZGV2ZWxvcGVycyBkaWRuJ3Qgc2VlbSB0byByZWFsaXplIHRo
YXQsIGFzIEkgZ290IHRoaXMKPiAgICBwYXR0ZXJuIG9uIHNvbWUgZHJpdmVyczoKPiAKPiAgICAg
ICAgIHBtX3J1bnRpbWVfZ2V0X3N5bmMoJmNsaWVudC0+ZGV2KTsKPiAgICAgICAgIHBtX3J1bnRp
bWVfZGlzYWJsZSgmY2xpZW50LT5kZXYpOwo+ICAgICAgICAgcG1fcnVudGltZV9zZXRfc3VzcGVu
ZGVkKCZjbGllbnQtPmRldik7Cj4gICAgICAgICBwbV9ydW50aW1lX3B1dF9ub2lkbGUoJmNsaWVu
dC0+ZGV2KTsKPiAKPiAgICBJdCBtYWtlcyBubyBzZW5zZSB0byByZXN1bWUgUE0ganVzdCB0byBz
dXNwZW5kIGl0IGFnYWluIDstKQoKSXQgdmVyeSB3ZWxsIG1heS4gWW91J3JlIHJlc3VtaW5nIHRo
ZSBkZXZpY2UgYW5kIGxlYXZpbmcgaXQgYSBkZWZpbmVkCnBvd2VyIHN0YXRlIGJlZm9yZSBiYWxh
bmNpbmcgdGhlIFBNIGNvdW50LCBjbGVhbmluZyB1cCBhbmQgdW5iaW5kaW5nIHRoZQpkcml2ZXIu
Cgo+ICAgIFRoZSBuYW1lIG9mIHRoZSBuZXcgdmFyaWFudCBpcyBhIGxvdCBjbGVhcmVyOgo+IAlw
bV9ydW50aW1lX3Jlc3VtZV9hbmRfZ2V0KCkKCkZvciBwZW9wbGUgbm90IHVzZWQgdG8gdGhlIEFQ
SSBwZXJoYXBzLgoKPiAyLiBVc3VhbCAqX2dldCgpIG1ldGhvZHMgb25seSBpbmNyZW1lbnQgdGhl
aXIgdXNlIGNvdW50IG9uIHN1Y2Nlc3MsCj4gICAgYnV0IHBtX3J1bnRpbWVfZ2V0X3N5bmMoKSBp
bmNyZW1lbnRzIGl0IHVuY29uZGl0aW9uYWxseS4gRHVlIHRvCj4gICAgdGhhdCwgc2V2ZXJhbCBk
cml2ZXJzIHdlcmUgbWlzdGFrZW5seSBub3QgY2FsbGluZwo+ICAgIHBtX3J1bnRpbWVfcHV0X25v
aWRsZSgpIHdoZW4gaXQgZmFpbHM7CgpBcyBJIG1lbnRpb25lZCBlbHNld2hlcmUsIGFsbCBwbV9y
dW50aW1lX2dldCBjYWxscyBpbmNyZW1lbnQgdGhlIHVzYWdlCmNvdW50IHNvIHRoZSBBUEkgaXMg
Y29uc2lzdGVudC4KIAo+IDMuIENvbnNpc3RlbmN5OiB3ZSBkaWQgc2ltaWxhciBjaGFuZ2VzIHN1
YnN5c3RlbSB3aWRlIHdpdGgKPiAgICBmb3IgaW5zdGFuY2Ugc3RybGNweSgpIGFuZCBzdHJjcHko
KSB0aGF0IGdvdCByZXBsYWNlZCBieQo+ICAgIHN0cnNjcHkoKS4gSGF2aW5nIGFsbCBkcml2ZXJz
IHVzaW5nIHRoZSBzYW1lIGtub3duLXRvLWJlLXNhZmUKPiAgICBtZXRob2RzIGlzIGEgZ29vZCB0
aGluZzsKClRoZXJlJ3Mgbm8ga25vdy10by1iZSBzYWZlIEFQSS4gUGVvcGxlIHdpbGwgZmluZCB3
YXlzIHRvIGdldCB0aGlzIHdyb25nCnRvby4KCkFuZCB0aGUgb2xkIGludGVyZmFjZSBpc24ndCBn
b2luZyBhd2F5IGZyb20gdGhlIGtlcm5lbCBldmVuIGlmIHlvdQptYW5hZ2UgdG8gbm90IHVzZSBp
dCBpbiBtZWRpYS4KCj4gNC4gUHJldmVudCBuZXdlciBkcml2ZXJzIHRvIGNvcHktYW5kLXBhc3Rl
IGEgY29kZSB0aGF0IGl0IHdvdWxkCj4gICAgYmUgZWFzaWVyIHRvIGJyZWFrIGlmIHRoZXkgZG9u
J3QgdHJ1bHkgdW5kZXJzdGFuZCB3aGF0J3MgYmVoaW5kCj4gICAgdGhlIHNjZW5lcy4KCkpvaGFu
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1h
aWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYu
bGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=

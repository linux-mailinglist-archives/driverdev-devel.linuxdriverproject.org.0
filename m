Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DE5237318A
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Jul 2019 16:24:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6134085EC1;
	Wed, 24 Jul 2019 14:24:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m4l6V5E605R2; Wed, 24 Jul 2019 14:24:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4A6BC85E93;
	Wed, 24 Jul 2019 14:24:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 397C81BF348
 for <devel@linuxdriverproject.org>; Wed, 24 Jul 2019 14:24:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3397A85EBF
 for <devel@linuxdriverproject.org>; Wed, 24 Jul 2019 14:24:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IzR756FkPe65 for <devel@linuxdriverproject.org>;
 Wed, 24 Jul 2019 14:23:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9192C85E93
 for <devel@driverdev.osuosl.org>; Wed, 24 Jul 2019 14:23:58 +0000 (UTC)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 007AC28;
 Wed, 24 Jul 2019 07:23:58 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 911C33F71A;
 Wed, 24 Jul 2019 07:23:56 -0700 (PDT)
Subject: Re: [PATCH] media: staging: ipu3: Enable IOVA API only when IOMMU
 support is enabled
To: Dmitry Osipenko <digetx@gmail.com>, Yuehaibing <yuehaibing@huawei.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>
References: <20190722134749.21580-1-yuehaibing@huawei.com>
 <20190724103027.GD21370@paasikivi.fi.intel.com>
 <e48fc180-06cc-eac7-d8ca-9be1699c8677@arm.com>
 <0c08bdae-facc-0f28-0e58-17a65172587a@huawei.com>
 <491dbca1-8a58-b26e-cf56-a1a419da288f@gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <eaf521ff-7dc6-70ae-0473-9c994def602b@arm.com>
Date: Wed, 24 Jul 2019 15:23:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <491dbca1-8a58-b26e-cf56-a1a419da288f@gmail.com>
Content-Language: en-GB
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
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 yong.zhi@intel.com, hverkuil-cisco@xs4all.nl, mchehab@kernel.org,
 linux-media@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gMjQvMDcvMjAxOSAxNTowOSwgRG1pdHJ5IE9zaXBlbmtvIHdyb3RlOgo+IDI0LjA3LjIwMTkg
MTc6MDMsIFl1ZWhhaWJpbmcg0L/QuNGI0LXRgjoKPj4gT24gMjAxOS83LzI0IDIxOjQ5LCBSb2Jp
biBNdXJwaHkgd3JvdGU6Cj4+PiBPbiAyNC8wNy8yMDE5IDExOjMwLCBTYWthcmkgQWlsdXMgd3Jv
dGU6Cj4+Pj4gSGkgWXVlLAo+Pj4+Cj4+Pj4gT24gTW9uLCBKdWwgMjIsIDIwMTkgYXQgMDk6NDc6
NDlQTSArMDgwMCwgWXVlSGFpYmluZyB3cm90ZToKPj4+Pj4gSWYgSU9NTVVfU1VQUE9SVCBpcyBu
b3Qgc2V0LCBpcHUzIGRyaXZlciBtYXkgc2VsZWN0IElPTU1VX0lPVkEgdG8gbS4KPj4+Pj4gQnV0
IGZvciBtYW55IGRyaXZlcnMsIHRoZXkgdXNlICJzZWxlY3QgSU9NTVVfSU9WQSBpZiBJT01NVV9T
VVBQT1JUIgo+Pj4+PiBpbiB0aGUgS2NvbmZpZywgZm9yIGV4YW1wbGUsIENPTkZJR19URUdSQV9W
REUgaXMgc2V0IHRvIHkgYnV0IElPTU1VX0lPVkEKPj4+Pj4gaXMgbSwgdGhlbiB0aGUgYnVpbGRp
bmcgZmFpbHMgbGlrZSB0aGlzOgo+Pj4+Pgo+Pj4+PiBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvdGVn
cmEtdmRlL2lvbW11Lm86IEluIGZ1bmN0aW9uIGB0ZWdyYV92ZGVfaW9tbXVfbWFwJzoKPj4+Pj4g
aW9tbXUuYzooLnRleHQrMHg0MSk6IHVuZGVmaW5lZCByZWZlcmVuY2UgdG8gYGFsbG9jX2lvdmEn
Cj4+Pj4+IGlvbW11LmM6KC50ZXh0KzB4NTYpOiB1bmRlZmluZWQgcmVmZXJlbmNlIHRvIGBfX2Zy
ZWVfaW92YScKPj4+Pj4KPj4+Pj4gUmVwb3J0ZWQtYnk6IEh1bGsgUm9ib3QgPGh1bGtjaUBodWF3
ZWkuY29tPgo+Pj4+PiBGaXhlczogN2ZjN2FmNjQ5Y2E3ICgibWVkaWE6IHN0YWdpbmcvaW50ZWwt
aXB1MzogQWRkIGltZ3UgdG9wIGxldmVsIHBjaSBkZXZpY2UgZHJpdmVyIikKPj4+Pj4gU2lnbmVk
LW9mZi1ieTogWXVlSGFpYmluZyA8eXVlaGFpYmluZ0BodWF3ZWkuY29tPgo+Pj4+PiAtLS0KPj4+
Pj4gICAgZHJpdmVycy9zdGFnaW5nL21lZGlhL2lwdTMvS2NvbmZpZyB8IDIgKy0KPj4+Pj4gICAg
MSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4+Pj4+Cj4+Pj4+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaXB1My9LY29uZmlnIGIvZHJpdmVy
cy9zdGFnaW5nL21lZGlhL2lwdTMvS2NvbmZpZwo+Pj4+PiBpbmRleCA0YjUxYzY3Li5iN2RmMThm
IDEwMDY0NAo+Pj4+PiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaXB1My9LY29uZmlnCj4+
Pj4+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9pcHUzL0tjb25maWcKPj4+Pj4gQEAgLTQs
NyArNCw3IEBAIGNvbmZpZyBWSURFT19JUFUzX0lNR1UKPj4+Pj4gICAgICAgIGRlcGVuZHMgb24g
UENJICYmIFZJREVPX1Y0TDIKPj4+Pj4gICAgICAgIGRlcGVuZHMgb24gTUVESUFfQ09OVFJPTExF
UiAmJiBWSURFT19WNEwyX1NVQkRFVl9BUEkKPj4+Pj4gICAgICAgIGRlcGVuZHMgb24gWDg2Cj4+
Pj4+IC0gICAgc2VsZWN0IElPTU1VX0lPVkEKPj4+Pj4gKyAgICBzZWxlY3QgSU9NTVVfSU9WQSBp
ZiBJT01NVV9TVVBQT1JUCj4+Pj4KPj4+PiBUaGlzIGRvZXNuJ3Qgc2VlbSByaWdodDogdGhlIGlw
dTMtY2lvMiBkcml2ZXIgbmVlZHMgSU9NTVVfSU9WQQo+Pj4+IGluZGVwZW5kZW50bHkgb2YgSU9N
TVVfU1VQUE9SVC4KPj4+Pgo+Pj4+IExvb2tpbmcgYXQgdGVncmEtdmRlLCBpdCBzZWVtcyB0byBk
ZXBlbmQgb24gSU9NTVVfU1VQUE9SVCBidXQgdGhhdCdzIG5vdAo+Pj4+IGRlY2xhcmVkIGluIGl0
cyBLY29uZmlnIGVudHJ5LiBJIHdvbmRlciBpZiBhZGRpbmcgdGhhdCB3b3VsZCBiZSB0aGUgcmln
aHQKPj4+PiB3YXkgdG8gZml4IHRoaXMuCj4+Pj4KPj4+PiBDYydpbmcgdGhlIElPTU1VIGxpc3Qu
Cj4gSU9NTVVfU1VQUE9SVCBpcyBvcHRpb25hbCBmb3IgdGhlIFRlZ3JhLVZERSBkcml2ZXIuCj4g
Cj4+PiBSaWdodCwgSSBhbHNvIGhhZCB0aGUgaW1wcmVzc2lvbiB0aGF0IHdlJ2QgbWFkZSB0aGUg
SU9WQSBsaWJyYXJ5IGNvbXBsZXRlbHkgc3RhbmRhbG9uZS4gQW5kIHdoYXQgZG9lcyB0aGUgSVBV
MyBkcml2ZXIncyBLY29uZmlnIGhhdmUgdG8gZG8gd2l0aCBzb21lICpvdGhlciogZHJpdmVyIGZh
aWxpbmcgdG8gbGluayBhbnl3YXk/Cj4gCj4gSSBjYW4gc2VlIGl0IGZhaWxpbmcgaWYgSVBVMyBp
cyBjb21waWxlZCBhcyBhIGxvYWRhYmxlIG1vZHVsZSwgd2hpbGUKPiBUZWdyYS1WREUgaXMgYSBi
dWlsdC1pbiBkcml2ZXIuIEhlbmNlIElPVkEgbGliIHNob3VsZCBiZSBhbHNvIGEga2VybmVsCj4g
bW9kdWxlIGFuZCB0aHVzIHRoZSBJT1ZBIHN5bWJvbHMgd2lsbCBiZSBtaXNzaW5nIGR1cmluZyBv
ZiBsaW5rYWdlIG9mCj4gdGhlIFZERSBkcml2ZXIuCj4gCj4+IE9oLCBJIG1pc3VuZGVyc3RhbmQg
dGhhdCBJT01NVV9JT1ZBIGlzIGRlcGVuZCBvbiBJT01NVV9TVVBQT1JULCB0aGFuayB5b3UgZm9y
IGNsYXJpZmljYXRpb24uCj4+Cj4+IEkgd2lsbCB0cnkgdG8gZml4IHRoaXMgaW4gdGVncmEtdmRl
Lgo+IAo+IFByb2JhYmx5IElPVkEgY291bGQgYmUgc2VsZWN0ZWQgaW5kZXBlbmRlbnRseSBvZiBJ
T01NVV9TVVBQT1JULCBidXQgSU9WQQo+IGxpYnJhcnkgaXNuJ3QgbmVlZGVkIGZvciB0aGUgVkRF
IGRyaXZlciBpZiBJT01NVV9TVVBQT1JUIGlzIGRpc2FibGVkLgoKT2gsIEkgdGhpbmsgSSBnZXQg
dGhlIHByb2JsZW0gbm93IC0gdGVncmEtdmRlL2lvbW11LmMgaXMgYnVpbHQgCnVuY29uZGl0aW9u
YWxseSBhbmQgcmVsaWVzIG9uIHRoZSBzdGF0aWMgaW5saW5lIHN0dWJzIGZvciBJT01NVSBhbmQg
SU9WQSAKY2FsbHMgaWYgIUlPTU1VX1NVUFBPUlQsIGJ1dCBpbiBhIGNvbXBpbGUtdGVzdCBjb25m
aWcgd2hlcmUgSU9WQT1tIGZvciAKb3RoZXIgcmVhc29ucywgaXQgdGhlbiBwaWNrcyB1cCB0aGUg
cmVhbCBkZWNsYXJhdGlvbnMgZnJvbSBsaW51eC9pb3ZhLmggCmluc3RlYWQgb2YgdGhlIHN0dWJz
LCBhbmQgdGhpbmdzIGdvIGRvd25oaWxsIGZyb20gdGhlcmUuIFNvIHRoZXJlIGlzIGEgCnJlYWwg
aXNzdWUsIGJ1dCBpbmRlZWQgaXQncyBUZWdyYS1WREUgd2hpY2ggbmVlZHMgdG8gYmUgcmVzdHJ1
Y3R1cmVkIHRvIApjb3BlIHdpdGggc3VjaCBjb25maWd1cmF0aW9ucywgYW5kIG5vdCBJUFUzJ3Mg
KG9yIGFueW9uZSBlbHNlIHdobyBtYXkgCnNlbGVjdCBJT1ZBPW0gaW4gZnV0dXJlKSBqb2IgdG8g
d29yayBhcm91bmQgaXQuCgpSb2Jpbi4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVj
dC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlz
dGluZm8vZHJpdmVyZGV2LWRldmVsCg==

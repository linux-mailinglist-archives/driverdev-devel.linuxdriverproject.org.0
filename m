Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F7C0139FA4
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 Jan 2020 03:57:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 30E0D85B48;
	Tue, 14 Jan 2020 02:57:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GWIVNtM84gQR; Tue, 14 Jan 2020 02:57:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D9A9A859ED;
	Tue, 14 Jan 2020 02:57:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 466991BF32A
 for <devel@linuxdriverproject.org>; Tue, 14 Jan 2020 02:57:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 367A8203EE
 for <devel@linuxdriverproject.org>; Tue, 14 Jan 2020 02:57:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lWKV4-YUV87L for <devel@linuxdriverproject.org>;
 Tue, 14 Jan 2020 02:57:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by silver.osuosl.org (Postfix) with ESMTPS id B259A203E0
 for <devel@driverdev.osuosl.org>; Tue, 14 Jan 2020 02:57:16 +0000 (UTC)
Received: from [IPv6:2804:431:e7cc:c102:5116:df6:dcc9:5754] (unknown
 [IPv6:2804:431:e7cc:c102:5116:df6:dcc9:5754])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: koike)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 796A9291348;
 Tue, 14 Jan 2020 02:57:12 +0000 (GMT)
Subject: Re: [PATCH] media: staging: rkisp1: Fix undefined reference to
 `phy_mipi_dphy_get_default_config' in rkisp1_mipi_csi2_start
To: "zhangxiaoxu (A)" <zhangxiaoxu5@huawei.com>, mchehab@kernel.org,
 gregkh@linuxfoundation.org
References: <20200113034804.24732-1-zhangxiaoxu5@huawei.com>
 <af2cccbf-56e4-2963-cd38-36fa13f3c571@collabora.com>
 <9013da2d-f50f-112b-77a1-92123ae25fcd@huawei.com>
From: Helen Koike <helen.koike@collabora.com>
Autocrypt: addr=helen.koike@collabora.com; keydata=
 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
Message-ID: <8676c3c3-5a2a-ed21-e6a8-b7cc14875fbf@collabora.com>
Date: Mon, 13 Jan 2020 23:57:08 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <9013da2d-f50f-112b-77a1-92123ae25fcd@huawei.com>
Content-Language: en-US
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
Cc: devel@driverdev.osuosl.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

CgpPbiAxLzEzLzIwIDExOjUzIFBNLCB6aGFuZ3hpYW94dSAoQSkgd3JvdGU6Cj4gCj4gCj4g5Zyo
IDIwMjAvMS8xNCAxOjM0LCBIZWxlbiBLb2lrZSDlhpnpgZM6Cj4+IEhpIFpoYW5nLAo+Pgo+PiBU
aGFuayB5b3UgZm9yIHRoZSBwYXRjaC4KPj4KPj4gT24gMS8xMy8yMCAxOjQ4IEFNLCBaaGFuZyBY
aWFveHUgd3JvdGU6Cj4+PiBJZiAnR0VORVJJQ19QSFlfTUlQSV9EUEhZJyBub3QgY29uZmlndXJl
ZCwgdGhlcmUgaXMgYW4gZXJyb3I6Cj4+Pgo+Pj4gZHJpdmVycy9zdGFnaW5nL21lZGlhL3JraXNw
MS9ya2lzcDEtaXNwLm86Cj4+PiDCoMKgwqDCoEluIGZ1bmN0aW9uIGBya2lzcDFfbWlwaV9jc2ky
X3N0YXJ0LmlzcmEuNSc6Cj4+PiBya2lzcDEtaXNwLmM6KC50ZXh0KzB4MTIzOCk6Cj4+PiDCoMKg
wqDCoHVuZGVmaW5lZCByZWZlcmVuY2UgdG8gYHBoeV9taXBpX2RwaHlfZ2V0X2RlZmF1bHRfY29u
ZmlnJwo+Pj4gbWFrZTogKioqIFt2bWxpbnV4XSBFcnJvciAxCj4+Pgo+Pj4gU2lnbmVkLW9mZi1i
eTogWmhhbmcgWGlhb3h1IDx6aGFuZ3hpYW94dTVAaHVhd2VpLmNvbT4KPj4+IC0tLQo+Pj4gwqAg
ZHJpdmVycy9zdGFnaW5nL21lZGlhL3JraXNwMS9LY29uZmlnIHwgMSArCj4+PiDCoCAxIGZpbGUg
Y2hhbmdlZCwgMSBpbnNlcnRpb24oKykKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFn
aW5nL21lZGlhL3JraXNwMS9LY29uZmlnIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL3JraXNwMS9L
Y29uZmlnCj4+PiBpbmRleCBiODU5YTQ5M2NhYmEuLjc4OGJjYjcwMzM3NiAxMDA2NDQKPj4+IC0t
LSBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya2lzcDEvS2NvbmZpZwo+Pj4gKysrIGIvZHJpdmVy
cy9zdGFnaW5nL21lZGlhL3JraXNwMS9LY29uZmlnCj4+PiBAQCAtOCw2ICs4LDcgQEAgY29uZmln
IFZJREVPX1JPQ0tDSElQX0lTUDEKPj4+IMKgwqDCoMKgwqAgc2VsZWN0IFZJREVPQlVGMl9WTUFM
TE9DCj4+PiDCoMKgwqDCoMKgIHNlbGVjdCBWNEwyX0ZXTk9ERQo+Pj4gwqDCoMKgwqDCoCBzZWxl
Y3QgUEhZX1JPQ0tDSElQX0RQSFlfUlgwCj4+PiArwqDCoMKgIHNlbGVjdCBHRU5FUklDX1BIWV9N
SVBJX0RQSFkKPj4+IMKgwqDCoMKgwqAgZGVmYXVsdCBuCj4+PiDCoMKgwqDCoMKgIGhlbHAKPj4+
IMKgwqDCoMKgwqDCoMKgIEVuYWJsZSB0aGlzIHRvIHN1cHBvcnQgdGhlIEltYWdlIFNpZ25hbCBQ
cm9jZXNzaW5nIChJU1ApIG1vZHVsZQo+Pj4KPj4KPj4gSG93IGFyZSB5b3UgcmVwcm9kdWNpbmcg
dGhpcz8KPj4KPj4gVklERU9fUk9DS0NISVBfSVNQMSBzZWxlY3RzIFBIWV9ST0NLQ0hJUF9EUEhZ
X1JYMAo+Pgo+PiBhbmQKPj4KPj4gUEhZX1JPQ0tDSElQX0RQSFlfUlgwIGFscmVhZHkgc2VsZWN0
cyBHRU5FUklDX1BIWV9NSVBJX0RQSFksCj4+Cj4+IFNvIGl0IHNob3VsZG4ndCBiZSBhIHByb2Js
ZW0gKHVubGVzcyBJIG1pc3VuZGVyc3Rvb2Qgc29tZXRoaW5nLCB3aGljaCBpcyBwcm9iYWJseSB0
aGUgY2FzZSkuCj4gWWVzLCB5b3UgYXJlIHJpZ2h0Lgo+IAo+IFRoaXMgY2FuIGJlIHJlcHJvZHVj
ZSB3aXRoIHRoZSBmb2xsb3dpbmcgY29uZmlnOgo+ICMgQ09ORklHX09GIGlzIG5vdCBzZXQKPiAj
Cj4gIyBzb2NfY2FtZXJhIHNlbnNvciBkcml2ZXJzCj4gIwo+IENPTkZJR19QSFlfUk9DS0NISVBf
RFBIWV9SWDA9eQo+IENPTkZJR19WSURFT19ST0NLQ0hJUF9JU1AxPXkKPiAKPiBJIHRoaW5rIHRo
ZSBjYXVzZSBvZiB0aGUgcHJvYmxlbSBpczoKPiAnQ09ORklHX1BIWV9ST0NLQ0hJUF9EUEhZX1JY
MCcgc2hvdWxkIGFsc28gYmUgZGVwZW5kZWQgb24gJ0NPTkZJR19PRicuCj4gCgpZb3UgcHJvYmFi
bHkgbWVhbiAnQ09ORklHX1ZJREVPX1JPQ0tDSElQX0lTUDEnIHJpZ2h0PyBBcyB0aGUgcGh5IGRy
aXZlciBhbHJlYWR5IGRlcGVuZHMgb24gT0YuClllcywgaWYgSSB1bmRlcnN0YW5kIGNvcnJlY3Rs
eSBpdCBzaG91bGQuIENvdWxkIHlvdSBzZW5kIGEgcGF0Y2hpbmcgYWRkaW5nIGl0PwoKVGhhbmtz
CkhlbGVuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRl
dmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2
ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1k
ZXZlbAo=

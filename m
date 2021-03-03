Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1135532B8B7
	for <lists+driverdev-devel@lfdr.de>; Wed,  3 Mar 2021 15:49:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3B6B66FAFC;
	Wed,  3 Mar 2021 14:49:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PYe89TAjxD5E; Wed,  3 Mar 2021 14:49:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5FC056F869;
	Wed,  3 Mar 2021 14:49:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A1FDE1BF2B3
 for <devel@linuxdriverproject.org>; Wed,  3 Mar 2021 14:48:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9186D400F5
 for <devel@linuxdriverproject.org>; Wed,  3 Mar 2021 14:48:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0Um9798J7aZk for <devel@linuxdriverproject.org>;
 Wed,  3 Mar 2021 14:48:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B0AAA400ED
 for <devel@driverdev.osuosl.org>; Wed,  3 Mar 2021 14:48:50 +0000 (UTC)
Received: from [IPv6:2a01:e0a:4cb:a870:30e8:5098:73c5:2bfe] (unknown
 [IPv6:2a01:e0a:4cb:a870:30e8:5098:73c5:2bfe])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 5F13F1F459FA;
 Wed,  3 Mar 2021 14:48:46 +0000 (GMT)
Subject: Re: [PATCH v3 4/5] media: hantro: Use reset driver
To: Philipp Zabel <p.zabel@pengutronix.de>, robh+dt@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com,
 ezequiel@collabora.com, mchehab@kernel.org, gregkh@linuxfoundation.org
References: <20210301151754.104749-1-benjamin.gaignard@collabora.com>
 <20210301151754.104749-5-benjamin.gaignard@collabora.com>
 <29bf66f4b531ec701e85c23a411e40e3621b0ff8.camel@pengutronix.de>
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Message-ID: <ef2b0aff-cca3-6c75-1f25-176332e3162b@collabora.com>
Date: Wed, 3 Mar 2021 15:48:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <29bf66f4b531ec701e85c23a411e40e3621b0ff8.camel@pengutronix.de>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-imx@nxp.com, kernel@pengutronix.de, kernel@collabora.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

CkxlIDAzLzAzLzIwMjEgw6AgMTU6MzksIFBoaWxpcHAgWmFiZWwgYSDDqWNyaXTCoDoKPiBPbiBN
b24sIDIwMjEtMDMtMDEgYXQgMTY6MTcgKzAxMDAsIEJlbmphbWluIEdhaWduYXJkIHdyb3RlOgo+
PiBSYXRoZXIgdXNlIGEgcmVzZXQgbGlrZSBmZWF0dXJlIGluc2lkZSB0aGUgZHJpdmVyIHVzZSB0
aGUgcmVzZXQKPj4gY29udHJvbGxlciBBUEkgdG8gZ2V0IHRoZSBzYW1lIHJlc3VsdC4KPj4KPj4g
U2lnbmVkLW9mZi1ieTogQmVuamFtaW4gR2FpZ25hcmQgPGJlbmphbWluLmdhaWduYXJkQGNvbGxh
Ym9yYS5jb20+Cj4+IC0tLQo+PiAgIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vS2NvbmZp
ZyAgICAgICAgfCAgMSArCj4+ICAgZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9pbXg4bV92
cHVfaHcuYyB8IDYxICsrKystLS0tLS0tLS0tLS0tLS0tLQo+PiAgIDIgZmlsZXMgY2hhbmdlZCwg
MTIgaW5zZXJ0aW9ucygrKSwgNTAgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL0tjb25maWcgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEv
aGFudHJvL0tjb25maWcKPj4gaW5kZXggNWI2Y2Y5ZjYyYjFhLi5kZDFkNGRkZTI2NTggMTAwNjQ0
Cj4+IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vS2NvbmZpZwo+PiArKysgYi9k
cml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL0tjb25maWcKPj4gQEAgLTIwLDYgKzIwLDcgQEAg
Y29uZmlnIFZJREVPX0hBTlRST19JTVg4TQo+PiAgIAlib29sICJIYW50cm8gVlBVIGkuTVg4TSBz
dXBwb3J0Igo+PiAgIAlkZXBlbmRzIG9uIFZJREVPX0hBTlRSTwo+PiAgIAlkZXBlbmRzIG9uIEFS
Q0hfTVhDIHx8IENPTVBJTEVfVEVTVAo+PiArCXNlbGVjdCBSRVNFVF9WUFVfSU1YOE1RCj4+ICAg
CWRlZmF1bHQgeQo+PiAgIAloZWxwCj4+ICAgCSAgRW5hYmxlIHN1cHBvcnQgZm9yIGkuTVg4TSBT
b0NzLgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9pbXg4bV92
cHVfaHcuYyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaW14OG1fdnB1X2h3LmMKPj4g
aW5kZXggYzIyMmRlMDc1ZWY0Li5kNWI0MzEyYjkzOTEgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMv
c3RhZ2luZy9tZWRpYS9oYW50cm8vaW14OG1fdnB1X2h3LmMKPj4gKysrIGIvZHJpdmVycy9zdGFn
aW5nL21lZGlhL2hhbnRyby9pbXg4bV92cHVfaHcuYwo+PiBAQCAtNyw0OSArNywxMiBAQAo+PiAg
IAo+PiAgICNpbmNsdWRlIDxsaW51eC9jbGsuaD4KPj4gICAjaW5jbHVkZSA8bGludXgvZGVsYXku
aD4KPj4gKyNpbmNsdWRlIDxsaW51eC9yZXNldC5oPgo+PiAgIAo+PiAgICNpbmNsdWRlICJoYW50
cm8uaCIKPj4gICAjaW5jbHVkZSAiaGFudHJvX2pwZWcuaCIKPj4gICAjaW5jbHVkZSAiaGFudHJv
X2cxX3JlZ3MuaCIKPj4gICAKPj4gLSNkZWZpbmUgQ1RSTF9TT0ZUX1JFU0VUCQkweDAwCj4+IC0j
ZGVmaW5lIFJFU0VUX0cxCQlCSVQoMSkKPj4gLSNkZWZpbmUgUkVTRVRfRzIJCUJJVCgwKQo+PiAt
Cj4+IC0jZGVmaW5lIENUUkxfQ0xPQ0tfRU5BQkxFCTB4MDQKPj4gLSNkZWZpbmUgQ0xPQ0tfRzEJ
CUJJVCgxKQo+PiAtI2RlZmluZSBDTE9DS19HMgkJQklUKDApCj4+IC0KPj4gLSNkZWZpbmUgQ1RS
TF9HMV9ERUNfRlVTRQkweDA4Cj4+IC0jZGVmaW5lIENUUkxfRzFfUFBfRlVTRQkJMHgwYwo+PiAt
I2RlZmluZSBDVFJMX0cyX0RFQ19GVVNFCTB4MTAKPj4gLQo+PiAtc3RhdGljIHZvaWQgaW14OG1f
c29mdF9yZXNldChzdHJ1Y3QgaGFudHJvX2RldiAqdnB1LCB1MzIgcmVzZXRfYml0cykKPj4gLXsK
Pj4gLQl1MzIgdmFsOwo+PiAtCj4+IC0JLyogQXNzZXJ0ICovCj4+IC0JdmFsID0gcmVhZGwodnB1
LT5jdHJsX2Jhc2UgKyBDVFJMX1NPRlRfUkVTRVQpOwo+PiAtCXZhbCAmPSB+cmVzZXRfYml0czsK
Pj4gLQl3cml0ZWwodmFsLCB2cHUtPmN0cmxfYmFzZSArIENUUkxfU09GVF9SRVNFVCk7Cj4+IC0K
Pj4gLQl1ZGVsYXkoMik7Cj4+IC0KPj4gLQkvKiBSZWxlYXNlICovCj4+IC0JdmFsID0gcmVhZGwo
dnB1LT5jdHJsX2Jhc2UgKyBDVFJMX1NPRlRfUkVTRVQpOwo+PiAtCXZhbCB8PSByZXNldF9iaXRz
Owo+PiAtCXdyaXRlbCh2YWwsIHZwdS0+Y3RybF9iYXNlICsgQ1RSTF9TT0ZUX1JFU0VUKTsKPj4g
LX0KPj4gLQo+PiAtc3RhdGljIHZvaWQgaW14OG1fY2xrX2VuYWJsZShzdHJ1Y3QgaGFudHJvX2Rl
diAqdnB1LCB1MzIgY2xvY2tfYml0cykKPj4gLXsKPj4gLQl1MzIgdmFsOwo+PiAtCj4+IC0JdmFs
ID0gcmVhZGwodnB1LT5jdHJsX2Jhc2UgKyBDVFJMX0NMT0NLX0VOQUJMRSk7Cj4+IC0JdmFsIHw9
IGNsb2NrX2JpdHM7Cj4+IC0Jd3JpdGVsKHZhbCwgdnB1LT5jdHJsX2Jhc2UgKyBDVFJMX0NMT0NL
X0VOQUJMRSk7Cj4gVGhlIHdheSBpdCBpcyBpbXBsZW1lbnRlZCBpbiB0aGUgcmVzZXQgZHJpdmVy
LCB0aGUgY2xvY2tzIGFyZSBub3cKPiB1bmdhdGVkIGJldHdlZW4gYXNzZXJ0IGFuZCBkZWFzc2Vy
dCBpbnN0ZWFkIG9mIGFmdGVyd2FyZHMuIElzIHRoaXMgb24KPiBwdXJwb3NlPwoKTm8gYW5kIHRo
YXQgY291bGQgYmUgY2hhbmdlZCBvbiBuZXh0IHZlcnNpb24uCgpCZW5qYW1pbgoKPgo+IHJlZ2Fy
ZHMKPiBQaGlsaXBwCj4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0
cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJp
dmVyZGV2LWRldmVsCg==

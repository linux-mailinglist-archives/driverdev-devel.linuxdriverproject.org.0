Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CD758CDD6A
	for <lists+driverdev-devel@lfdr.de>; Mon,  7 Oct 2019 10:33:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1852E2048F;
	Mon,  7 Oct 2019 08:33:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JSe2wqCSX69y; Mon,  7 Oct 2019 08:33:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 18EDB2002F;
	Mon,  7 Oct 2019 08:33:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id ABD011BF85D
 for <devel@linuxdriverproject.org>; Mon,  7 Oct 2019 08:33:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A49108798F
 for <devel@linuxdriverproject.org>; Mon,  7 Oct 2019 08:33:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wlFe4E+9yP-f for <devel@linuxdriverproject.org>;
 Mon,  7 Oct 2019 08:33:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from lb2-smtp-cloud7.xs4all.net (lb2-smtp-cloud7.xs4all.net
 [194.109.24.28])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C66408798B
 for <devel@driverdev.osuosl.org>; Mon,  7 Oct 2019 08:33:09 +0000 (UTC)
Received: from [IPv6:2001:983:e9a7:1:3d61:cdd2:8085:cc8]
 ([IPv6:2001:983:e9a7:1:3d61:cdd2:8085:cc8])
 by smtp-cloud7.xs4all.net with ESMTPA
 id HORviKciZjZ8vHORwi5MFm; Mon, 07 Oct 2019 10:33:07 +0200
Subject: Re: [PATCH v2 3/6] media: v4l2-mem2mem: add
 stateless_(try_)decoder_cmd ioctl helpers
To: =?UTF-8?Q?Jernej_=c5=a0krabec?= <jernej.skrabec@siol.net>
References: <20190929200023.215831-1-jernej.skrabec@siol.net>
 <20190929200023.215831-4-jernej.skrabec@siol.net>
 <6c7eeaf1-18bb-1c7e-7938-a3eb5af100b6@xs4all.nl>
 <2840939.OS9t7MgvnY@jernej-laptop>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Message-ID: <cce04c8e-8211-0fdc-bd62-650aceeb3af1@xs4all.nl>
Date: Mon, 7 Oct 2019 10:32:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <2840939.OS9t7MgvnY@jernej-laptop>
Content-Language: en-US
X-CMAE-Envelope: MS4wfGHd6OSD1FLSR8tNZsbhbHQNPfX75M0V7RaZdh19iAF3oqzeutMCalTO38S5dEhgGLX4RNVSgPgzT3/UuWcy7gPiwkkXJDytiGnBYCQOsv9aYCkRfAj2
 MnYF7yhdMrsRfwMYHBnn7TT/zRAtesy3YXAS248gZ38hAQybYnicKDyYEslBpaTrafJDsw7kwYi3dDSqZgVsPR3r5NKOG+bhH4pAPq2wfjxLDhcnSQUefHpl
 jHy7W1K6AhV1be+LnTLlP+yPDB6sMQxo3zpMvyqoNWFrO7FT4Dkzfgq4lpRWeLxSHccktEbx1Jdh70nkHglrJGvjHUaZTWjLmH3z/I6bsGQMidN4NLUX6pcm
 wf8Q3QejyUWYH1TsrAQ5dqw8D5ZMY2ryWhjTjrQgBynEaA7D2b7Ke9xqIZ3P8nJDLUhnV0h4XudXF3q8VCUu+wEKR4AhhpkmGvB/IlgSpGE8g5KD/qeBW/Gg
 tcJi6TZnMAthHh0RLe0YljVcVsszECBZhT3kJE+vFyYIButqKejfe/bTuibWqAtsUbAK8lfgxSV+/kmGGicRsX3F1TIjseu1TDf94nGT0sljSmVZRmm8oL7a
 gcnIlLSGO81YeTMEY93XIXNZhEEvMoafg2K8ogCL1I20mcPT8Qqf+hA3niWEV+vYC1vkI4cz9G3aaEDERofNo2CWMNgmPboc6s8im/JwDnd5J/rOPJxnRdvS
 RWXEKvLCLpc3Wl2wATEXIhb1K2JJBB0NIpmzQd828jZhc4AS61C4NW0/zr265E02pNE2p2TyK3UK344I3/RrFiV8HRwGjqFyXb/3IjK2c6/YUYTUb48XbSUR
 kijzBakVGAIeQv672mc=
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
Cc: devel@driverdev.osuosl.org, linux-media@vger.kernel.org, pawel@osciak.com,
 jonas@kwiboo.se, gregkh@linuxfoundation.org, wens@csie.org, mripard@kernel.org,
 tfiga@chromium.org, paul.kocialkowski@bootlin.com, kyungmin.park@samsung.com,
 boris.brezillon@collabora.com, linux-arm-kernel@lists.infradead.org,
 mchehab@kernel.org, ezequiel@collabora.com, linux-kernel@vger.kernel.org,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gMTAvNy8xOSA4OjAyIEFNLCBKZXJuZWogxaBrcmFiZWMgd3JvdGU6Cj4gRG5lIHBldGVrLCAw
NC4gb2t0b2JlciAyMDE5IG9iIDExOjIxOjEyIENFU1QgamUgSGFucyBWZXJrdWlsIG5hcGlzYWwo
YSk6Cj4+IE9uIDkvMjkvMTkgMTA6MDAgUE0sIEplcm5laiBTa3JhYmVjIHdyb3RlOgo+Pj4gVGhl
c2UgaGVscGVycyBhcmUgdXNlZCBieSBzdGF0ZWxlc3MgY29kZWNzIHdoZW4gdGhleSBzdXBwb3J0
IG11bHRpcGxlCj4+PiBzbGljZXMgcGVyIGZyYW1lIGFuZCBob2xkIGNhcHR1cmUgYnVmZmVyIGZs
YWcgaXMgc2V0LiBJdCdzIGV4cGVjdGVkIHRoYXQKPj4+IGFsbCBzdWNoIGNvZGVjcyB3aWxsIHVz
ZSB0aGlzIGNvZGUuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogSmVybmVqIFNrcmFiZWMgPGplcm5l
ai5za3JhYmVjQHNpb2wubmV0Pgo+Pj4gLS0tCj4+Pgo+Pj4gIGRyaXZlcnMvbWVkaWEvdjRsMi1j
b3JlL3Y0bDItbWVtMm1lbS5jIHwgMzUgKysrKysrKysrKysrKysrKysrKysrKysrKysKPj4+ICBp
bmNsdWRlL21lZGlhL3Y0bDItbWVtMm1lbS5oICAgICAgICAgICB8ICA0ICsrKwo+Pj4gIDIgZmls
ZXMgY2hhbmdlZCwgMzkgaW5zZXJ0aW9ucygrKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L21lZGlhL3Y0bDItY29yZS92NGwyLW1lbTJtZW0uYwo+Pj4gYi9kcml2ZXJzL21lZGlhL3Y0bDIt
Y29yZS92NGwyLW1lbTJtZW0uYyBpbmRleCAxOTkzN2RkM2M2ZjYuLjI2NzdhMDdlNGM5Ygo+Pj4g
MTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL21lZGlhL3Y0bDItY29yZS92NGwyLW1lbTJtZW0uYwo+
Pj4gKysrIGIvZHJpdmVycy9tZWRpYS92NGwyLWNvcmUvdjRsMi1tZW0ybWVtLmMKPj4+IEBAIC0x
MTU0LDYgKzExNTQsNDEgQEAgaW50IHY0bDJfbTJtX2lvY3RsX3RyeV9kZWNvZGVyX2NtZChzdHJ1
Y3QgZmlsZQo+Pj4gKmZpbGUsIHZvaWQgKmZoLD4gCj4+PiAgfQo+Pj4gIEVYUE9SVF9TWU1CT0xf
R1BMKHY0bDJfbTJtX2lvY3RsX3RyeV9kZWNvZGVyX2NtZCk7Cj4+Pgo+Pj4gK2ludCB2NGwyX20y
bV9pb2N0bF9zdGF0ZWxlc3NfdHJ5X2RlY29kZXJfY21kKHN0cnVjdCBmaWxlICpmaWxlLCB2b2lk
ICpmaCwKPj4+ICsJCQkJCSAgICAgc3RydWN0IAo+IHY0bDJfZGVjb2Rlcl9jbWQgKmRjKQo+Pj4g
K3sKPj4+ICsJaWYgKGRjLT5jbWQgIT0gVjRMMl9ERUNfQ01EX0ZMVVNIKQo+Pj4gKwkJcmV0dXJu
IC1FSU5WQUw7Cj4+PiArCj4+PiArCWRjLT5mbGFncyA9IDA7Cj4+PiArCj4+PiArCXJldHVybiAw
Owo+Pj4gK30KPj4+ICtFWFBPUlRfU1lNQk9MX0dQTCh2NGwyX20ybV9pb2N0bF9zdGF0ZWxlc3Nf
dHJ5X2RlY29kZXJfY21kKTsKPj4+ICsKPj4+ICtpbnQgdjRsMl9tMm1faW9jdGxfc3RhdGVsZXNz
X2RlY29kZXJfY21kKHN0cnVjdCBmaWxlICpmaWxlLCB2b2lkICpwcml2LAo+Pj4gKwkJCQkJIHN0
cnVjdCAKPiB2NGwyX2RlY29kZXJfY21kICpkYykKPj4+ICt7Cj4+PiArCXN0cnVjdCB2NGwyX2Zo
ICpmaCA9IGZpbGUtPnByaXZhdGVfZGF0YTsKPj4+ICsJc3RydWN0IHZiMl92NGwyX2J1ZmZlciAq
b3V0X3ZiLCAqY2FwX3ZiOwo+Pj4gKwlpbnQgcmV0Owo+Pj4gKwo+Pj4gKwlyZXQgPSB2NGwyX20y
bV9pb2N0bF9zdGF0ZWxlc3NfdHJ5X2RlY29kZXJfY21kKGZpbGUsIHByaXYsIGRjKTsKPj4+ICsJ
aWYgKHJldCA8IDApCj4+PiArCQlyZXR1cm4gcmV0Owo+Pj4gKwo+Pj4gKwlvdXRfdmIgPSB2NGwy
X20ybV9sYXN0X3NyY19idWYoZmgtPm0ybV9jdHgpOwo+Pj4gKwljYXBfdmIgPSB2NGwyX20ybV9s
YXN0X2RzdF9idWYoZmgtPm0ybV9jdHgpOwo+Pgo+PiBJIHRoaW5rIHRoaXMgc2hvdWxkIGJlIHY0
bDJfbTJtX25leHRfZHN0X2J1Zi4gSWYgbXVsdGlwbGUgY2FwdHVyZSBidWZmZXJzCj4+IHdlcmUg
cXVldWVkIHVwLCB0aGVuIGl0IGNhbiBvbmx5IGJlIHRoZSBmaXJzdCBjYXB0dXJlIGJ1ZmZlciB0
aGF0IGNhbiBiZQo+PiAnSEVMRCcuCj4gCj4gSSdtIHByZXR0eSBzdXJlIHY0bDJfbTJtX2xhc3Rf
ZHN0X2J1ZigpIGlzIGNvcnJlY3QuIFdlIHdhbnQgdG8gYWZmZWN0IGxhc3Qgam9iIAo+IGluIHRo
ZSBxdWV1ZSwgYWxsIGpvYnMgYmVmb3JlIGFyZSBhbHJlYWR5IHByb3Blcmx5IGhhbmRsZWQgYnkg
Y29tcGFyaW5nIAo+IHRpbWVzdGFtcHMuCgpZb3UncmUgYWJzb2x1dGVseSByaWdodC4KCj4gCj4+
Cj4+IFRoaXMgbWlnaHQgc29sdmUgdGhlIHJhY2UgY29uZGl0aW9uIHlvdSBzYXcgd2l0aCBmZm1w
ZWcuCj4gCj4gVGhpcyBhY3R1YWxseSBkb2Vzbid0IGNoYW5nZSBhbnl0aGluZy4gZmZtcGVnIGN1
cnJlbnRseSBxdWV1ZXMgb25seSBvbmUgam9iIGFuZCAKPiB0aGVuIHdhaXRzIHVudGlsIGl0J3Mg
ZXhlY3V0ZWQuIEluIHRoaXMgY2FzZSBpdCBhY3R1YWxseSBkb2Vzbid0IG1hdHRlciBpZiAKPiAi
bGFzdCIgb3IgIm5leHQiIHZhcmlhbnQgaXMgdXNlZC4KCkNhbiB5b3UgZGVidWcgdGhpcyBhIGJp
dCBmdXJ0aGVyPyBJIGRvbid0IHdhbnQgdG8gbWVyZ2UgdGhpcyB1bmxlc3Mgd2Uga25vdyB3aGF0
J3MKZ29pbmcgd3Jvbmcgd2l0aCBmZm1wZWcuCgpJIHN1c3BlY3QgaXQgaXMgYSByYWNlIGNvbmRp
dGlvbi4gSSdsbCByZXBseSB0byBwYXRjaCA2LzYgd2l0aCBtb3JlIGluZm8uCgpSZWdhcmRzLAoK
CUhhbnMKCj4gCj4gQmVzdCByZWdhcmRzLAo+IEplcm5lago+IAo+Pgo+PiBSZWdhcmRzLAo+Pgo+
PiAJSGFucwo+Pgo+Pj4gKwo+Pj4gKwlpZiAob3V0X3ZiKQo+Pj4gKwkJb3V0X3ZiLT5mbGFncyAm
PSB+VjRMMl9CVUZfRkxBR19NMk1fSE9MRF9DQVBUVVJFX0JVRjsKPj4+ICsJZWxzZSBpZiAoY2Fw
X3ZiICYmIGNhcF92Yi0+aXNfaGVsZCkKPj4+ICsJCXY0bDJfbTJtX2J1Zl9kb25lKGNhcF92Yiwg
VkIyX0JVRl9TVEFURV9ET05FKTsKPj4+ICsKPj4+ICsJcmV0dXJuIDA7Cj4+PiArfQo+Pj4gK0VY
UE9SVF9TWU1CT0xfR1BMKHY0bDJfbTJtX2lvY3RsX3N0YXRlbGVzc19kZWNvZGVyX2NtZCk7Cj4+
PiArCj4+Pgo+Pj4gIC8qCj4+PiAgCj4+PiAgICogdjRsMl9maWxlX29wZXJhdGlvbnMgaGVscGVy
cy4gSXQgaXMgYXNzdW1lZCBoZXJlIHNhbWUgbG9jayBpcyB1c2VkCj4+PiAgICogZm9yIHRoZSBv
dXRwdXQgYW5kIHRoZSBjYXB0dXJlIGJ1ZmZlciBxdWV1ZS4KPj4+Cj4+PiBkaWZmIC0tZ2l0IGEv
aW5jbHVkZS9tZWRpYS92NGwyLW1lbTJtZW0uaCBiL2luY2x1ZGUvbWVkaWEvdjRsMi1tZW0ybWVt
LmgKPj4+IGluZGV4IGM5ZmE5NmM4ZWVkMS4uOGFlMmY1NmM3ZmEzIDEwMDY0NAo+Pj4gLS0tIGEv
aW5jbHVkZS9tZWRpYS92NGwyLW1lbTJtZW0uaAo+Pj4gKysrIGIvaW5jbHVkZS9tZWRpYS92NGwy
LW1lbTJtZW0uaAo+Pj4gQEAgLTcxNCw2ICs3MTQsMTAgQEAgaW50IHY0bDJfbTJtX2lvY3RsX3Ry
eV9lbmNvZGVyX2NtZChzdHJ1Y3QgZmlsZSAqZmlsZSwKPj4+IHZvaWQgKmZoLD4gCj4+PiAgCQkJ
CSAgIHN0cnVjdCB2NGwyX2VuY29kZXJfY21kICplYyk7Cj4+PiAgCj4+PiAgaW50IHY0bDJfbTJt
X2lvY3RsX3RyeV9kZWNvZGVyX2NtZChzdHJ1Y3QgZmlsZSAqZmlsZSwgdm9pZCAqZmgsCj4+PiAg
Cj4+PiAgCQkJCSAgIHN0cnVjdCB2NGwyX2RlY29kZXJfY21kICpkYyk7Cj4+Pgo+Pj4gK2ludCB2
NGwyX20ybV9pb2N0bF9zdGF0ZWxlc3NfdHJ5X2RlY29kZXJfY21kKHN0cnVjdCBmaWxlICpmaWxl
LCB2b2lkICpmaCwKPj4+ICsJCQkJCSAgICAgc3RydWN0IAo+IHY0bDJfZGVjb2Rlcl9jbWQgKmRj
KTsKPj4+ICtpbnQgdjRsMl9tMm1faW9jdGxfc3RhdGVsZXNzX2RlY29kZXJfY21kKHN0cnVjdCBm
aWxlICpmaWxlLCB2b2lkICpwcml2LAo+Pj4gKwkJCQkJIHN0cnVjdCAKPiB2NGwyX2RlY29kZXJf
Y21kICpkYyk7Cj4+Pgo+Pj4gIGludCB2NGwyX20ybV9mb3BfbW1hcChzdHJ1Y3QgZmlsZSAqZmls
ZSwgc3RydWN0IHZtX2FyZWFfc3RydWN0ICp2bWEpOwo+Pj4gIF9fcG9sbF90IHY0bDJfbTJtX2Zv
cF9wb2xsKHN0cnVjdCBmaWxlICpmaWxlLCBwb2xsX3RhYmxlICp3YWl0KTsKPiAKPiAKPiAKPiAK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1h
aWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYu
bGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=

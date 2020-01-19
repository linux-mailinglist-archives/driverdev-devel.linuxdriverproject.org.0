Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61851141EC6
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 Jan 2020 16:14:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0A01B87463;
	Sun, 19 Jan 2020 15:14:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CkJMAQDu4A9x; Sun, 19 Jan 2020 15:14:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 90D788734E;
	Sun, 19 Jan 2020 15:14:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A7BEE1BF352
 for <devel@linuxdriverproject.org>; Sun, 19 Jan 2020 15:14:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9C10F814A3
 for <devel@linuxdriverproject.org>; Sun, 19 Jan 2020 15:14:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b-RSSx-thzc4 for <devel@linuxdriverproject.org>;
 Sun, 19 Jan 2020 15:14:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8724581414
 for <devel@driverdev.osuosl.org>; Sun, 19 Jan 2020 15:14:19 +0000 (UTC)
Received: from [IPv6:2804:431:e7cc:d244:9e0a:75ab:540f:cbbe] (unknown
 [IPv6:2804:431:e7cc:d244:9e0a:75ab:540f:cbbe])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: koike)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 9302C28A0E6;
 Sun, 19 Jan 2020 15:14:13 +0000 (GMT)
Subject: Re: [PATCH] staging: media: rkisp1: make links immutable by default
To: =?UTF-8?Q?Niklas_S=c3=b6derlund?= <niklas.soderlund@ragnatech.se>
References: <20200117201218.3745311-1-helen.koike@collabora.com>
 <20200117223634.GJ1074550@oden.dyn.berto.se>
From: Helen Koike <helen.koike@collabora.com>
Autocrypt: addr=helen.koike@collabora.com; keydata=
 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
Message-ID: <8011cc70-a32c-efe3-817d-6a17ae672fd4@collabora.com>
Date: Sun, 19 Jan 2020 12:14:10 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20200117223634.GJ1074550@oden.dyn.berto.se>
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
Cc: devel@driverdev.osuosl.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 tfiga@chromium.org, laurent.pinchart@ideasonboard.com,
 hverkuil-cisco@xs4all.nl, kernel@collabora.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

CgpPbiAxLzE3LzIwIDg6MzYgUE0sIE5pa2xhcyBTw7ZkZXJsdW5kIHdyb3RlOgo+IEhpIEhlbGVu
LAo+IAo+IFRoYW5rcyBmb3IgeW91ciB3b3JrLgo+IAo+IE9uIDIwMjAtMDEtMTcgMTc6MTI6MTgg
LTAzMDAsIEhlbGVuIEtvaWtlIHdyb3RlOgo+PiBUaGUgb25seSBwbGFjZXMgd2hpY2ggbWFrZSBz
ZXNlIHRvIGFsbG93IHVzZXJzIHRvIGVuYWJsZSBvciBkaXNhYmxlCj4+IGxpbmtzIGFyZToKPj4K
Pj4gKiBiZXR3ZWVuIHNlbnNvcnMgYW5kIGlzcDoKPj4gU28gdXNlcnMgY2FuIHNlbGVjdCB3aGlj
aCBzZW5zb3Igc2hvdWxkIGJlIHVzZWQgd2hpbGUgc3RyZWFtaW5nCj4+Cj4+ICogYmV0d2VlbiBp
c3AgYW5kIHRoZSByZXNpemVyczoKPj4gICAgICAgICAgICAgICB8Cj4+ICAgICAgICAgICAgICAg
diBoZXJlCj4+IHJraXNwMV9pc3A6MiAtPiBya2lzcDFfcmVzaXplcl9tYWlucGF0aCAtPiBya2lz
cDFfbWFpbnBhdGggKGNhcHR1cmUpCj4+ICAgICAgICAgICAgIFwtPiBya2lzcDFfcmVzaXplcl9z
ZWxmcGF0aCAtPiBya2lzcDFfc2VsZnBhdGggKGNhcHR1cmUpCj4+ICAgICAgICAgICAgICAgXiBo
ZXJlCj4+ICAgICAgICAgICAgICAgfAo+Pgo+PiBTbyB1c2VycyBjYW4gZGlzYWJsZSBvbmUgb2Yg
dGhlIGNhcHR1cmUgcGF0aHMgd2hlbiB1bnVzZWQsIHRvIGF2b2lkCj4+IHdvcnJpbmcgYWJvdXQg
bWF0Y2hpbmcgZm9ybWF0cy4KPj4KPj4gTWFrZSB0aGUgZm9sbG93aW5nIGxpbmtzIGltbXV0YWJs
ZSB0byBzaW1wbGlmeSB1c2Vyc3BhY2U6Cj4+Cj4+IHJraXNwMV9yZXNpemVyX21haW5wYXRoIC0+
IHJraXNwMV9tYWlucGF0aAo+PiBya2lzcDFfcmVzaXplcl9zZWxmcGF0aCAtPiBya2lzcDFfc2Vs
ZnBhdGgKPj4gcmtpc3AxX3BhcmFtcyAgICAgICAgICAgLT4gcmtpc3AxX2lzcAo+PiBya2lzcDFf
aXNwICAgICAgICAgICAgICAtPiBya2lzcDFfc3RhdHMKPj4KPj4gU2lnbmVkLW9mZi1ieTogSGVs
ZW4gS29pa2UgPGhlbGVuLmtvaWtlQGNvbGxhYm9yYS5jb20+Cj4+Cj4+IC0tLQo+PiBUaGlzIGlz
IHRoZSB0b3BvbG9neSBncmFwaCBhZnRlciBkaXNhYmxpbmcgYWxsIHRoZSBsaW5rcyB3aXRoCj4+
IG1lZGlhIC1yCj4+IGh0dHA6Ly9jb2wubGEvcmtpc3AxaW1tdXRhYmxlCj4+Cj4+IERhc2hlZCBs
aW5rcyBhcmUgdGhlIG9ubHkgb25lIGNhbiBjYW4gYmUgZW5hYmxlZC9kaXNhYmxlZCwgdGhlIG90
aGVycwo+PiBhcmUgaW1tdXRhYmxlLgo+Pgo+PiAgZHJpdmVycy9zdGFnaW5nL21lZGlhL3JraXNw
MS9ya2lzcDEtZGV2LmMgfCA1ICsrKy0tCj4+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25z
KCspLCAyIGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL21l
ZGlhL3JraXNwMS9ya2lzcDEtZGV2LmMgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmtpc3AxL3Jr
aXNwMS1kZXYuYwo+PiBpbmRleCA1NTgxMjZlNjY0NjUuLjQwMzBkNWU3MWFmMSAxMDA2NDQKPj4g
LS0tIGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL3JraXNwMS9ya2lzcDEtZGV2LmMKPj4gKysrIGIv
ZHJpdmVycy9zdGFnaW5nL21lZGlhL3JraXNwMS9ya2lzcDEtZGV2LmMKPj4gQEAgLTE0NSwxNCAr
MTQ1LDE1IEBAIHN0YXRpYyBpbnQgcmtpc3AxX2NyZWF0ZV9saW5rcyhzdHJ1Y3Qgcmtpc3AxX2Rl
dmljZSAqcmtpc3AxKQo+PiAgCQlmbGFncyA9IDA7Cj4+ICAJfQo+PiAgCj4+IC0JZmxhZ3MgPSBN
RURJQV9MTktfRkxfRU5BQkxFRDsKPj4gKwlmbGFncyA9IE1FRElBX0xOS19GTF9FTkFCTEVEIHwg
TUVESUFfTE5LX0ZMX0lNTVVUQUJMRTsKPj4gIAo+PiAgCS8qIGNyZWF0ZSBJU1AtPlJTWi0+Q0FQ
IGxpbmtzICovCj4+ICAJZm9yIChpID0gMDsgaSA8IDI7IGkrKykgewo+PiAgCQlzb3VyY2UgPSAm
cmtpc3AxLT5pc3Auc2QuZW50aXR5Owo+PiAgCQlzaW5rID0gJnJraXNwMS0+cmVzaXplcl9kZXZz
W2ldLnNkLmVudGl0eTsKPiAKPiBuaXQ6IFRvIGtlZXAgd2l0aCB0aGUgc3R5bGUgb2YgdGhlIHJl
c3Qgb2YgdGhlIGZ1bmN0aW9uIEkgd291bGQgc2V0IAo+IGZsYWdzIGhlcmUgYW5kIG9uY2UgbW9y
ZSBiZWxsb3cgaW4gdGhlIHNhbWUgbG9vcC4KCgpEbyB5b3UgbWVhbiB0aGlzOiBodHRwOi8vaXgu
aW8vMjdQbSA/CmhtbSwgSSBkb24ndCBzZWUgd2h5IHRvIGFzc2lnbiBmbGFncyBpbnNpZGUgdGhl
IGxvb3AuCnRoZSBwcmV2aW91cyBsb29wIGlzIGEgZGlmZmVyZW50IGNhc2UsIHNpbmNlIGl0IHNl
dHMgdGhlIGxpbmsKdG8gdGhlIGZpcnN0IHNlbnNvciBhcyBlbmFibGVkLCBidXQgdGhlIG90aGVy
IHNlbnNvciBsaW5rcyBhcmUgZGlzYWJsZWQKKGluIGNhc2UgdGhlcmUgYXJlIG1vcmUgdGhlbiBv
bmUgbGluaykuCgo+IAo+IFdpdGggb3Igd2l0aG91dCB0aGlzIGZpeGVkLAo+IAo+IFJldmlld2Vk
LWJ5OiBOaWtsYXMgU8O2ZGVybHVuZCA8bmlrbGFzLnNvZGVybHVuZEByYWduYXRlY2guc2U+CgpU
aGFua3MsCkhlbGVuCgo+IAo+PiAgCQlyZXQgPSBtZWRpYV9jcmVhdGVfcGFkX2xpbmsoc291cmNl
LCBSS0lTUDFfSVNQX1BBRF9TT1VSQ0VfVklERU8sCj4+IC0JCQkJCSAgICBzaW5rLCBSS0lTUDFf
UlNaX1BBRF9TSU5LLCBmbGFncyk7Cj4+ICsJCQkJCSAgICBzaW5rLCBSS0lTUDFfUlNaX1BBRF9T
SU5LLAo+PiArCQkJCQkgICAgTUVESUFfTE5LX0ZMX0VOQUJMRUQpOwo+PiAgCQlpZiAocmV0KQo+
PiAgCQkJcmV0dXJuIHJldDsKPj4gIAo+PiAtLSAKPj4gMi4yNC4wCj4+Cj4gCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApk
ZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJw
cm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=

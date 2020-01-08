Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 46D8D133C6C
	for <lists+driverdev-devel@lfdr.de>; Wed,  8 Jan 2020 08:48:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 64E1085C62;
	Wed,  8 Jan 2020 07:48:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W3MoqagdK4Hz; Wed,  8 Jan 2020 07:48:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 146D785A00;
	Wed,  8 Jan 2020 07:48:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 56AA11BF27F
 for <devel@linuxdriverproject.org>; Wed,  8 Jan 2020 07:48:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4B96E86497
 for <devel@linuxdriverproject.org>; Wed,  8 Jan 2020 07:48:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nJopmkOdffHK for <devel@linuxdriverproject.org>;
 Wed,  8 Jan 2020 07:48:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from lb2-smtp-cloud9.xs4all.net (lb2-smtp-cloud9.xs4all.net
 [194.109.24.26])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2E96586457
 for <devel@driverdev.osuosl.org>; Wed,  8 Jan 2020 07:48:32 +0000 (UTC)
Received: from [192.168.2.10] ([62.249.185.68])
 by smtp-cloud9.xs4all.net with ESMTPA
 id p64iiZca3T6sRp64niGj5G; Wed, 08 Jan 2020 08:48:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s1;
 t=1578469711; bh=xtNwc5IfKrwfQUKrHwCTvQzYkoWCY+xfQHgdy/TuFfA=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=cKsmt6ptKe8rmZ3M5DfNPORxnghlyTukfpvDVlr5xs958YNpwd8sawStoYR631BzY
 3AN11LRYWIw7OSu4i/7ecVereC+lCfHOPm+8jFTZ/eSwMJQbdSmfUqhyiJ1f7B1zrt
 W5uISl8yEH1JiPB/WeoI4dazTgE6jgSErj2gzBoFsA80Na4P8NHmRPYLYG/TW0vi36
 l7eLp8EovbH9v2iXTuESbD/hGHwd887/rdX16KPP3aeQ/GOoHV9WywY9srl+RHCIoR
 Z1AS7b8J8YU+uvSOJq7Oog6fVY2UGObK2BMVuqPwtId0KzOkUWAcbzscX9Ixs94GR9
 zPQq+egnV5rbg==
Subject: Re: [PATCH v2 2/4] media: cedrus: hevc: Add support for scaling matrix
To: =?UTF-8?Q?Jernej_=c5=a0krabec?= <jernej.skrabec@siol.net>,
 mchehab@kernel.org, mripard@kernel.org, paul.kocialkowski@bootlin.com
References: <20191213160428.54303-1-jernej.skrabec@siol.net>
 <20191213160428.54303-3-jernej.skrabec@siol.net>
 <4ac91ed5-a220-6a04-b1da-de27a306f8f2@xs4all.nl>
 <2627039.Y6S9NjorxK@jernej-laptop>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <96703589-15c1-0ce8-10dc-81996cac9875@xs4all.nl>
Date: Wed, 8 Jan 2020 08:48:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <2627039.Y6S9NjorxK@jernej-laptop>
Content-Language: en-US
X-CMAE-Envelope: MS4wfCPPd8rbiZD36So4MR0BPIFX90J8IGWdlAbPEr1wlkVaRNcyZs7sjBwhi76joK6Pl2987dpiW7hadXr971MUho0RLuWfygrekxWuNkn08ZgadsBkn8vv
 ewxVX3JNjBpQw4bfd05TUdeDHSnoGpB1QuifsgI6LR7yBjF7EEpfU02eajqtHNbrORtbOHOirWFJTcuddAxPgvetNBkzypDTbDSFC2uCLHvBsjpkP8p/KBaM
 Q4Ya/CJOFmLiMgA7UKoF7lhNUQ1cX7WIETzySN9jIWjC2SfILbGI7uzDL9xyJB5vsOAj7Ri3x6orEJJ05gCU4yEonD/00RFi0yHNcoyLsZB/FpyPkU0n/onD
 OMjeORGX3h8ao6vTzJsup0ka6s6XX23aWEVG33DMaMKzFUGY304H1WwTruoES2OOXUrc6+E8N2bb8oLYj7vKZ2mqsWJ8PCb07JHNzxQ6Hj2ZmfAZASCbxd0c
 C4k3DLVDfB6wyjfCl4Q4hea6VElGPeMGlkuhWmyQYsXlbUm2WH3Cti8pVpY=
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
 linux-kernel@vger.kernel.org, wens@csie.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gMS83LzIwIDY6MTAgUE0sIEplcm5laiDFoGtyYWJlYyB3cm90ZToKPiBIaSEKPiAKPiBEbmUg
dG9yZWssIDA3LiBqYW51YXIgMjAyMCBvYiAxNjowMToxNiBDRVQgamUgSGFucyBWZXJrdWlsIG5h
cGlzYWwoYSk6Cj4+IE9uIDEyLzEzLzE5IDU6MDQgUE0sIEplcm5laiBTa3JhYmVjIHdyb3RlOgo+
Pj4gSEVWQyBmcmFtZXMgbWF5IHVzZSBzY2FsaW5nIGxpc3QgZmVhdHVyZS4gQWRkIHN1cHBvcnQg
Zm9yIGl0Lgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IEplcm5laiBTa3JhYmVjIDxqZXJuZWouc2ty
YWJlY0BzaW9sLm5ldD4KPj4+IC0tLQo+Pj4KPj4+ICBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvc3Vu
eGkvY2VkcnVzL2NlZHJ1cy5jICAgfCAgNyArKwo+Pj4gIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9z
dW54aS9jZWRydXMvY2VkcnVzLmggICB8ICAxICsKPj4+ICAuLi4vc3RhZ2luZy9tZWRpYS9zdW54
aS9jZWRydXMvY2VkcnVzX2RlYy5jICAgfCAgMiArCj4+PiAgLi4uL3N0YWdpbmcvbWVkaWEvc3Vu
eGkvY2VkcnVzL2NlZHJ1c19oMjY1LmMgIHwgNzAgKysrKysrKysrKysrKysrKysrLQo+Pj4gIC4u
Li9zdGFnaW5nL21lZGlhL3N1bnhpL2NlZHJ1cy9jZWRydXNfcmVncy5oICB8ICAyICsKPj4+ICA1
IGZpbGVzIGNoYW5nZWQsIDgxIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPj4+Cj4+PiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL3N1bnhpL2NlZHJ1cy9jZWRydXMuYwo+
Pj4gYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvc3VueGkvY2VkcnVzL2NlZHJ1cy5jIGluZGV4Cj4+
PiBjNmRkZDQ2ZWZmODIuLmJmNjhiYzZiMjBjOCAxMDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMvc3Rh
Z2luZy9tZWRpYS9zdW54aS9jZWRydXMvY2VkcnVzLmMKPj4+ICsrKyBiL2RyaXZlcnMvc3RhZ2lu
Zy9tZWRpYS9zdW54aS9jZWRydXMvY2VkcnVzLmMKPj4+IEBAIC0xMTYsNiArMTE2LDEzIEBAIHN0
YXRpYyBjb25zdCBzdHJ1Y3QgY2VkcnVzX2NvbnRyb2wgY2VkcnVzX2NvbnRyb2xzW10KPj4+ID0g
ez4gCj4+PiAgCQkuY29kZWMJCT0gQ0VEUlVTX0NPREVDX0gyNjUsCj4+PiAgCQkucmVxdWlyZWQJ
PSB0cnVlLAo+Pj4gIAkKPj4+ICAJfSwKPj4+Cj4+PiArCXsKPj4+ICsJCS5jZmcgPSB7Cj4+PiAr
CQkJLmlkCT0gCj4gVjRMMl9DSURfTVBFR19WSURFT19IRVZDX1NDQUxJTkdfTUFUUklYLAo+Pj4g
KwkJfSwKPj4+ICsJCS5jb2RlYwkJPSBDRURSVVNfQ09ERUNfSDI2NSwKPj4+ICsJCS5yZXF1aXJl
ZAk9IHRydWUsCj4+Cj4+IFNob3VsZCB0aGlzIGJlIHRydWU/IFRoaXMgbWVhbnMgdGhhdCBleGlz
dGluZyBhcHBsaWNhdGlvbnMgYXJlIG5vdwo+PiBzdWRkZW5seSByZXF1aXJlZCB0byBhbHdheXMg
cGFzcyB0aGUgc2NhbGluZyBtYXRyaXggZm9yIGV2ZXJ5IGJ1ZmZlci4KPj4KPj4gRXNwZWNpYWxs
eSBzaW5jZSB0aGUgY29tbWl0IGxvZyBzYXlzOiAnSEVWQyBmcmFtZXMgKm1heSogdXNlIHNjYWxp
bmcgbGlzdAo+PiBmZWF0dXJlJywgaW5kaWNhdGluZyB0aGF0IHRoaXMgaXMgYW4gb3B0aW9uYWwg
ZmVhdHVyZS4KPiAKPiBUcnVlLiBDYW4geW91IGZpeCB0aGlzIHdoZW4gYXBwbHlpbmcgaWYgdGhp
cyBpcyB0aGUgb25seSBpc3N1ZT8KCkknbGwgZG8gdGhhdC4KClJlZ2FyZHMsCgoJSGFucwpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5n
IGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4
ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK

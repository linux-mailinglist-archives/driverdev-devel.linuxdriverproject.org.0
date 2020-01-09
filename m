Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 54D25135C7B
	for <lists+driverdev-devel@lfdr.de>; Thu,  9 Jan 2020 16:19:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A271021539;
	Thu,  9 Jan 2020 15:19:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id queXpmh2n2kC; Thu,  9 Jan 2020 15:19:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9402621515;
	Thu,  9 Jan 2020 15:19:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C30031BF421
 for <devel@linuxdriverproject.org>; Thu,  9 Jan 2020 15:19:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BFD6184536
 for <devel@linuxdriverproject.org>; Thu,  9 Jan 2020 15:19:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JNjMBXrq6xlJ for <devel@linuxdriverproject.org>;
 Thu,  9 Jan 2020 15:19:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from lb2-smtp-cloud9.xs4all.net (lb2-smtp-cloud9.xs4all.net
 [194.109.24.26])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 320D486081
 for <devel@driverdev.osuosl.org>; Thu,  9 Jan 2020 15:19:42 +0000 (UTC)
Received: from [192.168.2.10] ([62.249.185.68])
 by smtp-cloud9.xs4all.net with ESMTPA
 id pZasihcxsT6sRpZaviL3MC; Thu, 09 Jan 2020 16:19:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s1;
 t=1578583180; bh=VNEi5PU7IG9NfDb52u/2pR82DSRm5KClWM9VRFCCDUo=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=RhIcuWxZ9+hiD/y9DDq/k2ryV450adLGGpoEY9pPMi8aRaHitS67FsDwMo70iZ2vP
 g8sdS0liOzLVh9KB1/CvPIJyx8nP8CGXbSYUurfalOGLRqbgHMnV1GzGoHwSzPC/aR
 /MWedl7UUKNI1hNfahNa/XkqD0MLopaU0EbZaAsCO/WO/SSWvKQWgnj6i8aOGe1SOC
 acrckfmsfDrt8iAiOE91+OHWhrhBAbu3AkP0TbJZ5RwGiaTFdfFsSKaCoDdLu6GFfg
 gr19sPlqN/gDm2AwtMSTOiQIlkHdEhe4EghCb1yWi4500WH5Qil6kasAeWcRIlxSif
 d0mZY5Li0VXxA==
Subject: Re: [PATCH v2 1/4] media: uapi: hevc: Add scaling matrix control
To: =?UTF-8?Q?Jernej_=c5=a0krabec?= <jernej.skrabec@siol.net>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>
References: <20191213160428.54303-1-jernej.skrabec@siol.net>
 <20200108151157.17cf9774@kernel.org> <20200108144336.GB229960@aptenodytes>
 <3030664.44csPzL39Z@jernej-laptop>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <16682efd-763a-8cb1-c5ee-b48ee6063c6b@xs4all.nl>
Date: Thu, 9 Jan 2020 16:19:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <3030664.44csPzL39Z@jernej-laptop>
Content-Language: en-US
X-CMAE-Envelope: MS4wfOF7U22xoTpAUEvOw1tUUHvhY8l8MGCYN6pm66YVC1msyl/wb+aPV6ofqVnScSZSFqW+nC1UviknZzPIYd5r6e+AywVxKkehHqEolEDAW0goIbOeEpdT
 xYnO5Xi82/ote3XVG+kxN7/LU0Cjo7M0yO2o4lkJ/HlDHFwxSgFqdiFmckw7gLb8dizx5TpRR/ZbW0LDNmoW99uojm0xmYQr3dJ9HFwdY+JlMi4mKTMcMRo7
 M3xUSygvwUCUNPkJHqtAWpIfvdfV2vf7yYxwhLPUYXpk1RMEk1TfV2CEwDH3gyUhYo17zoIEBuFS8wr5pu49HLLhKUb+n7pPvEt87XpRHIAb07On6pfHyZ+h
 3Qy7V+SUOQiifwumvZgQJYnsilU8xYP7ezbz4JgivjXT2/PY1KtXwv1yenNj6zcNFD7K7J/tsMy69vUwsNwMnQMAl9RQvb8BKPAuXIa+0hvNgV7CkHXjpzA1
 5Fuli1a9Nd1fKEm2YMv2dTAIvJCr6OlYmL2oQlwcw3+tJV09eD4M7ZGzLB4=
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
 linux-kernel@vger.kernel.org, mripard@kernel.org, wens@csie.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gMS85LzIwIDQ6MTcgUE0sIEplcm5laiDFoGtyYWJlYyB3cm90ZToKPiBIaSEKPiAKPiBEbmUg
c3JlZGEsIDA4LiBqYW51YXIgMjAyMCBvYiAxNTo0MzozNiBDRVQgamUgUGF1bCBLb2NpYWxrb3dz
a2kgbmFwaXNhbChhKToKPj4gSGkgTWF1cm8sCj4+Cj4+IE9uIFdlZCAwOCBKYW4gMjAsIDE1OjEx
LCBNYXVybyBDYXJ2YWxobyBDaGVoYWIgd3JvdGU6Cj4+PiBFbSBGcmksIDEzIERlYyAyMDE5IDE3
OjA0OjI1ICswMTAwCj4+Pgo+Pj4gSmVybmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVjQHNpb2wu
bmV0PiBlc2NyZXZldToKPj4+PiBIRVZDIGhhcyBhIHNjYWxpbmcgbWF0cml4IGNvbmNlcHQuIEFk
ZCBzdXBwb3J0IGZvciBpdC4KPj4+Pgo+Pj4+ICtzdHJ1Y3QgdjRsMl9jdHJsX2hldmNfc2NhbGlu
Z19tYXRyaXggewo+Pj4+ICsJX191OAlzY2FsaW5nX2xpc3RfNHg0WzZdWzE2XTsKPj4+PiArCV9f
dTgJc2NhbGluZ19saXN0Xzh4OFs2XVs2NF07Cj4+Pj4gKwlfX3U4CXNjYWxpbmdfbGlzdF8xNngx
Nls2XVs2NF07Cj4+Pj4gKwlfX3U4CXNjYWxpbmdfbGlzdF8zMngzMlsyXVs2NF07Cj4+Pj4gKwlf
X3U4CXNjYWxpbmdfbGlzdF9kY19jb2VmXzE2eDE2WzZdOwo+Pj4+ICsJX191OAlzY2FsaW5nX2xp
c3RfZGNfY29lZl8zMngzMlsyXTsKPj4+PiArfTsKPj4+Cj4+PiBJIG5ldmVyIGxvb2tlZCBhdCBI
RVZDIHNwZWMsIGJ1dCB0aGUgYWJvdmUgc2VlbXMgcmVhbGx5IHdlaXJkLgo+Pj4KPj4+IFBsZWFz
ZSBjb3JyZWN0IG1lIGlmIEkgYW0gd3JvbmcsIGJ1dCBlYWNoIG9mIHRoZSBhYm92ZSBtYXRyaXhl
cwo+Pj4gaXMgaW5kZXBlbmRlbnQsIGFuZCB0aGUgZHJpdmVyIHdpbGwgdXNlIGp1c3Qgb25lIG9m
IHRoZSBhYm92ZSBvbgo+Pj4gYW55IHNwZWNpZmljIHRpbWUgKGZvciBhIGdpdmVuIHZpZGVvIG91
dHB1dCBub2RlKSwgcmlnaHQ/Cj4+Cj4+IEkgYW0gbm90IHRvbyBzdXJlIGFib3V0IHdoYXQgdGhl
IHNwZWNpZmljYXRpb24gcmVhbGx5IGVudGFpbHMsIGJ1dCBpdCBpcyBteQo+PiB1bmRlcnN0YW5k
aW5nIHRoYXQgSEVWQyBhbGxvd3Mgc2ltdWx0YW5lb3VzIGJsb2NrIHNpemVzIGJldHdlZW4gNHg0
IGFuZAo+PiAzMngzMiB0byBleGlzdCB3aXRoaW4gdGhlIHNhbWUgY29kaW5nIHRyZWUgYW5kIHNs
aWNlLiBUaGF0IHN1Z2dlc3RzIHRoYXQgaXQKPj4gbWFrZXMgc2Vuc2UgdG8gaGF2ZSBzcGVjaWZp
YyBjb2VmZmljaWVudHMgZm9yIGVhY2ggY2FzZS4KPiAKPiBTcGVjcyBJVFUtVCBSRUMuIEguMjY1
ICgwNi8yMDE5KSwgY2hhcHRlciA3LjMuNCBzaG93cyB0aGF0IG11bHRpcGxlIGRpZmZlcmVudCAK
PiBtYXRyaWNlcyBjYW4gYmUgcHJlc2VudCBhdCB0aGUgc2FtZSB0aW1lLiBJZiB0aGV5IGFyZSBu
b3QsIGRlZmF1bHQgdmFsdWVzIAo+IHNob3VsZCBiZSB1c2VkIGluc3RlYWQuIEJ1dCBpbiBnZW5l
cmFsLCBtb3JlIHRoYW4gb25lIGNhbiBiZSBuZWVkZWQgYXQgdGhlIAo+IHNhbWUgdGltZS4KPiAK
PiBPbmx5IHJlYWwgcXVlc3Rpb24gaXMgaWYgZGVmYXVsdCB2YWx1ZXMgc2hvdWxkIGJlIGFsc28g
cHJvdmlkZWQgYnkgdXNlcnNwYWNlIAo+IG9yIGJ5IGtlcm5lbC4gU2luY2UgcGxhY2UgaGFzIHRv
IGJlIHJlc2VydmVkIGZvciBhbGwgZGlmZmVyZW50IHNjYWxpbmcgbGlzdHMgCj4gYW55d2F5LCB3
ZSB3b24ndCBzYXZlIGFueSBzcGFjZSBieSBwcm92aWRpbmcgZGVmYXVsdCB2YWx1ZXMgaW4ga2Vy
bmVsLiBDZWRydXMgCj4gVlBVIGhhcyBvbmx5IGJpdCBzd2l0Y2ggZm9yIHVzaW5nIGRlZmF1bHQg
dmFsdWVzIGZvciBhbGwgbWF0cmljZXMgYXQgdGhlIHNhbWUgCj4gdGltZSBvciBhbGwgY3VzdG9t
Lgo+IAo+IE5vdGUgdGhhdCB0aGlzIGNvbnRyb2wgY29udGFpbnMgc2xpZ2h0bHkgcHJvY2Vzc2Vk
IGRhdGEuIEZyYW1lIGhhcyBzdG9yZWQgCj4gdGhlc2UgbWF0cmljZXMgaW4gZm9ybSBvZiBkZWx0
YXMuIEJ1dCBiZWNhdXNlIHRoaXMgaXMgdGhlIG9ubHkgZHJpdmVyIHRoYXQgdXNlIAo+IHRoaXMg
c3RydWN0dXJlIEkgaGF2ZSBubyBpZGVhIHdoYXQgaXMgdGhlIG1vc3QgcHJvcGVyIGZvcm0gb2Yg
dGhpcyBkYXRhIChyYXcgCj4gdmFsdWVzIG9yIGRlbHRhcykuIFRoYXQncyB3aHkgdGhpcyB3aWxs
IHN0YXkgaW4gc3RhZ2luZyB1c2luZyBwcml2YXRlIGhlYWRlcnMgCj4gdW50aWwgd2UgZmlndXJl
IHRoaXMgb3V0LgoKVGhpcyBkZWZpbml0ZWx5IG5lZWRzIHRvIGJlIGRvY3VtZW50ZWQhIE90aGVy
d2lzZSB0aGlzIHdpbGwgYmUgZm9yZ290dGVuLgoKUmVnYXJkcywKCglIYW5zCgo+IAo+IEJlc3Qg
cmVnYXJkcywKPiBKZXJuZWoKPiAKPj4KPj4gTm90ZSB0aGF0IHRoZSBoYXJkd2FyZSBhbHNvIGhh
cyBkaXN0aW5jdCByZWdpc3RlcnMgZm9yIGVhY2ggc2NhbGluZyBsaXN0Lgo+Pgo+PiBDaGVlcnMs
Cj4+Cj4+IFBhdWwKPj4KPj4+IElmIHNvLCB3aHkgd291bGQgdXNlcnNwYWNlIGJlIGZvcmNlZCB0
byB1cGRhdGUgbG90cyBvZiBtYXRyaXhlcywgaWYgd291bGQKPj4+IGxpa2VseSB1c2UganVzdCBv
bmUgYXQgYSBnaXZlbiB0aW1lPwo+Pj4KPj4+IElNTywgdGhlIHByb3BlciB3YXkgd291bGQgYmUs
IGluc3RlYWQsIHRvIHVzZSBhbiB1QVBJIGxpa2U6Cj4+Pgo+Pj4gLyoKPj4+Cj4+PiAgKiBBY3R1
YWxseSwgYXMgdGhpcyBpcyB1QVBJLCB3ZSB3aWxsIHVzZSBhIGZpeGVkIHNpemUgaW50ZWdlciB0
eXBlLCBsaWtlCj4+PiAgKiAgdW5zaWduZWQgaW50Cj4+PiAgKi8KPj4+Cj4+PiBlbnVtIGhldmNf
c2NhbGluZ19tYXRyaXhfdHlwZSB7Cj4+Pgo+Pj4gCUhFVkNfU0NBTElOR19NQVRSSVhfNHg0LAo+
Pj4gCUhFVkNfU0NBTElOR19NQVRSSVhfOHg4LAo+Pj4KPj4+IC4uLgo+Pj4KPj4+IAlIRVZDX1ND
QUxJTkdfTUFUUklYX0RDX0NPRUZfMzJ4MzIsCj4+Pgo+Pj4gfTsKPj4+Cj4+PiBzdHJ1Y3QgdjRs
Ml9jdHJsX2hldmNfc2NhbGluZ19tYXRyaXggewo+Pj4KPj4+IAlfX3UzMglzY2FsaW5nX3R5cGUg
CQkvKiBhcyBkZWZpbmVkIGJ5IGVudW0gCj4gaGV2Y19zY2FsaW5nX21hdHJpeF90eXBlICovCj4+
PiAJCj4+PiAJdW5pb24gewo+Pj4gCQo+Pj4gCQlfX3U4CXNjYWxpbmdfbGlzdF80eDRbNl1bMTZd
Owo+Pj4gCQlfX3U4CXNjYWxpbmdfbGlzdF84eDhbNl1bNjRdOwo+Pj4gCQlfX3U4CXNjYWxpbmdf
bGlzdF8xNngxNls2XVs2NF07Cj4+PiAJCV9fdTgJc2NhbGluZ19saXN0XzMyeDMyWzJdWzY0XTsK
Pj4+IAkJX191OAlzY2FsaW5nX2xpc3RfZGNfY29lZl8xNngxNls2XTsKPj4+IAkJX191OAlzY2Fs
aW5nX2xpc3RfZGNfY29lZl8zMngzMlsyXTsKPj4+IAkKPj4+IAl9Owo+Pj4KPj4+IH07Cj4+Pgo+
Pj4gQW5kIGxldCB0aGUgY29yZSB1c2UgYSBkZWZhdWx0IGZvciBlYWNoIHNjYWxpbmcgbWF0cml4
LCBpZiB1c2Vyc3BhY2UKPj4+IGRvZXNuJ3Qgc2V0IGl0Lgo+Pj4KPj4+Cj4+Pgo+Pj4gQ2hlZXJz
LAo+Pj4gTWF1cm8KPiAKPiAKPiAKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2pl
Y3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=

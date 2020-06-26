Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FFD920ACA5
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Jun 2020 08:58:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 39B0B883A8;
	Fri, 26 Jun 2020 06:58:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vewVTMhy66Su; Fri, 26 Jun 2020 06:58:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 49239883C0;
	Fri, 26 Jun 2020 06:58:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6001F1BF3F6
 for <devel@linuxdriverproject.org>; Fri, 26 Jun 2020 06:58:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5CB4F85D8F
 for <devel@linuxdriverproject.org>; Fri, 26 Jun 2020 06:58:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7imrDgJDx2pu for <devel@linuxdriverproject.org>;
 Fri, 26 Jun 2020 06:58:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from lb3-smtp-cloud7.xs4all.net (lb3-smtp-cloud7.xs4all.net
 [194.109.24.31])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 662F685D87
 for <devel@driverdev.osuosl.org>; Fri, 26 Jun 2020 06:58:25 +0000 (UTC)
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
 by smtp-cloud7.xs4all.net with ESMTPA
 id oiJVjZpLgxmkVoiJZjgaTI; Fri, 26 Jun 2020 08:58:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s1;
 t=1593154702; bh=R6Ir/Bz75ZuOudF6KyzPGOEaxClJeiHyCzSqQo5MsMQ=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=VUQyqp4fpNHEEBJ7tqRiL6kX8TE90+9Ueif61BuvbZCy335uBrqwDpy6hnA7wSFFW
 J16jrFXDlILKoJdBsY2yN47tkOiMReQoY0F9eUGHdr1BBYdyfpUEEJ0l5FZQq3R8mU
 dZaxFJt67FA+oz0STAsyQ9j+XHa4oKTiz0cVb/nOjZ+41WXSH3WOZi10lwxzr5BlVW
 XvClmBSB155wsE+FanYyqcfI7QM0IL5Zoz9vxiH3zPH8qPOALzIxToaJXOpD47zME6
 KKT1CEufKEM0jJxNgJt3dJkQXIzaOpNtvwX04WYx9+SZREE+0T8x1GAyzM+hk/zV07
 FKyaaUxM77IAA==
Subject: Re: [PATCH v2 0/4] Tegra Video Decoder driver power management
 corrections
To: Dmitry Osipenko <digetx@gmail.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
References: <20200624150847.22672-1-digetx@gmail.com>
 <90323aa6-38b5-0a45-69a7-ccf380690a78@xs4all.nl>
 <23cbaa18-9461-8f72-3d43-aa14cd0c1095@gmail.com>
 <0e14df05-8299-52d6-df8f-0dd476f4109d@gmail.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <e41ff660-6c6c-d603-c767-34e7f4b4a23d@xs4all.nl>
Date: Fri, 26 Jun 2020 08:58:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <0e14df05-8299-52d6-df8f-0dd476f4109d@gmail.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfPLvU4k9HoHcsriBfUKOvb1jI4bhwxiauTAC9rGOgP28MbgwWKOlxenX5oo62ZWwMWqckA5P6RtdkVpGxhVm/RgmH3edVm1o86fl/r+1N8w+Ohwly0ZA
 +bnnPZohhYlepqoQUcBy4KrNDAloZOAclQ9KJYO6vae8dXFpzf1BAGJ5bMcik5bIvmqu5GGRZq5Ng/NdoDk8ZlmdDYJNFMC5Pc5jg0Jd91X2T5B1iAqzpz1I
 fruTlmbflCZy3U/dKwB9pK02fZ0adpyGBRnMRzR6VgXzOvMnhXviimkwcrv8p3e5vPlGBmMOFmUEOHyalREmtKst3yKT103wlYG9sgkfU61Ns3l19BDuIjwQ
 5gJAb+9dP2ZvKSa4nfvxNuaV/rl2tiQYFANyPf8tfOmK3ifqIKsb9e58EadMV6iL6RDR6/rR
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
Cc: linux-tegra@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gMjYvMDYvMjAyMCAwMjoxNywgRG1pdHJ5IE9zaXBlbmtvIHdyb3RlOgo+IDI0LjA2LjIwMjAg
MTg6MjMsIERtaXRyeSBPc2lwZW5rbyDQv9C40YjQtdGCOgo+PiAyNC4wNi4yMDIwIDE4OjE2LCBI
YW5zIFZlcmt1aWwg0L/QuNGI0LXRgjoKPj4+IE9uIDI0LzA2LzIwMjAgMTc6MDgsIERtaXRyeSBP
c2lwZW5rbyB3cm90ZToKPj4+PiBIZWxsbywKPj4+Pgo+Pj4+IFRoaXMgc21hbGwgc2VyaWVzIGFk
ZHJlc3NlcyBhIFJ1bnRpbWUgUE0gaXNzdWUgdGhhdCB3YXMgZGlzY292ZXJlZCBkdXJpbmcKPj4+
PiBvZiBUZWdyYSBWSSBkcml2ZXIgcmV2aWV3aW5nIGJ5IGJhbGFuY2luZyBSUE0gdXNhZ2UgY291
bnQgb24gUlBNIHJlc3VtZQo+Pj4+IGZhaWx1cmUuIFNlY29uZGx5IGl0IGZpeGVzIHJlYm9vdCBv
biBzb21lIFRlZ3JhIGRldmljZXMgZHVlIHRvIGJvb3Rsb2FkZXIKPj4+PiBleHBlY3RpbmcgVkRF
IHBvd2VyIHBhcnRpdGlvbiB0byBiZSBPTiBhdCB0aGUgYm9vdCB0aW1lLCB3aGljaCB3YXNuJ3QK
Pj4+PiBoYXBwZW5pbmcgaW4gY2FzZSBvZiBhIHdhcm0gcmUtYm9vdGluZyAoaS5lLiBieSBQTUMg
cmVzZXR0aW5nKS4KPj4+Cj4+PiBDYW4geW91IHJlYmFzZSB0aGlzIG9uIHRvcCBvZiB0aGUgbWVk
aWFfdHJlZSBtYXN0ZXIgYnJhbmNoPyBJIHRoaW5rIGEgdmFyaWFudAo+Pj4gb2YgcGF0Y2ggMSBo
YXMgYWxyZWFkeSBiZWVuIGFwcGxpZWQuIEkgZm91bmQgYSBtYWlsIHRvZGF5IHdoZXJlIHlvdSBt
ZW50aW9uZWQKPj4+IHRoYXQgeW91IHByZWZlcnJlZCB5b3VyIHZlcnNpb24gKGl0IGxvb2tzIGxp
a2UgSSBtaXNzZWQgdGhhdCkgc28geW91J2xsIG5lZWQgdG8KPj4+IHJld29yayBwYXRjaCAxLgo+
Pgo+PiBIZWxsbyBIYW5zLAo+Pgo+PiBJJ2xsIHRha2UgYSBsb29rIGF0IHdoYXQgcGF0Y2hlcyBo
YXMgYmVlbiBhcHBsaWVkLCBteSBiYWQgZm9yIHNlbmRpbmcKPj4gdGhlIHYyIHRvbyBsYXRlLiBU
aGFuayB5b3UgZm9yIHRoZSBoZWFkcyB1cCEKPj4KPiAKPiBJIHRlc3RlZCB0aGUgYWxyZWFkeS1h
cHBsaWVkIHZhcmlhbnQgb2YgdGhlIHBhdGNoIDEgYW5kIGl0IGhhcyB0aGUgc2FtZQo+IGJlaGF2
aW91ciBhcyBteSB2YXJpYW50LCBzbyBpdCdzIG9rYXkuCj4gCj4gV291bGQgeW91IHdhbnQgbWUg
dG8gc2VuZCBhIHYzIHdpdGhvdXQgdGhlIGNvbmZsaWN0aW5nIHBhdGNoIDEgb3IgeW91Cj4gY291
bGQgYXBwbHkgdGhlIHBhdGNoZXMgMi00IGZyb20gdGhpcyBzZXJpZXM/Cj4gCgpJJ2xsIG1hcmsg
MS80IGFzIHN1cGVyc2VkZWQgYW5kIHdpbGwgYXBwbHkgcGF0Y2hlcyAyLTQuIE5vIG5lZWQgZm9y
IHlvdQp0byBkbyBhbnl0aGluZy4KClJlZ2FyZHMsCgoJSGFucwpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGlu
dXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5v
cmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 60E4821019F
	for <lists+driverdev-devel@lfdr.de>; Wed,  1 Jul 2020 03:45:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CB7768784E;
	Wed,  1 Jul 2020 01:45:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NveIx9BzzG2I; Wed,  1 Jul 2020 01:45:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1010A87835;
	Wed,  1 Jul 2020 01:45:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 369F41BF34E
 for <devel@linuxdriverproject.org>; Wed,  1 Jul 2020 01:45:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2DA9A88AE8
 for <devel@linuxdriverproject.org>; Wed,  1 Jul 2020 01:45:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fRorCt4C+Em5 for <devel@linuxdriverproject.org>;
 Wed,  1 Jul 2020 01:45:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f66.google.com (mail-lf1-f66.google.com
 [209.85.167.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1270C88ADB
 for <devel@driverdev.osuosl.org>; Wed,  1 Jul 2020 01:45:51 +0000 (UTC)
Received: by mail-lf1-f66.google.com with SMTP id y18so12610396lfh.11
 for <devel@driverdev.osuosl.org>; Tue, 30 Jun 2020 18:45:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=HczcFWcC6ZdwoUa650Xj9nL47iYNBcU34xhBNmcm5mQ=;
 b=qcXawn2WKloYEsPbetf6aagiDS45tW33ipg0zz3WpddTf5mEfIPl/RMM9F4K1UD0CA
 PyrZx3PgfMl6DntR2pNPLKuFwKF44YW5yhfETcUmTvZtwQys3Sa24F32CSHiXsXi+Zee
 tWrAu2tOdbV5ta2vdNmYg2bItojho4xB1/WO9czIGpsBqf3dPr67OrQwMj2W6NDqaf+T
 OCTVkIifGIabvdY9ZjZ6IRYTqrc9RJyqx1K6E8sxUmppsswEFsVxPJaC/H+INESMKHfC
 DyoaZC3gOoMtsEaGj5hUdAxFWGcDOTyMZJlKw35i76V0XWVl52wdzqVlxci/HIjlLUj1
 kLaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=HczcFWcC6ZdwoUa650Xj9nL47iYNBcU34xhBNmcm5mQ=;
 b=txrRFtS5QGbwvfMAXMhrOy9fuHk/neawKZ6xS6F8p7MPI2LLonIbclVudOpoFIx/Qy
 PsTS3inde705xzXv7vIlkjlimn1Dwie2wYMTTOaHYduDcLli1vJtr6+9hUcDnB/5IDZ1
 lz3cG6B4jYJi4J1jFyjW7rxSgo5Ppz1Otb0j5jw54dOh68hydKwSf1CR7X019ZxV5UZl
 g3OBPCvUVjPh7OBqqCUC4gqFVYAqgEDAXI/2mwx2YgZnrwtYJ+wKJ7/TOu5r+gSYxbdP
 uuEPfOhBZHSLxkX6kV9q5Pc2ZeGrsJi72lvmatjbGFoo43/V53gzo36FGHc6wKHEMtUn
 10rg==
X-Gm-Message-State: AOAM530SN9I+/6X5ZuKd1y9IWE7pCjgIoENyW6j1MLD0lg/QQeWkYnvl
 TJ19J4l5PUBjoPXIfDKUKA1SWKR3TXc=
X-Google-Smtp-Source: ABdhPJwbkW9xT3ZwoL2zmgvISkNdI5MF+tmhowtU+Y/M+Llvwp1rA3SMtcAIZ5jfUBSevSSc5oW50A==
X-Received: by 2002:ac2:548a:: with SMTP id t10mr13826582lfk.142.1593567948716; 
 Tue, 30 Jun 2020 18:45:48 -0700 (PDT)
Received: from [192.168.2.145] (79-139-237-54.dynamic.spd-mgts.ru.
 [79.139.237.54])
 by smtp.googlemail.com with ESMTPSA id 193sm1594603lfa.90.2020.06.30.18.45.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 30 Jun 2020 18:45:47 -0700 (PDT)
Subject: Re: [PATCH v7 31/36] staging: tegra-vde: fix common struct sg_table
 related issues
To: Marek Szyprowski <m.szyprowski@samsung.com>
References: <20200619103636.11974-1-m.szyprowski@samsung.com>
 <CGME20200619103714eucas1p18db6efd1a380fc0bdb16174ee85036fa@eucas1p1.samsung.com>
 <20200619103636.11974-32-m.szyprowski@samsung.com>
 <20200621070015.0cf833ab@dimatab>
 <559970b6-e80f-90ec-7fb0-1fab742d99de@samsung.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <60aacf07-e263-85e0-9d45-1edb8ba3b954@gmail.com>
Date: Wed, 1 Jul 2020 04:45:46 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <559970b6-e80f-90ec-7fb0-1fab742d99de@samsung.com>
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
Cc: devel@driverdev.osuosl.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Jonathan Hunter <jonathanh@nvidia.com>,
 linaro-mm-sig@lists.linaro.org, iommu@lists.linux-foundation.org,
 Thierry Reding <thierry.reding@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 linux-tegra@vger.kernel.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

MzAuMDYuMjAyMCAxMzowNywgTWFyZWsgU3p5cHJvd3NraSDQv9C40YjQtdGCOgo+IE9uIDIxLjA2
LjIwMjAgMDY6MDAsIERtaXRyeSBPc2lwZW5rbyB3cm90ZToKPj4g0JIgRnJpLCAxOSBKdW4gMjAy
MCAxMjozNjozMSArMDIwMAo+PiBNYXJlayBTenlwcm93c2tpIDxtLnN6eXByb3dza2lAc2Ftc3Vu
Zy5jb20+INC/0LjRiNC10YI6Cj4+Cj4+PiBUaGUgRG9jdW1lbnRhdGlvbi9ETUEtQVBJLUhPV1RP
LnR4dCBzdGF0ZXMgdGhhdCB0aGUgZG1hX21hcF9zZygpCj4+PiBmdW5jdGlvbiByZXR1cm5zIHRo
ZSBudW1iZXIgb2YgdGhlIGNyZWF0ZWQgZW50cmllcyBpbiB0aGUgRE1BIGFkZHJlc3MKPj4+IHNw
YWNlLiBIb3dldmVyIHRoZSBzdWJzZXF1ZW50IGNhbGxzIHRvIHRoZQo+Pj4gZG1hX3N5bmNfc2df
Zm9yX3tkZXZpY2UsY3B1fSgpIGFuZCBkbWFfdW5tYXBfc2cgbXVzdCBiZSBjYWxsZWQgd2l0aAo+
Pj4gdGhlIG9yaWdpbmFsIG51bWJlciBvZiB0aGUgZW50cmllcyBwYXNzZWQgdG8gdGhlIGRtYV9t
YXBfc2coKS4KPj4+Cj4+PiBzdHJ1Y3Qgc2dfdGFibGUgaXMgYSBjb21tb24gc3RydWN0dXJlIHVz
ZWQgZm9yIGRlc2NyaWJpbmcgYQo+Pj4gbm9uLWNvbnRpZ3VvdXMgbWVtb3J5IGJ1ZmZlciwgdXNl
ZCBjb21tb25seSBpbiB0aGUgRFJNIGFuZCBncmFwaGljcwo+Pj4gc3Vic3lzdGVtcy4gSXQgY29u
c2lzdHMgb2YgYSBzY2F0dGVybGlzdCB3aXRoIG1lbW9yeSBwYWdlcyBhbmQgRE1BCj4+PiBhZGRy
ZXNzZXMgKHNnbCBlbnRyeSksIGFzIHdlbGwgYXMgdGhlIG51bWJlciBvZiBzY2F0dGVybGlzdCBl
bnRyaWVzOgo+Pj4gQ1BVIHBhZ2VzIChvcmlnX25lbnRzIGVudHJ5KSBhbmQgRE1BIG1hcHBlZCBw
YWdlcyAobmVudHMgZW50cnkpLgo+Pj4KPj4+IEl0IHR1cm5lZCBvdXQgdGhhdCBpdCB3YXMgYSBj
b21tb24gbWlzdGFrZSB0byBtaXN1c2UgbmVudHMgYW5kCj4+PiBvcmlnX25lbnRzIGVudHJpZXMs
IGNhbGxpbmcgRE1BLW1hcHBpbmcgZnVuY3Rpb25zIHdpdGggYSB3cm9uZyBudW1iZXIKPj4+IG9m
IGVudHJpZXMgb3IgaWdub3JpbmcgdGhlIG51bWJlciBvZiBtYXBwZWQgZW50cmllcyByZXR1cm5l
ZCBieSB0aGUKPj4+IGRtYV9tYXBfc2coKSBmdW5jdGlvbi4KPj4+Cj4+PiBUbyBhdm9pZCBzdWNo
IGlzc3VlcywgbGV0cyB1c2UgYSBjb21tb24gZG1hLW1hcHBpbmcgd3JhcHBlcnMgb3BlcmF0aW5n
Cj4+PiBkaXJlY3RseSBvbiB0aGUgc3RydWN0IHNnX3RhYmxlIG9iamVjdHMgYW5kIHVzZSBzY2F0
dGVybGlzdCBwYWdlCj4+PiBpdGVyYXRvcnMgd2hlcmUgcG9zc2libGUuIFRoaXMsIGFsbW9zdCBh
bHdheXMsIGhpZGVzIHJlZmVyZW5jZXMgdG8gdGhlCj4+PiBuZW50cyBhbmQgb3JpZ19uZW50cyBl
bnRyaWVzLCBtYWtpbmcgdGhlIGNvZGUgcm9idXN0LCBlYXNpZXIgdG8gZm9sbG93Cj4+PiBhbmQg
Y29weS9wYXN0ZSBzYWZlLgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IE1hcmVrIFN6eXByb3dza2kg
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KPj4+IFJldmlld2VkLWJ5OiBEbWl0cnkgT3NpcGVu
a28gPGRpZ2V0eEBnbWFpbC5jb20+Cj4+PiAtLS0KPj4+ICAgZHJpdmVycy9zdGFnaW5nL21lZGlh
L3RlZ3JhLXZkZS9pb21tdS5jIHwgNCArKy0tCj4+PiAgIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2Vy
dGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3Rh
Z2luZy9tZWRpYS90ZWdyYS12ZGUvaW9tbXUuYwo+Pj4gYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEv
dGVncmEtdmRlL2lvbW11LmMgaW5kZXgKPj4+IDZhZjg2M2Q5MjEyMy4uYWRmOGRjN2VlMjVjIDEw
MDY0NCAtLS0KPj4+IGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL3RlZ3JhLXZkZS9pb21tdS5jICsr
Kwo+Pj4gYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvdGVncmEtdmRlL2lvbW11LmMgQEAgLTM2LDgg
KzM2LDggQEAgaW50Cj4+PiB0ZWdyYV92ZGVfaW9tbXVfbWFwKHN0cnVjdCB0ZWdyYV92ZGUgKnZk
ZSwKPj4+ICAgCWFkZHIgPSBpb3ZhX2RtYV9hZGRyKCZ2ZGUtPmlvdmEsIGlvdmEpOwo+Pj4gICAK
Pj4+IC0Jc2l6ZSA9IGlvbW11X21hcF9zZyh2ZGUtPmRvbWFpbiwgYWRkciwgc2d0LT5zZ2wsIHNn
dC0+bmVudHMsCj4+PiAtCQkJICAgIElPTU1VX1JFQUQgfCBJT01NVV9XUklURSk7Cj4+PiArCXNp
emUgPSBpb21tdV9tYXBfc2d0YWJsZSh2ZGUtPmRvbWFpbiwgYWRkciwgc2d0LAo+Pj4gKwkJCQkg
SU9NTVVfUkVBRCB8IElPTU1VX1dSSVRFKTsKPj4+ICAgCWlmICghc2l6ZSkgewo+Pj4gICAJCV9f
ZnJlZV9pb3ZhKCZ2ZGUtPmlvdmEsIGlvdmEpOwo+Pj4gICAJCXJldHVybiAtRU5YSU87Cj4+IEFo
aCwgSSBzYXcgdGhlIGJ1aWxkIGZhaWx1cmUgcmVwb3J0LiBZb3UncmUgY2hhbmdpbmcgdGhlIERN
QSBBUEkgaW4KPj4gdGhpcyBzZXJpZXMsIHdoaWxlIERNQSBBUEkgaXNuJ3QgdXNlZCBieSB0aGlz
IGRyaXZlciwgaXQgdXNlcyBJT01NVQo+PiBBUEkuIEhlbmNlIHRoZXJlIGlzIG5vIG5lZWQgdG8g
dG91Y2ggdGhpcyBjb2RlLiBTaW1pbGFyIHByb2JsZW0gaW4gdGhlCj4+IGhvc3QxeCBkcml2ZXIg
cGF0Y2guCj4gCj4gVGhlIGlzc3VlIGlzIGNhdXNlZCBieSB0aGUgbGFjayBvZiBpb21tdV9tYXBf
c2d0YWJsZSgpIHN0dWIgd2hlbiBubyAKPiBJT01NVSBzdXBwb3J0IGlzIGNvbmZpZ3VyZWQuIEkn
dmUgcG9zdGVkIGEgcGF0Y2ggZm9yIHRoaXM6Cj4gCj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcv
bGttbC8yMDIwMDYzMDA4MTc1Ni4xODUyNi0xLW0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbS8KPiAK
PiBUaGUgcGF0Y2ggZm9yIHRoaXMgZHJpdmVyIGlzIGZpbmUsIHdlIGhhdmUgdG8gd2FpdCB1bnRp
bCB0aGUgYWJvdmUgZml4IAo+IGdldHMgbWVyZ2VkIGFuZCB0aGVuIGl0IGNhbiBiZSBhcHBsaWVk
IGR1cmluZyB0aGUgbmV4dCByZWxlYXNlIGN5Y2xlLgoKVGhhbmsgeW91IGZvciB0aGUgY2xhcmlm
aWNhdGlvbiEKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
ZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2Ry
aXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2
LWRldmVsCg==

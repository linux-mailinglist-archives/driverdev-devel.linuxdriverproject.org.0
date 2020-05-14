Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95A5C1D3E7A
	for <lists+driverdev-devel@lfdr.de>; Thu, 14 May 2020 22:07:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 383938969D;
	Thu, 14 May 2020 20:07:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eyZqtdOl9Zsi; Thu, 14 May 2020 20:07:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A056389696;
	Thu, 14 May 2020 20:07:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9CD631BF35E
 for <devel@linuxdriverproject.org>; Thu, 14 May 2020 20:07:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8FF2788794
 for <devel@linuxdriverproject.org>; Thu, 14 May 2020 20:07:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZC0BO1LPrYPc for <devel@linuxdriverproject.org>;
 Thu, 14 May 2020 20:07:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f66.google.com (mail-lf1-f66.google.com
 [209.85.167.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0621088732
 for <devel@driverdev.osuosl.org>; Thu, 14 May 2020 20:07:15 +0000 (UTC)
Received: by mail-lf1-f66.google.com with SMTP id 188so3705261lfa.10
 for <devel@driverdev.osuosl.org>; Thu, 14 May 2020 13:07:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=WOuH1XOmPM4H+myJnWGIPlv/GSLKGvRLHlRm+1oHjes=;
 b=OVYKlyo5tYXCFqG9R7Ge9W7iXoaap3TbWVuCOzDYbfkzO4yLw2nn4s/mPYZX39Ux8P
 lFNGzLPtGV36ZU/XRsJ/b8wLh89m89ZNxrbWAfw7dhCB5DYaX437icl0syKPyPU9y6cv
 GOf4OqlcxzxK2qxduTZnPEGkJ5gudwR+BI+K1XOIjCSsVc7zFtsRw42RJv+A0VxmVprF
 Z/oR4RSUAo5dcE19PFCNWSPkwwFFSAckWWBLXv7yJ6KBOnbI5nIyFa0N2Dg1RhKKg6Km
 HV3XTRJC/mYTvuXUcWKv37AvIXqwUY0V5fVE7ciEbqB1wBc6ySSDl+xWctJrTYCOgk/M
 cdEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=WOuH1XOmPM4H+myJnWGIPlv/GSLKGvRLHlRm+1oHjes=;
 b=Zgcx8Is6p4PWhvN5TObHbMBB2yRKz4gPJ21hJWM+Mo1rSBzMEWDDqGRBPbT6a4EwdF
 g4YnSi/buTg2dC8cJOj2EFoP355/mCPiqlnPXGfGfuc5fEQZ2v7mjoiaqJtCWd3Rn8SR
 /SQl9F27tAH3J4nnEltqZFKIWc81cBeIoGIv9sUi3g625h8DjFERkxxmYPTFS//dsT9B
 tyR6DyS/fTFYJzF1BvsPatXooO7kv/7v/DNla9I6jHkd0DfjHS5iDzQMgI19lB0C8XKU
 xjrxoC4O1ZfW6/n82OZVSaHPWyrKWXllo2mozJ/AMgWISFwOL9mx6c0TP8n8KhiRvMx7
 CMSw==
X-Gm-Message-State: AOAM531hl458X+pH7NByTZyq1RR0KivPmpD2WX49nFQEu7WDL4UZ4XI1
 D3xrdah2UDT4W2Av8YIS/e+FnbrU
X-Google-Smtp-Source: ABdhPJwTHexR/oCXDgBD97x5phSocPsVO5cLCrpN3UyXH7i+q+PwOPK8LeMXp5gf2iMucRKwwCs9rg==
X-Received: by 2002:a19:4f1b:: with SMTP id d27mr4462819lfb.81.1589486832616; 
 Thu, 14 May 2020 13:07:12 -0700 (PDT)
Received: from [192.168.2.145] (ppp91-78-208-152.pppoe.mtu-net.ru.
 [91.78.208.152])
 by smtp.googlemail.com with ESMTPSA id v16sm2428150lfi.49.2020.05.14.13.07.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 14 May 2020 13:07:11 -0700 (PDT)
Subject: Re: [PATCH v5 33/38] staging: tegra-vde: fix common struct sg_table
 related issues
To: Marek Szyprowski <m.szyprowski@samsung.com>,
 dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
References: <20200513132114.6046-1-m.szyprowski@samsung.com>
 <20200513133245.6408-1-m.szyprowski@samsung.com>
 <CGME20200513133321eucas1p13acea3aa6219ce5f7076c7677ef9eae3@eucas1p1.samsung.com>
 <20200513133245.6408-33-m.szyprowski@samsung.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <43f9f3cc-2afa-cec3-0dd4-335746ec886e@gmail.com>
Date: Thu, 14 May 2020 23:07:10 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200513133245.6408-33-m.szyprowski@samsung.com>
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Thierry Reding <thierry.reding@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 linux-tegra@vger.kernel.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

MTMuMDUuMjAyMCAxNjozMiwgTWFyZWsgU3p5cHJvd3NraSDQv9C40YjQtdGCOgo+IFRoZSBEb2N1
bWVudGF0aW9uL0RNQS1BUEktSE9XVE8udHh0IHN0YXRlcyB0aGF0IHRoZSBkbWFfbWFwX3NnKCkg
ZnVuY3Rpb24KPiByZXR1cm5zIHRoZSBudW1iZXIgb2YgdGhlIGNyZWF0ZWQgZW50cmllcyBpbiB0
aGUgRE1BIGFkZHJlc3Mgc3BhY2UuCj4gSG93ZXZlciB0aGUgc3Vic2VxdWVudCBjYWxscyB0byB0
aGUgZG1hX3N5bmNfc2dfZm9yX3tkZXZpY2UsY3B1fSgpIGFuZAo+IGRtYV91bm1hcF9zZyBtdXN0
IGJlIGNhbGxlZCB3aXRoIHRoZSBvcmlnaW5hbCBudW1iZXIgb2YgdGhlIGVudHJpZXMKPiBwYXNz
ZWQgdG8gdGhlIGRtYV9tYXBfc2coKS4KPiAKPiBzdHJ1Y3Qgc2dfdGFibGUgaXMgYSBjb21tb24g
c3RydWN0dXJlIHVzZWQgZm9yIGRlc2NyaWJpbmcgYSBub24tY29udGlndW91cwo+IG1lbW9yeSBi
dWZmZXIsIHVzZWQgY29tbW9ubHkgaW4gdGhlIERSTSBhbmQgZ3JhcGhpY3Mgc3Vic3lzdGVtcy4g
SXQKPiBjb25zaXN0cyBvZiBhIHNjYXR0ZXJsaXN0IHdpdGggbWVtb3J5IHBhZ2VzIGFuZCBETUEg
YWRkcmVzc2VzIChzZ2wgZW50cnkpLAo+IGFzIHdlbGwgYXMgdGhlIG51bWJlciBvZiBzY2F0dGVy
bGlzdCBlbnRyaWVzOiBDUFUgcGFnZXMgKG9yaWdfbmVudHMgZW50cnkpCj4gYW5kIERNQSBtYXBw
ZWQgcGFnZXMgKG5lbnRzIGVudHJ5KS4KPiAKPiBJdCB0dXJuZWQgb3V0IHRoYXQgaXQgd2FzIGEg
Y29tbW9uIG1pc3Rha2UgdG8gbWlzdXNlIG5lbnRzIGFuZCBvcmlnX25lbnRzCj4gZW50cmllcywg
Y2FsbGluZyBETUEtbWFwcGluZyBmdW5jdGlvbnMgd2l0aCBhIHdyb25nIG51bWJlciBvZiBlbnRy
aWVzIG9yCj4gaWdub3JpbmcgdGhlIG51bWJlciBvZiBtYXBwZWQgZW50cmllcyByZXR1cm5lZCBi
eSB0aGUgZG1hX21hcF9zZygpCj4gZnVuY3Rpb24uCj4gCj4gVG8gYXZvaWQgc3VjaCBpc3N1ZXMs
IGxldHMgdXNlIGEgY29tbW9uIGRtYS1tYXBwaW5nIHdyYXBwZXJzIG9wZXJhdGluZwo+IGRpcmVj
dGx5IG9uIHRoZSBzdHJ1Y3Qgc2dfdGFibGUgb2JqZWN0cyBhbmQgdXNlIHNjYXR0ZXJsaXN0IHBh
Z2UKPiBpdGVyYXRvcnMgd2hlcmUgcG9zc2libGUuIFRoaXMsIGFsbW9zdCBhbHdheXMsIGhpZGVz
IHJlZmVyZW5jZXMgdG8gdGhlCj4gbmVudHMgYW5kIG9yaWdfbmVudHMgZW50cmllcywgbWFraW5n
IHRoZSBjb2RlIHJvYnVzdCwgZWFzaWVyIHRvIGZvbGxvdwo+IGFuZCBjb3B5L3Bhc3RlIHNhZmUu
Cj4gCj4gU2lnbmVkLW9mZi1ieTogTWFyZWsgU3p5cHJvd3NraSA8bS5zenlwcm93c2tpQHNhbXN1
bmcuY29tPgo+IC0tLQo+IEZvciBtb3JlIGluZm9ybWF0aW9uLCBzZWUgJ1tQQVRDSCB2NSAwMC8z
OF0gRFJNOiBmaXggc3RydWN0IHNnX3RhYmxlIG5lbnRzCj4gdnMuIG9yaWdfbmVudHMgbWlzdXNl
JyB0aHJlYWQ6Cj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtaW9tbXUvMjAyMDA1MTMx
MzIxMTQuNjA0Ni0xLW0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbS9ULwo+IC0tLQo+ICBkcml2ZXJz
L3N0YWdpbmcvbWVkaWEvdGVncmEtdmRlL2lvbW11LmMgfCA0ICsrLS0KPiAgMSBmaWxlIGNoYW5n
ZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9zdGFnaW5nL21lZGlhL3RlZ3JhLXZkZS9pb21tdS5jIGIvZHJpdmVycy9zdGFnaW5nL21l
ZGlhL3RlZ3JhLXZkZS9pb21tdS5jCj4gaW5kZXggNmFmODYzZC4uYWRmOGRjNyAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvdGVncmEtdmRlL2lvbW11LmMKPiArKysgYi9kcml2
ZXJzL3N0YWdpbmcvbWVkaWEvdGVncmEtdmRlL2lvbW11LmMKPiBAQCAtMzYsOCArMzYsOCBAQCBp
bnQgdGVncmFfdmRlX2lvbW11X21hcChzdHJ1Y3QgdGVncmFfdmRlICp2ZGUsCj4gIAo+ICAJYWRk
ciA9IGlvdmFfZG1hX2FkZHIoJnZkZS0+aW92YSwgaW92YSk7Cj4gIAo+IC0Jc2l6ZSA9IGlvbW11
X21hcF9zZyh2ZGUtPmRvbWFpbiwgYWRkciwgc2d0LT5zZ2wsIHNndC0+bmVudHMsCj4gLQkJCSAg
ICBJT01NVV9SRUFEIHwgSU9NTVVfV1JJVEUpOwo+ICsJc2l6ZSA9IGlvbW11X21hcF9zZ3RhYmxl
KHZkZS0+ZG9tYWluLCBhZGRyLCBzZ3QsCj4gKwkJCQkgSU9NTVVfUkVBRCB8IElPTU1VX1dSSVRF
KTsKPiAgCWlmICghc2l6ZSkgewo+ICAJCV9fZnJlZV9pb3ZhKCZ2ZGUtPmlvdmEsIGlvdmEpOwo+
ICAJCXJldHVybiAtRU5YSU87Cj4gCgpSZXZpZXdlZC1ieTogRG1pdHJ5IE9zaXBlbmtvIDxkaWdl
dHhAZ21haWwuY29tPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRw
Oi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2
ZXJkZXYtZGV2ZWwK

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C0780B97D7
	for <lists+driverdev-devel@lfdr.de>; Fri, 20 Sep 2019 21:33:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 284322268C;
	Fri, 20 Sep 2019 19:33:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7OqAOMQR58ac; Fri, 20 Sep 2019 19:33:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6AA42204FA;
	Fri, 20 Sep 2019 19:33:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CC29E1BF387
 for <devel@linuxdriverproject.org>; Fri, 20 Sep 2019 19:33:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C836781FA0
 for <devel@linuxdriverproject.org>; Fri, 20 Sep 2019 19:33:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1PPWiXiJm+WZ for <devel@linuxdriverproject.org>;
 Fri, 20 Sep 2019 19:33:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com
 [209.85.160.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B5AEF82383
 for <devel@driverdev.osuosl.org>; Fri, 20 Sep 2019 19:33:08 +0000 (UTC)
Received: by mail-qt1-f196.google.com with SMTP id x4so9959354qtq.8
 for <devel@driverdev.osuosl.org>; Fri, 20 Sep 2019 12:33:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=eW5Bek3/qrhSN7Ue9OhcG1dQFZzCZfqK/a8zEZpkGic=;
 b=KZwPVY4bHdqFHB7zC5kTCdEtGoHPR4uD/Pd3cbRtNtUNt/zeZKUgQ+yR5NGNHKN7pj
 71jZzdAGxHBIq7Y11yAhSBG7PmwON+ksNBwOFmjCOnQaoeBcHU13F2ygHirZqP8D0nSC
 tKBWVWHOpNgIQF4+qZVqZlPB9MsHD8IyiCUixBS5B1+TKymngIKoNJN8Dlw22Qz1cd1a
 hXDtsJ245rZeWb6CdN/fSFEji6olU1S9LbvuWDuMOI51AZOr/9VpIv0m/eegkrJeTULg
 HXpWpGKYu/EUWL2CzzqF3dPVNowqwTPRhuPxPEpO6M5jQTYQ0ZwMFc7zHbgB3HosDgZI
 wk0Q==
X-Gm-Message-State: APjAAAWMY5Gve7/FlsOnPVWAhijSmuMx3FmywGrBoSaMUJ+yW48QbuM8
 AytttnCypUSi5jYeU1zAui7L2DGi7nkA/8KpR/Y=
X-Google-Smtp-Source: APXvYqym/h2HHN3oASxR0ab7JXUTumeom5UHRPWJfFci8Kj44M6ZMOAgSvcKmbeBpxcHn1UCl/SFotB4KE0LZpDpGWI=
X-Received: by 2002:a0c:8aa1:: with SMTP id 30mr14417394qvv.93.1569007987460; 
 Fri, 20 Sep 2019 12:33:07 -0700 (PDT)
MIME-Version: 1.0
References: <dc354ede-5963-cd7f-ee53-f3df3061d39a@gmail.com>
 <20190725024129.22664-1-yuehaibing@huawei.com>
 <dd547b44-7abb-371f-aeee-a82b96f824e2@gmail.com>
In-Reply-To: <dd547b44-7abb-371f-aeee-a82b96f824e2@gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 20 Sep 2019 21:32:51 +0200
Message-ID: <CAK8P3a2Lxv6Wz3jv0eeNc7mfvNzSvh37QEx51W39eUnYPsxaYw@mail.gmail.com>
Subject: Re: [PATCH] media: staging: tegra-vde: Fix build error
To: Dmitry Osipenko <digetx@gmail.com>
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
Cc: driverdevel <devel@driverdev.osuosl.org>,
 gregkh <gregkh@linuxfoundation.org>, YueHaibing <yuehaibing@huawei.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 "open list:IOMMU DRIVERS" <iommu@lists.linux-foundation.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 "open list:TEGRA ARCHITECTURE SUPPORT" <linux-tegra@vger.kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gVGh1LCBKdWwgMjUsIDIwMTkgYXQgMjoyNCBQTSBEbWl0cnkgT3NpcGVua28gPGRpZ2V0eEBn
bWFpbC5jb20+IHdyb3RlOgo+Cj4gMjUuMDcuMjAxOSA1OjQxLCBZdWVIYWliaW5nINC/0LjRiNC1
0YI6Cj4gPiBJZiBJT01NVV9TVVBQT1JUIGlzIG5vdCBzZXQsIGFuZCBDT01QSUxFX1RFU1QgaXMg
eSwKPiA+IElPTU1VX0lPVkEgbWF5IGJlIHNldCB0byBtLiBTbyBidWlsZGluZyB3aWxsIGZhaWxz
Ogo+ID4KPiA+IGRyaXZlcnMvc3RhZ2luZy9tZWRpYS90ZWdyYS12ZGUvaW9tbXUubzogSW4gZnVu
Y3Rpb24gYHRlZ3JhX3ZkZV9pb21tdV9tYXAnOgo+ID4gaW9tbXUuYzooLnRleHQrMHg0MSk6IHVu
ZGVmaW5lZCByZWZlcmVuY2UgdG8gYGFsbG9jX2lvdmEnCj4gPiBpb21tdS5jOigudGV4dCsweDU2
KTogdW5kZWZpbmVkIHJlZmVyZW5jZSB0byBgX19mcmVlX2lvdmEnCj4gPgo+ID4gU2VsZWN0IElP
TU1VX0lPVkEgd2hpbGUgQ09NUElMRV9URVNUIGlzIHNldCB0byBmaXggdGhpcy4KCj4gPiBAQCAt
Myw3ICszLDcgQEAgY29uZmlnIFRFR1JBX1ZERQo+ID4gICAgICAgdHJpc3RhdGUgIk5WSURJQSBU
ZWdyYSBWaWRlbyBEZWNvZGVyIEVuZ2luZSBkcml2ZXIiCj4gPiAgICAgICBkZXBlbmRzIG9uIEFS
Q0hfVEVHUkEgfHwgQ09NUElMRV9URVNUCj4gPiAgICAgICBzZWxlY3QgRE1BX1NIQVJFRF9CVUZG
RVIKPiA+IC0gICAgIHNlbGVjdCBJT01NVV9JT1ZBIGlmIElPTU1VX1NVUFBPUlQKPiA+ICsgICAg
IHNlbGVjdCBJT01NVV9JT1ZBIGlmIChJT01NVV9TVVBQT1JUIHx8IENPTVBJTEVfVEVTVCkKPiA+
ICAgICAgIHNlbGVjdCBTUkFNCj4gPiAgICAgICBoZWxwCj4gPiAgICAgICAgICAgU2F5IFkgaGVy
ZSB0byBlbmFibGUgc3VwcG9ydCBmb3IgdGhlIE5WSURJQSBUZWdyYSB2aWRlbyBkZWNvZGVyCj4g
Pgo+Cj4gVGhpcyByZXN1bHRzIGluIG1pc3NpbmcgdGhlIGNhc2Ugb2YgY29tcGlsZS10ZXN0aW5n
ICFJT01NVV9JT1ZBIGZvciB0aGUKPiBkcml2ZXIsIGJ1dCBwcm9iYWJseSB0aGF0J3Mgbm90IGEg
YmlnIGRlYWwuCj4KPiBBY2tlZC1ieTogRG1pdHJ5IE9zaXBlbmtvIDxkaWdldHhAZ21haWwuY29t
PgoKSSBkb24ndCBrbm93IHdoYXQgaGFwcGVuZWQgaGVyZSwgYnV0IHRoZSBwYXRjaCBmcm9tIFl1
ZUhhaWJpbmcgY2F1c2VkIHRoaXMKZXJyb3IgZm9yIG1lLCB3aGljaCBpcyB2ZXJ5IG11Y2ggbGlr
ZSB0aGUgcHJvYmxlbSBpdCB3YXMgbWVhbnQgdG8gZml4OgoKZHJpdmVycy9ncHUvaG9zdDF4L2Rl
di5vOiBJbiBmdW5jdGlvbiBgaG9zdDF4X3Byb2JlJzoKZGV2LmM6KC50ZXh0KzB4MTczNCk6IHVu
ZGVmaW5lZCByZWZlcmVuY2UgdG8gYHB1dF9pb3ZhX2RvbWFpbicKZGV2LmM6KC50ZXh0KzB4MTc0
NCk6IHVuZGVmaW5lZCByZWZlcmVuY2UgdG8gYGlvdmFfY2FjaGVfcHV0Jwpkcml2ZXJzL2dwdS9o
b3N0MXgvZGV2Lm86IEluIGZ1bmN0aW9uIGBob3N0MXhfcmVtb3ZlJzoKZGV2LmM6KC50ZXh0KzB4
MTg5NCk6IHVuZGVmaW5lZCByZWZlcmVuY2UgdG8gYHB1dF9pb3ZhX2RvbWFpbicKZGV2LmM6KC50
ZXh0KzB4MTg5OCk6IHVuZGVmaW5lZCByZWZlcmVuY2UgdG8gYGlvdmFfY2FjaGVfcHV0Jwpkcml2
ZXJzL2dwdS9ob3N0MXgvY2RtYS5vOiBJbiBmdW5jdGlvbiBgaG9zdDF4X2NkbWFfaW5pdCc6CmNk
bWEuYzooLnRleHQrMHg1ZDApOiB1bmRlZmluZWQgcmVmZXJlbmNlIHRvIGBhbGxvY19pb3ZhJwpj
ZG1hLmM6KC50ZXh0KzB4NjFjKTogdW5kZWZpbmVkIHJlZmVyZW5jZSB0byBgX19mcmVlX2lvdmEn
CmRyaXZlcnMvZ3B1L2hvc3QxeC9jZG1hLm86IEluIGZ1bmN0aW9uIGBob3N0MXhfY2RtYV9kZWlu
aXQnOgpjZG1hLmM6KC50ZXh0KzB4NmM4KTogdW5kZWZpbmVkIHJlZmVyZW5jZSB0byBgZnJlZV9p
b3ZhJwpkcml2ZXJzL2dwdS9ob3N0MXgvam9iLm86IEluIGZ1bmN0aW9uIGBob3N0MXhfam9iX3Bp
bic6CmpvYi5jOigudGV4dCsweDUxNCk6IHVuZGVmaW5lZCByZWZlcmVuY2UgdG8gYGFsbG9jX2lv
dmEnCmpvYi5jOigudGV4dCsweDUyOCk6IHVuZGVmaW5lZCByZWZlcmVuY2UgdG8gYF9fZnJlZV9p
b3ZhJwpkcml2ZXJzL2dwdS9ob3N0MXgvam9iLm86IEluIGZ1bmN0aW9uIGBob3N0MXhfam9iX3Vu
cGluJzoKam9iLmM6KC50ZXh0KzB4NWJjKTogdW5kZWZpbmVkIHJlZmVyZW5jZSB0byBgZnJlZV9p
b3ZhJwoKQWZ0ZXIgcmV2ZXJ0aGluZyBjb21taXQgNmIyMjY1OTc1MjM5ICgibWVkaWE6IHN0YWdp
bmc6CnRlZ3JhLXZkZTogRml4IGJ1aWxkIGVycm9yIiksIEkgY2FuIG5vIGxvbmdlciByZXByb2R1
Y2UgdGhlCmlzc3VlLgoKICAgICAgIEFybmQKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJv
amVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4v
bGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==

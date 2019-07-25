Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13A1F74800
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Jul 2019 09:19:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2622988012;
	Thu, 25 Jul 2019 07:19:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6P5T+pKStZjt; Thu, 25 Jul 2019 07:19:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id AAA9687F9F;
	Thu, 25 Jul 2019 07:19:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A04DD1BF4D6
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 07:19:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9D5B3861EE
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 07:19:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o9zf07Mz5uJM for <devel@linuxdriverproject.org>;
 Thu, 25 Jul 2019 07:19:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8E44A861D7
 for <devel@driverdev.osuosl.org>; Thu, 25 Jul 2019 07:19:17 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id k18so46953671ljc.11
 for <devel@driverdev.osuosl.org>; Thu, 25 Jul 2019 00:19:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=DwIfRA6fcW2oe7CbnwGUIqq7af18U05Jyy+yWqYqM5c=;
 b=fDS+98o9oalApKwxVG4RF/dDFVdI9yPmoz5I/YflcP8OTzLCsqj2s/Lw7gaK0ZlgzE
 YT2QDp+xw78giiso+t9s9p/uQmOwlXpwbJXXZdLif3T0KVGo86suj2LbKnKzfPaDOnKZ
 OxiBxBkuwoibEeO9CMWm6usPAJ4t9/BC1/jq/JAZq9T3AzogJ0dOl6vL7rspjXuFKNuP
 YujnoqZsKobRZkeGBKUM81yZF/AMDtbkJ94t1+xOlJvYaRKaCwD1wYYu8GdfJbXBy0iK
 Mr/SfnBladD45nbmVG2ov2H0mNdGpkR6IxIyJog58mRHdV5B4VB/xaIiaU/trnnzsOmy
 2ncA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=DwIfRA6fcW2oe7CbnwGUIqq7af18U05Jyy+yWqYqM5c=;
 b=bpofExBDzgxwXIh0TlyQ3kATZRLLibkQHOOZGOwGvf4T3BrL6+8MBuwM2G5djQZnLv
 dT3araiJG6ssilQlKq9yq6M5RiY2Yz1WaYVWLQvqEh42K4L9GUfI4Nk8OzqZFq91QGp/
 W5FJ+SHaPLnmugOddfpXCZWrbHMdDRuSV5dDc/8yMlu3SBYkLXJP7h6mYPa/gp1g2g64
 bXSGaWQ+GSfRmoPWDIzrz8bLasseCp7WxVPY0f1Q3I0atfjqIB3O20i1dkeIZ4WqkIGL
 jjKGwNzCyoGChr9jVlWgYLzuMjtCw57l2qUNKEofQiJnqtUoaiexcQEvkfOeIzlo00tI
 /iBA==
X-Gm-Message-State: APjAAAU7BgZZL+cgDXD6BBtc/KScJVT+gVD2KuorY5FgC9ovEU4NbzGu
 UmTSr4jkhWOJx9hZQ/4zQqA=
X-Google-Smtp-Source: APXvYqxprjXpA4VtptPUsVGzv6lssMvOez7iIOSBw530C47pRhsph33mQPMj4q73tDMwTwnr11zYqQ==
X-Received: by 2002:a2e:63cd:: with SMTP id s74mr44547114lje.164.1564039155632; 
 Thu, 25 Jul 2019 00:19:15 -0700 (PDT)
Received: from [192.168.2.145] (ppp91-78-220-99.pppoe.mtu-net.ru.
 [91.78.220.99])
 by smtp.googlemail.com with ESMTPSA id q21sm7370835lfc.96.2019.07.25.00.19.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 25 Jul 2019 00:19:14 -0700 (PDT)
Subject: Re: [PATCH] media: staging: tegra-vde: Fix build error
To: YueHaibing <yuehaibing@huawei.com>, mchehab@kernel.org,
 gregkh@linuxfoundation.org, thierry.reding@gmail.com, jonathanh@nvidia.com,
 robin.murphy@arm.com, sakari.ailus@linux.intel.com
References: <dc354ede-5963-cd7f-ee53-f3df3061d39a@gmail.com>
 <20190725024129.22664-1-yuehaibing@huawei.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <dd547b44-7abb-371f-aeee-a82b96f824e2@gmail.com>
Date: Thu, 25 Jul 2019 10:19:13 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190725024129.22664-1-yuehaibing@huawei.com>
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
Cc: devel@driverdev.osuosl.org, linux-tegra@vger.kernel.org,
 iommu@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

MjUuMDcuMjAxOSA1OjQxLCBZdWVIYWliaW5nINC/0LjRiNC10YI6Cj4gSWYgSU9NTVVfU1VQUE9S
VCBpcyBub3Qgc2V0LCBhbmQgQ09NUElMRV9URVNUIGlzIHksCj4gSU9NTVVfSU9WQSBtYXkgYmUg
c2V0IHRvIG0uIFNvIGJ1aWxkaW5nIHdpbGwgZmFpbHM6Cj4gCj4gZHJpdmVycy9zdGFnaW5nL21l
ZGlhL3RlZ3JhLXZkZS9pb21tdS5vOiBJbiBmdW5jdGlvbiBgdGVncmFfdmRlX2lvbW11X21hcCc6
Cj4gaW9tbXUuYzooLnRleHQrMHg0MSk6IHVuZGVmaW5lZCByZWZlcmVuY2UgdG8gYGFsbG9jX2lv
dmEnCj4gaW9tbXUuYzooLnRleHQrMHg1Nik6IHVuZGVmaW5lZCByZWZlcmVuY2UgdG8gYF9fZnJl
ZV9pb3ZhJwo+IAo+IFNlbGVjdCBJT01NVV9JT1ZBIHdoaWxlIENPTVBJTEVfVEVTVCBpcyBzZXQg
dG8gZml4IHRoaXMuCj4gCj4gUmVwb3J0ZWQtYnk6IEh1bGsgUm9ib3QgPGh1bGtjaUBodWF3ZWku
Y29tPgo+IFN1Z2dlc3RlZC1ieTogRG1pdHJ5IE9zaXBlbmtvIDxkaWdldHhAZ21haWwuY29tPgo+
IEZpeGVzOiBiMzAxZjhkZTE5MjUgKCJtZWRpYTogc3RhZ2luZzogbWVkaWE6IHRlZ3JhLXZkZTog
QWRkIElPTU1VIHN1cHBvcnQiKQo+IFNpZ25lZC1vZmYtYnk6IFl1ZUhhaWJpbmcgPHl1ZWhhaWJp
bmdAaHVhd2VpLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9zdGFnaW5nL21lZGlhL3RlZ3JhLXZkZS9L
Y29uZmlnIHwgMiArLQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRp
b24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL3RlZ3JhLXZkZS9L
Y29uZmlnIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL3RlZ3JhLXZkZS9LY29uZmlnCj4gaW5kZXgg
MmU3ZjY0NC4uYmE0OWVhNSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvdGVn
cmEtdmRlL0tjb25maWcKPiArKysgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvdGVncmEtdmRlL0tj
b25maWcKPiBAQCAtMyw3ICszLDcgQEAgY29uZmlnIFRFR1JBX1ZERQo+ICAJdHJpc3RhdGUgIk5W
SURJQSBUZWdyYSBWaWRlbyBEZWNvZGVyIEVuZ2luZSBkcml2ZXIiCj4gIAlkZXBlbmRzIG9uIEFS
Q0hfVEVHUkEgfHwgQ09NUElMRV9URVNUCj4gIAlzZWxlY3QgRE1BX1NIQVJFRF9CVUZGRVIKPiAt
CXNlbGVjdCBJT01NVV9JT1ZBIGlmIElPTU1VX1NVUFBPUlQKPiArCXNlbGVjdCBJT01NVV9JT1ZB
IGlmIChJT01NVV9TVVBQT1JUIHx8IENPTVBJTEVfVEVTVCkKPiAgCXNlbGVjdCBTUkFNCj4gIAlo
ZWxwCj4gIAkgICAgU2F5IFkgaGVyZSB0byBlbmFibGUgc3VwcG9ydCBmb3IgdGhlIE5WSURJQSBU
ZWdyYSB2aWRlbyBkZWNvZGVyCj4gCgpUaGlzIHJlc3VsdHMgaW4gbWlzc2luZyB0aGUgY2FzZSBv
ZiBjb21waWxlLXRlc3RpbmcgIUlPTU1VX0lPVkEgZm9yIHRoZQpkcml2ZXIsIGJ1dCBwcm9iYWJs
eSB0aGF0J3Mgbm90IGEgYmlnIGRlYWwuCgpBY2tlZC1ieTogRG1pdHJ5IE9zaXBlbmtvIDxkaWdl
dHhAZ21haWwuY29tPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRw
Oi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2
ZXJkZXYtZGV2ZWwK

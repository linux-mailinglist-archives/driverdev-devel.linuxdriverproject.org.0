Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FEB61260CC
	for <lists+driverdev-devel@lfdr.de>; Thu, 19 Dec 2019 12:27:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1957688686;
	Thu, 19 Dec 2019 11:27:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F8Gh8a+-RScz; Thu, 19 Dec 2019 11:27:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 21A38885BD;
	Thu, 19 Dec 2019 11:27:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 090CE1BF409
 for <devel@linuxdriverproject.org>; Thu, 19 Dec 2019 11:27:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 04B17203C7
 for <devel@linuxdriverproject.org>; Thu, 19 Dec 2019 11:27:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id osMDYKw7gGwg for <devel@linuxdriverproject.org>;
 Thu, 19 Dec 2019 11:27:07 +0000 (UTC)
X-Greylist: delayed 00:25:14 by SQLgrey-1.7.6
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com
 [209.85.222.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 6320B2038D
 for <devel@driverdev.osuosl.org>; Thu, 19 Dec 2019 11:27:07 +0000 (UTC)
Received: by mail-qk1-f196.google.com with SMTP id c17so4326525qkg.7
 for <devel@driverdev.osuosl.org>; Thu, 19 Dec 2019 03:27:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=r4FrNo5LLEspvU9m0EiGD3eytJBEaYUVyq8SH3ZcE3o=;
 b=C0W0Svkg0Llp9ZQuiZFYuGlJcklhQKzim592wdhPRyuZfzvO6Sy8GmgRlXLBdYyg8M
 CnrXmmjidsnz1OPlJ7lXISjmdDSwrtPul+4xso+ezWUJxWZKbQLz/mVUb+ZLF+eH9bTQ
 u75sjyRdj/GEuKHBsLnLOh9VFM4yqIFq36tZDoF6mvyeqaatSfPS9TCEk4HMmDsOFcz0
 WNHxhb1zWXDPywtVLafp3q4kuWplraaVjhNkKR/AiGQMnOon2GZ66zSaq0dyvqUj5U8D
 WAhrOKJsCtgkz2d5eRKxlVtMQKHP0XMUdWi5RzJITjwMjKCCJmwKqBNgL0SfgwQBAczw
 lsog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=r4FrNo5LLEspvU9m0EiGD3eytJBEaYUVyq8SH3ZcE3o=;
 b=h1fWtk3a94EOcaBxYy5rsdPsytYe9MFHllWu3QJN08z73oBeCJHn4sD/CccS+RJsMA
 f0ZQDF1pI8OzMfVXoSoW2sBJyE8ZOc8OUfikcA5bdpEdDsjjPrhuz64JyuZVezzvJOk1
 szmVebZYy7DYV/uxhik0TgHVgj3ytY7llBMO/pMsA47HNwA4LEKLT+HUDa8SNFvlkCVd
 t34v0feYVc7HqZvbb8vky3zaBsaswgzmOnmfvHFYKQ4GJJ6WIQkEqV7i9+PKiRijBJKk
 SBYDaPz/e5wP+mU4s8D3+VYn3py1Iw25XGuHrAiXFHE0Q1LfeagGEML1qqL4oclbxGDn
 AprA==
X-Gm-Message-State: APjAAAVzE793S19HiFn9yIvxHZuK+UWQ72ppNuYVmmmIWqnKRffOqCzy
 dBhwOJ3iF1JrztFi8wo/c6gJ0c4E8LWpFOZE41SMLOEP
X-Google-Smtp-Source: APXvYqy4PaZdM7lBnMAneYnTWwRA+ttNw2J5709a9anujnDKaPB/StYNQhpvIdo1lY7WcNj00iKtDkcKHWISHo02XbM=
X-Received: by 2002:a37:6fc4:: with SMTP id k187mr7098160qkc.21.1576753312007; 
 Thu, 19 Dec 2019 03:01:52 -0800 (PST)
MIME-Version: 1.0
References: <20191215183047.9414-1-digetx@gmail.com>
 <20191215183047.9414-2-digetx@gmail.com>
In-Reply-To: <20191215183047.9414-2-digetx@gmail.com>
From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Thu, 19 Dec 2019 12:01:41 +0100
Message-ID: <CAMpxmJUmLOZoKeeo4XMVEOWKRgwfS4O2szVboY-qTTYXg_aTVg@mail.gmail.com>
Subject: Re: [PATCH v1 1/3] gpio: tegra: Use generic
 readl_relaxed/writel_relaxed accessors
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
Cc: devel@driverdev.osuosl.org, Linus Walleij <linus.walleij@linaro.org>,
 LKML <linux-kernel@vger.kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-gpio <linux-gpio@vger.kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>, linux-tegra@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

bmllZHouLCAxNSBncnUgMjAxOSBvIDE5OjMxIERtaXRyeSBPc2lwZW5rbyA8ZGlnZXR4QGdtYWls
LmNvbT4gbmFwaXNhxYIoYSk6Cj4KPiBUaGVyZSBpcyBubyBwb2ludCBpbiB1c2luZyBvbGQtc3R5
bGUgcmF3IGFjY2Vzc29ycywgdGhlIGdlbmVyaWMgYWNjZXNzb3JzCj4gZG8gdGhlIHNhbWUgdGhp
bmcgYW5kIGFsc28gdGFrZSBpbnRvIGFjY291bnQgQ1BVIGVuZGlhbm5lc3MuIFRlZ3JhIFNvQ3Mg
ZG8KPiBub3Qgc3VwcG9ydCBiaWctZW5kaWFuIG1vZGUgaW4gdGhlIHVwc3RyZWFtIGtlcm5lbCwg
YnV0IGxldCdzIHN3aXRjaCBhd2F5Cj4gZnJvbSB0aGUgb3V0ZGF0ZWQgdGhpbmdzIGFueXdheSwg
anVzdCB0byBrZWVwIGNvZGUgdXAtdG8tZGF0ZS4KPgo+IFNpZ25lZC1vZmYtYnk6IERtaXRyeSBP
c2lwZW5rbyA8ZGlnZXR4QGdtYWlsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncGlvL2dwaW8tdGVn
cmEuYyB8IDQgKystLQo+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0
aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3Bpby9ncGlvLXRlZ3JhLmMgYi9kcml2
ZXJzL2dwaW8vZ3Bpby10ZWdyYS5jCj4gaW5kZXggNmZkZmU0YzUzMDNlLi5mNmEzODJmYmQxMmQg
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncGlvL2dwaW8tdGVncmEuYwo+ICsrKyBiL2RyaXZlcnMv
Z3Bpby9ncGlvLXRlZ3JhLmMKPiBAQCAtOTYsMTIgKzk2LDEyIEBAIHN0cnVjdCB0ZWdyYV9ncGlv
X2luZm8gewo+ICBzdGF0aWMgaW5saW5lIHZvaWQgdGVncmFfZ3Bpb193cml0ZWwoc3RydWN0IHRl
Z3JhX2dwaW9faW5mbyAqdGdpLAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICB1MzIgdmFsLCB1MzIgcmVnKQo+ICB7Cj4gLSAgICAgICBfX3Jhd193cml0ZWwodmFsLCB0Z2kt
PnJlZ3MgKyByZWcpOwo+ICsgICAgICAgd3JpdGVsX3JlbGF4ZWQodmFsLCB0Z2ktPnJlZ3MgKyBy
ZWcpOwo+ICB9Cj4KPiAgc3RhdGljIGlubGluZSB1MzIgdGVncmFfZ3Bpb19yZWFkbChzdHJ1Y3Qg
dGVncmFfZ3Bpb19pbmZvICp0Z2ksIHUzMiByZWcpCj4gIHsKPiAtICAgICAgIHJldHVybiBfX3Jh
d19yZWFkbCh0Z2ktPnJlZ3MgKyByZWcpOwo+ICsgICAgICAgcmV0dXJuIHJlYWRsX3JlbGF4ZWQo
dGdpLT5yZWdzICsgcmVnKTsKPiAgfQo+Cj4gIHN0YXRpYyB1bnNpZ25lZCBpbnQgdGVncmFfZ3Bp
b19jb21wb3NlKHVuc2lnbmVkIGludCBiYW5rLCB1bnNpZ25lZCBpbnQgcG9ydCwKPiAtLQo+IDIu
MjQuMAo+CgpUaGUgZW50aXJlIHNlcmllcyBsb29rcyBnb29kIHRvIG1lLCBidXQgSSdsbCB3YWl0
IGZvciBUaGllcnJ5J3MgYWNrcwpqdXN0IGluIGNhc2UuCgpCYXJ0Cl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBs
aW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A97281265B2
	for <lists+driverdev-devel@lfdr.de>; Thu, 19 Dec 2019 16:26:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 311D786FA3;
	Thu, 19 Dec 2019 15:26:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MMg-RO_w8tvr; Thu, 19 Dec 2019 15:26:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0730186EC7;
	Thu, 19 Dec 2019 15:26:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 105DB1BF599
 for <devel@linuxdriverproject.org>; Thu, 19 Dec 2019 15:25:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 09F58203D5
 for <devel@linuxdriverproject.org>; Thu, 19 Dec 2019 15:25:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OPddWBfkG-F8 for <devel@linuxdriverproject.org>;
 Thu, 19 Dec 2019 15:25:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com
 [209.85.208.193])
 by silver.osuosl.org (Postfix) with ESMTPS id E1A8B20379
 for <devel@driverdev.osuosl.org>; Thu, 19 Dec 2019 15:25:55 +0000 (UTC)
Received: by mail-lj1-f193.google.com with SMTP id e28so6665937ljo.9
 for <devel@driverdev.osuosl.org>; Thu, 19 Dec 2019 07:25:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=yqXyqCEU/X28oi4oNMERZW19vUW8+ITl1VJ657B32AQ=;
 b=F63mDoYG+4XNcwtFC5rbojj7p2G1SYZ2dSzGNihTpA6GQ5Eaq8AB4BevQ7HB/YXE6L
 JDsuyeAN1tABCdOus9JeI0o/m29KUb42zGru4W+kyZENE1F078cKFExWKODh76lPV9v/
 lKVRrBfEFEy0G2UoGF7HPeLjNCOFcuB8pD1z3i1060LdMdG/3hkFVVQlEdSjG5oIWdMD
 4sRASqkHA5CGV/yTgttZnRKAWK7dR07tZSzFVLMvsXNYqVF6I5ihnPzbPFE+jAv0sAxw
 2Y+10PXQHiPIpy3+7u2QJafe17FzsmQt6Cwwd+xIEM5CPQOft72hxhno5U1Q6bOu5f8d
 0KbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=yqXyqCEU/X28oi4oNMERZW19vUW8+ITl1VJ657B32AQ=;
 b=LnW/Bjv2LM4SKPdt+RsLqaEjmJINHQIfvhyDr+cKPM+4e+R1F3cX76oVEpD9fj22xu
 3XS4PSOraGDCzhnElbTp2reXOT6IHHH3IMo57X3zWcQscRbIZItWlr+JxeyMCzVsSwwU
 yrEjO2drvkSls1q2QzKRG86hbrSwqnGBK8iT9uB1zwlhrgSJ8a/PRMMAvE/PqeO3jaQD
 DaHub7ZMMSqnkS2KuYRVIJKk/2WHlNVKPUZhqG+8ym6F2fjuitrOUxblu1vxdWc4CvP4
 0MnxxYt4BgpCO4TP58lMuSlsmYaWGoqbg+cesK46md0YPO8kbU6uK4wwrWhKKK8cXi2A
 I8qg==
X-Gm-Message-State: APjAAAWly1EVGDVHKBRHqkJ635d2ODGB+Q0XmlL3l82vwAIdrYpSNX36
 cx4JPawEJviL2xYMb0BJuMA=
X-Google-Smtp-Source: APXvYqy5diovob/ZJdsyh0gLijnyKUDNXGbYOijwkRSTKNzQJaAtxAWV4K6nd87cOjuAx212Bmq/jA==
X-Received: by 2002:a2e:81c7:: with SMTP id s7mr6419075ljg.3.1576769153989;
 Thu, 19 Dec 2019 07:25:53 -0800 (PST)
Received: from [192.168.2.145] (79-139-233-37.dynamic.spd-mgts.ru.
 [79.139.233.37])
 by smtp.googlemail.com with ESMTPSA id e9sm2922774ljp.87.2019.12.19.07.25.53
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 19 Dec 2019 07:25:53 -0800 (PST)
Subject: Re: [PATCH v1 1/3] gpio: tegra: Use generic
 readl_relaxed/writel_relaxed accessors
To: Bartosz Golaszewski <bgolaszewski@baylibre.com>
References: <20191215183047.9414-1-digetx@gmail.com>
 <20191215183047.9414-2-digetx@gmail.com>
 <CAMpxmJUmLOZoKeeo4XMVEOWKRgwfS4O2szVboY-qTTYXg_aTVg@mail.gmail.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <1e214577-1abe-22e6-ca55-2e9806fdb9b0@gmail.com>
Date: Thu, 19 Dec 2019 18:25:52 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <CAMpxmJUmLOZoKeeo4XMVEOWKRgwfS4O2szVboY-qTTYXg_aTVg@mail.gmail.com>
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
Cc: devel@driverdev.osuosl.org, Linus Walleij <linus.walleij@linaro.org>,
 LKML <linux-kernel@vger.kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-gpio <linux-gpio@vger.kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>, linux-tegra@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

MTkuMTIuMjAxOSAxNDowMSwgQmFydG9zeiBHb2xhc3pld3NraSDQv9C40YjQtdGCOgo+IG5pZWR6
LiwgMTUgZ3J1IDIwMTkgbyAxOTozMSBEbWl0cnkgT3NpcGVua28gPGRpZ2V0eEBnbWFpbC5jb20+
IG5hcGlzYcWCKGEpOgo+Pgo+PiBUaGVyZSBpcyBubyBwb2ludCBpbiB1c2luZyBvbGQtc3R5bGUg
cmF3IGFjY2Vzc29ycywgdGhlIGdlbmVyaWMgYWNjZXNzb3JzCj4+IGRvIHRoZSBzYW1lIHRoaW5n
IGFuZCBhbHNvIHRha2UgaW50byBhY2NvdW50IENQVSBlbmRpYW5uZXNzLiBUZWdyYSBTb0NzIGRv
Cj4+IG5vdCBzdXBwb3J0IGJpZy1lbmRpYW4gbW9kZSBpbiB0aGUgdXBzdHJlYW0ga2VybmVsLCBi
dXQgbGV0J3Mgc3dpdGNoIGF3YXkKPj4gZnJvbSB0aGUgb3V0ZGF0ZWQgdGhpbmdzIGFueXdheSwg
anVzdCB0byBrZWVwIGNvZGUgdXAtdG8tZGF0ZS4KPj4KPj4gU2lnbmVkLW9mZi1ieTogRG1pdHJ5
IE9zaXBlbmtvIDxkaWdldHhAZ21haWwuY29tPgo+PiAtLS0KPj4gIGRyaXZlcnMvZ3Bpby9ncGlv
LXRlZ3JhLmMgfCA0ICsrLS0KPj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIg
ZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwaW8vZ3Bpby10ZWdyYS5j
IGIvZHJpdmVycy9ncGlvL2dwaW8tdGVncmEuYwo+PiBpbmRleCA2ZmRmZTRjNTMwM2UuLmY2YTM4
MmZiZDEyZCAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncGlvL2dwaW8tdGVncmEuYwo+PiArKysg
Yi9kcml2ZXJzL2dwaW8vZ3Bpby10ZWdyYS5jCj4+IEBAIC05NiwxMiArOTYsMTIgQEAgc3RydWN0
IHRlZ3JhX2dwaW9faW5mbyB7Cj4+ICBzdGF0aWMgaW5saW5lIHZvaWQgdGVncmFfZ3Bpb193cml0
ZWwoc3RydWN0IHRlZ3JhX2dwaW9faW5mbyAqdGdpLAo+PiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgdTMyIHZhbCwgdTMyIHJlZykKPj4gIHsKPj4gLSAgICAgICBfX3Jhd193
cml0ZWwodmFsLCB0Z2ktPnJlZ3MgKyByZWcpOwo+PiArICAgICAgIHdyaXRlbF9yZWxheGVkKHZh
bCwgdGdpLT5yZWdzICsgcmVnKTsKPj4gIH0KPj4KPj4gIHN0YXRpYyBpbmxpbmUgdTMyIHRlZ3Jh
X2dwaW9fcmVhZGwoc3RydWN0IHRlZ3JhX2dwaW9faW5mbyAqdGdpLCB1MzIgcmVnKQo+PiAgewo+
PiAtICAgICAgIHJldHVybiBfX3Jhd19yZWFkbCh0Z2ktPnJlZ3MgKyByZWcpOwo+PiArICAgICAg
IHJldHVybiByZWFkbF9yZWxheGVkKHRnaS0+cmVncyArIHJlZyk7Cj4+ICB9Cj4+Cj4+ICBzdGF0
aWMgdW5zaWduZWQgaW50IHRlZ3JhX2dwaW9fY29tcG9zZSh1bnNpZ25lZCBpbnQgYmFuaywgdW5z
aWduZWQgaW50IHBvcnQsCj4+IC0tCj4+IDIuMjQuMAo+Pgo+IAo+IFRoZSBlbnRpcmUgc2VyaWVz
IGxvb2tzIGdvb2QgdG8gbWUsIGJ1dCBJJ2xsIHdhaXQgZm9yIFRoaWVycnkncyBhY2tzCj4ganVz
dCBpbiBjYXNlLgoKVGhhbmsgeW91IHZlcnkgbXVjaCBmb3IgdGFraW5nIGEgbG9vayBhdCB0aGUg
cGF0Y2hlcyEKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
ZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2Ry
aXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2
LWRldmVsCg==

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F88F48455
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Jun 2019 15:45:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id EACB22045E;
	Mon, 17 Jun 2019 13:45:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sbd76LpwcTmd; Mon, 17 Jun 2019 13:45:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 947F920451;
	Mon, 17 Jun 2019 13:45:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BF9C71BF865
 for <devel@linuxdriverproject.org>; Mon, 17 Jun 2019 13:45:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BBB512035D
 for <devel@linuxdriverproject.org>; Mon, 17 Jun 2019 13:45:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sqYM47Z6q3ND for <devel@linuxdriverproject.org>;
 Mon, 17 Jun 2019 13:44:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 78BB12037A
 for <devel@driverdev.osuosl.org>; Mon, 17 Jun 2019 13:44:59 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id g135so9324086wme.4
 for <devel@driverdev.osuosl.org>; Mon, 17 Jun 2019 06:44:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=OQWr/q8FG80RylP2O4RMDll4yVbzxbxdT0J72wII+Wg=;
 b=LwIKOUf/XcyQRDlCLWbs7G0s7dyJ490GnLSVJlYt3gqfnnnDHFvIlSIq5KPkdWbbr0
 EbpWL2q2VgT/ClXJzEhwTixO1Dm9tmmkKJOGlOEY2Ua7i+HUt/tZYwqoVKYwQjUCHtPz
 YNan3jXi2xtT6x8yGJitrLsraYcw8glXH7N90j58Xvd3Gqx6GhdC9wB27qOHX/dFjOvt
 ZClIi38D4eYqSWn57UX1pxcIbbrHiyn7+4My8F56ZHwdilRyjaTFnhtuLnMxl/mmEq2V
 tsWqE3Ob5RyTSyAjDi8dFjLzzR+eEVxdNiWwta4B7/vIV7ZAHcQYhXAsCwfvC4UL5+Hi
 TgZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=OQWr/q8FG80RylP2O4RMDll4yVbzxbxdT0J72wII+Wg=;
 b=SD4bwRY5h+iR8OUJarZcjYNHqaRGfsYhZdLeQhXIDgCOrqYGwW7RXwpHpEfl3OzYl3
 6qlhBME5ezgMDlhvVkDoBa5EEIGiSVMcYa6+CHfVQ7pclyaoGbjRIDlMukN9iH99kO9s
 XtYOrKap7yq5Kfny5L9Sod4pUe56l1qBROAZB7IC6lg8F+R9WCzZLVJwjU+Dg/TOuZGx
 8mNjsooCU/QLlq01Lxa+uIJj4nCJJYIVN+j2+i9ZxQCu+mt+LywFIlKalzTwPepJah3I
 GN2HPNq4HTB8eOVZxvPERpADsZBi9+sj1U3CgelUDyrBI9uJqcUqvut82yLMCaX3GtHG
 cT4Q==
X-Gm-Message-State: APjAAAVA9BMCN7uxliymQw8aYURE/8tUbv5BahrvkQDnDOJgwR2FQK+F
 OUws5CCpVBv73Ohj9w7tE9o=
X-Google-Smtp-Source: APXvYqxSeM5EsXbMda9TmrGNmeq5fBAHHZM3UH8tyUUCj8zDvtqesxiAf64l7OGeHOh3fwdRHY6sQg==
X-Received: by 2002:a1c:cb4d:: with SMTP id b74mr19769936wmg.43.1560779098118; 
 Mon, 17 Jun 2019 06:44:58 -0700 (PDT)
Received: from [192.168.2.145] (ppp91-79-162-197.pppoe.mtu-net.ru.
 [91.79.162.197])
 by smtp.googlemail.com with ESMTPSA id 18sm9666582wmg.43.2019.06.17.06.44.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 06:44:57 -0700 (PDT)
Subject: Re: [PATCH v1 4/4] staging: media: tegra-vde: Defer dmabuf's unmapping
To: Hans Verkuil <hverkuil@xs4all.nl>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh+dt@kernel.org>
References: <20190602213712.26857-1-digetx@gmail.com>
 <20190602213712.26857-8-digetx@gmail.com>
 <4c00cfe6-6598-2017-cce5-ce3c30fd14ba@xs4all.nl>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <9bc14323-6c7e-54ff-50d6-48260ad9ea8c@gmail.com>
Date: Mon, 17 Jun 2019 16:44:56 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <4c00cfe6-6598-2017-cce5-ce3c30fd14ba@xs4all.nl>
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
Cc: linux-tegra@vger.kernel.org, devicetree@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

MTcuMDYuMjAxOSAxNjozMywgSGFucyBWZXJrdWlsINC/0LjRiNC10YI6Cj4gT24gNi8yLzE5IDEx
OjM3IFBNLCBEbWl0cnkgT3NpcGVua28gd3JvdGU6Cj4+IEZyZXF1ZW50IElPTU1VIHJlbWFwcGlu
Z3MgdGFrZSBhYm91dCA1MCUgb2YgQ1BVIHVzYWdlIGJlY2F1c2UgdGhlcmUgaXMKPj4gcXVpdGUg
YSBsb3QgdG8gcmVtYXAuIERlZmVyIGRtYWJ1ZidzIHVubWFwcGluZyBieSA1IHNlY29uZHMgaW4g
b3JkZXIgdG8KPj4gbWl0aWdhdGUgdGhlIG1hcHBpbmcgb3ZlcmhlYWQgd2hpY2ggZ29lcyBhd2F5
IGNvbXBsZXRlbHkgYW5kIGRyaXZlciB3b3Jrcwo+PiBhcyBmYXN0IGFzIGluIGEgY2FzZSBvZiBh
IGRpc2FibGVkIElPTU1VLiBUaGUgY2FzZSBvZiBhIGRpc2FibGVkIElPTU1VCj4+IHNob3VsZCBh
bHNvIGJlbmVmaXQgYSB0YWQgZnJvbSB0aGUgY2FjaGluZyBzaW5jZSBDUFUgY2FjaGUgbWFpbnRl
bmFuY2UKPj4gdGhhdCBoYXBwZW5zIG9uIGRtYWJ1ZidzIGF0dGFjaGluZyB0YWtlcyBzb21lIHJl
c291cmNlcy4KPj4KPj4gU2lnbmVkLW9mZi1ieTogRG1pdHJ5IE9zaXBlbmtvIDxkaWdldHhAZ21h
aWwuY29tPgo+PiAtLS0KPj4gIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS90ZWdyYS12ZGUvTWFrZWZp
bGUgICAgICB8ICAgMiArLQo+PiAgLi4uL3N0YWdpbmcvbWVkaWEvdGVncmEtdmRlL2RtYWJ1Zi1j
YWNoZS5jICAgIHwgMjIzICsrKysrKysrKysrKysrKysrKwo+PiAgZHJpdmVycy9zdGFnaW5nL21l
ZGlhL3RlZ3JhLXZkZS9pb21tdS5jICAgICAgIHwgICAyIC0KPj4gIGRyaXZlcnMvc3RhZ2luZy9t
ZWRpYS90ZWdyYS12ZGUvdmRlLmMgICAgICAgICB8IDE0MyArKystLS0tLS0tLQo+PiAgZHJpdmVy
cy9zdGFnaW5nL21lZGlhL3RlZ3JhLXZkZS92ZGUuaCAgICAgICAgIHwgIDE4ICstCj4+ICA1IGZp
bGVzIGNoYW5nZWQsIDI3MyBpbnNlcnRpb25zKCspLCAxMTUgZGVsZXRpb25zKC0pCj4+ICBjcmVh
dGUgbW9kZSAxMDA2NDQgZHJpdmVycy9zdGFnaW5nL21lZGlhL3RlZ3JhLXZkZS9kbWFidWYtY2Fj
aGUuYwo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL3RlZ3JhLXZkZS9N
YWtlZmlsZSBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS90ZWdyYS12ZGUvTWFrZWZpbGUKPj4gaW5k
ZXggYzExODY3ZTI4MjMzLi4yODI3Zjc2MDFkZTggMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvc3Rh
Z2luZy9tZWRpYS90ZWdyYS12ZGUvTWFrZWZpbGUKPj4gKysrIGIvZHJpdmVycy9zdGFnaW5nL21l
ZGlhL3RlZ3JhLXZkZS9NYWtlZmlsZQo+PiBAQCAtMSwzICsxLDMgQEAKPj4gICMgU1BEWC1MaWNl
bnNlLUlkZW50aWZpZXI6IEdQTC0yLjAKPj4gLXRlZ3JhLXZkZS15IDo9IHZkZS5vIGlvbW11Lm8K
Pj4gK3RlZ3JhLXZkZS15IDo9IHZkZS5vIGlvbW11Lm8gZG1hYnVmLWNhY2hlLm8KPj4gIG9iai0k
KENPTkZJR19URUdSQV9WREUpCSs9IHRlZ3JhLXZkZS5vCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L3N0YWdpbmcvbWVkaWEvdGVncmEtdmRlL2RtYWJ1Zi1jYWNoZS5jIGIvZHJpdmVycy9zdGFnaW5n
L21lZGlhL3RlZ3JhLXZkZS9kbWFidWYtY2FjaGUuYwo+PiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+
PiBpbmRleCAwMDAwMDAwMDAwMDAuLmZjZGU4ZDFjMzdlNwo+PiAtLS0gL2Rldi9udWxsCj4+ICsr
KyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS90ZWdyYS12ZGUvZG1hYnVmLWNhY2hlLmMKPj4gQEAg
LTAsMCArMSwyMjMgQEAKPj4gKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wKwo+
PiArLyoKPj4gKyAqIE5WSURJQSBUZWdyYSBWaWRlbyBkZWNvZGVyIGRyaXZlcgo+PiArICoKPj4g
KyAqIENvcHlyaWdodCAoQykgMjAxNi0yMDE5IEdSQVRFLURSSVZFUiBwcm9qZWN0Cj4+ICsgKi8K
Pj4gKwo+PiArI2luY2x1ZGUgPGxpbnV4L2RtYS1idWYuaD4KPj4gKyNpbmNsdWRlIDxsaW51eC9p
b3ZhLmg+Cj4+ICsjaW5jbHVkZSA8bGludXgva2VybmVsLmg+Cj4+ICsjaW5jbHVkZSA8bGludXgv
bGlzdC5oPgo+PiArI2luY2x1ZGUgPGxpbnV4L3NjaGVkLmg+Cj4+ICsjaW5jbHVkZSA8bGludXgv
c2xhYi5oPgo+PiArI2luY2x1ZGUgPGxpbnV4L3dvcmtxdWV1ZS5oPgo+PiArCj4+ICsjaW5jbHVk
ZSAidmRlLmgiCj4+ICsKPj4gK3N0cnVjdCB0ZWdyYV92ZGVfY2FjaGVfZW50cnkgewo+PiArCWVu
dW0gZG1hX2RhdGFfZGlyZWN0aW9uIGRtYV9kaXI7Cj4+ICsJc3RydWN0IGRtYV9idWZfYXR0YWNo
bWVudCAqYTsKPj4gKwlzdHJ1Y3QgZGVsYXllZF93b3JrIGR3b3JrOwo+PiArCXN0cnVjdCB0ZWdy
YV92ZGUgKnZkZTsKPj4gKwlzdHJ1Y3QgbGlzdF9oZWFkIGxpc3Q7Cj4+ICsJc3RydWN0IHNnX3Rh
YmxlICpzZ3Q7Cj4+ICsJc3RydWN0IGlvdmEgKmlvdmE7Cj4+ICsJdW5zaWduZWQgaW50IHJlZmNu
dDsKPj4gK307Cj4+ICsKPj4gK3N0YXRpYyB2b2lkIHRlZ3JhX3ZkZV9yZWxlYXNlX2VudHJ5KHN0
cnVjdCB0ZWdyYV92ZGVfY2FjaGVfZW50cnkgKmVudHJ5KQo+PiArewo+PiArCXN0cnVjdCBkbWFf
YnVmICpkbWFidWYgPSBlbnRyeS0+YS0+ZG1hYnVmOwo+PiArCj4+ICsJV0FSTl9PTl9PTkNFKGVu
dHJ5LT5yZWZjbnQpOwo+PiArCj4+ICsJaWYgKGVudHJ5LT52ZGUtPmRvbWFpbikKPj4gKwkJdGVn
cmFfdmRlX2lvbW11X3VubWFwKGVudHJ5LT52ZGUsIGVudHJ5LT5pb3ZhKTsKPj4gKwo+PiArCWRt
YV9idWZfdW5tYXBfYXR0YWNobWVudChlbnRyeS0+YSwgZW50cnktPnNndCwgZW50cnktPmRtYV9k
aXIpOwo+PiArCWRtYV9idWZfZGV0YWNoKGRtYWJ1ZiwgZW50cnktPmEpOwo+PiArCWRtYV9idWZf
cHV0KGRtYWJ1Zik7Cj4+ICsKPj4gKwlsaXN0X2RlbCgmZW50cnktPmxpc3QpOwo+PiArCWtmcmVl
KGVudHJ5KTsKPj4gK30KPj4gKwo+PiArc3RhdGljIHZvaWQgdGVncmFfdmRlX2RlbGF5ZWRfdW5t
YXAoc3RydWN0IHdvcmtfc3RydWN0ICp3b3JrKQo+PiArewo+PiArCXN0cnVjdCB0ZWdyYV92ZGVf
Y2FjaGVfZW50cnkgKmVudHJ5Owo+PiArCj4+ICsJZW50cnkgPSBjb250YWluZXJfb2Yod29yaywg
c3RydWN0IHRlZ3JhX3ZkZV9jYWNoZV9lbnRyeSwKPj4gKwkJCSAgICAgZHdvcmsud29yayk7Cj4+
ICsKPj4gKwltdXRleF9sb2NrKCZlbnRyeS0+dmRlLT5tYXBfbG9jayk7Cj4+ICsJdGVncmFfdmRl
X3JlbGVhc2VfZW50cnkoZW50cnkpOwo+PiArCW11dGV4X3VubG9jaygmZW50cnktPnZkZS0+bWFw
X2xvY2spOwo+IAo+IEZyb20gc21hdGNoOgo+IAo+IGRyaXZlcnMvc3RhZ2luZy9tZWRpYS90ZWdy
YS12ZGUvZG1hYnVmLWNhY2hlLmM6NTUgdGVncmFfdmRlX2RlbGF5ZWRfdW5tYXAoKSBlcnJvcjog
ZGVyZWZlcmVuY2luZyBmcmVlZCBtZW1vcnkgJ2VudHJ5JwoKVGhhdCdzIGEgdmVyeSBnb29kIGNh
dGNoLCB0aGFua3MgeW91IHZlcnkgbXVjaCEgSSdtIGtlZXAgZm9yZ2V0dGluZyBhYm91dCBzbWF0
Y2gsIGl0J3MKYSB1c2VmdWwgdG9vbC4gQW5kIHVuZm9ydHVuYXRlbHkgSSBjYW4ndCBLQVNBTiB0
aGUgZHJpdmVyIGJlY2F1c2UgQVJNMzIgZG9lc24ndApzdXBwb3J0IEtBU0FOIGluIHVwc3RyZWFt
IGFuZCBYb3JnIGhhbmdzIHdpdGggdGhlIHVub2ZmaWNpYWwgcGF0Y2ggdGhhdCBhZGRzIHN1cHBv
cnQKZm9yIHRoZSBLQVNBTi4KCltzbmlwXQoKPj4gKwllbnRyeS0+ZG1hX2RpciA9IGRtYV9kaXI7
Cj4+ICsJZW50cnktPmlvdmEgPSBpb3ZhOwo+IAo+IEZyb20gc21hdGNoOgo+IAo+IGRyaXZlcnMv
c3RhZ2luZy9tZWRpYS90ZWdyYS12ZGUvZG1hYnVmLWNhY2hlLmM6MTMzIHRlZ3JhX3ZkZV9kbWFi
dWZfY2FjaGVfbWFwKCkgZXJyb3I6IHVuaW5pdGlhbGl6ZWQgc3ltYm9sICdpb3ZhJy4KClRoaXMg
aXMgZmluZSwgYnV0IGluZGVlZCB3b24ndCBodXJ0IHRvIGV4cGxpY2l0bHkgaW5pdGlhbGl6ZSB0
byBOVUxMLgoKVGhhbmtzIGFnYWluIQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0
Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0
aW5mby9kcml2ZXJkZXYtZGV2ZWwK

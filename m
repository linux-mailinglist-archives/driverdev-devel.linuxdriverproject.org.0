Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BDBAB48427
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Jun 2019 15:37:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3120082441;
	Mon, 17 Jun 2019 13:37:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UCdYM6npLbvM; Mon, 17 Jun 2019 13:37:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 01E6684F5A;
	Mon, 17 Jun 2019 13:37:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 53F341BF966
 for <devel@linuxdriverproject.org>; Mon, 17 Jun 2019 13:37:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4C662203D8
 for <devel@linuxdriverproject.org>; Mon, 17 Jun 2019 13:37:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T9ZAs8xiMu9d for <devel@linuxdriverproject.org>;
 Mon, 17 Jun 2019 13:37:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 091AE2035D
 for <devel@driverdev.osuosl.org>; Mon, 17 Jun 2019 13:37:01 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id v19so9146302wmj.5
 for <devel@driverdev.osuosl.org>; Mon, 17 Jun 2019 06:37:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Pz+MJpArisYQrfWi1l8CgjJCZ0sBnaJmYJFQI+E8ins=;
 b=vPwuP/5DaUP8MHatA256OU+MddlRTG15mE+/aKo0T3mbrwDrrIuLBK8fLPPRGOBX1X
 oaI6M7Op4jX1pLz/bsmk6yo5txOt7BRJVvBG0md2TZQPiR1kUjy3suE/p07QZk4W73jL
 qUJumPYSlCb9/yBkNBNLJFYm7LkFxnPEuVn0wJrOnGLLZfAysnt6/OtJ2Ivw6EMxFfkn
 GILlR+EmSvMh3nh54hdB/f6M3NK636FoL5oGkpKtjsR+wR0HPKazRVHC+0idUyfqT/sI
 +jCtSTZhap8sanpocCwvnbgyHlUE9jFniGLulkJPspMGJ9fE2YJOP7ULXGNepL7XeCiB
 +yaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Pz+MJpArisYQrfWi1l8CgjJCZ0sBnaJmYJFQI+E8ins=;
 b=h+1lBJom1M0gaNAVFMVxOao2SRroe88pNQ3V/8O3gYWzF6V+d9yQMNSrgozSQ0J56k
 ZPLzB8dz4I2eYIHN9guh+3DNoGYd1NvqqiJmqm8SJTGaWJY4knRTw7Y3RBrq/g5RAsJz
 Kk6BcK1hCBounBvQofOlLJs5Aiy4EPsuv8vMUU6yjiqV2M6NkPJLjY4miSXweifQFMjH
 KrrRxs29VjXY9j/WSXC4aLNjjTyI987APNt9AxOSNjjN2UGM+PmJ0Ae20eSHZb1KHoec
 pZnNxmBF+0Zs2cQEjhpJW+1fmQIxMiyPmF7mb8+6t7MtXzhEvuDSUwtKOvuY1Crwb8xC
 NriQ==
X-Gm-Message-State: APjAAAV9IbJ5fo2YvSQBitde/C64rNpM3U1+KVSg1sfLTRrBh+UB2x3T
 wCgAgb9Bbhxco/S7cAp8GB0=
X-Google-Smtp-Source: APXvYqyTub4yFw683PZGg3zLIzHE0p9JVXfc/pFFw7Uvu1JjB4Tf23crEMJMOqRO5zo3L/ty+KbLAA==
X-Received: by 2002:a05:600c:1008:: with SMTP id
 c8mr19509319wmc.133.1560778619493; 
 Mon, 17 Jun 2019 06:36:59 -0700 (PDT)
Received: from [192.168.2.145] (ppp91-79-162-197.pppoe.mtu-net.ru.
 [91.79.162.197])
 by smtp.googlemail.com with ESMTPSA id t1sm15671157wra.74.2019.06.17.06.36.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 06:36:58 -0700 (PDT)
Subject: Re: [PATCH v1 3/4] staging: media: tegra-vde: Add IOMMU support
To: Hans Verkuil <hverkuil@xs4all.nl>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh+dt@kernel.org>
References: <20190602213712.26857-1-digetx@gmail.com>
 <20190602213712.26857-7-digetx@gmail.com>
 <5c274249-6c88-b4bd-70fe-0751f5bbfdfc@xs4all.nl>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <06a73666-8985-68a6-66cf-cf9cc00d6929@gmail.com>
Date: Mon, 17 Jun 2019 16:36:57 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <5c274249-6c88-b4bd-70fe-0751f5bbfdfc@xs4all.nl>
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

MTcuMDYuMjAxOSAxNjozMSwgSGFucyBWZXJrdWlsINC/0LjRiNC10YI6Cj4gT24gNi8yLzE5IDEx
OjM3IFBNLCBEbWl0cnkgT3NpcGVua28gd3JvdGU6Cj4+IEFsbCBUZWdyYSdzIGNvdWxkIHByb3Zp
ZGUgbWVtb3J5IGlzb2xhdGlvbiBmb3IgdGhlIHZpZGVvIGRlY29kZXIKPj4gaGFyZHdhcmUgdXNp
bmcgSU9NTVUsIGl0IGlzIGFsc28gcmVxdWlyZWQgZm9yIFRlZ3JhMzArIGluIG9yZGVyCj4+IHRv
IGhhbmRsZSBzcGFyc2UgZG1hYnVmJ3Mgd2hpY2ggR1BVIGV4cG9ydHMgaW4gYSBkZWZhdWx0IGtl
cm5lbAo+PiBjb25maWd1cmF0aW9uLgo+Pgo+PiBJbnNwaXJlZC1ieTogVGhpZXJyeSBSZWRpbmcg
PHRoaWVycnkucmVkaW5nQGdtYWlsLmNvbT4KPj4gU2lnbmVkLW9mZi1ieTogRG1pdHJ5IE9zaXBl
bmtvIDxkaWdldHhAZ21haWwuY29tPgo+PiAtLS0KPj4gIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS90
ZWdyYS12ZGUvS2NvbmZpZyAgICAgICB8ICAgMSArCj4+ICBkcml2ZXJzL3N0YWdpbmcvbWVkaWEv
dGVncmEtdmRlL01ha2VmaWxlICAgICAgfCAgIDEgKwo+PiAgZHJpdmVycy9zdGFnaW5nL21lZGlh
L3RlZ3JhLXZkZS9pb21tdS5jICAgICAgIHwgMTQ4ICsrKysrKysrKysrKysrCj4+ICBkcml2ZXJz
L3N0YWdpbmcvbWVkaWEvdGVncmEtdmRlL3RyYWNlLmggICAgICAgfCAgIDEgKwo+PiAgLi4uL21l
ZGlhL3RlZ3JhLXZkZS97dGVncmEtdmRlLmMgPT4gdmRlLmN9ICAgIHwgMTg4ICsrKysrKysrKy0t
LS0tLS0tLQo+PiAgZHJpdmVycy9zdGFnaW5nL21lZGlhL3RlZ3JhLXZkZS92ZGUuaCAgICAgICAg
IHwgIDg5ICsrKysrKysrKwo+PiAgNiBmaWxlcyBjaGFuZ2VkLCAzMzUgaW5zZXJ0aW9ucygrKSwg
OTMgZGVsZXRpb25zKC0pCj4+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9zdGFnaW5nL21l
ZGlhL3RlZ3JhLXZkZS9pb21tdS5jCj4+ICByZW5hbWUgZHJpdmVycy9zdGFnaW5nL21lZGlhL3Rl
Z3JhLXZkZS97dGVncmEtdmRlLmMgPT4gdmRlLmN9ICg5MSUpCj4+ICBjcmVhdGUgbW9kZSAxMDA2
NDQgZHJpdmVycy9zdGFnaW5nL21lZGlhL3RlZ3JhLXZkZS92ZGUuaAo+Pgo+PiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL3RlZ3JhLXZkZS9LY29uZmlnIGIvZHJpdmVycy9zdGFn
aW5nL21lZGlhL3RlZ3JhLXZkZS9LY29uZmlnCj4+IGluZGV4IGZmOGU4NDZjZDE1ZC4uMmU3ZjY0
NGFlNTkxIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvdGVncmEtdmRlL0tj
b25maWcKPj4gKysrIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL3RlZ3JhLXZkZS9LY29uZmlnCj4+
IEBAIC0zLDYgKzMsNyBAQCBjb25maWcgVEVHUkFfVkRFCj4+ICAJdHJpc3RhdGUgIk5WSURJQSBU
ZWdyYSBWaWRlbyBEZWNvZGVyIEVuZ2luZSBkcml2ZXIiCj4+ICAJZGVwZW5kcyBvbiBBUkNIX1RF
R1JBIHx8IENPTVBJTEVfVEVTVAo+PiAgCXNlbGVjdCBETUFfU0hBUkVEX0JVRkZFUgo+PiArCXNl
bGVjdCBJT01NVV9JT1ZBIGlmIElPTU1VX1NVUFBPUlQKPj4gIAlzZWxlY3QgU1JBTQo+PiAgCWhl
bHAKPj4gIAkgICAgU2F5IFkgaGVyZSB0byBlbmFibGUgc3VwcG9ydCBmb3IgdGhlIE5WSURJQSBU
ZWdyYSB2aWRlbyBkZWNvZGVyCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEv
dGVncmEtdmRlL01ha2VmaWxlIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL3RlZ3JhLXZkZS9NYWtl
ZmlsZQo+PiBpbmRleCA3ZjkwMjBlNjM0ZjMuLmMxMTg2N2UyODIzMyAxMDA2NDQKPj4gLS0tIGEv
ZHJpdmVycy9zdGFnaW5nL21lZGlhL3RlZ3JhLXZkZS9NYWtlZmlsZQo+PiArKysgYi9kcml2ZXJz
L3N0YWdpbmcvbWVkaWEvdGVncmEtdmRlL01ha2VmaWxlCj4+IEBAIC0xLDIgKzEsMyBAQAo+PiAg
IyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMAo+PiArdGVncmEtdmRlLXkgOj0gdmRl
Lm8gaW9tbXUubwo+PiAgb2JqLSQoQ09ORklHX1RFR1JBX1ZERSkJKz0gdGVncmEtdmRlLm8KPj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS90ZWdyYS12ZGUvaW9tbXUuYyBiL2Ry
aXZlcnMvc3RhZ2luZy9tZWRpYS90ZWdyYS12ZGUvaW9tbXUuYwo+PiBuZXcgZmlsZSBtb2RlIDEw
MDY0NAo+PiBpbmRleCAwMDAwMDAwMDAwMDAuLjI5NWMzZDdjY2NkMwo+PiAtLS0gL2Rldi9udWxs
Cj4+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS90ZWdyYS12ZGUvaW9tbXUuYwo+PiBAQCAt
MCwwICsxLDE0OCBAQAo+PiArLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjArCj4+
ICsvKgo+PiArICogTlZJRElBIFRlZ3JhIFZpZGVvIGRlY29kZXIgZHJpdmVyCj4+ICsgKgo+PiAr
ICogQ29weXJpZ2h0IChDKSAyMDE2LTIwMTkgR1JBVEUtRFJJVkVSIHByb2plY3QKPj4gKyAqLwo+
PiArCj4+ICsjaW5jbHVkZSA8bGludXgvaW9tbXUuaD4KPj4gKyNpbmNsdWRlIDxsaW51eC9pb3Zh
Lmg+Cj4+ICsjaW5jbHVkZSA8bGludXgva2VybmVsLmg+Cj4+ICsjaW5jbHVkZSA8bGludXgvcGxh
dGZvcm1fZGV2aWNlLmg+Cj4+ICsKPj4gKyNpZiBJU19FTkFCTEVEKENPTkZJR19BUk1fRE1BX1VT
RV9JT01NVSkKPj4gKyNpbmNsdWRlIDxhc20vZG1hLWlvbW11Lmg+Cj4+ICsjZW5kaWYKPj4gKwo+
PiArI2luY2x1ZGUgInZkZS5oIgo+PiArCj4+ICtpbnQgdGVncmFfdmRlX2lvbW11X21hcChzdHJ1
Y3QgdGVncmFfdmRlICp2ZGUsCj4+ICsJCQlzdHJ1Y3Qgc2dfdGFibGUgKnNndCwKPj4gKwkJCXN0
cnVjdCBpb3ZhICoqaW92YXAsCj4+ICsJCQlkbWFfYWRkcl90ICphZGRycCwKPj4gKwkJCXNpemVf
dCBzaXplKQo+PiArewo+PiArCXN0cnVjdCBpb3ZhICppb3ZhOwo+PiArCXVuc2lnbmVkIGxvbmcg
c2hpZnQ7Cj4+ICsJdW5zaWduZWQgbG9uZyBlbmQ7Cj4+ICsJZG1hX2FkZHJfdCBhZGRyOwo+PiAr
Cj4+ICsJZW5kID0gdmRlLT5kb21haW4tPmdlb21ldHJ5LmFwZXJ0dXJlX2VuZDsKPj4gKwlzaXpl
ID0gaW92YV9hbGlnbigmdmRlLT5pb3ZhLCBzaXplKTsKPj4gKwlzaGlmdCA9IGlvdmFfc2hpZnQo
JnZkZS0+aW92YSk7Cj4+ICsKPj4gKwlpb3ZhID0gYWxsb2NfaW92YSgmdmRlLT5pb3ZhLCBzaXpl
ID4+IHNoaWZ0LCBlbmQgPj4gc2hpZnQsIHRydWUpOwo+PiArCWlmICghaW92YSkKPj4gKwkJcmV0
dXJuIC1FTk9NRU07Cj4+ICsKPj4gKwlhZGRyID0gaW92YV9kbWFfYWRkcigmdmRlLT5pb3ZhLCBp
b3ZhKTsKPj4gKwo+PiArCXNpemUgPSBpb21tdV9tYXBfc2codmRlLT5kb21haW4sIGFkZHIsIHNn
dC0+c2dsLCBzZ3QtPm5lbnRzLAo+PiArCQkJICAgIElPTU1VX1JFQUQgfCBJT01NVV9XUklURSk7
Cj4+ICsJaWYgKCFzaXplKSB7Cj4+ICsJCV9fZnJlZV9pb3ZhKCZ2ZGUtPmlvdmEsIGlvdmEpOwo+
PiArCQlyZXR1cm4gLUVOWElPOwo+PiArCX0KPj4gKwo+PiArCSppb3ZhcCA9IGlvdmE7Cj4+ICsJ
KmFkZHJwID0gYWRkcjsKPj4gKwo+PiArCXJldHVybiAwOwo+PiArfQo+PiArCj4+ICt2b2lkIHRl
Z3JhX3ZkZV9pb21tdV91bm1hcChzdHJ1Y3QgdGVncmFfdmRlICp2ZGUsIHN0cnVjdCBpb3ZhICpp
b3ZhKQo+PiArewo+PiArCXVuc2lnbmVkIGxvbmcgc2hpZnQgPSBpb3ZhX3NoaWZ0KCZ2ZGUtPmlv
dmEpOwo+PiArCXVuc2lnbmVkIGxvbmcgc2l6ZSA9IGlvdmFfc2l6ZShpb3ZhKSA8PCBzaGlmdDsK
Pj4gKwlkbWFfYWRkcl90IGFkZHIgPSBpb3ZhX2RtYV9hZGRyKCZ2ZGUtPmlvdmEsIGlvdmEpOwo+
PiArCj4+ICsJaW9tbXVfdW5tYXAodmRlLT5kb21haW4sIGFkZHIsIHNpemUpOwo+PiArCV9fZnJl
ZV9pb3ZhKCZ2ZGUtPmlvdmEsIGlvdmEpOwo+PiArfQo+PiArCj4+ICtpbnQgdGVncmFfdmRlX2lv
bW11X2luaXQoc3RydWN0IHRlZ3JhX3ZkZSAqdmRlKQo+PiArewo+PiArCXN0cnVjdCBpb3ZhICpp
b3ZhOwo+PiArCXVuc2lnbmVkIGxvbmcgb3JkZXI7Cj4+ICsJdW5zaWduZWQgbG9uZyBzaGlmdDsK
Pj4gKwlpbnQgZXJyOwo+PiArCj4+ICsJdmRlLT5ncm91cCA9IGlvbW11X2dyb3VwX2dldCh2ZGUt
Pm1pc2NkZXYucGFyZW50KTsKPj4gKwlpZiAoIXZkZS0+Z3JvdXApCj4+ICsJCXJldHVybiAwOwo+
PiArCj4+ICsjaWYgSVNfRU5BQkxFRChDT05GSUdfQVJNX0RNQV9VU0VfSU9NTVUpCj4+ICsJaWYg
KGRldi0+YXJjaGRhdGEubWFwcGluZykgewo+IAo+ICdkZXYnIGRvZXNuJ3QgZXhpc3QsIHNvIHRo
aXMgZmFpbHMgdG8gY29tcGlsZSEKCk9oLCBpbmRlZWQhIEkgYWN0dWFsbHkgZGlkbid0IGV2ZW4g
dHJ5IHRvIGNvbXBpbGUgd2l0aCBDT05GSUdfQVJNX0RNQV9VU0VfSU9NTVUuIFdpbGwKZml4IGl0
IGluIHYyLCB0aGFua3MhCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0
dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2Ry
aXZlcmRldi1kZXZlbAo=

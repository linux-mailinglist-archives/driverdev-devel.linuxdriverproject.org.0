Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34C2A2DDA6E
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Dec 2020 21:58:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3034C87B05;
	Thu, 17 Dec 2020 20:58:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rDbxPpqtJ4-h; Thu, 17 Dec 2020 20:58:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 86E9D87B09;
	Thu, 17 Dec 2020 20:58:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EF5821BF9BD
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 20:58:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E7CC78772A
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 20:58:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uu8szuFqYBeO for <devel@linuxdriverproject.org>;
 Thu, 17 Dec 2020 20:58:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com
 [209.85.167.52])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CCE9387729
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 20:58:31 +0000 (UTC)
Received: by mail-lf1-f52.google.com with SMTP id o17so58281293lfg.4
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 12:58:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=2zaYEPU3Dc5zFOFGXsYjz12iYiWYHN8N3O6lakukl/s=;
 b=qgHdy+aVZrcGxyULYw4C/dnhEhXcHqnIi3WOZ6PUyWeJ1T2KuwB4MyFcAMVcIxtEkN
 P0wC9L1L3/OzQP2N4oOFkRUNhuvP6BbgtM9veJ1+/75E6Miy7hj7Bf2nEtboXPbzthOR
 kxxro9rjbhD5efC41F1HFL2RxEsBF22ZTFXdF10FlYyRqWRrEuRkkxNHvNJAyiBiyHb5
 xCx3hJCcAYykCnF/aKI0AxMDTkj4x39+lQJUW1SrSIqcsl3UFk3eY07U8IrPb8AhV1uo
 MAvO3Efc7ekB1pIAMLvXK67v6Yhq5T7IZPOk04vo8zGuFhsht5N49PaRJoPc7WLTbass
 MfYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=2zaYEPU3Dc5zFOFGXsYjz12iYiWYHN8N3O6lakukl/s=;
 b=qej4Qpkjfp8PvO37F5g5xPhZEMdF4wmHoyn1qyVWz+L9tAIL1CbeYb9C39vOBSaiHl
 7sKrwI1PthTXhU2HCkXwF/jyC9rJPbbaMD+UMdfjrs280rUIMxx/Phvi/WZrvBy07Z2b
 CV/9h22ho49+JWNW7G5RxmcKZpVHCoGttiOdJgzp60HTZ+T/O20ny/1O+KaHh8OMiQG+
 Q4hrc4IfLaTB5j1ctdajM1+Jrm4HrYuzti8ocTW/5iQ2TkWzxBHnjfXLodMnfWUuvbWk
 pkVaMRmXchonQMLI+eh02efOATergJDF3w2+nZxi21HOmYua3NR6YU5m9Qhih9H39vnl
 UFwQ==
X-Gm-Message-State: AOAM533gg2JXe3h7B+9KqNOJjAat/M0eg3aNZaFb2Rc8wyY41FwgrJgW
 il0Du16Dy5oSyXPms4Ju87k=
X-Google-Smtp-Source: ABdhPJybT54BUMIzcynXITACTqPF/IcLrcExqUZ6d4e77IqO+C219fiwEYcS2lWHXSvWZh2/2hrkeQ==
X-Received: by 2002:a05:6512:3089:: with SMTP id
 z9mr233591lfd.433.1608238709941; 
 Thu, 17 Dec 2020 12:58:29 -0800 (PST)
Received: from [192.168.2.145] (109-252-192-57.dynamic.spd-mgts.ru.
 [109.252.192.57])
 by smtp.googlemail.com with ESMTPSA id z26sm789139ljn.98.2020.12.17.12.58.28
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 17 Dec 2020 12:58:29 -0800 (PST)
Subject: Re: [PATCH v2 34/48] gpu: host1x: Support power management
From: Dmitry Osipenko <digetx@gmail.com>
To: Mikko Perttunen <cyndis@kapsi.fi>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Mark Brown <broonie@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Peter Geis <pgwipeout@gmail.com>,
 Nicolas Chauvet <kwizart@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Kevin Hilman <khilman@kernel.org>,
 Peter De Schrijver <pdeschrijver@nvidia.com>,
 Viresh Kumar <vireshk@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>
References: <20201217180638.22748-1-digetx@gmail.com>
 <20201217180638.22748-35-digetx@gmail.com>
 <cb8dca7c-6ef2-5116-6c04-816a63525e2e@kapsi.fi>
 <b106c4c0-bd93-bbc9-9357-45fe8fb1cf0f@gmail.com>
Message-ID: <5523b804-f5de-a529-fd4e-751c39ab663b@gmail.com>
Date: Thu, 17 Dec 2020 23:58:28 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.2
MIME-Version: 1.0
In-Reply-To: <b106c4c0-bd93-bbc9-9357-45fe8fb1cf0f@gmail.com>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-tegra@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

MTcuMTIuMjAyMCAyMTo0NSwgRG1pdHJ5IE9zaXBlbmtvINC/0LjRiNC10YI6Cj4gMTcuMTIuMjAy
MCAyMToyMSwgTWlra28gUGVydHR1bmVuINC/0LjRiNC10YI6Cj4+IE9uIDEyLzE3LzIwIDg6MDYg
UE0sIERtaXRyeSBPc2lwZW5rbyB3cm90ZToKPj4+IEFkZCBzdXNwZW5kL3Jlc3VtZSBhbmQgZ2Vu
ZXJpYyBwb3dlciBkb21haW4gc3VwcG9ydCB0byB0aGUgSG9zdDF4IGRyaXZlci4KPj4+IFRoaXMg
aXMgcmVxdWlyZWQgZm9yIGVuYWJsaW5nIHN5c3RlbS13aWRlIERWRlMgYW5kIHN1cHBvcnRpbmcg
ZHluYW1pYwo+Pj4gcG93ZXIgbWFuYWdlbWVudCB1c2luZyBhIGdlbmVyaWMgcG93ZXIgZG9tYWlu
Lgo+Pj4KPj4+IFRlc3RlZC1ieTogUGV0ZXIgR2VpcyA8cGd3aXBlb3V0QGdtYWlsLmNvbT4KPj4+
IFRlc3RlZC1ieTogTmljb2xhcyBDaGF1dmV0IDxrd2l6YXJ0QGdtYWlsLmNvbT4KPj4+IFNpZ25l
ZC1vZmYtYnk6IERtaXRyeSBPc2lwZW5rbyA8ZGlnZXR4QGdtYWlsLmNvbT4KPj4+IC0tLQo+Pj4g
wqAgZHJpdmVycy9ncHUvaG9zdDF4L2Rldi5jIHwgMTAyICsrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKystLS0tLQo+Pj4gwqAgMSBmaWxlIGNoYW5nZWQsIDkxIGluc2VydGlvbnMoKyks
IDExIGRlbGV0aW9ucygtKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9ob3N0MXgv
ZGV2LmMgYi9kcml2ZXJzL2dwdS9ob3N0MXgvZGV2LmMKPj4+IGluZGV4IGQwZWJiNzBlMmZkZC4u
YzE1MjVjZmZlN2IxIDEwMDY0NAo+Pj4gLS0tIGEvZHJpdmVycy9ncHUvaG9zdDF4L2Rldi5jCj4+
PiArKysgYi9kcml2ZXJzL2dwdS9ob3N0MXgvZGV2LmMKPj4+IEBAIC0xMiw2ICsxMiw3IEBACj4+
PiDCoCAjaW5jbHVkZSA8bGludXgvbW9kdWxlLmg+Cj4+PiDCoCAjaW5jbHVkZSA8bGludXgvb2Zf
ZGV2aWNlLmg+Cj4+PiDCoCAjaW5jbHVkZSA8bGludXgvb2YuaD4KPj4+ICsjaW5jbHVkZSA8bGlu
dXgvcG1fcnVudGltZS5oPgo+Pj4gwqAgI2luY2x1ZGUgPGxpbnV4L3NsYWIuaD4KPj4+IMKgIMKg
ICNkZWZpbmUgQ1JFQVRFX1RSQUNFX1BPSU5UUwo+Pj4gQEAgLTQxNyw3ICs0MTgsNyBAQCBzdGF0
aWMgaW50IGhvc3QxeF9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+Pj4gwqDC
oMKgwqDCoMKgwqDCoMKgIHJldHVybiBlcnI7Cj4+PiDCoMKgwqDCoMKgIH0KPj4+IMKgIC3CoMKg
wqAgaG9zdC0+cnN0ID0gZGV2bV9yZXNldF9jb250cm9sX2dldCgmcGRldi0+ZGV2LCAiaG9zdDF4
Iik7Cj4+PiArwqDCoMKgIGhvc3QtPnJzdCA9IGRldm1fcmVzZXRfY29udHJvbF9nZXRfZXhjbHVz
aXZlX3JlbGVhc2VkKCZwZGV2LT5kZXYsCj4+PiAiaG9zdDF4Iik7Cj4+PiDCoMKgwqDCoMKgIGlm
IChJU19FUlIoaG9zdC0+cnN0KSkgewo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIGVyciA9IFBUUl9F
UlIoaG9zdC0+cnN0KTsKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBkZXZfZXJyKCZwZGV2LT5kZXYs
ICJmYWlsZWQgdG8gZ2V0IHJlc2V0OiAlZFxuIiwgZXJyKTsKPj4+IEBAIC00MzcsMTYgKzQzOCwx
NSBAQCBzdGF0aWMgaW50IGhvc3QxeF9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlCj4+PiAq
cGRldikKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBnb3RvIGlvbW11X2V4aXQ7Cj4+PiDCoMKgwqDC
oMKgIH0KPj4+IMKgIC3CoMKgwqAgZXJyID0gY2xrX3ByZXBhcmVfZW5hYmxlKGhvc3QtPmNsayk7
Cj4+PiAtwqDCoMKgIGlmIChlcnIgPCAwKSB7Cj4+PiAtwqDCoMKgwqDCoMKgwqAgZGV2X2Vycigm
cGRldi0+ZGV2LCAiZmFpbGVkIHRvIGVuYWJsZSBjbG9ja1xuIik7Cj4+PiAtwqDCoMKgwqDCoMKg
wqAgZ290byBmcmVlX2NoYW5uZWxzOwo+Pj4gLcKgwqDCoCB9Cj4+PiArwqDCoMKgIHBtX3J1bnRp
bWVfZW5hYmxlKCZwZGV2LT5kZXYpOwo+Pj4gK8KgwqDCoCBlcnIgPSBwbV9ydW50aW1lX2dldF9z
eW5jKCZwZGV2LT5kZXYpOwo+Pj4gK8KgwqDCoCBpZiAoZXJyIDwgMCkKPj4+ICvCoMKgwqDCoMKg
wqDCoCBnb3RvIHJwbV9kaXNhYmxlOwo+Pj4gwqAgwqDCoMKgwqDCoCBlcnIgPSByZXNldF9jb250
cm9sX2RlYXNzZXJ0KGhvc3QtPnJzdCk7Cj4+PiDCoMKgwqDCoMKgIGlmIChlcnIgPCAwKSB7Cj4+
PiDCoMKgwqDCoMKgwqDCoMKgwqAgZGV2X2VycigmcGRldi0+ZGV2LCAiZmFpbGVkIHRvIGRlYXNz
ZXJ0IHJlc2V0OiAlZFxuIiwgZXJyKTsKPj4+IC3CoMKgwqDCoMKgwqDCoCBnb3RvIHVucHJlcGFy
ZV9kaXNhYmxlOwo+Pj4gK8KgwqDCoMKgwqDCoMKgIGdvdG8gcnBtX2Rpc2FibGU7Cj4+PiDCoMKg
wqDCoMKgIH0KPj4+IMKgIMKgwqDCoMKgwqAgZXJyID0gaG9zdDF4X3N5bmNwdF9pbml0KGhvc3Qp
Owo+Pj4gQEAgLTQ4NSw5ICs0ODUsMTAgQEAgc3RhdGljIGludCBob3N0MXhfcHJvYmUoc3RydWN0
IHBsYXRmb3JtX2RldmljZQo+Pj4gKnBkZXYpCj4+PiDCoMKgwqDCoMKgIGhvc3QxeF9zeW5jcHRf
ZGVpbml0KGhvc3QpOwo+Pj4gwqAgcmVzZXRfYXNzZXJ0Ogo+Pj4gwqDCoMKgwqDCoCByZXNldF9j
b250cm9sX2Fzc2VydChob3N0LT5yc3QpOwo+Pj4gLXVucHJlcGFyZV9kaXNhYmxlOgo+Pj4gLcKg
wqDCoCBjbGtfZGlzYWJsZV91bnByZXBhcmUoaG9zdC0+Y2xrKTsKPj4+IC1mcmVlX2NoYW5uZWxz
Ogo+Pj4gK3JwbV9kaXNhYmxlOgo+Pj4gK8KgwqDCoCBwbV9ydW50aW1lX3B1dCgmcGRldi0+ZGV2
KTsKPj4+ICvCoMKgwqAgcG1fcnVudGltZV9kaXNhYmxlKCZwZGV2LT5kZXYpOwo+Pj4gKwo+Pj4g
wqDCoMKgwqDCoCBob3N0MXhfY2hhbm5lbF9saXN0X2ZyZWUoJmhvc3QtPmNoYW5uZWxfbGlzdCk7
Cj4+PiDCoCBpb21tdV9leGl0Ogo+Pj4gwqDCoMKgwqDCoCBob3N0MXhfaW9tbXVfZXhpdChob3N0
KTsKPj4+IEBAIC01MDQsMTYgKzUwNSw5NSBAQCBzdGF0aWMgaW50IGhvc3QxeF9yZW1vdmUoc3Ry
dWN0IHBsYXRmb3JtX2RldmljZQo+Pj4gKnBkZXYpCj4+PiDCoMKgwqDCoMKgIGhvc3QxeF9pbnRy
X2RlaW5pdChob3N0KTsKPj4+IMKgwqDCoMKgwqAgaG9zdDF4X3N5bmNwdF9kZWluaXQoaG9zdCk7
Cj4+PiDCoMKgwqDCoMKgIHJlc2V0X2NvbnRyb2xfYXNzZXJ0KGhvc3QtPnJzdCk7Cj4+PiAtwqDC
oMKgIGNsa19kaXNhYmxlX3VucHJlcGFyZShob3N0LT5jbGspOwo+Pj4gK8KgwqDCoCBwbV9ydW50
aW1lX3B1dCgmcGRldi0+ZGV2KTsKPj4+ICvCoMKgwqAgcG1fcnVudGltZV9kaXNhYmxlKCZwZGV2
LT5kZXYpOwo+Pj4gwqDCoMKgwqDCoCBob3N0MXhfaW9tbXVfZXhpdChob3N0KTsKPj4+IMKgIMKg
wqDCoMKgwqAgcmV0dXJuIDA7Cj4+PiDCoCB9Cj4+PiDCoCArc3RhdGljIGludCBfX21heWJlX3Vu
dXNlZCBob3N0MXhfcnVudGltZV9zdXNwZW5kKHN0cnVjdCBkZXZpY2UgKmRldikKPj4+ICt7Cj4+
PiArwqDCoMKgIHN0cnVjdCBob3N0MXggKmhvc3QgPSBkZXZfZ2V0X2RydmRhdGEoZGV2KTsKPj4+
ICsKPj4+ICvCoMKgwqAgY2xrX2Rpc2FibGVfdW5wcmVwYXJlKGhvc3QtPmNsayk7Cj4+PiArwqDC
oMKgIHJlc2V0X2NvbnRyb2xfcmVsZWFzZShob3N0LT5yc3QpOwo+Pj4gKwo+Pj4gK8KgwqDCoCBy
ZXR1cm4gMDsKPj4+ICt9Cj4+PiArCj4+PiArc3RhdGljIGludCBfX21heWJlX3VudXNlZCBob3N0
MXhfcnVudGltZV9yZXN1bWUoc3RydWN0IGRldmljZSAqZGV2KQo+Pj4gK3sKPj4+ICvCoMKgwqAg
c3RydWN0IGhvc3QxeCAqaG9zdCA9IGRldl9nZXRfZHJ2ZGF0YShkZXYpOwo+Pj4gK8KgwqDCoCBp
bnQgZXJyOwo+Pj4gKwo+Pj4gK8KgwqDCoCBlcnIgPSByZXNldF9jb250cm9sX2FjcXVpcmUoaG9z
dC0+cnN0KTsKPj4+ICvCoMKgwqAgaWYgKGVycikgewo+Pj4gK8KgwqDCoMKgwqDCoMKgIGRldl9l
cnIoZGV2LCAiZmFpbGVkIHRvIGFjcXVpcmUgcmVzZXQ6ICVkXG4iLCBlcnIpOwo+Pj4gK8KgwqDC
oMKgwqDCoMKgIHJldHVybiBlcnI7Cj4+PiArwqDCoMKgIH0KPj4+ICsKPj4+ICvCoMKgwqAgZXJy
ID0gY2xrX3ByZXBhcmVfZW5hYmxlKGhvc3QtPmNsayk7Cj4+PiArwqDCoMKgIGlmIChlcnIpIHsK
Pj4+ICvCoMKgwqDCoMKgwqDCoCBkZXZfZXJyKGRldiwgImZhaWxlZCB0byBlbmFibGUgY2xvY2s6
ICVkXG4iLCBlcnIpOwo+Pj4gK8KgwqDCoMKgwqDCoMKgIGdvdG8gcmVsZWFzZV9yZXNldDsKPj4+
ICvCoMKgwqAgfQo+Pj4gKwo+Pj4gK8KgwqDCoCByZXR1cm4gMDsKPj4+ICsKPj4+ICtyZWxlYXNl
X3Jlc2V0Ogo+Pj4gK8KgwqDCoCByZXNldF9jb250cm9sX3JlbGVhc2UoaG9zdC0+cnN0KTsKPj4+
ICsKPj4+ICvCoMKgwqAgcmV0dXJuIGVycjsKPj4+ICt9Cj4+PiArCj4+PiArc3RhdGljIF9fbWF5
YmVfdW51c2VkIGludCBob3N0MXhfc3VzcGVuZChzdHJ1Y3QgZGV2aWNlICpkZXYpCj4+PiArewo+
Pj4gK8KgwqDCoCBzdHJ1Y3QgaG9zdDF4ICpob3N0ID0gZGV2X2dldF9kcnZkYXRhKGRldik7Cj4+
PiArwqDCoMKgIGludCBlcnI7Cj4+PiArCj4+PiArwqDCoMKgIGhvc3QxeF9zeW5jcHRfc2F2ZSho
b3N0KTsKPj4+ICsKPj4+ICvCoMKgwqAgZXJyID0gcG1fcnVudGltZV9mb3JjZV9zdXNwZW5kKGRl
dik7Cj4+PiArwqDCoMKgIGlmIChlcnIgPCAwKQo+Pj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybiBl
cnI7Cj4+PiArCj4+PiArwqDCoMKgIHJldHVybiAwOwo+Pj4gK30KPj4+ICsKPj4+ICtzdGF0aWMg
X19tYXliZV91bnVzZWQgaW50IGhvc3QxeF9yZXN1bWUoc3RydWN0IGRldmljZSAqZGV2KQo+Pj4g
K3sKPj4+ICvCoMKgwqAgc3RydWN0IGhvc3QxeCAqaG9zdCA9IGRldl9nZXRfZHJ2ZGF0YShkZXYp
Owo+Pj4gK8KgwqDCoCBzdHJ1Y3QgaG9zdDF4X2NoYW5uZWwgKmNoYW5uZWw7Cj4+PiArwqDCoMKg
IHVuc2lnbmVkIGludCBpbmRleDsKPj4+ICvCoMKgwqAgaW50IGVycjsKPj4+ICsKPj4+ICvCoMKg
wqAgZXJyID0gcG1fcnVudGltZV9mb3JjZV9yZXN1bWUoZGV2KTsKPj4+ICvCoMKgwqAgaWYgKGVy
ciA8IDApCj4+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuIGVycjsKPj4+ICsKPj4+ICvCoMKgwqAg
aG9zdDF4X3N5bmNwdF9yZXN0b3JlKGhvc3QpOwo+Pgo+PiBXZSBhbHNvIG5lZWQgdG8gZXhlY3V0
ZSAnaG9zdDF4X3NldHVwX3NpZF90YWJsZScgdXBvbiByZXN1bWUuCj4gCj4gSW5kZWVkLCB0aGFu
a3MuIEknbGwgY29ycmVjdCBpdCBpbiB0aGUgbmV4dCByZXZpc2lvbi4KPiAKPiBQZXJoYXBzIHRo
ZSBhY3R1YWwgc2F2ZS9yZXN0b3JlIG5lZWRzIHRvIGJlIG1vdmVkIHRvIHRoZSBydW50aW1lCj4g
Y2FsbGJhY2tzLiBBdCBsZWFzdCBJIGNhbid0IHJlbWVtYmVyIHJpZ2h0IG5vdyB3aHkgdGhpcyB3
YXNuJ3QgZG9uZSBpbgo+IHRoZSBmaXJzdCBwbGFjZS4KPiAKCkkgbG9va2VkIGF0IHRoZSBzYXZl
L3Jlc3RvcmUgb25jZSBhZ2FpbiBhbmQgcmVjYWxsZWQgd2h5IGl0J3MgZG9uZSBzby4KVGhlIHJl
YXNvbiBpcyB0aGF0IHRoZSBob3N0MXggdG91Y2hlcyBoYXJkd2FyZSBkdXJpbmcgdGhlIGRyaXZl
ciBwcm9iZSwKYW5kIHRodXMsIFJQTSBuZWVkcyB0byBiZSByZXN1bWVkIGZpcnN0LiBJdCB3aWxs
IGJlIGEgYmlnZ2VyIGNoYW5nZSB0bwpwcm9wZXJseSBkZWNvdXBsZSB0aGUgaGFyZHdhcmUgaW5p
dGlhbGl6YXRpb24gc28gdGhhdCBpdCBhbGwgY291bGQgYmUKcHV0IGl0IGludG8gdGhlIFJQTSBj
YWxsYmFjay4gSSdsbCB0cnkgdG8gZG8gaXQgaW4gdjMuCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRy
aXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=

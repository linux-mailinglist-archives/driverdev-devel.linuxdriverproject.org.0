Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 864C3D0CFE
	for <lists+driverdev-devel@lfdr.de>; Wed,  9 Oct 2019 12:43:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id EB8D922EE7;
	Wed,  9 Oct 2019 10:43:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zwJjBwaZah0i; Wed,  9 Oct 2019 10:43:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5CD4D22DE3;
	Wed,  9 Oct 2019 10:43:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6F7861BF3C6
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 10:43:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6BE5C85F05
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 10:43:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U0oj-eIwwknn for <devel@linuxdriverproject.org>;
 Wed,  9 Oct 2019 10:43:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com
 [209.85.208.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 66193860C9
 for <devel@driverdev.osuosl.org>; Wed,  9 Oct 2019 10:43:14 +0000 (UTC)
Received: by mail-ed1-f66.google.com with SMTP id v38so1557937edm.7
 for <devel@driverdev.osuosl.org>; Wed, 09 Oct 2019 03:43:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:references:from:autocrypt:subject
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=ZH/t6Z5SKm0O+GF3c+jnCpiA2fHZKai+CXFJKmI0anE=;
 b=moj4pLbjqPmhm2wRGdsZa6tU4LiqInX1o3cUqkjFfIjtp2kFlXbA+O6Im1afMc9SsW
 N85jWa0BT1uTOZz4ZssTJnXy9ypWoT825rI4caQXGOje156wiRs0ecuRfilkOuggqDmN
 q2qZUj0tVIclPV8kIaA13KMzxqUuuZ865XDBoa/kAjDdsAJQi/InBhgNPAAv4vHGewIc
 hqPiG+XFKE9z0EYXTzUZCBB8CG2Rj7UoTIVz3lErxTzw2uCxAEUN4LL/QcptC7KKNhIc
 /+YZGUJx0EJIxDFEdTlnMNa8M64dxtmfHCzQk3JP6Y7pSftHB9Hq7oQNwaFYLiH8c1F7
 wgVg==
X-Gm-Message-State: APjAAAUeCsTLoMni82A2V6d9D6YF/87sayFA8JNnpv0vXD7yAu39ceCi
 SIsTl6DoPTjhDcd7nNzqvKo=
X-Google-Smtp-Source: APXvYqyNrmyb6MX/tNGEjdMfBRcon/IjHUNxtV7X/50ybrVaIrAFeHEb0Rq/5QqQ03f9oNPdMt+syw==
X-Received: by 2002:a17:906:4748:: with SMTP id
 j8mr2143495ejs.210.1570617792769; 
 Wed, 09 Oct 2019 03:43:12 -0700 (PDT)
Received: from [172.16.14.133] ([62.28.178.14])
 by smtp.gmail.com with ESMTPSA id t9sm202921eji.26.2019.10.09.03.43.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 09 Oct 2019 03:43:11 -0700 (PDT)
To: Hans de Goede <hdegoede@redhat.com>, devel@driverdev.osuosl.org
References: <20190930110141.29271-1-efremov@linux.com>
 <94af475e-dd7a-6066-146a-30a9915cd325@redhat.com>
From: Denis Efremov <efremov@linux.com>
Autocrypt: addr=efremov@linux.com; keydata=
 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
Subject: Re: [PATCH] staging: rtl8723bs: hal: Fix memcpy calls
Message-ID: <996e0e51-019a-5d65-026a-9599f9228299@linux.com>
Date: Wed, 9 Oct 2019 13:43:09 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <94af475e-dd7a-6066-146a-30a9915cd325@redhat.com>
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
Cc: Jes Sorensen <jes.sorensen@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, Bastien Nocera <hadess@hadess.net>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGksCgpPbiAwOS4xMC4yMDE5IDEyOjM1LCBIYW5zIGRlIEdvZWRlIHdyb3RlOgo+IEhpIERlbmlz
LAo+IAo+IE9uIDMwLTA5LTIwMTkgMTM6MDEsIERlbmlzIEVmcmVtb3Ygd3JvdGU6Cj4+IG1lbWNw
eSgpIGluIHBoeV9Db25maWdCQldpdGhQYXJhRmlsZSgpIGFuZCBQSFlfQ29uZmlnUkZXaXRoUGFy
YUZpbGUoKSBpcwo+PiBjYWxsZWQgd2l0aCAic3JjID09IE5VTEwgJiYgbGVuID09IDAiLiBUaGlz
IGlzIGFuIHVuZGVmaW5lZCBiZWhhdmlvci4KPj4gTW9yZW92ZXIgdGhpcyBpZiBwcmUtY29uZGl0
aW9uICJwQnVmTGVuICYmICgqcEJ1ZkxlbiA9PSAwKSAmJiAhcEJ1ZiIKPj4gaXMgY29uc3RhbnRs
eSBmYWxzZSBiZWNhdXNlIGl0IGlzIGEgbmVzdGVkIGlmIGluIHRoZSBlbHNlIGJyYWNoLCBpLmUu
LAo+PiAiaWYgKGNvbmQpIHsgLi4uIH0gZWxzZSB7IGlmIChjb25kKSB7Li4ufSB9Ii4gVGhpcyBw
YXRjaCBhbHRlcnMgdGhlCj4+IGlmIGNvbmRpdGlvbiB0byBjaGVjayAicEJ1ZkxlbiAmJiBwQnVm
IiBwb2ludGVycyBhcmUgbm90IE5VTEwuCj4+Cj4+IENjOiBHcmVnIEtyb2FoLUhhcnRtYW4gPGdy
ZWdraEBsaW51eGZvdW5kYXRpb24ub3JnPgo+PiBDYzogSGFucyBkZSBHb2VkZSA8aGRlZ29lZGVA
cmVkaGF0LmNvbT4KPj4gQ2M6IEJhc3RpZW4gTm9jZXJhIDxoYWRlc3NAaGFkZXNzLm5ldD4KPj4g
Q2M6IExhcnJ5IEZpbmdlciA8TGFycnkuRmluZ2VyQGx3ZmluZ2VyLm5ldD4KPj4gQ2M6IEplcyBT
b3JlbnNlbiA8amVzLnNvcmVuc2VuQGdtYWlsLmNvbT4KPj4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5l
bC5vcmcKPj4gU2lnbmVkLW9mZi1ieTogRGVuaXMgRWZyZW1vdiA8ZWZyZW1vdkBsaW51eC5jb20+
Cj4+IC0tLQo+PiBOb3QgdGVzdGVkLiBJIGRvbid0IGhhdmUgdGhlIGhhcmR3YXJlLiBUaGUgZml4
IGlzIGJhc2VkIG9uIG15IGd1ZXNzLgo+IAo+IFRoc25rIHlvdSBmb3IgeW91ciBwYXRjaC4KPiAK
PiBTbyBJJ3ZlIGJlZW4gZG9pbmcgc29tZSBkaWdnaW5nIGFuZCB0aGlzIGNvZGUgbm9ybWFsbHkg
bmV2ZXIgZXhlY3V0ZXMuCj4gCj4gRm9yIHRoaXMgdG8gZXhlY3V0ZSB0aGUgdXNlciB3b3VsZCBu
ZWVkIHRvIGNoYW5nZSB0aGUgcnR3X2xvYWRfcGh5X2ZpbGUgbW9kdWxlCj4gcGFyYW0gZnJvbSBp
dHMgZGVmYXVsdCBvZiAweDQ0IChMT0FEX0JCX1BHX1BBUkFfRklMRSB8IExPQURfUkZfVFhQV1Jf
TE1UX1BBUkFfRklMRSkKPiB0byBzb21ldGhpbmcgd2hpY2ggaW5jbHVkZXMgMHgwMiAoTE9BRF9C
Ql9QQVJBX0ZJTEUpIGFzIG1hc2suCj4gCj4gQW5kIGV2ZW4gd2l0aCB0aGF0IHBhcmFtIHNldCBm
b3IgdGhpcyBjb2RlIHRvIGFjdHVhbGx5IGRvIHNvbWV0aGluZyAvCj4gZm9yIHBCdWYgdG8gZXZl
ciBub3QgYmUgTlVMTCB0aGUgZm9sbG93aW5nIGNvbmRpdGlvbnMgd291bGQgaGF2ZSB0bwo+IGJl
IHRydWU6Cj4gCj4gMSkgU2V0IHRoZSBydHdfbG9hZF9waHlfZmlsZSBtb2R1bGUgcGFyYW0gZnJv
bSBpdHMgZGVmYXVsdCBvZgo+IMKgwqAgMHg0NCAoTE9BRF9CQl9QR19QQVJBX0ZJTEUgfCBMT0FE
X1JGX1RYUFdSX0xNVF9QQVJBX0ZJTEUpIHRvIHNvbWV0aGluZwo+IMKgwqAgd2hpY2ggaW5jbHVk
ZXMgMHgwMiBhcyBtYXNrOyBhbmQKPiAyKSBTZXQgcnR3X3BoeV9maWxlX3BhdGggbW9kdWxlIHBh
cmFtZXRlciB0byBzYXkgIi9saWIvZmlybXdhcmUvIjsgYW5kCj4gMykgU3RvcmUgYSAvbGliL2Zp
cm13YXJlL3J0bDg3MjNiL1BIWV9SRUcudHh0IGZpbGUgaW4gdGhlIGV4cGVjdGVkIGZvcm1hdC4K
PiAKPiBTbyBJJ3ZlIGNvbWUgdG8gdGhlIGNvbmNsdXNpb24gdGhhdCBhbGwgdGhlIHBoeV9Db25m
aWcqV2l0aFBhcmFGaWxlIGZ1bmN0aW9ucwo+IChhbmQgYSBidW5jaCBvZiBzdHVmZiB0aGV5IHVz
ZSkgY2FuIGJlIHJlbW92ZWQuCj4gCj4gSSB3aWxsIHByZXBhcmUgYW5kIHN1Ym1pdCBhIHBhdGNo
IGZvciB0aGlzLgo+IAoKVGhhbmsgeW91IGZvciBwZXJmZWN0IGludmVzdGlnYXRpb24hIEkgY2Fu
IG9ubHkgYWdyZWUgd2l0aCB5b3UsIGJlY2F1c2UgdGhpcwpjb2RlIGlzIGJ1Z2d5LiBJdCBsb29r
cyBsaWtlIG5vIG9uZSBmYWNlZCB0aGlzIGJ1ZyBwcmV2aW91c2x5IGFuZCB0aGUgY29kZQpjYW4g
YmUgc2FmZWx5IHJlbW92ZWQuCgpCZXN0IFJlZ2FyZHMsCkRlbmlzCgo+IAo+Pgo+PiDCoCBkcml2
ZXJzL3N0YWdpbmcvcnRsODcyM2JzL2hhbC9oYWxfY29tX3BoeWNmZy5jIHwgNCArKy0tCj4+IMKg
IDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4+Cj4+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvcnRsODcyM2JzL2hhbC9oYWxfY29tX3BoeWNmZy5j
IGIvZHJpdmVycy9zdGFnaW5nL3J0bDg3MjNicy9oYWwvaGFsX2NvbV9waHljZmcuYwo+PiBpbmRl
eCA2NTM5YmVlOWI1YmEuLjA5MDJkYzNjMTgyNSAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9zdGFn
aW5nL3J0bDg3MjNicy9oYWwvaGFsX2NvbV9waHljZmcuYwo+PiArKysgYi9kcml2ZXJzL3N0YWdp
bmcvcnRsODcyM2JzL2hhbC9oYWxfY29tX3BoeWNmZy5jCj4+IEBAIC0yMzIwLDcgKzIzMjAsNyBA
QCBpbnQgcGh5X0NvbmZpZ0JCV2l0aFBhcmFGaWxlKAo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCB9Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoCB9Cj4+IMKgwqDCoMKgwqAgfSBlbHNlIHsKPj4g
LcKgwqDCoMKgwqDCoMKgIGlmIChwQnVmTGVuICYmICgqcEJ1ZkxlbiA9PSAwKSAmJiAhcEJ1Zikg
ewo+PiArwqDCoMKgwqDCoMKgwqAgaWYgKHBCdWZMZW4gJiYgcEJ1Zikgewo+PiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBtZW1jcHkocEhhbERhdGEtPnBhcmFfZmlsZV9idWYsIHBCdWYsICpw
QnVmTGVuKTsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcnRTdGF0dXMgPSBfU1VDQ0VT
UzsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIH0gZWxzZQo+PiBAQCAtMjc1Miw3ICsyNzUyLDcgQEAg
aW50IFBIWV9Db25maWdSRldpdGhQYXJhRmlsZSgKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgfQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgfQo+PiDCoMKgwqDCoMKgIH0gZWxzZSB7Cj4+IC3C
oMKgwqDCoMKgwqDCoCBpZiAocEJ1ZkxlbiAmJiAoKnBCdWZMZW4gPT0gMCkgJiYgIXBCdWYpIHsK
Pj4gK8KgwqDCoMKgwqDCoMKgIGlmIChwQnVmTGVuICYmIHBCdWYpIHsKPj4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgbWVtY3B5KHBIYWxEYXRhLT5wYXJhX2ZpbGVfYnVmLCBwQnVmLCAqcEJ1
Zkxlbik7Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJ0U3RhdHVzID0gX1NVQ0NFU1M7
Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoCB9IGVsc2UKPj4KPiAKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4
ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3Jn
L21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==

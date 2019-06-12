Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A927042224
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Jun 2019 12:17:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CA70920533;
	Wed, 12 Jun 2019 10:17:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b5zlCps6uPqq; Wed, 12 Jun 2019 10:17:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 034FD20523;
	Wed, 12 Jun 2019 10:17:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D26411BF2B6
 for <devel@linuxdriverproject.org>; Wed, 12 Jun 2019 10:17:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CEAEF204DA
 for <devel@linuxdriverproject.org>; Wed, 12 Jun 2019 10:17:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wmcMPlHEr3gV for <devel@linuxdriverproject.org>;
 Wed, 12 Jun 2019 10:17:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 0E910204BD
 for <devel@linuxdriverproject.org>; Wed, 12 Jun 2019 10:17:28 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id n9so16307233wru.0
 for <devel@linuxdriverproject.org>; Wed, 12 Jun 2019 03:17:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=Kv7LCbEgp/ES7E3A9FpL8uznQf+7YZrzEljrXGATpdE=;
 b=eoef4Li9PDmWOAbWkVQoKQlV9T1i49TG/GDTdwR6X23ci2UOsZPIh+Gs0KPEBWODIE
 43g5ded3vsxQcYKAZZeXsSKL2aLaCgJtt84Z2s7CPd20oz5Y+J71vscXdCwkLubSOqNt
 DA4pi+lTZAmd8H6a24W1q9bIrQjBP1dF07jR5oIWRvzxE9Ef9JMM4J3BgBN2UxjWdT++
 gH5Oom3rox+VLF5IiO0rpdTk3J4NEQyI7jojd6fBmD3wrBXS9356O1wr3F88II+Ns/pR
 FQswXrhwExveNZ6jIMOGy2akguMDuPor5AzLJ7EJfV6fFzQ7GOBKte3MI5IovuUZdkba
 5MVA==
X-Gm-Message-State: APjAAAU5f/CCu/BPcTkZ9taJF3qBltFdU3A+jkQf4LB50MN6bqB+5Vha
 3d3JBrCkiO7uF7wGmtYEQ6eZiA==
X-Google-Smtp-Source: APXvYqxzPAQxgfE805E8ecOhU0d3jxt3B5r61pAm0pxDc2tqk8vXILX/wSNAPsyKIcVAa7zcSi3nnw==
X-Received: by 2002:adf:e841:: with SMTP id d1mr54673237wrn.204.1560334646423; 
 Wed, 12 Jun 2019 03:17:26 -0700 (PDT)
Received: from vitty.brq.redhat.com (nat-pool-brq-t.redhat.com.
 [213.175.37.10])
 by smtp.gmail.com with ESMTPSA id 32sm39077824wra.35.2019.06.12.03.17.25
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 12 Jun 2019 03:17:25 -0700 (PDT)
From: Vitaly Kuznetsov <vkuznets@redhat.com>
To: Dmitry Safonov <dima@arista.com>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] x86/hyperv: Disable preemption while setting
 reenlightenment vector
In-Reply-To: <20190611212003.26382-1-dima@arista.com>
References: <20190611212003.26382-1-dima@arista.com>
Date: Wed, 12 Jun 2019 12:17:24 +0200
Message-ID: <8736kff6q3.fsf@vitty.brq.redhat.com>
MIME-Version: 1.0
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
Cc: Sasha Levin <sashal@kernel.org>, linux-hyperv@vger.kernel.org,
 Stephen Hemminger <sthemmin@microsoft.com>, kvm@vger.kernel.org,
 Radim =?utf-8?B?S3LEjW3DocWZ?= <rkrcmar@redhat.com>,
 Haiyang Zhang <haiyangz@microsoft.com>, x86@kernel.org,
 devel@linuxdriverproject.org,
 "Michael Kelley \(EOSG\)" <Michael.H.Kelley@microsoft.com>,
 Prasanna Panchamukhi <panchamukhi@arista.com>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Roman Kagan <rkagan@virtuozzo.com>,
 Andy Lutomirski <luto@kernel.org>, "H. Peter
 Anvin" <hpa@zytor.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>, Mohammed Gamal <mmorsy@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RG1pdHJ5IFNhZm9ub3YgPGRpbWFAYXJpc3RhLmNvbT4gd3JpdGVzOgoKPiBLVk0gc3VwcG9ydCBt
YXkgYmUgY29tcGlsZWQgYXMgZHluYW1pYyBtb2R1bGUsIHdoaWNoIHRyaWdnZXJzIHRoZQo+IGZv
bGxvd2luZyBzcGxhdCBvbiBtb2Rwcm9iZToKPgo+ICBLVk06IHZteDogdXNpbmcgSHlwZXItViBF
bmxpZ2h0ZW5lZCBWTUNTCj4gIEJVRzogdXNpbmcgc21wX3Byb2Nlc3Nvcl9pZCgpIGluIHByZWVt
cHRpYmxlIFswMDAwMDAwMF0gY29kZTogbW9kcHJvYmUvNDY2IGNhbGxlciBpcyBkZWJ1Z19zbXBf
cHJvY2Vzc29yX2lkKzB4MTcvMHgxOQo+ICBDUFU6IDAgUElEOiA0NjYgQ29tbTogbW9kcHJvYmUg
S2R1bXA6IGxvYWRlZCBOb3QgdGFpbnRlZCA0LjE5LjQzICMxCj4gIEhhcmR3YXJlIG5hbWU6IE1p
Y3Jvc29mdCBDb3Jwb3JhdGlvbiBWaXJ0dWFsIE1hY2hpbmUvVmlydHVhbCBNYWNoaW5lLCBCSU9T
IDA5MDAwNyAgMDYvMDIvMjAxNwo+ICBDYWxsIFRyYWNlOgo+ICAgZHVtcF9zdGFjaysweDYxLzB4
N2UKPiAgIGNoZWNrX3ByZWVtcHRpb25fZGlzYWJsZWQrMHhkNC8weGU2Cj4gICBkZWJ1Z19zbXBf
cHJvY2Vzc29yX2lkKzB4MTcvMHgxOQo+ICAgc2V0X2h2X3RzY2NoYW5nZV9jYisweDFiLzB4ODkK
PiAgIGt2bV9hcmNoX2luaXQrMHgxNGEvMHgxNjMgW2t2bV0KPiAgIGt2bV9pbml0KzB4MzAvMHgy
NTkgW2t2bV0KPiAgIHZteF9pbml0KzB4ZWQvMHgzZGIgW2t2bV9pbnRlbF0KPiAgIGRvX29uZV9p
bml0Y2FsbCsweDg5LzB4MWJjCj4gICBkb19pbml0X21vZHVsZSsweDVmLzB4MjA3Cj4gICBsb2Fk
X21vZHVsZSsweDFiMzQvMHgyMDliCj4gICBfX2lhMzJfc3lzX2luaXRfbW9kdWxlKzB4MTcvMHgx
OQo+ICAgZG9fZmFzdF9zeXNjYWxsXzMyKzB4MTIxLzB4MWZhCj4gICBlbnRyeV9TWVNFTlRFUl9j
b21wYXQrMHg3Zi8weDkxCgpIbSwgSSBuZXZlciBub3RpY2VkIHRoaXMgb25lLCB5b3UgcHJvYmFi
bHkgbmVlZCBzb21ldGhpbmcgbGlrZQpDT05GSUdfUFJFRU1QVCBlbmFibGVkIHNvIHNlZSBpdC4K
Cj4KPiBUaGUgZWFzaWVzdCBzb2x1dGlvbiBzZWVtcyB0byBiZSBkaXNhYmxpbmcgcHJlZW1wdGlv
biB3aGlsZSBzZXR0aW5nIHVwCj4gcmVlbmxpZ2h0bWVudCBNU1JzLiBXaGlsZSBhdCBpdCwgZml4
IGh2X2NwdV8qKCkgY2FsbGJhY2tzLgo+Cj4gRml4ZXM6IDkzMjg2MjYxZGUxYjQgKCJ4ODYvaHlw
ZXJ2OiBSZWVubGlnaHRlbm1lbnQgbm90aWZpY2F0aW9ucwo+IHN1cHBvcnQiKQo+Cj4gQ2M6IEFu
ZHkgTHV0b21pcnNraSA8bHV0b0BrZXJuZWwub3JnPgo+IENjOiBCb3Jpc2xhdiBQZXRrb3YgPGJw
QGFsaWVuOC5kZT4KPiBDYzogQ2F0aHkgQXZlcnkgPGNhdmVyeUByZWRoYXQuY29tPgo+IENjOiBI
YWl5YW5nIFpoYW5nIDxoYWl5YW5nekBtaWNyb3NvZnQuY29tPgo+IENjOiAiSC4gUGV0ZXIgQW52
aW4iIDxocGFAenl0b3IuY29tPgo+IENjOiBJbmdvIE1vbG5hciA8bWluZ29AcmVkaGF0LmNvbT4K
PiBDYzogIksuIFkuIFNyaW5pdmFzYW4iIDxreXNAbWljcm9zb2Z0LmNvbT4KPiBDYzogIk1pY2hh
ZWwgS2VsbGV5IChFT1NHKSIgPE1pY2hhZWwuSC5LZWxsZXlAbWljcm9zb2Z0LmNvbT4KPiBDYzog
TW9oYW1tZWQgR2FtYWwgPG1tb3JzeUByZWRoYXQuY29tPgo+IENjOiBQYW9sbyBCb256aW5pIDxw
Ym9uemluaUByZWRoYXQuY29tPgo+IENjOiBSYWRpbSBLcsSNbcOhxZkgPHJrcmNtYXJAcmVkaGF0
LmNvbT4KPiBDYzogUm9tYW4gS2FnYW4gPHJrYWdhbkB2aXJ0dW96em8uY29tPgo+IENjOiBTYXNo
YSBMZXZpbiA8c2FzaGFsQGtlcm5lbC5vcmc+Cj4gQ2M6IFN0ZXBoZW4gSGVtbWluZ2VyIDxzdGhl
bW1pbkBtaWNyb3NvZnQuY29tPgo+IENjOiBUaG9tYXMgR2xlaXhuZXIgPHRnbHhAbGludXRyb25p
eC5kZT4KPiBDYzogVml0YWx5IEt1em5ldHNvdiA8dmt1em5ldHNAcmVkaGF0LmNvbT4KPgo+IENj
OiBkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCj4gQ2M6IGt2bUB2Z2VyLmtlcm5lbC5vcmcK
PiBDYzogbGludXgtaHlwZXJ2QHZnZXIua2VybmVsLm9yZwo+IENjOiB4ODZAa2VybmVsLm9yZwo+
IFJlcG9ydGVkLWJ5OiBQcmFzYW5uYSBQYW5jaGFtdWtoaSA8cGFuY2hhbXVraGlAYXJpc3RhLmNv
bT4KPiBTaWduZWQtb2ZmLWJ5OiBEbWl0cnkgU2Fmb25vdiA8ZGltYUBhcmlzdGEuY29tPgo+IC0t
LQo+ICBhcmNoL3g4Ni9oeXBlcnYvaHZfaW5pdC5jIHwgOSArKysrKystLS0KPiAgMSBmaWxlIGNo
YW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9h
cmNoL3g4Ni9oeXBlcnYvaHZfaW5pdC5jIGIvYXJjaC94ODYvaHlwZXJ2L2h2X2luaXQuYwo+IGlu
ZGV4IDE2MDgwNTBlOWRmOS4uMGJkZDc5ZWNiZmY4IDEwMDY0NAo+IC0tLSBhL2FyY2gveDg2L2h5
cGVydi9odl9pbml0LmMKPiArKysgYi9hcmNoL3g4Ni9oeXBlcnYvaHZfaW5pdC5jCj4gQEAgLTkx
LDcgKzkxLDcgQEAgRVhQT1JUX1NZTUJPTF9HUEwoaHZfbWF4X3ZwX2luZGV4KTsKPiAgc3RhdGlj
IGludCBodl9jcHVfaW5pdCh1bnNpZ25lZCBpbnQgY3B1KQo+ICB7Cj4gIAl1NjQgbXNyX3ZwX2lu
ZGV4Owo+IC0Jc3RydWN0IGh2X3ZwX2Fzc2lzdF9wYWdlICoqaHZwID0gJmh2X3ZwX2Fzc2lzdF9w
YWdlW3NtcF9wcm9jZXNzb3JfaWQoKV07Cj4gKwlzdHJ1Y3QgaHZfdnBfYXNzaXN0X3BhZ2UgKipo
dnAgPSAmaHZfdnBfYXNzaXN0X3BhZ2VbY3B1XTsKPiAgCXZvaWQgKippbnB1dF9hcmc7Cj4gIAlz
dHJ1Y3QgcGFnZSAqcGc7Cj4gIAo+IEBAIC0xMDMsNyArMTAzLDcgQEAgc3RhdGljIGludCBodl9j
cHVfaW5pdCh1bnNpZ25lZCBpbnQgY3B1KQo+ICAKPiAgCWh2X2dldF92cF9pbmRleChtc3JfdnBf
aW5kZXgpOwo+ICAKPiAtCWh2X3ZwX2luZGV4W3NtcF9wcm9jZXNzb3JfaWQoKV0gPSBtc3JfdnBf
aW5kZXg7Cj4gKwlodl92cF9pbmRleFtjcHVdID0gbXNyX3ZwX2luZGV4Owo+ICAKPiAgCWlmICht
c3JfdnBfaW5kZXggPiBodl9tYXhfdnBfaW5kZXgpCj4gIAkJaHZfbWF4X3ZwX2luZGV4ID0gbXNy
X3ZwX2luZGV4OwoKVGhlIGFib3ZlIGlzIHVucmVsYXRlZCBjbGVhbnVwIChhcyBjcHUgPT0gc21w
X3Byb2Nlc3Nvcl9pZCgpIGZvcgpDUFVIUF9BUF9PTkxJTkVfRFlOIGNhbGxiYWNrcyksIHJpZ2h0
PyBBcyBJJ20gcHJldHR5IHN1cmUgdGhlc2UgY2FuJ2QgYmUKcHJlZW1wdGVkLgoKPiBAQCAtMTgy
LDcgKzE4Miw2IEBAIHZvaWQgc2V0X2h2X3RzY2NoYW5nZV9jYih2b2lkICgqY2IpKHZvaWQpKQo+
ICAJc3RydWN0IGh2X3JlZW5saWdodGVubWVudF9jb250cm9sIHJlX2N0cmwgPSB7Cj4gIAkJLnZl
Y3RvciA9IEhZUEVSVl9SRUVOTElHSFRFTk1FTlRfVkVDVE9SLAo+ICAJCS5lbmFibGVkID0gMSwK
PiAtCQkudGFyZ2V0X3ZwID0gaHZfdnBfaW5kZXhbc21wX3Byb2Nlc3Nvcl9pZCgpXQo+ICAJfTsK
PiAgCXN0cnVjdCBodl90c2NfZW11bGF0aW9uX2NvbnRyb2wgZW11X2N0cmwgPSB7LmVuYWJsZWQg
PSAxfTsKPiAgCj4gQEAgLTE5Niw3ICsxOTUsMTEgQEAgdm9pZCBzZXRfaHZfdHNjY2hhbmdlX2Ni
KHZvaWQgKCpjYikodm9pZCkpCj4gIAkvKiBNYWtlIHN1cmUgY2FsbGJhY2sgaXMgcmVnaXN0ZXJl
ZCBiZWZvcmUgd2Ugd3JpdGUgdG8gTVNScyAqLwo+ICAJd21iKCk7Cj4gIAo+ICsJcHJlZW1wdF9k
aXNhYmxlKCk7Cj4gKwlyZV9jdHJsLnRhcmdldF92cCA9IGh2X3ZwX2luZGV4W3NtcF9wcm9jZXNz
b3JfaWQoKV07Cj4gIAl3cm1zcmwoSFZfWDY0X01TUl9SRUVOTElHSFRFTk1FTlRfQ09OVFJPTCwg
KigodTY0ICopJnJlX2N0cmwpKTsKPiArCXByZWVtcHRfZW5hYmxlKCk7Cj4gKwoKTXkgcGVyc29u
YWwgcHJlZmVyZW5jZSB3b3VsZCBiZSB0byBkbyBzb21ldGhpbmcgbGlrZQogICBpbnQgY3B1ID0g
Z2V0X2NwdSgpOwoKICAgLi4uIHNldCB0aGluZ3MgdXAgLi4uCgogICBwdXRfY3B1KCk7CgppbnN0
ZWFkLCB0aGVyZSBhcmUgbm8gbG9uZy1ydW5uaW5nIHRoaW5ncyBpbiB0aGUgd2hvbGUgZnVuY3Rp
b24uIEJ1dAp3aGF0IHlvdSd2ZSBkb25lIHNob3VsZCB3b3JrIHRvbywgc28KClJldmlld2VkLWJ5
OiBWaXRhbHkgS3V6bmV0c292IDx2a3V6bmV0c0ByZWRoYXQuY29tPgoKPiAgCXdybXNybChIVl9Y
NjRfTVNSX1RTQ19FTVVMQVRJT05fQ09OVFJPTCwgKigodTY0ICopJmVtdV9jdHJsKSk7Cj4gIH0K
PiAgRVhQT1JUX1NZTUJPTF9HUEwoc2V0X2h2X3RzY2NoYW5nZV9jYik7CgotLSAKVml0YWx5Cl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxp
bmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGlu
dXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3482742286
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Jun 2019 12:32:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0D8CD87FB2;
	Wed, 12 Jun 2019 10:32:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WrP+K7txz6iz; Wed, 12 Jun 2019 10:32:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 944D887F5A;
	Wed, 12 Jun 2019 10:32:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8EC491BF2B6
 for <devel@linuxdriverproject.org>; Wed, 12 Jun 2019 10:32:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8AF5A20354
 for <devel@linuxdriverproject.org>; Wed, 12 Jun 2019 10:32:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3myBPaaXAqlK for <devel@linuxdriverproject.org>;
 Wed, 12 Jun 2019 10:32:15 +0000 (UTC)
X-Greylist: delayed 00:06:28 by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 1961220007
 for <devel@linuxdriverproject.org>; Wed, 12 Jun 2019 10:32:15 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id x15so6002554wmj.3
 for <devel@linuxdriverproject.org>; Wed, 12 Jun 2019 03:32:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=xuz7wl9JI/1izuO7h6cmpUujshUximjTTA0wiCF4sTg=;
 b=ciRTUXJVFbf1ojGt1Tra3LzUggOi7YkqEfiDb4XxB9utjvtlBE3GEFYXrgzqoNfWQg
 mcGkOaM1HfRnE/Bumsk1pZUwRRHyXzgpKKfX0yZJjsMMqgnh+NgQ8LZX1oZjAdHi+mIk
 9k0ZlZRC5rut0XOmUkaXjIEodGHcaNLUFd8hYAr5kNBYSv+2ji7UWVxz4NLQM/ASDq+K
 OPPm7Hqr8810ms8g4shf9LCv75bWv8faGYZa38GG8fTJMxKwRgdq2AuXmeltjWW2/alm
 H4QOrB03z0Z/8Bhygdf8gVowRDza05qm/fgZZkVaYqxYsNnCZCTSMcwOB0kbjm7PpAhl
 yINQ==
X-Gm-Message-State: APjAAAWDjrHy9RAf75ZF92DtzO7wt69DqTF/8LFKl+xSCKK6Rt85dysw
 2Hrxa96Ki7g/T3/rAn7sWDNadA==
X-Google-Smtp-Source: APXvYqyvXjwdxbX8PPfz/CW94/F08nXOpdTiba2085ImP1ZnWBDiUcxjjeVDZN0HlcN+tUZgfwgZfw==
X-Received: by 2002:a05:600c:1008:: with SMTP id
 c8mr22199755wmc.133.1560335146039; 
 Wed, 12 Jun 2019 03:25:46 -0700 (PDT)
Received: from vitty.brq.redhat.com (nat-pool-brq-t.redhat.com.
 [213.175.37.10])
 by smtp.gmail.com with ESMTPSA id f2sm13793660wru.31.2019.06.12.03.25.44
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 12 Jun 2019 03:25:45 -0700 (PDT)
From: Vitaly Kuznetsov <vkuznets@redhat.com>
To: Peter Zijlstra <peterz@infradead.org>, Dmitry Safonov <dima@arista.com>
Subject: Re: [PATCH] x86/hyperv: Disable preemption while setting
 reenlightenment vector
In-Reply-To: <20190612093506.GH3436@hirez.programming.kicks-ass.net>
References: <20190611212003.26382-1-dima@arista.com>
 <20190612093506.GH3436@hirez.programming.kicks-ass.net>
Date: Wed, 12 Jun 2019 12:25:44 +0200
Message-ID: <87tvcvdrrr.fsf@vitty.brq.redhat.com>
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
 linux-kernel@vger.kernel.org, devel@linuxdriverproject.org, "Michael
 Kelley \(EOSG\)" <Michael.H.Kelley@microsoft.com>,
 Prasanna Panchamukhi <panchamukhi@arista.com>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Roman Kagan <rkagan@virtuozzo.com>,
 Andy Lutomirski <luto@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 Paolo Bonzini <pbonzini@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 Mohammed Gamal <mmorsy@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

UGV0ZXIgWmlqbHN0cmEgPHBldGVyekBpbmZyYWRlYWQub3JnPiB3cml0ZXM6Cgo+IE9uIFR1ZSwg
SnVuIDExLCAyMDE5IGF0IDEwOjIwOjAzUE0gKzAxMDAsIERtaXRyeSBTYWZvbm92IHdyb3RlOgo+
PiBLVk0gc3VwcG9ydCBtYXkgYmUgY29tcGlsZWQgYXMgZHluYW1pYyBtb2R1bGUsIHdoaWNoIHRy
aWdnZXJzIHRoZQo+PiBmb2xsb3dpbmcgc3BsYXQgb24gbW9kcHJvYmU6Cj4+IAo+PiAgS1ZNOiB2
bXg6IHVzaW5nIEh5cGVyLVYgRW5saWdodGVuZWQgVk1DUwo+PiAgQlVHOiB1c2luZyBzbXBfcHJv
Y2Vzc29yX2lkKCkgaW4gcHJlZW1wdGlibGUgWzAwMDAwMDAwXSBjb2RlOiBtb2Rwcm9iZS80NjYg
Y2FsbGVyIGlzIGRlYnVnX3NtcF9wcm9jZXNzb3JfaWQrMHgxNy8weDE5Cj4+ICBDUFU6IDAgUElE
OiA0NjYgQ29tbTogbW9kcHJvYmUgS2R1bXA6IGxvYWRlZCBOb3QgdGFpbnRlZCA0LjE5LjQzICMx
Cj4+ICBIYXJkd2FyZSBuYW1lOiBNaWNyb3NvZnQgQ29ycG9yYXRpb24gVmlydHVhbCBNYWNoaW5l
L1ZpcnR1YWwgTWFjaGluZSwgQklPUyAwOTAwMDcgIDA2LzAyLzIwMTcKPj4gIENhbGwgVHJhY2U6
Cj4+ICAgZHVtcF9zdGFjaysweDYxLzB4N2UKPj4gICBjaGVja19wcmVlbXB0aW9uX2Rpc2FibGVk
KzB4ZDQvMHhlNgo+PiAgIGRlYnVnX3NtcF9wcm9jZXNzb3JfaWQrMHgxNy8weDE5Cj4+ICAgc2V0
X2h2X3RzY2NoYW5nZV9jYisweDFiLzB4ODkKPj4gICBrdm1fYXJjaF9pbml0KzB4MTRhLzB4MTYz
IFtrdm1dCj4+ICAga3ZtX2luaXQrMHgzMC8weDI1OSBba3ZtXQo+PiAgIHZteF9pbml0KzB4ZWQv
MHgzZGIgW2t2bV9pbnRlbF0KPj4gICBkb19vbmVfaW5pdGNhbGwrMHg4OS8weDFiYwo+PiAgIGRv
X2luaXRfbW9kdWxlKzB4NWYvMHgyMDcKPj4gICBsb2FkX21vZHVsZSsweDFiMzQvMHgyMDliCj4+
ICAgX19pYTMyX3N5c19pbml0X21vZHVsZSsweDE3LzB4MTkKPj4gICBkb19mYXN0X3N5c2NhbGxf
MzIrMHgxMjEvMHgxZmEKPj4gICBlbnRyeV9TWVNFTlRFUl9jb21wYXQrMHg3Zi8weDkxCj4+IAo+
PiBUaGUgZWFzaWVzdCBzb2x1dGlvbiBzZWVtcyB0byBiZSBkaXNhYmxpbmcgcHJlZW1wdGlvbiB3
aGlsZSBzZXR0aW5nIHVwCj4+IHJlZW5saWdodG1lbnQgTVNScy4gV2hpbGUgYXQgaXQsIGZpeCBo
dl9jcHVfKigpIGNhbGxiYWNrcy4KPj4gCj4+IEZpeGVzOiA5MzI4NjI2MWRlMWI0ICgieDg2L2h5
cGVydjogUmVlbmxpZ2h0ZW5tZW50IG5vdGlmaWNhdGlvbnMKPj4gc3VwcG9ydCIpCj4+IAo+PiBD
YzogQW5keSBMdXRvbWlyc2tpIDxsdXRvQGtlcm5lbC5vcmc+Cj4+IENjOiBCb3Jpc2xhdiBQZXRr
b3YgPGJwQGFsaWVuOC5kZT4KPj4gQ2M6IENhdGh5IEF2ZXJ5IDxjYXZlcnlAcmVkaGF0LmNvbT4K
Pj4gQ2M6IEhhaXlhbmcgWmhhbmcgPGhhaXlhbmd6QG1pY3Jvc29mdC5jb20+Cj4+IENjOiAiSC4g
UGV0ZXIgQW52aW4iIDxocGFAenl0b3IuY29tPgo+PiBDYzogSW5nbyBNb2xuYXIgPG1pbmdvQHJl
ZGhhdC5jb20+Cj4+IENjOiAiSy4gWS4gU3Jpbml2YXNhbiIgPGt5c0BtaWNyb3NvZnQuY29tPgo+
PiBDYzogIk1pY2hhZWwgS2VsbGV5IChFT1NHKSIgPE1pY2hhZWwuSC5LZWxsZXlAbWljcm9zb2Z0
LmNvbT4KPj4gQ2M6IE1vaGFtbWVkIEdhbWFsIDxtbW9yc3lAcmVkaGF0LmNvbT4KPj4gQ2M6IFBh
b2xvIEJvbnppbmkgPHBib256aW5pQHJlZGhhdC5jb20+Cj4+IENjOiBSYWRpbSBLcsSNbcOhxZkg
PHJrcmNtYXJAcmVkaGF0LmNvbT4KPj4gQ2M6IFJvbWFuIEthZ2FuIDxya2FnYW5AdmlydHVvenpv
LmNvbT4KPj4gQ2M6IFNhc2hhIExldmluIDxzYXNoYWxAa2VybmVsLm9yZz4KPj4gQ2M6IFN0ZXBo
ZW4gSGVtbWluZ2VyIDxzdGhlbW1pbkBtaWNyb3NvZnQuY29tPgo+PiBDYzogVGhvbWFzIEdsZWl4
bmVyIDx0Z2x4QGxpbnV0cm9uaXguZGU+Cj4+IENjOiBWaXRhbHkgS3V6bmV0c292IDx2a3V6bmV0
c0ByZWRoYXQuY29tPgo+PiAKPj4gQ2M6IGRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKPj4g
Q2M6IGt2bUB2Z2VyLmtlcm5lbC5vcmcKPj4gQ2M6IGxpbnV4LWh5cGVydkB2Z2VyLmtlcm5lbC5v
cmcKPj4gQ2M6IHg4NkBrZXJuZWwub3JnCj4+IFJlcG9ydGVkLWJ5OiBQcmFzYW5uYSBQYW5jaGFt
dWtoaSA8cGFuY2hhbXVraGlAYXJpc3RhLmNvbT4KPj4gU2lnbmVkLW9mZi1ieTogRG1pdHJ5IFNh
Zm9ub3YgPGRpbWFAYXJpc3RhLmNvbT4KPj4gLS0tCj4+ICBhcmNoL3g4Ni9oeXBlcnYvaHZfaW5p
dC5jIHwgOSArKysrKystLS0KPj4gIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDMg
ZGVsZXRpb25zKC0pCj4+IAo+PiBkaWZmIC0tZ2l0IGEvYXJjaC94ODYvaHlwZXJ2L2h2X2luaXQu
YyBiL2FyY2gveDg2L2h5cGVydi9odl9pbml0LmMKPj4gaW5kZXggMTYwODA1MGU5ZGY5Li4wYmRk
NzllY2JmZjggMTAwNjQ0Cj4+IC0tLSBhL2FyY2gveDg2L2h5cGVydi9odl9pbml0LmMKPj4gKysr
IGIvYXJjaC94ODYvaHlwZXJ2L2h2X2luaXQuYwo+PiBAQCAtOTEsNyArOTEsNyBAQCBFWFBPUlRf
U1lNQk9MX0dQTChodl9tYXhfdnBfaW5kZXgpOwo+PiAgc3RhdGljIGludCBodl9jcHVfaW5pdCh1
bnNpZ25lZCBpbnQgY3B1KQo+PiAgewo+PiAgCXU2NCBtc3JfdnBfaW5kZXg7Cj4+IC0Jc3RydWN0
IGh2X3ZwX2Fzc2lzdF9wYWdlICoqaHZwID0gJmh2X3ZwX2Fzc2lzdF9wYWdlW3NtcF9wcm9jZXNz
b3JfaWQoKV07Cj4+ICsJc3RydWN0IGh2X3ZwX2Fzc2lzdF9wYWdlICoqaHZwID0gJmh2X3ZwX2Fz
c2lzdF9wYWdlW2NwdV07Cj4+ICAJdm9pZCAqKmlucHV0X2FyZzsKPj4gIAlzdHJ1Y3QgcGFnZSAq
cGc7Cj4+ICAKPj4gQEAgLTEwMyw3ICsxMDMsNyBAQCBzdGF0aWMgaW50IGh2X2NwdV9pbml0KHVu
c2lnbmVkIGludCBjcHUpCj4+ICAKPj4gIAlodl9nZXRfdnBfaW5kZXgobXNyX3ZwX2luZGV4KTsK
Pj4gIAo+PiAtCWh2X3ZwX2luZGV4W3NtcF9wcm9jZXNzb3JfaWQoKV0gPSBtc3JfdnBfaW5kZXg7
Cj4+ICsJaHZfdnBfaW5kZXhbY3B1XSA9IG1zcl92cF9pbmRleDsKPj4gIAo+PiAgCWlmIChtc3Jf
dnBfaW5kZXggPiBodl9tYXhfdnBfaW5kZXgpCj4+ICAJCWh2X21heF92cF9pbmRleCA9IG1zcl92
cF9pbmRleDsKPj4gQEAgLTE4Miw3ICsxODIsNiBAQCB2b2lkIHNldF9odl90c2NjaGFuZ2VfY2Io
dm9pZCAoKmNiKSh2b2lkKSkKPj4gIAlzdHJ1Y3QgaHZfcmVlbmxpZ2h0ZW5tZW50X2NvbnRyb2wg
cmVfY3RybCA9IHsKPj4gIAkJLnZlY3RvciA9IEhZUEVSVl9SRUVOTElHSFRFTk1FTlRfVkVDVE9S
LAo+PiAgCQkuZW5hYmxlZCA9IDEsCj4+IC0JCS50YXJnZXRfdnAgPSBodl92cF9pbmRleFtzbXBf
cHJvY2Vzc29yX2lkKCldCj4+ICAJfTsKPj4gIAlzdHJ1Y3QgaHZfdHNjX2VtdWxhdGlvbl9jb250
cm9sIGVtdV9jdHJsID0gey5lbmFibGVkID0gMX07Cj4+ICAKPj4gQEAgLTE5Niw3ICsxOTUsMTEg
QEAgdm9pZCBzZXRfaHZfdHNjY2hhbmdlX2NiKHZvaWQgKCpjYikodm9pZCkpCj4+ICAJLyogTWFr
ZSBzdXJlIGNhbGxiYWNrIGlzIHJlZ2lzdGVyZWQgYmVmb3JlIHdlIHdyaXRlIHRvIE1TUnMgKi8K
Pj4gIAl3bWIoKTsKPj4gIAo+PiArCXByZWVtcHRfZGlzYWJsZSgpOwo+PiArCXJlX2N0cmwudGFy
Z2V0X3ZwID0gaHZfdnBfaW5kZXhbc21wX3Byb2Nlc3Nvcl9pZCgpXTsKPj4gIAl3cm1zcmwoSFZf
WDY0X01TUl9SRUVOTElHSFRFTk1FTlRfQ09OVFJPTCwgKigodTY0ICopJnJlX2N0cmwpKTsKPj4g
KwlwcmVlbXB0X2VuYWJsZSgpOwo+PiArCj4+ICAJd3Jtc3JsKEhWX1g2NF9NU1JfVFNDX0VNVUxB
VElPTl9DT05UUk9MLCAqKCh1NjQgKikmZW11X2N0cmwpKTsKPj4gIH0KPj4gIEVYUE9SVF9TWU1C
T0xfR1BMKHNldF9odl90c2NjaGFuZ2VfY2IpOwo+Cj4gVGhpcyBsb29rcyBib2d1cywgTVNScyBh
cmUgYSBwZXItY3B1IHJlc291cmNlLCB5b3UgaGFkIGJldHRlciBrbm93IHdoYXQKPiBDUFVzIHlv
dSdyZSBvbiBhbmQgYmUgc3R1Y2sgdG8gaXQgd2hlbiB5b3UgZG8gd3Jtc3IuIFRoaXMganVzdCBm
dWRnZXMKPiB0aGUgY29kZSB0byBtYWtlIHRoZSB3YXJuaW5nIGdvIGF3YXkgYW5kIGRvZXNuJ3Qg
Zml4IHRoZSBhY3R1YWwgcHJvYmxlbQo+IGFmYWljdC4KCkFjdHVhbGx5LCB3ZSBkb24ndCBjYXJl
IHdoaWNoIENQVSB3aWxsIHJlY2VpdmUgdGhlIHJlZW5saWdodGVubWVudApub3RpZmljYXRpb24g
YW5kIFRTQyBFbXVsYXRpb24gaW4gSHlwZXItViBpcywgb2YgY291cnNlLCBnbG9iYWwuIFdlIGhh
dmUKY29kZSB3aGljaCByZS1hc3NpZ25lcyB0aGUgbm90aWZpY2F0aW9uIHRvIHNvbWUgb3RoZXIg
Q1BVIGluIGNhc2UgdGhlCm9uZSBpdCdzIGN1cnJlbnRseSBhc3NpZ25lZCB0byBnb2VzIGF3YXkg
KHNlZSBodl9jcHVfZGllKCkpLgoKLS0gClZpdGFseQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2
ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFp
bG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK

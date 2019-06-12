Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B54F422D8
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Jun 2019 12:43:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D939B87FF7;
	Wed, 12 Jun 2019 10:43:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ras7YzWnFTfP; Wed, 12 Jun 2019 10:43:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 658C2868F7;
	Wed, 12 Jun 2019 10:43:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A79F41BF2B6
 for <devel@linuxdriverproject.org>; Wed, 12 Jun 2019 10:43:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A4456869D8
 for <devel@linuxdriverproject.org>; Wed, 12 Jun 2019 10:43:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WoHRH5rZ4NXx for <devel@linuxdriverproject.org>;
 Wed, 12 Jun 2019 10:43:47 +0000 (UTC)
X-Greylist: delayed 01:08:28 by SQLgrey-1.7.6
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 07844868F7
 for <devel@linuxdriverproject.org>; Wed, 12 Jun 2019 10:43:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=h498uX1FwZ5CaVxq4breWnlhdBuCKw4wm3JuGKcEDYM=; b=CFmrBMcg/5ikP86sa4CoaV8j2h
 g7vfpH3ljUDpl2uxaARxCcnkcRs5VZLjY+pVXX3bQ8kOr/EVzW+vlofeECoH1/Qg5kG83RAFWzP9f
 Aw81oKqs2Y39AN0OqYXe1YlM+OZd69q7FdHskLAf8HcIjqqaY8o/GF0y4895iKm6SsiNJwjBs9Hk1
 J/d9FIcAyIdYB5nzW4J9GHguIaDfR8q52zsUDUsT7b1NCwCYwdmCQq74nLn3Q3yIsfmEwF7PPBDuQ
 RC1bSQPl31ZATcjfIyDt0t8x9P/a0/34ktvWyNEDQWn+I8sFr4Y8sU1Ckd/0/JZXIivYU/QdAigTX
 hpuvWHcQ==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=hirez.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hazet-0004gz-Qa; Wed, 12 Jun 2019 09:35:08 +0000
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 273FE2096E50D; Wed, 12 Jun 2019 11:35:06 +0200 (CEST)
Date: Wed, 12 Jun 2019 11:35:06 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Dmitry Safonov <dima@arista.com>
Subject: Re: [PATCH] x86/hyperv: Disable preemption while setting
 reenlightenment vector
Message-ID: <20190612093506.GH3436@hirez.programming.kicks-ass.net>
References: <20190611212003.26382-1-dima@arista.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190611212003.26382-1-dima@arista.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: linux-hyperv@vger.kernel.org, kvm@vger.kernel.org,
 Radim =?utf-8?B?S3LEjW3DocWZ?= <rkrcmar@redhat.com>,
 Prasanna Panchamukhi <panchamukhi@arista.com>,
 "H. Peter Anvin" <hpa@zytor.com>, Sasha Levin <sashal@kernel.org>,
 Stephen Hemminger <sthemmin@microsoft.com>, x86@kernel.org,
 "Michael Kelley \(EOSG\)" <Michael.H.Kelley@microsoft.com>,
 Ingo Molnar <mingo@redhat.com>, Roman Kagan <rkagan@virtuozzo.com>,
 Mohammed Gamal <mmorsy@redhat.com>, Haiyang Zhang <haiyangz@microsoft.com>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Paolo Bonzini <pbonzini@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-kernel@vger.kernel.org, devel@linuxdriverproject.org,
 Vitaly Kuznetsov <vkuznets@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gVHVlLCBKdW4gMTEsIDIwMTkgYXQgMTA6MjA6MDNQTSArMDEwMCwgRG1pdHJ5IFNhZm9ub3Yg
d3JvdGU6Cj4gS1ZNIHN1cHBvcnQgbWF5IGJlIGNvbXBpbGVkIGFzIGR5bmFtaWMgbW9kdWxlLCB3
aGljaCB0cmlnZ2VycyB0aGUKPiBmb2xsb3dpbmcgc3BsYXQgb24gbW9kcHJvYmU6Cj4gCj4gIEtW
TTogdm14OiB1c2luZyBIeXBlci1WIEVubGlnaHRlbmVkIFZNQ1MKPiAgQlVHOiB1c2luZyBzbXBf
cHJvY2Vzc29yX2lkKCkgaW4gcHJlZW1wdGlibGUgWzAwMDAwMDAwXSBjb2RlOiBtb2Rwcm9iZS80
NjYgY2FsbGVyIGlzIGRlYnVnX3NtcF9wcm9jZXNzb3JfaWQrMHgxNy8weDE5Cj4gIENQVTogMCBQ
SUQ6IDQ2NiBDb21tOiBtb2Rwcm9iZSBLZHVtcDogbG9hZGVkIE5vdCB0YWludGVkIDQuMTkuNDMg
IzEKPiAgSGFyZHdhcmUgbmFtZTogTWljcm9zb2Z0IENvcnBvcmF0aW9uIFZpcnR1YWwgTWFjaGlu
ZS9WaXJ0dWFsIE1hY2hpbmUsIEJJT1MgMDkwMDA3ICAwNi8wMi8yMDE3Cj4gIENhbGwgVHJhY2U6
Cj4gICBkdW1wX3N0YWNrKzB4NjEvMHg3ZQo+ICAgY2hlY2tfcHJlZW1wdGlvbl9kaXNhYmxlZCsw
eGQ0LzB4ZTYKPiAgIGRlYnVnX3NtcF9wcm9jZXNzb3JfaWQrMHgxNy8weDE5Cj4gICBzZXRfaHZf
dHNjY2hhbmdlX2NiKzB4MWIvMHg4OQo+ICAga3ZtX2FyY2hfaW5pdCsweDE0YS8weDE2MyBba3Zt
XQo+ICAga3ZtX2luaXQrMHgzMC8weDI1OSBba3ZtXQo+ICAgdm14X2luaXQrMHhlZC8weDNkYiBb
a3ZtX2ludGVsXQo+ICAgZG9fb25lX2luaXRjYWxsKzB4ODkvMHgxYmMKPiAgIGRvX2luaXRfbW9k
dWxlKzB4NWYvMHgyMDcKPiAgIGxvYWRfbW9kdWxlKzB4MWIzNC8weDIwOWIKPiAgIF9faWEzMl9z
eXNfaW5pdF9tb2R1bGUrMHgxNy8weDE5Cj4gICBkb19mYXN0X3N5c2NhbGxfMzIrMHgxMjEvMHgx
ZmEKPiAgIGVudHJ5X1NZU0VOVEVSX2NvbXBhdCsweDdmLzB4OTEKPiAKPiBUaGUgZWFzaWVzdCBz
b2x1dGlvbiBzZWVtcyB0byBiZSBkaXNhYmxpbmcgcHJlZW1wdGlvbiB3aGlsZSBzZXR0aW5nIHVw
Cj4gcmVlbmxpZ2h0bWVudCBNU1JzLiBXaGlsZSBhdCBpdCwgZml4IGh2X2NwdV8qKCkgY2FsbGJh
Y2tzLgo+IAo+IEZpeGVzOiA5MzI4NjI2MWRlMWI0ICgieDg2L2h5cGVydjogUmVlbmxpZ2h0ZW5t
ZW50IG5vdGlmaWNhdGlvbnMKPiBzdXBwb3J0IikKPiAKPiBDYzogQW5keSBMdXRvbWlyc2tpIDxs
dXRvQGtlcm5lbC5vcmc+Cj4gQ2M6IEJvcmlzbGF2IFBldGtvdiA8YnBAYWxpZW44LmRlPgo+IENj
OiBDYXRoeSBBdmVyeSA8Y2F2ZXJ5QHJlZGhhdC5jb20+Cj4gQ2M6IEhhaXlhbmcgWmhhbmcgPGhh
aXlhbmd6QG1pY3Jvc29mdC5jb20+Cj4gQ2M6ICJILiBQZXRlciBBbnZpbiIgPGhwYUB6eXRvci5j
b20+Cj4gQ2M6IEluZ28gTW9sbmFyIDxtaW5nb0ByZWRoYXQuY29tPgo+IENjOiAiSy4gWS4gU3Jp
bml2YXNhbiIgPGt5c0BtaWNyb3NvZnQuY29tPgo+IENjOiAiTWljaGFlbCBLZWxsZXkgKEVPU0cp
IiA8TWljaGFlbC5ILktlbGxleUBtaWNyb3NvZnQuY29tPgo+IENjOiBNb2hhbW1lZCBHYW1hbCA8
bW1vcnN5QHJlZGhhdC5jb20+Cj4gQ2M6IFBhb2xvIEJvbnppbmkgPHBib256aW5pQHJlZGhhdC5j
b20+Cj4gQ2M6IFJhZGltIEtyxI1tw6HFmSA8cmtyY21hckByZWRoYXQuY29tPgo+IENjOiBSb21h
biBLYWdhbiA8cmthZ2FuQHZpcnR1b3p6by5jb20+Cj4gQ2M6IFNhc2hhIExldmluIDxzYXNoYWxA
a2VybmVsLm9yZz4KPiBDYzogU3RlcGhlbiBIZW1taW5nZXIgPHN0aGVtbWluQG1pY3Jvc29mdC5j
b20+Cj4gQ2M6IFRob21hcyBHbGVpeG5lciA8dGdseEBsaW51dHJvbml4LmRlPgo+IENjOiBWaXRh
bHkgS3V6bmV0c292IDx2a3V6bmV0c0ByZWRoYXQuY29tPgo+IAo+IENjOiBkZXZlbEBsaW51eGRy
aXZlcnByb2plY3Qub3JnCj4gQ2M6IGt2bUB2Z2VyLmtlcm5lbC5vcmcKPiBDYzogbGludXgtaHlw
ZXJ2QHZnZXIua2VybmVsLm9yZwo+IENjOiB4ODZAa2VybmVsLm9yZwo+IFJlcG9ydGVkLWJ5OiBQ
cmFzYW5uYSBQYW5jaGFtdWtoaSA8cGFuY2hhbXVraGlAYXJpc3RhLmNvbT4KPiBTaWduZWQtb2Zm
LWJ5OiBEbWl0cnkgU2Fmb25vdiA8ZGltYUBhcmlzdGEuY29tPgo+IC0tLQo+ICBhcmNoL3g4Ni9o
eXBlcnYvaHZfaW5pdC5jIHwgOSArKysrKystLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0
aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvYXJjaC94ODYvaHlwZXJ2
L2h2X2luaXQuYyBiL2FyY2gveDg2L2h5cGVydi9odl9pbml0LmMKPiBpbmRleCAxNjA4MDUwZTlk
ZjkuLjBiZGQ3OWVjYmZmOCAxMDA2NDQKPiAtLS0gYS9hcmNoL3g4Ni9oeXBlcnYvaHZfaW5pdC5j
Cj4gKysrIGIvYXJjaC94ODYvaHlwZXJ2L2h2X2luaXQuYwo+IEBAIC05MSw3ICs5MSw3IEBAIEVY
UE9SVF9TWU1CT0xfR1BMKGh2X21heF92cF9pbmRleCk7Cj4gIHN0YXRpYyBpbnQgaHZfY3B1X2lu
aXQodW5zaWduZWQgaW50IGNwdSkKPiAgewo+ICAJdTY0IG1zcl92cF9pbmRleDsKPiAtCXN0cnVj
dCBodl92cF9hc3Npc3RfcGFnZSAqKmh2cCA9ICZodl92cF9hc3Npc3RfcGFnZVtzbXBfcHJvY2Vz
c29yX2lkKCldOwo+ICsJc3RydWN0IGh2X3ZwX2Fzc2lzdF9wYWdlICoqaHZwID0gJmh2X3ZwX2Fz
c2lzdF9wYWdlW2NwdV07Cj4gIAl2b2lkICoqaW5wdXRfYXJnOwo+ICAJc3RydWN0IHBhZ2UgKnBn
Owo+ICAKPiBAQCAtMTAzLDcgKzEwMyw3IEBAIHN0YXRpYyBpbnQgaHZfY3B1X2luaXQodW5zaWdu
ZWQgaW50IGNwdSkKPiAgCj4gIAlodl9nZXRfdnBfaW5kZXgobXNyX3ZwX2luZGV4KTsKPiAgCj4g
LQlodl92cF9pbmRleFtzbXBfcHJvY2Vzc29yX2lkKCldID0gbXNyX3ZwX2luZGV4Owo+ICsJaHZf
dnBfaW5kZXhbY3B1XSA9IG1zcl92cF9pbmRleDsKPiAgCj4gIAlpZiAobXNyX3ZwX2luZGV4ID4g
aHZfbWF4X3ZwX2luZGV4KQo+ICAJCWh2X21heF92cF9pbmRleCA9IG1zcl92cF9pbmRleDsKPiBA
QCAtMTgyLDcgKzE4Miw2IEBAIHZvaWQgc2V0X2h2X3RzY2NoYW5nZV9jYih2b2lkICgqY2IpKHZv
aWQpKQo+ICAJc3RydWN0IGh2X3JlZW5saWdodGVubWVudF9jb250cm9sIHJlX2N0cmwgPSB7Cj4g
IAkJLnZlY3RvciA9IEhZUEVSVl9SRUVOTElHSFRFTk1FTlRfVkVDVE9SLAo+ICAJCS5lbmFibGVk
ID0gMSwKPiAtCQkudGFyZ2V0X3ZwID0gaHZfdnBfaW5kZXhbc21wX3Byb2Nlc3Nvcl9pZCgpXQo+
ICAJfTsKPiAgCXN0cnVjdCBodl90c2NfZW11bGF0aW9uX2NvbnRyb2wgZW11X2N0cmwgPSB7LmVu
YWJsZWQgPSAxfTsKPiAgCj4gQEAgLTE5Niw3ICsxOTUsMTEgQEAgdm9pZCBzZXRfaHZfdHNjY2hh
bmdlX2NiKHZvaWQgKCpjYikodm9pZCkpCj4gIAkvKiBNYWtlIHN1cmUgY2FsbGJhY2sgaXMgcmVn
aXN0ZXJlZCBiZWZvcmUgd2Ugd3JpdGUgdG8gTVNScyAqLwo+ICAJd21iKCk7Cj4gIAo+ICsJcHJl
ZW1wdF9kaXNhYmxlKCk7Cj4gKwlyZV9jdHJsLnRhcmdldF92cCA9IGh2X3ZwX2luZGV4W3NtcF9w
cm9jZXNzb3JfaWQoKV07Cj4gIAl3cm1zcmwoSFZfWDY0X01TUl9SRUVOTElHSFRFTk1FTlRfQ09O
VFJPTCwgKigodTY0ICopJnJlX2N0cmwpKTsKPiArCXByZWVtcHRfZW5hYmxlKCk7Cj4gKwo+ICAJ
d3Jtc3JsKEhWX1g2NF9NU1JfVFNDX0VNVUxBVElPTl9DT05UUk9MLCAqKCh1NjQgKikmZW11X2N0
cmwpKTsKPiAgfQo+ICBFWFBPUlRfU1lNQk9MX0dQTChzZXRfaHZfdHNjY2hhbmdlX2NiKTsKClRo
aXMgbG9va3MgYm9ndXMsIE1TUnMgYXJlIGEgcGVyLWNwdSByZXNvdXJjZSwgeW91IGhhZCBiZXR0
ZXIga25vdyB3aGF0CkNQVXMgeW91J3JlIG9uIGFuZCBiZSBzdHVjayB0byBpdCB3aGVuIHlvdSBk
byB3cm1zci4gVGhpcyBqdXN0IGZ1ZGdlcwp0aGUgY29kZSB0byBtYWtlIHRoZSB3YXJuaW5nIGdv
IGF3YXkgYW5kIGRvZXNuJ3QgZml4IHRoZSBhY3R1YWwgcHJvYmxlbQphZmFpY3QuCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlz
dApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2
ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E43DF3F75
	for <lists+driverdev-devel@lfdr.de>; Fri,  8 Nov 2019 06:10:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D81618630A;
	Fri,  8 Nov 2019 05:10:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id imhxX2ybDaBY; Fri,  8 Nov 2019 05:10:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3E64086174;
	Fri,  8 Nov 2019 05:10:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 70D7D1BF866
 for <devel@linuxdriverproject.org>; Fri,  8 Nov 2019 05:10:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6BBE820482
 for <devel@linuxdriverproject.org>; Fri,  8 Nov 2019 05:10:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J+tsAujU4Ee9 for <devel@linuxdriverproject.org>;
 Fri,  8 Nov 2019 05:09:59 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f193.google.com (mail-oi1-f193.google.com
 [209.85.167.193])
 by silver.osuosl.org (Postfix) with ESMTPS id E79E820472
 for <devel@driverdev.osuosl.org>; Fri,  8 Nov 2019 05:09:58 +0000 (UTC)
Received: by mail-oi1-f193.google.com with SMTP id n14so4160030oie.13
 for <devel@driverdev.osuosl.org>; Thu, 07 Nov 2019 21:09:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=intel-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=5hxLqM7wbQepnmpAkx3kQrqUx9W7V5kbuct3VgNLCfE=;
 b=RkTDhtjykB7j2cuaWtNSU3sVjWoWCIze54YYFBujyaWCIQJkapqLD4MeV2dhxoJWMC
 7xv0dkRHVnZYw3zW1L+ru2fry1bNNwjg7RgLcYQ3R76p8RcKcd+8i/rDWNxpbJmoe0cP
 mnziZ7Pb+0gfzkkbAysW5E2nHGmXIzy3yuQyUw867guN3bcJNvAgOPmHzqtFqwetCnH/
 e8probWK/BURthbe/OQp8zpLcy69QDF3nmw/997epMxX6jS1VTwSL6XvfsYPUS4fTA1T
 BXUEKElSBd6VBrdE1u2lF9amw29zsQk0lrhqLqMzdjSSMdojeG9wjbJQfzg4/TSptXIp
 GJXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=5hxLqM7wbQepnmpAkx3kQrqUx9W7V5kbuct3VgNLCfE=;
 b=XC2HsJggZCba7e7YXhFKxKDGTK7SAmHF97j6tWsAA7DNb4urjetA08RGAxHkOH9/Vf
 zFCbU3YIzpGNv11L+PAsn1hRZ1o2L7tcEaw2qJyYBvhJxPce0y9nU+qGi2BJQyzNKzhA
 fs06tA6dqSlYSNhSCkPxcGdSkvDcQmaHhghqQD2b96wZZDXyXkKerrIVY5uF+JkLefmN
 EHbvLW70dASzFirxEG5nOMhQxw9vOImZGZ/oDCOn0AuHk+WjAkP3jX3qoaGfgIShCaGb
 vHFl6pyJR/Ria8etd/KyHgFlcJ4HKweO07UuWn3qt2Q6NDQ/I+ABFypD/FlJR3/6Kf/2
 UoFQ==
X-Gm-Message-State: APjAAAVhBiu2/7uOr88u+n62/rXG4Mh+7Vo3AvS1QqghsRJQXpepXuLz
 4E1QBo1z0vXZq6umXbXwLsoUrBy+Jge/MOF5YHTiyA==
X-Google-Smtp-Source: APXvYqykH4Y+YpdJn/i8XOAkjaabFQF8UbaSg/jnSgqkUxCA1/ca81jEPmL8H19fMIeKE0KMVQC/PCci0jvS512PO8A=
X-Received: by 2002:aca:55c1:: with SMTP id j184mr7906855oib.105.1573189797950; 
 Thu, 07 Nov 2019 21:09:57 -0800 (PST)
MIME-Version: 1.0
References: <CAPcyv4hxs+KqY5gU8Ds1a73eub1imvm9Qo8KdKGiDD1e-p0cww@mail.gmail.com>
 <DF536BED-6F4F-4351-AC7E-3C9FC8545332@redhat.com>
 <0eb001e0-bb26-59bb-c514-d2f8a86a7eab@redhat.com>
In-Reply-To: <0eb001e0-bb26-59bb-c514-d2f8a86a7eab@redhat.com>
From: Dan Williams <dan.j.williams@intel.com>
Date: Thu, 7 Nov 2019 21:09:46 -0800
Message-ID: <CAPcyv4h0yX4g6ETymQEpp52FFLaOmps_hO7w_yuYGk7BqQQcMQ@mail.gmail.com>
Subject: Re: [PATCH v1 04/10] vfio/type1: Prepare is_invalid_reserved_pfn()
 for PG_reserved changes
To: David Hildenbrand <david@redhat.com>
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
Cc: linux-hyperv@vger.kernel.org, Michal Hocko <mhocko@suse.com>,
 =?UTF-8?B?UmFkaW0gS3LEjW3DocWZ?= <rkrcmar@redhat.com>,
 KVM list <kvm@vger.kernel.org>, Pavel Tatashin <pavel.tatashin@microsoft.com>,
 KarimAllah Ahmed <karahmed@amazon.de>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Alexander Duyck <alexander.duyck@gmail.com>, Michal Hocko <mhocko@kernel.org>,
 Paul Mackerras <paulus@ozlabs.org>, Linux MM <linux-mm@kvack.org>,
 Paolo Bonzini <pbonzini@redhat.com>, Paul Mackerras <paulus@samba.org>,
 Michael Ellerman <mpe@ellerman.id.au>, "H. Peter Anvin" <hpa@zytor.com>,
 Wanpeng Li <wanpengli@tencent.com>,
 Alexander Duyck <alexander.h.duyck@linux.intel.com>,
 Thomas Gleixner <tglx@linutronix.de>, Kees Cook <keescook@chromium.org>,
 devel@driverdev.osuosl.org, Stefano Stabellini <sstabellini@kernel.org>,
 Stephen Hemminger <sthemmin@microsoft.com>,
 "Aneesh Kumar K.V" <aneesh.kumar@linux.ibm.com>,
 Joerg Roedel <joro@8bytes.org>, X86 ML <x86@kernel.org>,
 YueHaibing <yuehaibing@huawei.com>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Mike Rapoport <rppt@linux.ibm.com>, Peter Zijlstra <peterz@infradead.org>,
 Ingo Molnar <mingo@redhat.com>, Vlastimil Babka <vbabka@suse.cz>,
 Anthony Yznaga <anthony.yznaga@oracle.com>, Oscar Salvador <osalvador@suse.de>,
 "Isaac J. Manjarres" <isaacm@codeaurora.org>, Juergen Gross <jgross@suse.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Haiyang Zhang <haiyangz@microsoft.com>, Sasha Levin <sashal@kernel.org>,
 kvm-ppc@vger.kernel.org, Qian Cai <cai@lca.pw>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mike Rapoport <rppt@linux.vnet.ibm.com>,
 David Hildenbrand <dhildenb@redhat.com>, Nicholas Piggin <npiggin@gmail.com>,
 Andy Lutomirski <luto@kernel.org>, xen-devel <xen-devel@lists.xenproject.org>,
 Boris Ostrovsky <boris.ostrovsky@oracle.com>,
 Vitaly Kuznetsov <vkuznets@redhat.com>, Allison Randal <allison@lohutok.net>,
 Jim Mattson <jmattson@google.com>, Christophe Leroy <christophe.leroy@c-s.fr>,
 Mel Gorman <mgorman@techsingularity.net>, Cornelia Huck <cohuck@redhat.com>,
 Pavel Tatashin <pasha.tatashin@soleen.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 Johannes Weiner <hannes@cmpxchg.org>, Borislav Petkov <bp@alien8.de>,
 Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gVGh1LCBOb3YgNywgMjAxOSBhdCAyOjA3IFBNIERhdmlkIEhpbGRlbmJyYW5kIDxkYXZpZEBy
ZWRoYXQuY29tPiB3cm90ZToKPgo+IE9uIDA3LjExLjE5IDE5OjIyLCBEYXZpZCBIaWxkZW5icmFu
ZCB3cm90ZToKPiA+Cj4gPgo+ID4+IEFtIDA3LjExLjIwMTkgdW0gMTY6NDAgc2NocmllYiBEYW4g
V2lsbGlhbXMgPGRhbi5qLndpbGxpYW1zQGludGVsLmNvbT46Cj4gPj4KPiA+PiDvu79PbiBUaHUs
IE9jdCAyNCwgMjAxOSBhdCA1OjEyIEFNIERhdmlkIEhpbGRlbmJyYW5kIDxkYXZpZEByZWRoYXQu
Y29tPiB3cm90ZToKPiA+Pj4KPiA+Pj4gUmlnaHQgbm93LCBaT05FX0RFVklDRSBtZW1vcnkgaXMg
YWx3YXlzIHNldCBQR19yZXNlcnZlZC4gV2Ugd2FudCB0bwo+ID4+PiBjaGFuZ2UgdGhhdC4KPiA+
Pj4KPiA+Pj4gS1ZNIGhhcyB0aGlzIHdlaXJkIHVzZSBjYXNlIHRoYXQgeW91IGNhbiBtYXAgYW55
dGhpbmcgZnJvbSAvZGV2L21lbQo+ID4+PiBpbnRvIHRoZSBndWVzdC4gcGZuX3ZhbGlkKCkgaXMg
bm90IGEgcmVsaWFibGUgY2hlY2sgd2hldGhlciB0aGUgbWVtbWFwCj4gPj4+IHdhcyBpbml0aWFs
aXplZCBhbmQgY2FuIGJlIHRvdWNoZWQuIHBmbl90b19vbmxpbmVfcGFnZSgpIG1ha2VzIHN1cmUK
PiA+Pj4gdGhhdCB3ZSBoYXZlIGFuIGluaXRpYWxpemVkIG1lbW1hcCAoYW5kIGRvbid0IGhhdmUg
Wk9ORV9ERVZJQ0UgbWVtb3J5KS4KPiA+Pj4KPiA+Pj4gUmV3cml0ZSBpc19pbnZhbGlkX3Jlc2Vy
dmVkX3BmbigpIHNpbWlsYXIgdG8ga3ZtX2lzX3Jlc2VydmVkX3BmbigpIHRvIG1ha2UKPiA+Pj4g
c3VyZSB0aGUgZnVuY3Rpb24gcHJvZHVjZXMgdGhlIHNhbWUgcmVzdWx0IG9uY2Ugd2Ugc3RvcCBz
ZXR0aW5nIFpPTkVfREVWSUNFCj4gPj4+IHBhZ2VzIFBHX3Jlc2VydmVkLgo+ID4+Pgo+ID4+PiBD
YzogQWxleCBXaWxsaWFtc29uIDxhbGV4LndpbGxpYW1zb25AcmVkaGF0LmNvbT4KPiA+Pj4gQ2M6
IENvcm5lbGlhIEh1Y2sgPGNvaHVja0ByZWRoYXQuY29tPgo+ID4+PiBTaWduZWQtb2ZmLWJ5OiBE
YXZpZCBIaWxkZW5icmFuZCA8ZGF2aWRAcmVkaGF0LmNvbT4KPiA+Pj4gLS0tCj4gPj4+IGRyaXZl
cnMvdmZpby92ZmlvX2lvbW11X3R5cGUxLmMgfCAxMCArKysrKysrKy0tCj4gPj4+IDEgZmlsZSBj
aGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gPj4+Cj4gPj4+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL3ZmaW8vdmZpb19pb21tdV90eXBlMS5jIGIvZHJpdmVycy92ZmlvL3Zm
aW9faW9tbXVfdHlwZTEuYwo+ID4+PiBpbmRleCAyYWRhOGU2Y2RiODguLmY4Y2U4YzQwOGJhOCAx
MDA2NDQKPiA+Pj4gLS0tIGEvZHJpdmVycy92ZmlvL3ZmaW9faW9tbXVfdHlwZTEuYwo+ID4+PiAr
KysgYi9kcml2ZXJzL3ZmaW8vdmZpb19pb21tdV90eXBlMS5jCj4gPj4+IEBAIC0yOTksOSArMjk5
LDE1IEBAIHN0YXRpYyBpbnQgdmZpb19sb2NrX2FjY3Qoc3RydWN0IHZmaW9fZG1hICpkbWEsIGxv
bmcgbnBhZ2UsIGJvb2wgYXN5bmMpCj4gPj4+ICAgKi8KPiA+Pj4gc3RhdGljIGJvb2wgaXNfaW52
YWxpZF9yZXNlcnZlZF9wZm4odW5zaWduZWQgbG9uZyBwZm4pCj4gPj4+IHsKPiA+Pj4gLSAgICAg
ICBpZiAocGZuX3ZhbGlkKHBmbikpCj4gPj4+IC0gICAgICAgICAgICAgICByZXR1cm4gUGFnZVJl
c2VydmVkKHBmbl90b19wYWdlKHBmbikpOwo+ID4+PiArICAgICAgIHN0cnVjdCBwYWdlICpwYWdl
ID0gcGZuX3RvX29ubGluZV9wYWdlKHBmbik7Cj4gPj4KPiA+PiBVZ2gsIEkganVzdCByZWFsaXpl
ZCB0aGlzIGlzIG5vdCBhIHNhZmUgY29udmVyc2lvbiB1bnRpbAo+ID4+IHBmbl90b19vbmxpbmVf
cGFnZSgpIGlzIG1vdmVkIG92ZXIgdG8gc3Vic2VjdGlvbiBncmFudWxhcml0eS4gQXMgaXQKPiA+
PiBzdGFuZHMgaXQgd2lsbCByZXR1cm4gdHJ1ZSBmb3IgYW55IFpPTkVfREVWSUNFIHBhZ2VzIHRo
YXQgc2hhcmUgYQo+ID4+IHNlY3Rpb24gd2l0aCBib290IG1lbW9yeS4KPiA+Cj4gPiBUaGF0IHNo
b3VsZCBub3QgaGFwcGVuIHJpZ2h0IG5vdyBhbmQgSSBjb21tZW50ZWQgYmFjayB3aGVuIHlvdSBp
bnRyb2R1Y2VkIHN1YnNlY3Rpb24gc3VwcG9ydCB0aGF0IEkgZG9u4oCZdCB3YW50IHRvIGhhdmUg
Wk9ORV9ERVZJQ0UgbWl4ZWQgd2l0aCBvbmxpbmUgcGFnZXMgaW4gYSBzZWN0aW9uLiBIYXZpbmcg
bWVtb3J5IGJsb2NrIGRldmljZXMgdGhhdCBwYXJ0aWFsbHkgc3BhbiBaT05FX0RFVklDRSB3b3Vs
ZCBiZSAuLi4gcmVhbGx5IHdlaXJkLiBXaXRoIHNvbWV0aGluZyBsaWtlIHBmbl9hY3RpdmUoKSAt
IGFzIGRpc2N1c3NlZCAtIHdlIGNvdWxkIGF0IGxlYXN0IG1ha2UgdGhpcyBjaGVjayB3b3JrIC0g
YnV0IEkgYW0gbm90IHN1cmUgaWYgd2UgcmVhbGx5IHdhbnQgdG8gZ28gZG93biB0aGF0IHBhdGgu
IEluIHRoZSB3b3JzdCBjYXNlLCBzb21lIE1CIG9mIFJBTSBhcmUgbG9zdCAuLi4gSSBndWVzcyB0
aGlzIG5lZWRzIG1vcmUgdGhvdWdodC4KPiA+Cj4KPiBJIGp1c3QgcmVhbGl6ZWQgdGhlICJib290
IG1lbW9yeSIgcGFydC4gSXMgdGhhdCBhIHJlYWwgdGhpbmc/IElPVywgY2FuCj4gd2UgaGF2ZSBa
T05FX0RFVklDRSBmYWxsaW5nIGludG8gYSBtZW1vcnkgYmxvY2sgKHdpdGggaG9sZXMpPyBJIHNv
bWV3aGF0Cj4gaGF2ZSBkb3VidHMgdGhhdCB0aGlzIHdvdWxkIHdvcmsgLi4uCgpPbmUgb2YgdGhl
IHJlYWwgd29ybGQgZmFpbHVyZSBjYXNlcyB0aGF0IHN0YXJ0ZWQgdGhlIHN1YnNlY3Rpb24gZWZm
ZWN0CmlzIHRoYXQgUGVyc2lzdGVudCBNZW1vcnkgY29sbGlkZXMgd2l0aCBTeXN0ZW0gUkFNIG9u
IGEgNjRNQiBib3VuZGFyeQpvbiBzaGlwcGluZyBwbGF0Zm9ybXMuIFN5c3RlbSBSQU0gZW5kcyBv
biBhIDY0TUIgYm91bmRhcnkgYW5kIGR1ZSB0byBhCmxhY2sgb2YgbWVtb3J5IGNvbnRyb2xsZXIg
cmVzb3VyY2VzIFBNRU0gaXMgbWFwcGVkIGNvbnRpZ3VvdXNseSBhdCB0aGUKZW5kIG9mIHRoYXQg
Ym91bmRhcnkuIFNvbWUgbW9yZSBkZXRhaWxzIGluIHRoZSBzdWJzZWN0aW9uIGNvdmVyIGxldHRl
cgovIGNoYW5nZWxvZ3MgWzFdIFsyXS4gSXQncyBub3Qgc3VmZmljaWVudCB0byBqdXN0IGxvc2Ug
c29tZSBtZW1vcnksCnRoYXQncyB0aGUgYnJva2VuIGltcGxlbWVudGF0aW9uIHRoYXQgbGVhZCB0
byB0aGUgc3Vic2VjdGlvbiB3b3JrCmJlY2F1c2UgdGhlIGxvc3QgbWVtb3J5IG1heSBjaGFuZ2Ug
ZnJvbSBvbmUgYm9vdCB0byB0aGUgbmV4dCBhbmQKc29mdHdhcmUgY2FuJ3QgcmVsaWFibHkgaW5q
ZWN0IGEgcGFkZGluZyB0aGF0IGNvbmZvcm1zIHRvIHRoZSB4ODYKMTI4TUIgc2VjdGlvbiBjb25z
dHJhaW50LgoKU3VmZmljZSB0byBzYXkgSSB0aGluayB3ZSBuZWVkIHlvdXIgcGZuX2FjdGl2ZSgp
IHRvIGdldCBzdWJzZWN0aW9uCmdyYW51bGFyaXR5IHBmbl90b19vbmxpbmVfcGFnZSgpIGJlZm9y
ZSBQYWdlUmVzZXJ2ZWQoKSBjYW4gYmUgcmVtb3ZlZC4KClsxXTogaHR0cHM6Ly9sb3JlLmtlcm5l
bC5vcmcvbGludXgtbW0vMTU2MDkyMzQ5MzAwLjk3OTk1OS4xNzYwMzcxMDcxMTk1NzczNTEzNS5z
dGdpdEBkd2lsbGlhMi1kZXNrMy5hbXIuY29ycC5pbnRlbC5jb20vClsyXTogaHR0cHM6Ly9sb3Jl
Lmtlcm5lbC5vcmcvbGludXgtbW0vMTU2MDkyMzU0MzY4Ljk3OTk1OS42MjMyNDQzOTIzNDQwOTUy
MzU5LnN0Z2l0QGR3aWxsaWEyLWRlc2szLmFtci5jb3JwLmludGVsLmNvbS8KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRl
dmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnBy
b2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==

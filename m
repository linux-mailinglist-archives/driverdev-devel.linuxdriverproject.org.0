Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7149BF3AEF
	for <lists+driverdev-devel@lfdr.de>; Thu,  7 Nov 2019 23:07:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C7F718666F;
	Thu,  7 Nov 2019 22:07:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jEU2RRPqP18M; Thu,  7 Nov 2019 22:07:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id EF65D865E2;
	Thu,  7 Nov 2019 22:07:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 33EF71BF3B0
 for <devel@linuxdriverproject.org>; Thu,  7 Nov 2019 22:07:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2787886420
 for <devel@linuxdriverproject.org>; Thu,  7 Nov 2019 22:07:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q334FiTKdWum for <devel@linuxdriverproject.org>;
 Thu,  7 Nov 2019 22:07:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B395A862E1
 for <devel@driverdev.osuosl.org>; Thu,  7 Nov 2019 22:07:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1573164455;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=gIBG5GMIReYQpS3U1ws59fK/jF+FBXDJRRxLPPFv3ms=;
 b=czSKze3jDZExFyu7+VF1A9unedZ4AmaM/FPc7XsPpG7zpUhRww3+lN5jSHXIvCScCf4z4u
 gwPF39FeBkI2RKry2V4WpFv0NRvkqXRUlMI40qBBM/Bm3VUxZK/CAcALetlnsdxnASB3jA
 RwSvFXiHaE7RJEKKj+DplhmJsQOpdfw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-288-U5XuV8_tOUWYRd6dFnpBtA-1; Thu, 07 Nov 2019 17:07:34 -0500
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A4A64477;
 Thu,  7 Nov 2019 22:07:28 +0000 (UTC)
Received: from [10.36.116.80] (ovpn-116-80.ams2.redhat.com [10.36.116.80])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1309E600D3;
 Thu,  7 Nov 2019 22:07:10 +0000 (UTC)
Subject: Re: [PATCH v1 04/10] vfio/type1: Prepare is_invalid_reserved_pfn()
 for PG_reserved changes
To: David Hildenbrand <dhildenb@redhat.com>,
 Dan Williams <dan.j.williams@intel.com>
References: <CAPcyv4hxs+KqY5gU8Ds1a73eub1imvm9Qo8KdKGiDD1e-p0cww@mail.gmail.com>
 <DF536BED-6F4F-4351-AC7E-3C9FC8545332@redhat.com>
From: David Hildenbrand <david@redhat.com>
Organization: Red Hat GmbH
Message-ID: <0eb001e0-bb26-59bb-c514-d2f8a86a7eab@redhat.com>
Date: Thu, 7 Nov 2019 23:07:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <DF536BED-6F4F-4351-AC7E-3C9FC8545332@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-MC-Unique: U5XuV8_tOUWYRd6dFnpBtA-1
X-Mimecast-Spam-Score: 0
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
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
 "H. Peter Anvin" <hpa@zytor.com>, Wanpeng Li <wanpengli@tencent.com>,
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
 Mike Rapoport <rppt@linux.vnet.ibm.com>, Borislav Petkov <bp@alien8.de>,
 Nicholas Piggin <npiggin@gmail.com>, Andy Lutomirski <luto@kernel.org>,
 xen-devel <xen-devel@lists.xenproject.org>,
 Boris Ostrovsky <boris.ostrovsky@oracle.com>,
 Vitaly Kuznetsov <vkuznets@redhat.com>, Allison Randal <allison@lohutok.net>,
 Jim Mattson <jmattson@google.com>, Christophe Leroy <christophe.leroy@c-s.fr>,
 Mel Gorman <mgorman@techsingularity.net>, Cornelia Huck <cohuck@redhat.com>,
 Pavel Tatashin <pasha.tatashin@soleen.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 Johannes Weiner <hannes@cmpxchg.org>, Paolo Bonzini <pbonzini@redhat.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gMDcuMTEuMTkgMTk6MjIsIERhdmlkIEhpbGRlbmJyYW5kIHdyb3RlOgo+IAo+IAo+PiBBbSAw
Ny4xMS4yMDE5IHVtIDE2OjQwIHNjaHJpZWIgRGFuIFdpbGxpYW1zIDxkYW4uai53aWxsaWFtc0Bp
bnRlbC5jb20+Ogo+Pgo+PiDvu79PbiBUaHUsIE9jdCAyNCwgMjAxOSBhdCA1OjEyIEFNIERhdmlk
IEhpbGRlbmJyYW5kIDxkYXZpZEByZWRoYXQuY29tPiB3cm90ZToKPj4+Cj4+PiBSaWdodCBub3cs
IFpPTkVfREVWSUNFIG1lbW9yeSBpcyBhbHdheXMgc2V0IFBHX3Jlc2VydmVkLiBXZSB3YW50IHRv
Cj4+PiBjaGFuZ2UgdGhhdC4KPj4+Cj4+PiBLVk0gaGFzIHRoaXMgd2VpcmQgdXNlIGNhc2UgdGhh
dCB5b3UgY2FuIG1hcCBhbnl0aGluZyBmcm9tIC9kZXYvbWVtCj4+PiBpbnRvIHRoZSBndWVzdC4g
cGZuX3ZhbGlkKCkgaXMgbm90IGEgcmVsaWFibGUgY2hlY2sgd2hldGhlciB0aGUgbWVtbWFwCj4+
PiB3YXMgaW5pdGlhbGl6ZWQgYW5kIGNhbiBiZSB0b3VjaGVkLiBwZm5fdG9fb25saW5lX3BhZ2Uo
KSBtYWtlcyBzdXJlCj4+PiB0aGF0IHdlIGhhdmUgYW4gaW5pdGlhbGl6ZWQgbWVtbWFwIChhbmQg
ZG9uJ3QgaGF2ZSBaT05FX0RFVklDRSBtZW1vcnkpLgo+Pj4KPj4+IFJld3JpdGUgaXNfaW52YWxp
ZF9yZXNlcnZlZF9wZm4oKSBzaW1pbGFyIHRvIGt2bV9pc19yZXNlcnZlZF9wZm4oKSB0byBtYWtl
Cj4+PiBzdXJlIHRoZSBmdW5jdGlvbiBwcm9kdWNlcyB0aGUgc2FtZSByZXN1bHQgb25jZSB3ZSBz
dG9wIHNldHRpbmcgWk9ORV9ERVZJQ0UKPj4+IHBhZ2VzIFBHX3Jlc2VydmVkLgo+Pj4KPj4+IENj
OiBBbGV4IFdpbGxpYW1zb24gPGFsZXgud2lsbGlhbXNvbkByZWRoYXQuY29tPgo+Pj4gQ2M6IENv
cm5lbGlhIEh1Y2sgPGNvaHVja0ByZWRoYXQuY29tPgo+Pj4gU2lnbmVkLW9mZi1ieTogRGF2aWQg
SGlsZGVuYnJhbmQgPGRhdmlkQHJlZGhhdC5jb20+Cj4+PiAtLS0KPj4+IGRyaXZlcnMvdmZpby92
ZmlvX2lvbW11X3R5cGUxLmMgfCAxMCArKysrKysrKy0tCj4+PiAxIGZpbGUgY2hhbmdlZCwgOCBp
bnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L3ZmaW8vdmZpb19pb21tdV90eXBlMS5jIGIvZHJpdmVycy92ZmlvL3ZmaW9faW9tbXVfdHlwZTEu
Ywo+Pj4gaW5kZXggMmFkYThlNmNkYjg4Li5mOGNlOGM0MDhiYTggMTAwNjQ0Cj4+PiAtLS0gYS9k
cml2ZXJzL3ZmaW8vdmZpb19pb21tdV90eXBlMS5jCj4+PiArKysgYi9kcml2ZXJzL3ZmaW8vdmZp
b19pb21tdV90eXBlMS5jCj4+PiBAQCAtMjk5LDkgKzI5OSwxNSBAQCBzdGF0aWMgaW50IHZmaW9f
bG9ja19hY2N0KHN0cnVjdCB2ZmlvX2RtYSAqZG1hLCBsb25nIG5wYWdlLCBib29sIGFzeW5jKQo+
Pj4gICAqLwo+Pj4gc3RhdGljIGJvb2wgaXNfaW52YWxpZF9yZXNlcnZlZF9wZm4odW5zaWduZWQg
bG9uZyBwZm4pCj4+PiB7Cj4+PiAtICAgICAgIGlmIChwZm5fdmFsaWQocGZuKSkKPj4+IC0gICAg
ICAgICAgICAgICByZXR1cm4gUGFnZVJlc2VydmVkKHBmbl90b19wYWdlKHBmbikpOwo+Pj4gKyAg
ICAgICBzdHJ1Y3QgcGFnZSAqcGFnZSA9IHBmbl90b19vbmxpbmVfcGFnZShwZm4pOwo+Pgo+PiBV
Z2gsIEkganVzdCByZWFsaXplZCB0aGlzIGlzIG5vdCBhIHNhZmUgY29udmVyc2lvbiB1bnRpbAo+
PiBwZm5fdG9fb25saW5lX3BhZ2UoKSBpcyBtb3ZlZCBvdmVyIHRvIHN1YnNlY3Rpb24gZ3JhbnVs
YXJpdHkuIEFzIGl0Cj4+IHN0YW5kcyBpdCB3aWxsIHJldHVybiB0cnVlIGZvciBhbnkgWk9ORV9E
RVZJQ0UgcGFnZXMgdGhhdCBzaGFyZSBhCj4+IHNlY3Rpb24gd2l0aCBib290IG1lbW9yeS4KPiAK
PiBUaGF0IHNob3VsZCBub3QgaGFwcGVuIHJpZ2h0IG5vdyBhbmQgSSBjb21tZW50ZWQgYmFjayB3
aGVuIHlvdSBpbnRyb2R1Y2VkIHN1YnNlY3Rpb24gc3VwcG9ydCB0aGF0IEkgZG9u4oCZdCB3YW50
IHRvIGhhdmUgWk9ORV9ERVZJQ0UgbWl4ZWQgd2l0aCBvbmxpbmUgcGFnZXMgaW4gYSBzZWN0aW9u
LiBIYXZpbmcgbWVtb3J5IGJsb2NrIGRldmljZXMgdGhhdCBwYXJ0aWFsbHkgc3BhbiBaT05FX0RF
VklDRSB3b3VsZCBiZSAuLi4gcmVhbGx5IHdlaXJkLiBXaXRoIHNvbWV0aGluZyBsaWtlIHBmbl9h
Y3RpdmUoKSAtIGFzIGRpc2N1c3NlZCAtIHdlIGNvdWxkIGF0IGxlYXN0IG1ha2UgdGhpcyBjaGVj
ayB3b3JrIC0gYnV0IEkgYW0gbm90IHN1cmUgaWYgd2UgcmVhbGx5IHdhbnQgdG8gZ28gZG93biB0
aGF0IHBhdGguIEluIHRoZSB3b3JzdCBjYXNlLCBzb21lIE1CIG9mIFJBTSBhcmUgbG9zdCAuLi4g
SSBndWVzcyB0aGlzIG5lZWRzIG1vcmUgdGhvdWdodC4KPiAKCkkganVzdCByZWFsaXplZCB0aGUg
ImJvb3QgbWVtb3J5IiBwYXJ0LiBJcyB0aGF0IGEgcmVhbCB0aGluZz8gSU9XLCBjYW4gCndlIGhh
dmUgWk9ORV9ERVZJQ0UgZmFsbGluZyBpbnRvIGEgbWVtb3J5IGJsb2NrICh3aXRoIGhvbGVzKT8g
SSBzb21ld2hhdCAKaGF2ZSBkb3VidHMgdGhhdCB0aGlzIHdvdWxkIHdvcmsgLi4uCgotLSAKClRo
YW5rcywKCkRhdmlkIC8gZGhpbGRlbmIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2pl
Y3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=

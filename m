Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E4BEBEFC0F
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 Nov 2019 12:10:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1405685EF3;
	Tue,  5 Nov 2019 11:10:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ByYcL9aWCeRb; Tue,  5 Nov 2019 11:10:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 144E785D30;
	Tue,  5 Nov 2019 11:10:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4CD451BF574
 for <devel@linuxdriverproject.org>; Tue,  5 Nov 2019 11:10:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 482C389B07
 for <devel@linuxdriverproject.org>; Tue,  5 Nov 2019 11:10:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FqTjbHMO414g for <devel@linuxdriverproject.org>;
 Tue,  5 Nov 2019 11:10:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [207.211.31.81])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0586889A3B
 for <devel@driverdev.osuosl.org>; Tue,  5 Nov 2019 11:10:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1572952200;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=FREnvreZ0DXlMswNBUBVaTmUA3OlcxYKpKYODf+ZHzI=;
 b=WttzqtvScM34sSHJCeqzftEiuUfyBlP8Bts8+PBSOJBJTCBgEDenhqtojWzPd82lKoKtsK
 uPg3XN+uFHn9Vn6AExd/XuXYrZnGkT4oAl32O9/gY0i97l4g/NRa8cRAiI6PRRFWqJqybQ
 EvLMV+k7qH9a/pVp9Zj7/vGwzvRh4ag=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-219-JwYfLl3JMpuPum529BzIzg-1; Tue, 05 Nov 2019 06:09:58 -0500
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2C6EC801FCB;
 Tue,  5 Nov 2019 11:09:52 +0000 (UTC)
Received: from [10.36.117.253] (ovpn-117-253.ams2.redhat.com [10.36.117.253])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 15277608B5;
 Tue,  5 Nov 2019 11:09:33 +0000 (UTC)
Subject: Re: [PATCH v1 02/10] KVM: x86/mmu: Prepare kvm_is_mmio_pfn() for
 PG_reserved changes
To: Dan Williams <dan.j.williams@intel.com>
References: <20191024120938.11237-1-david@redhat.com>
 <20191024120938.11237-3-david@redhat.com>
 <CAPcyv4iFJgtcx56g+Le2DccgvoncvVZuaEBRSOyv-=52YNqJug@mail.gmail.com>
From: David Hildenbrand <david@redhat.com>
Organization: Red Hat GmbH
Message-ID: <91df87ad-bbc5-aa9e-653f-d68c3c322978@redhat.com>
Date: Tue, 5 Nov 2019 12:09:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <CAPcyv4iFJgtcx56g+Le2DccgvoncvVZuaEBRSOyv-=52YNqJug@mail.gmail.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-MC-Unique: JwYfLl3JMpuPum529BzIzg-1
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

T24gMDUuMTEuMTkgMDI6MzcsIERhbiBXaWxsaWFtcyB3cm90ZToKPiBPbiBUaHUsIE9jdCAyNCwg
MjAxOSBhdCA1OjEwIEFNIERhdmlkIEhpbGRlbmJyYW5kIDxkYXZpZEByZWRoYXQuY29tPiB3cm90
ZToKPj4KPj4gUmlnaHQgbm93LCBaT05FX0RFVklDRSBtZW1vcnkgaXMgYWx3YXlzIHNldCBQR19y
ZXNlcnZlZC4gV2Ugd2FudCB0bwo+PiBjaGFuZ2UgdGhhdC4KPj4KPj4gS1ZNIGhhcyB0aGlzIHdl
aXJkIHVzZSBjYXNlIHRoYXQgeW91IGNhbiBtYXAgYW55dGhpbmcgZnJvbSAvZGV2L21lbQo+PiBp
bnRvIHRoZSBndWVzdC4gcGZuX3ZhbGlkKCkgaXMgbm90IGEgcmVsaWFibGUgY2hlY2sgd2hldGhl
ciB0aGUgbWVtbWFwCj4+IHdhcyBpbml0aWFsaXplZCBhbmQgY2FuIGJlIHRvdWNoZWQuIHBmbl90
b19vbmxpbmVfcGFnZSgpIG1ha2VzIHN1cmUKPj4gdGhhdCB3ZSBoYXZlIGFuIGluaXRpYWxpemVk
IG1lbW1hcCAoYW5kIGRvbid0IGhhdmUgWk9ORV9ERVZJQ0UgbWVtb3J5KS4KPj4KPj4gUmV3cml0
ZSBrdm1faXNfbW1pb19wZm4oKSB0byBtYWtlIHN1cmUgdGhlIGZ1bmN0aW9uIHByb2R1Y2VzIHRo
ZQo+PiBzYW1lIHJlc3VsdCBvbmNlIHdlIHN0b3Agc2V0dGluZyBaT05FX0RFVklDRSBwYWdlcyBQ
R19yZXNlcnZlZC4KPj4KPj4gQ2M6IFBhb2xvIEJvbnppbmkgPHBib256aW5pQHJlZGhhdC5jb20+
Cj4+IENjOiAiUmFkaW0gS3LEjW3DocWZIiA8cmtyY21hckByZWRoYXQuY29tPgo+PiBDYzogU2Vh
biBDaHJpc3RvcGhlcnNvbiA8c2Vhbi5qLmNocmlzdG9waGVyc29uQGludGVsLmNvbT4KPj4gQ2M6
IFZpdGFseSBLdXpuZXRzb3YgPHZrdXpuZXRzQHJlZGhhdC5jb20+Cj4+IENjOiBXYW5wZW5nIExp
IDx3YW5wZW5nbGlAdGVuY2VudC5jb20+Cj4+IENjOiBKaW0gTWF0dHNvbiA8am1hdHRzb25AZ29v
Z2xlLmNvbT4KPj4gQ2M6IEpvZXJnIFJvZWRlbCA8am9yb0A4Ynl0ZXMub3JnPgo+PiBDYzogVGhv
bWFzIEdsZWl4bmVyIDx0Z2x4QGxpbnV0cm9uaXguZGU+Cj4+IENjOiBJbmdvIE1vbG5hciA8bWlu
Z29AcmVkaGF0LmNvbT4KPj4gQ2M6IEJvcmlzbGF2IFBldGtvdiA8YnBAYWxpZW44LmRlPgo+PiBD
YzogIkguIFBldGVyIEFudmluIiA8aHBhQHp5dG9yLmNvbT4KPj4gQ2M6IEthcmltQWxsYWggQWht
ZWQgPGthcmFobWVkQGFtYXpvbi5kZT4KPj4gQ2M6IE1pY2hhbCBIb2NrbyA8bWhvY2tvQGtlcm5l
bC5vcmc+Cj4+IENjOiBEYW4gV2lsbGlhbXMgPGRhbi5qLndpbGxpYW1zQGludGVsLmNvbT4KPj4g
U2lnbmVkLW9mZi1ieTogRGF2aWQgSGlsZGVuYnJhbmQgPGRhdmlkQHJlZGhhdC5jb20+Cj4+IC0t
LQo+PiAgIGFyY2gveDg2L2t2bS9tbXUuYyB8IDI5ICsrKysrKysrKysrKysrKysrLS0tLS0tLS0t
LS0tCj4+ICAgMSBmaWxlIGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKyksIDEyIGRlbGV0aW9ucygt
KQo+Pgo+PiBkaWZmIC0tZ2l0IGEvYXJjaC94ODYva3ZtL21tdS5jIGIvYXJjaC94ODYva3ZtL21t
dS5jCj4+IGluZGV4IDI0YzIzYzY2YjIyNi4uZjAzMDg5YTMzNmRlIDEwMDY0NAo+PiAtLS0gYS9h
cmNoL3g4Ni9rdm0vbW11LmMKPj4gKysrIGIvYXJjaC94ODYva3ZtL21tdS5jCj4+IEBAIC0yOTYy
LDIwICsyOTYyLDI1IEBAIHN0YXRpYyBib29sIG1tdV9uZWVkX3dyaXRlX3Byb3RlY3Qoc3RydWN0
IGt2bV92Y3B1ICp2Y3B1LCBnZm5fdCBnZm4sCj4+Cj4+ICAgc3RhdGljIGJvb2wga3ZtX2lzX21t
aW9fcGZuKGt2bV9wZm5fdCBwZm4pCj4+ICAgewo+PiArICAgICAgIHN0cnVjdCBwYWdlICpwYWdl
ID0gcGZuX3RvX29ubGluZV9wYWdlKHBmbik7Cj4+ICsKPj4gKyAgICAgICAvKgo+PiArICAgICAg
ICAqIFpPTkVfREVWSUNFIHBhZ2VzIGFyZSBuZXZlciBvbmxpbmUuIE9ubGluZSBwYWdlcyB0aGF0
IGFyZSByZXNlcnZlZAo+PiArICAgICAgICAqIGVpdGhlciBpbmRpY2F0ZSB0aGUgemVybyBwYWdl
IG9yIE1NSU8gcGFnZXMuCj4+ICsgICAgICAgICovCj4+ICsgICAgICAgaWYgKHBhZ2UpCj4+ICsg
ICAgICAgICAgICAgICByZXR1cm4gIWlzX3plcm9fcGZuKHBmbikgJiYgUGFnZVJlc2VydmVkKHBm
bl90b19wYWdlKHBmbikpOwo+PiArCj4+ICsgICAgICAgLyoKPj4gKyAgICAgICAgKiBBbnl0aGlu
ZyB3aXRoIGEgdmFsaWQgKGJ1dCBub3Qgb25saW5lKSBtZW1tYXAgY291bGQgYmUgWk9ORV9ERVZJ
Q0UuCj4+ICsgICAgICAgICogVHJlYXQgb25seSBVQy9VQy0vV0MgcGFnZXMgYXMgTU1JTy4KPiAK
PiBZb3UgbWlnaHQgY2xhcmlmeSB0aGF0IFpPTkVfREVWSUNFIHBhZ2VzIHRoYXQgYmVsb25nIHRv
IFdCIGNhY2hlYWJsZQo+IHBtZW0gaGF2ZSB0aGUgY29ycmVjdCBtZW10eXBlIGVzdGFibGlzaGVk
IGJ5IGRldm1fbWVtcmVtYXBfcGFnZXMoKS4KCi8qCiAgKiBBbnl0aGluZyB3aXRoIGEgdmFsaWQg
KGJ1dCBub3Qgb25saW5lKSBtZW1tYXAgY291bGQgYmUgWk9ORV9ERVZJQ0UuCiAgKiBUcmVhdCBv
bmx5IFVDL1VDLS9XQyBwYWdlcyBhcyBNTUlPLiBkZXZtX21lbXJlbWFwX3BhZ2VzKCkgZXN0YWJs
aXNoZWQKICAqIHRoZSBjb3JyZWN0IG1lbXR5cGUgZm9yIFdCIGNhY2hlYWJsZSBaT05FX0RFVklD
RSBwYWdlcy4KICAqLwoKVGhhbmtzIQoKPiAKPiBPdGhlciB0aGFuIHRoYXQsIGZlZWwgZnJlZSB0
byBhZGQ6Cj4gCj4gUmV2aWV3ZWQtYnk6IERhbiBXaWxsaWFtcyA8ZGFuLmoud2lsbGlhbXNAaW50
ZWwuY29tPgo+IAoKCi0tIAoKVGhhbmtzLAoKRGF2aWQgLyBkaGlsZGVuYgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRl
dmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnBy
b2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C91AEF2E5
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 Nov 2019 02:37:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2E2738A206;
	Tue,  5 Nov 2019 01:37:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3ZGbXoag+War; Tue,  5 Nov 2019 01:37:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8CC158A1EF;
	Tue,  5 Nov 2019 01:37:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 168BF1BF471
 for <devel@linuxdriverproject.org>; Tue,  5 Nov 2019 01:37:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 12C6B89047
 for <devel@linuxdriverproject.org>; Tue,  5 Nov 2019 01:37:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Bhe_2EQFBZfc for <devel@linuxdriverproject.org>;
 Tue,  5 Nov 2019 01:37:39 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
 [209.85.160.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 15EAB8917A
 for <devel@driverdev.osuosl.org>; Tue,  5 Nov 2019 01:37:39 +0000 (UTC)
Received: by mail-qt1-f195.google.com with SMTP id t20so11410171qtn.9
 for <devel@driverdev.osuosl.org>; Mon, 04 Nov 2019 17:37:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=intel-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=W2L5Wt9vAPwi2DADGCrJo4/gpgrXJ/vHj0hp5uT1/6w=;
 b=qw3wPwnJQEPIsA7f/w0mDIf51WQSqHZtNBtHkQ+a6qdpUzMOEXt/OAxm9io3JhbfP6
 vTne7iEDoazWXW5xBbihS1O0cnamLcICRUtMB42yA1LqBFurawpARa+pI/loQ7TZozCS
 muNK+/gOteA/6DrrAtwCv6qzAGFDNLrT4lxpVufIgKeSiYXHaqk5RVXbSWJ1ueKtHuiv
 oOY+F9gg4Xa4vW+/ls61g41NWotER0Buor3x0J0NDaC4S7Hry/ZYzIQIeOoT7pjyK/9n
 KejzKKo5jxtmx28oPc0/OrVyt4Yy1MBj0AZXomNXumyf6TV3OJA/dy91Qa7O4iQ+cyCX
 +Lwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=W2L5Wt9vAPwi2DADGCrJo4/gpgrXJ/vHj0hp5uT1/6w=;
 b=oYqLbBVfxpKfE6UIoiHEffR8BNkp20qzfW1Cz0a8ulwtjX5pRiEs28NaID5nU73cCi
 GN8+YxX4QWVUSZnkpJ599A7B3rxCx2/tZ5CBQtbZeohby+fDFf/wTJmabJT+Orgh1V17
 dJnqWDefBjW37M++y8XJu+34aFphT0k/1i+fkgMp7VQM+YXcLt0grvybWAR4Ovp9qQzq
 4Yix+SNlqafhx73uwnbR6JXREizRI4u9PFpXMKoky0ociAISA0v9LPIk/p1ZXkAX3T1I
 JTC1XTI+B9W59NCs6eiVVkMqkFipjCcPS3ZzcI8O5aNSH5/6dCWdXhbS9qFoAz6YFCW6
 c2mQ==
X-Gm-Message-State: APjAAAXL3xaPNgKQTwbKtSo5S2apjNFkXi6LAurmDk38ZjHQQO2+lxIQ
 gw2FRqAm+9f4EH4dX3uSzS0lEwoe7URZBknTumkGfw==
X-Google-Smtp-Source: APXvYqxf5b5k2/XEh51ut95Lrfer14ii/6Y4WgnKt5ObxWvYMWg+IxU5wRUlwhcOOGIDRGfOdEah46THNJk1jv52R/0=
X-Received: by 2002:a0c:a910:: with SMTP id y16mr12413788qva.89.1572917858090; 
 Mon, 04 Nov 2019 17:37:38 -0800 (PST)
MIME-Version: 1.0
References: <20191024120938.11237-1-david@redhat.com>
 <20191024120938.11237-3-david@redhat.com>
In-Reply-To: <20191024120938.11237-3-david@redhat.com>
From: Dan Williams <dan.j.williams@intel.com>
Date: Mon, 4 Nov 2019 17:37:27 -0800
Message-ID: <CAPcyv4iFJgtcx56g+Le2DccgvoncvVZuaEBRSOyv-=52YNqJug@mail.gmail.com>
Subject: Re: [PATCH v1 02/10] KVM: x86/mmu: Prepare kvm_is_mmio_pfn() for
 PG_reserved changes
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gVGh1LCBPY3QgMjQsIDIwMTkgYXQgNToxMCBBTSBEYXZpZCBIaWxkZW5icmFuZCA8ZGF2aWRA
cmVkaGF0LmNvbT4gd3JvdGU6Cj4KPiBSaWdodCBub3csIFpPTkVfREVWSUNFIG1lbW9yeSBpcyBh
bHdheXMgc2V0IFBHX3Jlc2VydmVkLiBXZSB3YW50IHRvCj4gY2hhbmdlIHRoYXQuCj4KPiBLVk0g
aGFzIHRoaXMgd2VpcmQgdXNlIGNhc2UgdGhhdCB5b3UgY2FuIG1hcCBhbnl0aGluZyBmcm9tIC9k
ZXYvbWVtCj4gaW50byB0aGUgZ3Vlc3QuIHBmbl92YWxpZCgpIGlzIG5vdCBhIHJlbGlhYmxlIGNo
ZWNrIHdoZXRoZXIgdGhlIG1lbW1hcAo+IHdhcyBpbml0aWFsaXplZCBhbmQgY2FuIGJlIHRvdWNo
ZWQuIHBmbl90b19vbmxpbmVfcGFnZSgpIG1ha2VzIHN1cmUKPiB0aGF0IHdlIGhhdmUgYW4gaW5p
dGlhbGl6ZWQgbWVtbWFwIChhbmQgZG9uJ3QgaGF2ZSBaT05FX0RFVklDRSBtZW1vcnkpLgo+Cj4g
UmV3cml0ZSBrdm1faXNfbW1pb19wZm4oKSB0byBtYWtlIHN1cmUgdGhlIGZ1bmN0aW9uIHByb2R1
Y2VzIHRoZQo+IHNhbWUgcmVzdWx0IG9uY2Ugd2Ugc3RvcCBzZXR0aW5nIFpPTkVfREVWSUNFIHBh
Z2VzIFBHX3Jlc2VydmVkLgo+Cj4gQ2M6IFBhb2xvIEJvbnppbmkgPHBib256aW5pQHJlZGhhdC5j
b20+Cj4gQ2M6ICJSYWRpbSBLcsSNbcOhxZkiIDxya3JjbWFyQHJlZGhhdC5jb20+Cj4gQ2M6IFNl
YW4gQ2hyaXN0b3BoZXJzb24gPHNlYW4uai5jaHJpc3RvcGhlcnNvbkBpbnRlbC5jb20+Cj4gQ2M6
IFZpdGFseSBLdXpuZXRzb3YgPHZrdXpuZXRzQHJlZGhhdC5jb20+Cj4gQ2M6IFdhbnBlbmcgTGkg
PHdhbnBlbmdsaUB0ZW5jZW50LmNvbT4KPiBDYzogSmltIE1hdHRzb24gPGptYXR0c29uQGdvb2ds
ZS5jb20+Cj4gQ2M6IEpvZXJnIFJvZWRlbCA8am9yb0A4Ynl0ZXMub3JnPgo+IENjOiBUaG9tYXMg
R2xlaXhuZXIgPHRnbHhAbGludXRyb25peC5kZT4KPiBDYzogSW5nbyBNb2xuYXIgPG1pbmdvQHJl
ZGhhdC5jb20+Cj4gQ2M6IEJvcmlzbGF2IFBldGtvdiA8YnBAYWxpZW44LmRlPgo+IENjOiAiSC4g
UGV0ZXIgQW52aW4iIDxocGFAenl0b3IuY29tPgo+IENjOiBLYXJpbUFsbGFoIEFobWVkIDxrYXJh
aG1lZEBhbWF6b24uZGU+Cj4gQ2M6IE1pY2hhbCBIb2NrbyA8bWhvY2tvQGtlcm5lbC5vcmc+Cj4g
Q2M6IERhbiBXaWxsaWFtcyA8ZGFuLmoud2lsbGlhbXNAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYt
Ynk6IERhdmlkIEhpbGRlbmJyYW5kIDxkYXZpZEByZWRoYXQuY29tPgo+IC0tLQo+ICBhcmNoL3g4
Ni9rdm0vbW11LmMgfCAyOSArKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLQo+ICAxIGZpbGUg
Y2hhbmdlZCwgMTcgaW5zZXJ0aW9ucygrKSwgMTIgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0
IGEvYXJjaC94ODYva3ZtL21tdS5jIGIvYXJjaC94ODYva3ZtL21tdS5jCj4gaW5kZXggMjRjMjNj
NjZiMjI2Li5mMDMwODlhMzM2ZGUgMTAwNjQ0Cj4gLS0tIGEvYXJjaC94ODYva3ZtL21tdS5jCj4g
KysrIGIvYXJjaC94ODYva3ZtL21tdS5jCj4gQEAgLTI5NjIsMjAgKzI5NjIsMjUgQEAgc3RhdGlj
IGJvb2wgbW11X25lZWRfd3JpdGVfcHJvdGVjdChzdHJ1Y3Qga3ZtX3ZjcHUgKnZjcHUsIGdmbl90
IGdmbiwKPgo+ICBzdGF0aWMgYm9vbCBrdm1faXNfbW1pb19wZm4oa3ZtX3Bmbl90IHBmbikKPiAg
ewo+ICsgICAgICAgc3RydWN0IHBhZ2UgKnBhZ2UgPSBwZm5fdG9fb25saW5lX3BhZ2UocGZuKTsK
PiArCj4gKyAgICAgICAvKgo+ICsgICAgICAgICogWk9ORV9ERVZJQ0UgcGFnZXMgYXJlIG5ldmVy
IG9ubGluZS4gT25saW5lIHBhZ2VzIHRoYXQgYXJlIHJlc2VydmVkCj4gKyAgICAgICAgKiBlaXRo
ZXIgaW5kaWNhdGUgdGhlIHplcm8gcGFnZSBvciBNTUlPIHBhZ2VzLgo+ICsgICAgICAgICovCj4g
KyAgICAgICBpZiAocGFnZSkKPiArICAgICAgICAgICAgICAgcmV0dXJuICFpc196ZXJvX3Bmbihw
Zm4pICYmIFBhZ2VSZXNlcnZlZChwZm5fdG9fcGFnZShwZm4pKTsKPiArCj4gKyAgICAgICAvKgo+
ICsgICAgICAgICogQW55dGhpbmcgd2l0aCBhIHZhbGlkIChidXQgbm90IG9ubGluZSkgbWVtbWFw
IGNvdWxkIGJlIFpPTkVfREVWSUNFLgo+ICsgICAgICAgICogVHJlYXQgb25seSBVQy9VQy0vV0Mg
cGFnZXMgYXMgTU1JTy4KCllvdSBtaWdodCBjbGFyaWZ5IHRoYXQgWk9ORV9ERVZJQ0UgcGFnZXMg
dGhhdCBiZWxvbmcgdG8gV0IgY2FjaGVhYmxlCnBtZW0gaGF2ZSB0aGUgY29ycmVjdCBtZW10eXBl
IGVzdGFibGlzaGVkIGJ5IGRldm1fbWVtcmVtYXBfcGFnZXMoKS4KCk90aGVyIHRoYW4gdGhhdCwg
ZmVlbCBmcmVlIHRvIGFkZDoKClJldmlld2VkLWJ5OiBEYW4gV2lsbGlhbXMgPGRhbi5qLndpbGxp
YW1zQGludGVsLmNvbT4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0
cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJp
dmVyZGV2LWRldmVsCg==

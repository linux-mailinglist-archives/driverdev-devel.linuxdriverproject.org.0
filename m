Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B51EE31E6
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Oct 2019 14:11:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 15BB822E3F;
	Thu, 24 Oct 2019 12:10:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TrX6ALc85ah0; Thu, 24 Oct 2019 12:10:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1BA5A20386;
	Thu, 24 Oct 2019 12:10:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A18BD1BF3C1
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 12:10:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9D1168507B
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 12:10:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ngmsxKY2iO4X for <devel@linuxdriverproject.org>;
 Thu, 24 Oct 2019 12:10:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [205.139.110.61])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 22D1787865
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 12:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1571919052;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=qUw+4OUStTuaq5ok3fmgq6nv+XIwZUDTl4O246f/KSo=;
 b=Mphi4odUz6rpOo7NfySpzAq1zpgNhKwMBhQoLlCqnbY2G01htLXPEwLdGshy6syP9B2P5U
 jsYZp33qMxwNjyrCNQ9Xhz+t3t4YgMDOGwpirF/Ha+jU+fryTpfjPbfhlC2IlpyhMAt0gM
 iHO6pBUIpg3bFN/yOVzeO/Ow/rmq04w=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-44-KwvfWgdbN8Olk7KAgSZhkg-1; Thu, 24 Oct 2019 08:10:50 -0400
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 274885E4;
 Thu, 24 Oct 2019 12:10:43 +0000 (UTC)
Received: from t460s.redhat.com (ovpn-116-141.ams2.redhat.com [10.36.116.141])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 70C261C93D;
 Thu, 24 Oct 2019 12:10:23 +0000 (UTC)
From: David Hildenbrand <david@redhat.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v1 02/10] KVM: x86/mmu: Prepare kvm_is_mmio_pfn() for
 PG_reserved changes
Date: Thu, 24 Oct 2019 14:09:30 +0200
Message-Id: <20191024120938.11237-3-david@redhat.com>
In-Reply-To: <20191024120938.11237-1-david@redhat.com>
References: <20191024120938.11237-1-david@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-MC-Unique: KwvfWgdbN8Olk7KAgSZhkg-1
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
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>,
 kvm@vger.kernel.org, David Hildenbrand <david@redhat.com>,
 KarimAllah Ahmed <karahmed@amazon.de>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Alexander Duyck <alexander.duyck@gmail.com>, Michal Hocko <mhocko@kernel.org>,
 Paul Mackerras <paulus@ozlabs.org>, linux-mm@kvack.org,
 Pavel Tatashin <pavel.tatashin@microsoft.com>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
 "H. Peter Anvin" <hpa@zytor.com>, Wanpeng Li <wanpengli@tencent.com>,
 Alexander Duyck <alexander.h.duyck@linux.intel.com>,
 Dan Williams <dan.j.williams@intel.com>, Kees Cook <keescook@chromium.org>,
 devel@driverdev.osuosl.org, Stefano Stabellini <sstabellini@kernel.org>,
 Stephen Hemminger <sthemmin@microsoft.com>,
 "Aneesh Kumar K.V" <aneesh.kumar@linux.ibm.com>,
 Joerg Roedel <joro@8bytes.org>, x86@kernel.org,
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
 xen-devel@lists.xenproject.org, Boris Ostrovsky <boris.ostrovsky@oracle.com>,
 Vitaly Kuznetsov <vkuznets@redhat.com>, Allison Randal <allison@lohutok.net>,
 Jim Mattson <jmattson@google.com>, Christophe Leroy <christophe.leroy@c-s.fr>,
 Mel Gorman <mgorman@techsingularity.net>, Cornelia Huck <cohuck@redhat.com>,
 Pavel Tatashin <pasha.tatashin@soleen.com>,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 Thomas Gleixner <tglx@linutronix.de>, Johannes Weiner <hannes@cmpxchg.org>,
 Paolo Bonzini <pbonzini@redhat.com>, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

UmlnaHQgbm93LCBaT05FX0RFVklDRSBtZW1vcnkgaXMgYWx3YXlzIHNldCBQR19yZXNlcnZlZC4g
V2Ugd2FudCB0bwpjaGFuZ2UgdGhhdC4KCktWTSBoYXMgdGhpcyB3ZWlyZCB1c2UgY2FzZSB0aGF0
IHlvdSBjYW4gbWFwIGFueXRoaW5nIGZyb20gL2Rldi9tZW0KaW50byB0aGUgZ3Vlc3QuIHBmbl92
YWxpZCgpIGlzIG5vdCBhIHJlbGlhYmxlIGNoZWNrIHdoZXRoZXIgdGhlIG1lbW1hcAp3YXMgaW5p
dGlhbGl6ZWQgYW5kIGNhbiBiZSB0b3VjaGVkLiBwZm5fdG9fb25saW5lX3BhZ2UoKSBtYWtlcyBz
dXJlCnRoYXQgd2UgaGF2ZSBhbiBpbml0aWFsaXplZCBtZW1tYXAgKGFuZCBkb24ndCBoYXZlIFpP
TkVfREVWSUNFIG1lbW9yeSkuCgpSZXdyaXRlIGt2bV9pc19tbWlvX3BmbigpIHRvIG1ha2Ugc3Vy
ZSB0aGUgZnVuY3Rpb24gcHJvZHVjZXMgdGhlCnNhbWUgcmVzdWx0IG9uY2Ugd2Ugc3RvcCBzZXR0
aW5nIFpPTkVfREVWSUNFIHBhZ2VzIFBHX3Jlc2VydmVkLgoKQ2M6IFBhb2xvIEJvbnppbmkgPHBi
b256aW5pQHJlZGhhdC5jb20+CkNjOiAiUmFkaW0gS3LEjW3DocWZIiA8cmtyY21hckByZWRoYXQu
Y29tPgpDYzogU2VhbiBDaHJpc3RvcGhlcnNvbiA8c2Vhbi5qLmNocmlzdG9waGVyc29uQGludGVs
LmNvbT4KQ2M6IFZpdGFseSBLdXpuZXRzb3YgPHZrdXpuZXRzQHJlZGhhdC5jb20+CkNjOiBXYW5w
ZW5nIExpIDx3YW5wZW5nbGlAdGVuY2VudC5jb20+CkNjOiBKaW0gTWF0dHNvbiA8am1hdHRzb25A
Z29vZ2xlLmNvbT4KQ2M6IEpvZXJnIFJvZWRlbCA8am9yb0A4Ynl0ZXMub3JnPgpDYzogVGhvbWFz
IEdsZWl4bmVyIDx0Z2x4QGxpbnV0cm9uaXguZGU+CkNjOiBJbmdvIE1vbG5hciA8bWluZ29AcmVk
aGF0LmNvbT4KQ2M6IEJvcmlzbGF2IFBldGtvdiA8YnBAYWxpZW44LmRlPgpDYzogIkguIFBldGVy
IEFudmluIiA8aHBhQHp5dG9yLmNvbT4KQ2M6IEthcmltQWxsYWggQWhtZWQgPGthcmFobWVkQGFt
YXpvbi5kZT4KQ2M6IE1pY2hhbCBIb2NrbyA8bWhvY2tvQGtlcm5lbC5vcmc+CkNjOiBEYW4gV2ls
bGlhbXMgPGRhbi5qLndpbGxpYW1zQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogRGF2aWQgSGls
ZGVuYnJhbmQgPGRhdmlkQHJlZGhhdC5jb20+Ci0tLQogYXJjaC94ODYva3ZtL21tdS5jIHwgMjkg
KysrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxNyBpbnNlcnRp
b25zKCspLCAxMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9hcmNoL3g4Ni9rdm0vbW11LmMg
Yi9hcmNoL3g4Ni9rdm0vbW11LmMKaW5kZXggMjRjMjNjNjZiMjI2Li5mMDMwODlhMzM2ZGUgMTAw
NjQ0Ci0tLSBhL2FyY2gveDg2L2t2bS9tbXUuYworKysgYi9hcmNoL3g4Ni9rdm0vbW11LmMKQEAg
LTI5NjIsMjAgKzI5NjIsMjUgQEAgc3RhdGljIGJvb2wgbW11X25lZWRfd3JpdGVfcHJvdGVjdChz
dHJ1Y3Qga3ZtX3ZjcHUgKnZjcHUsIGdmbl90IGdmbiwKIAogc3RhdGljIGJvb2wga3ZtX2lzX21t
aW9fcGZuKGt2bV9wZm5fdCBwZm4pCiB7CisJc3RydWN0IHBhZ2UgKnBhZ2UgPSBwZm5fdG9fb25s
aW5lX3BhZ2UocGZuKTsKKworCS8qCisJICogWk9ORV9ERVZJQ0UgcGFnZXMgYXJlIG5ldmVyIG9u
bGluZS4gT25saW5lIHBhZ2VzIHRoYXQgYXJlIHJlc2VydmVkCisJICogZWl0aGVyIGluZGljYXRl
IHRoZSB6ZXJvIHBhZ2Ugb3IgTU1JTyBwYWdlcy4KKwkgKi8KKwlpZiAocGFnZSkKKwkJcmV0dXJu
ICFpc196ZXJvX3BmbihwZm4pICYmIFBhZ2VSZXNlcnZlZChwZm5fdG9fcGFnZShwZm4pKTsKKwor
CS8qCisJICogQW55dGhpbmcgd2l0aCBhIHZhbGlkIChidXQgbm90IG9ubGluZSkgbWVtbWFwIGNv
dWxkIGJlIFpPTkVfREVWSUNFLgorCSAqIFRyZWF0IG9ubHkgVUMvVUMtL1dDIHBhZ2VzIGFzIE1N
SU8uCisJICovCiAJaWYgKHBmbl92YWxpZChwZm4pKQotCQlyZXR1cm4gIWlzX3plcm9fcGZuKHBm
bikgJiYgUGFnZVJlc2VydmVkKHBmbl90b19wYWdlKHBmbikpICYmCi0JCQkvKgotCQkJICogU29t
ZSByZXNlcnZlZCBwYWdlcywgc3VjaCBhcyB0aG9zZSBmcm9tIE5WRElNTQotCQkJICogREFYIGRl
dmljZXMsIGFyZSBub3QgZm9yIE1NSU8sIGFuZCBjYW4gYmUgbWFwcGVkCi0JCQkgKiB3aXRoIGNh
Y2hlZCBtZW1vcnkgdHlwZSBmb3IgYmV0dGVyIHBlcmZvcm1hbmNlLgotCQkJICogSG93ZXZlciwg
dGhlIGFib3ZlIGNoZWNrIG1pc2NvbmNlaXZlcyB0aG9zZSBwYWdlcwotCQkJICogYXMgTU1JTywg
YW5kIHJlc3VsdHMgaW4gS1ZNIG1hcHBpbmcgdGhlbSB3aXRoIFVDCi0JCQkgKiBtZW1vcnkgdHlw
ZSwgd2hpY2ggd291bGQgaHVydCB0aGUgcGVyZm9ybWFuY2UuCi0JCQkgKiBUaGVyZWZvcmUsIHdl
IGNoZWNrIHRoZSBob3N0IG1lbW9yeSB0eXBlIGluIGFkZGl0aW9uCi0JCQkgKiBhbmQgb25seSB0
cmVhdCBVQy9VQy0vV0MgcGFnZXMgYXMgTU1JTy4KLQkJCSAqLwotCQkJKCFwYXRfZW5hYmxlZCgp
IHx8IHBhdF9wZm5faW1tdW5lX3RvX3VjX210cnIocGZuKSk7CisJCXJldHVybiAhcGF0X2VuYWJs
ZWQoKSB8fCBwYXRfcGZuX2ltbXVuZV90b191Y19tdHJyKHBmbik7CiAKKwkvKgorCSAqIEFueSBS
QU0gdGhhdCBoYXMgbm8gbWVtbWFwIChlLmcuLCBtYXBwZWQgdmlhIC9kZXYvbWVtKSBpcyBub3Qg
TU1JTy4KKwkgKi8KIAlyZXR1cm4gIWU4MjBfX21hcHBlZF9yYXdfYW55KHBmbl90b19ocGEocGZu
KSwKIAkJCQkgICAgIHBmbl90b19ocGEocGZuICsgMSkgLSAxLAogCQkJCSAgICAgRTgyMF9UWVBF
X1JBTSk7Ci0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3Jn
Cmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2RyaXZlcmRldi1kZXZlbAo=

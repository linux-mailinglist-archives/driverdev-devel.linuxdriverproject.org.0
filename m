Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 257AAE31E9
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Oct 2019 14:11:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B637C88343;
	Thu, 24 Oct 2019 12:11:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VQusOYjPL394; Thu, 24 Oct 2019 12:11:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id F0ABB88168;
	Thu, 24 Oct 2019 12:11:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D03131BF3C1
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 12:11:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C7BE487865
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 12:11:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QnHB0bFOtZ4Q for <devel@linuxdriverproject.org>;
 Thu, 24 Oct 2019 12:11:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [205.139.110.61])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 29DF78507B
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 12:11:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1571919072;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Snv/eN2JSs1CKovdcEZrKtv3120OMPYnvMUKCAi50+E=;
 b=c7cncqgGOU9BtgVCAkyh4zahN4gd047yl0h3NqpFCd/RCxZPIsSSKHEgM9oQRV6f3DHEm7
 h7be7LGyfJAfWtUWadeaSmwZvB0BzJVhhvbFrQueLRgNzcZOKQRyE0gqCaONklG9NkNVyK
 oloPEMxioZE9/dj9zesAoIKe75UKEZU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-78-XqXphJdGOZKQf4BuJSlwgQ-1; Thu, 24 Oct 2019 08:11:10 -0400
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 040841005500;
 Thu, 24 Oct 2019 12:11:04 +0000 (UTC)
Received: from t460s.redhat.com (ovpn-116-141.ams2.redhat.com [10.36.116.141])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7E74A166A0;
 Thu, 24 Oct 2019 12:10:43 +0000 (UTC)
From: David Hildenbrand <david@redhat.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v1 03/10] KVM: Prepare kvm_is_reserved_pfn() for PG_reserved
 changes
Date: Thu, 24 Oct 2019 14:09:31 +0200
Message-Id: <20191024120938.11237-4-david@redhat.com>
In-Reply-To: <20191024120938.11237-1-david@redhat.com>
References: <20191024120938.11237-1-david@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-MC-Unique: XqXphJdGOZKQf4BuJSlwgQ-1
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
TkVfREVWSUNFIG1lbW9yeSkuCgpSZXdyaXRlIGt2bV9pc19yZXNlcnZlZF9wZm4oKSB0byBtYWtl
IHN1cmUgdGhlIGZ1bmN0aW9uIHByb2R1Y2VzIHRoZQpzYW1lIHJlc3VsdCBvbmNlIHdlIHN0b3Ag
c2V0dGluZyBaT05FX0RFVklDRSBwYWdlcyBQR19yZXNlcnZlZC4KCkNjOiBQYW9sbyBCb256aW5p
IDxwYm9uemluaUByZWRoYXQuY29tPgpDYzogIlJhZGltIEtyxI1tw6HFmSIgPHJrcmNtYXJAcmVk
aGF0LmNvbT4KQ2M6IE1pY2hhbCBIb2NrbyA8bWhvY2tvQGtlcm5lbC5vcmc+CkNjOiBEYW4gV2ls
bGlhbXMgPGRhbi5qLndpbGxpYW1zQGludGVsLmNvbT4KQ2M6IEthcmltQWxsYWggQWhtZWQgPGth
cmFobWVkQGFtYXpvbi5kZT4KU2lnbmVkLW9mZi1ieTogRGF2aWQgSGlsZGVuYnJhbmQgPGRhdmlk
QHJlZGhhdC5jb20+Ci0tLQogdmlydC9rdm0va3ZtX21haW4uYyB8IDEwICsrKysrKysrLS0KIDEg
ZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvdmlydC9rdm0va3ZtX21haW4uYyBiL3ZpcnQva3ZtL2t2bV9tYWluLmMKaW5kZXggZTllYjY2
NmViNmU4Li45ZDE4Y2M2N2QxMjQgMTAwNjQ0Ci0tLSBhL3ZpcnQva3ZtL2t2bV9tYWluLmMKKysr
IGIvdmlydC9rdm0va3ZtX21haW4uYwpAQCAtMTUxLDkgKzE1MSwxNSBAQCBfX3dlYWsgaW50IGt2
bV9hcmNoX21tdV9ub3RpZmllcl9pbnZhbGlkYXRlX3JhbmdlKHN0cnVjdCBrdm0gKmt2bSwKIAog
Ym9vbCBrdm1faXNfcmVzZXJ2ZWRfcGZuKGt2bV9wZm5fdCBwZm4pCiB7Ci0JaWYgKHBmbl92YWxp
ZChwZm4pKQotCQlyZXR1cm4gUGFnZVJlc2VydmVkKHBmbl90b19wYWdlKHBmbikpOworCXN0cnVj
dCBwYWdlICpwYWdlID0gcGZuX3RvX29ubGluZV9wYWdlKHBmbik7CiAKKwkvKgorCSAqIFdlIHRy
ZWF0IGFueSBwYWdlcyB0aGF0IGFyZSBub3Qgb25saW5lIChub3QgbWFuYWdlZCBieSB0aGUgYnVk
ZHkpCisJICogYXMgcmVzZXJ2ZWQgLSB0aGlzIGluY2x1ZGVzIFpPTkVfREVWSUNFIHBhZ2VzIGFu
ZCBwYWdlcyB3aXRob3V0CisJICogYSBtZW1tYXAgKGUuZy4sIG1hcHBlZCB2aWEgL2Rldi9tZW0p
LgorCSAqLworCWlmIChwYWdlKQorCQlyZXR1cm4gUGFnZVJlc2VydmVkKHBhZ2UpOwogCXJldHVy
biB0cnVlOwogfQogCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2pl
Y3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=

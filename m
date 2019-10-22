Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 22272E0A4D
	for <lists+driverdev-devel@lfdr.de>; Tue, 22 Oct 2019 19:15:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CD3178613E;
	Tue, 22 Oct 2019 17:15:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YN9PSHXkY2jt; Tue, 22 Oct 2019 17:15:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8339B86126;
	Tue, 22 Oct 2019 17:15:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 81EA31BF866
 for <devel@linuxdriverproject.org>; Tue, 22 Oct 2019 17:15:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7CA3B86126
 for <devel@linuxdriverproject.org>; Tue, 22 Oct 2019 17:15:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h0KOrNV-aL8c for <devel@linuxdriverproject.org>;
 Tue, 22 Oct 2019 17:15:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [205.139.110.61])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1F58B86121
 for <devel@driverdev.osuosl.org>; Tue, 22 Oct 2019 17:15:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1571764549;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=XS/04FUnui5sNwBDedSDS4UewrsrxLUrEqpw2KoK/cQ=;
 b=XtnhNL4hSNtUidqbt/WHcQhOjOviSnnIzHIhKxwRVmsEB1XgeaB/eZbQRsNQqdQY9f0jHx
 CfPZmOibRO4h+sjZVHBsVaf89SCVB3r9gcvqUgX/DQu/j1KyRpX7SuvZdJT+E7GOYt0YTv
 8bI+xdrDj/LX1/MrV/PrKLFfe1lZ0pk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-226-hQ4mXGwAP7eWs8CpMKPvnw-1; Tue, 22 Oct 2019 13:15:47 -0400
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D9666107AD31;
 Tue, 22 Oct 2019 17:15:41 +0000 (UTC)
Received: from t460s.redhat.com (ovpn-116-248.ams2.redhat.com [10.36.116.248])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 903AE5DA8D;
 Tue, 22 Oct 2019 17:15:17 +0000 (UTC)
From: David Hildenbrand <david@redhat.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH RFC v1 07/12] staging: kpc2000: Prepare transfer_complete_cb()
 for PG_reserved changes
Date: Tue, 22 Oct 2019 19:12:34 +0200
Message-Id: <20191022171239.21487-8-david@redhat.com>
In-Reply-To: <20191022171239.21487-1-david@redhat.com>
References: <20191022171239.21487-1-david@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-MC-Unique: hQ4mXGwAP7eWs8CpMKPvnw-1
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Sasha Levin <sashal@kernel.org>, linux-hyperv@vger.kernel.org,
 Michal Hocko <mhocko@suse.com>,
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
 Kees Cook <keescook@chromium.org>, devel@driverdev.osuosl.org,
 Stefano Stabellini <sstabellini@kernel.org>,
 Stephen Hemminger <sthemmin@microsoft.com>,
 "Aneesh Kumar K.V" <aneesh.kumar@linux.ibm.com>,
 Joerg Roedel <joro@8bytes.org>, x86@kernel.org,
 YueHaibing <yuehaibing@huawei.com>, Mike Rapoport <rppt@linux.ibm.com>,
 Madhumitha Prabakaran <madhumithabiw@gmail.com>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Vlastimil Babka <vbabka@suse.cz>, Nishka Dasgupta <nishkadg.linux@gmail.com>,
 Anthony Yznaga <anthony.yznaga@oracle.com>, Oscar Salvador <osalvador@suse.de>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 "Isaac J. Manjarres" <isaacm@codeaurora.org>, Juergen Gross <jgross@suse.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Haiyang Zhang <haiyangz@microsoft.com>,
 =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>,
 Dan Williams <dan.j.williams@intel.com>, kvm-ppc@vger.kernel.org,
 Qian Cai <cai@lca.pw>, Alex Williamson <alex.williamson@redhat.com>,
 Mike Rapoport <rppt@linux.vnet.ibm.com>, Borislav Petkov <bp@alien8.de>,
 Nicholas Piggin <npiggin@gmail.com>, Andy Lutomirski <luto@kernel.org>,
 xen-devel@lists.xenproject.org, Boris Ostrovsky <boris.ostrovsky@oracle.com>,
 Todd Poynor <toddpoynor@google.com>, Vitaly Kuznetsov <vkuznets@redhat.com>,
 Allison Randal <allison@lohutok.net>, Jim Mattson <jmattson@google.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>, Vandana BN <bnvandana@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Cornelia Huck <cohuck@redhat.com>, Pavel Tatashin <pasha.tatashin@soleen.com>,
 Mel Gorman <mgorman@techsingularity.net>,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 Rob Springer <rspringer@google.com>, Thomas Gleixner <tglx@linutronix.de>,
 Johannes Weiner <hannes@cmpxchg.org>, Paolo Bonzini <pbonzini@redhat.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

UmlnaHQgbm93LCBaT05FX0RFVklDRSBtZW1vcnkgaXMgYWx3YXlzIHNldCBQR19yZXNlcnZlZC4g
V2Ugd2FudCB0bwpjaGFuZ2UgdGhhdC4KClRoZSBwYWdlcyBhcmUgb2J0YWluZWQgdmlhIGdldF91
c2VyX3BhZ2VzX2Zhc3QoKS4gSSBhc3N1bWUsIHRoZXNlCmNvdWxkIGJlIFpPTkVfREVWSUNFIHBh
Z2VzLiBMZXQncyBqdXN0IGV4Y2x1ZGUgdGhlbSBhcyB3ZWxsIGV4cGxpY2l0bHkuCgpDYzogR3Jl
ZyBLcm9haC1IYXJ0bWFuIDxncmVna2hAbGludXhmb3VuZGF0aW9uLm9yZz4KQ2M6IFZhbmRhbmEg
Qk4gPGJudmFuZGFuYUBnbWFpbC5jb20+CkNjOiAiU2ltb24gU2FuZHN0csO2bSIgPHNpbW9uQG5p
a2Fub3IubnU+CkNjOiBEYW4gQ2FycGVudGVyIDxkYW4uY2FycGVudGVyQG9yYWNsZS5jb20+CkNj
OiBOaXNoa2EgRGFzZ3VwdGEgPG5pc2hrYWRnLmxpbnV4QGdtYWlsLmNvbT4KQ2M6IE1hZGh1bWl0
aGEgUHJhYmFrYXJhbiA8bWFkaHVtaXRoYWJpd0BnbWFpbC5jb20+CkNjOiBGYWJpbyBFc3RldmFt
IDxmZXN0ZXZhbUBnbWFpbC5jb20+CkNjOiBNYXR0IFNpY2tsZXIgPE1hdHQuU2lja2xlckBkYWt0
cm9uaWNzLmNvbT4KQ2M6IEplcmVteSBTb3dkZW4gPGplcmVteUBhemF6ZWwubmV0PgpTaWduZWQt
b2ZmLWJ5OiBEYXZpZCBIaWxkZW5icmFuZCA8ZGF2aWRAcmVkaGF0LmNvbT4KLS0tCiBkcml2ZXJz
L3N0YWdpbmcva3BjMjAwMC9rcGNfZG1hL2ZpbGVvcHMuYyB8IDMgKystCiAxIGZpbGUgY2hhbmdl
ZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9z
dGFnaW5nL2twYzIwMDAva3BjX2RtYS9maWxlb3BzLmMgYi9kcml2ZXJzL3N0YWdpbmcva3BjMjAw
MC9rcGNfZG1hL2ZpbGVvcHMuYwppbmRleCBjYjUyYmQ5YTZkMmYuLjQ1N2FkY2M4MWZlNiAxMDA2
NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL2twYzIwMDAva3BjX2RtYS9maWxlb3BzLmMKKysrIGIv
ZHJpdmVycy9zdGFnaW5nL2twYzIwMDAva3BjX2RtYS9maWxlb3BzLmMKQEAgLTIxMiw3ICsyMTIs
OCBAQCB2b2lkICB0cmFuc2Zlcl9jb21wbGV0ZV9jYihzdHJ1Y3QgYWlvX2NiX2RhdGEgKmFjZCwg
c2l6ZV90IHhmcl9jb3VudCwgdTMyIGZsYWdzKQogCUJVR19PTihhY2QtPmxkZXYtPnBsZGV2ID09
IE5VTEwpOwogCiAJZm9yIChpID0gMCA7IGkgPCBhY2QtPnBhZ2VfY291bnQgOyBpKyspIHsKLQkJ
aWYgKCFQYWdlUmVzZXJ2ZWQoYWNkLT51c2VyX3BhZ2VzW2ldKSkgeworCQlpZiAoIVBhZ2VSZXNl
cnZlZChhY2QtPnVzZXJfcGFnZXNbaV0pICYmCisJCSAgICAhaXNfem9uZV9kZXZpY2VfcGFnZShh
Y2QtPnVzZXJfcGFnZXNbaV0pKSB7CiAJCQlzZXRfcGFnZV9kaXJ0eShhY2QtPnVzZXJfcGFnZXNb
aV0pOwogCQl9CiAJfQotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9q
ZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 389E9E0A41
	for <lists+driverdev-devel@lfdr.de>; Tue, 22 Oct 2019 19:14:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DE48C843ED;
	Tue, 22 Oct 2019 17:14:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wVGYmVER2ihG; Tue, 22 Oct 2019 17:14:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BF5F88612E;
	Tue, 22 Oct 2019 17:14:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 19C5D1BF866
 for <devel@linuxdriverproject.org>; Tue, 22 Oct 2019 17:14:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1471B879F0
 for <devel@linuxdriverproject.org>; Tue, 22 Oct 2019 17:14:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SK-g6Vrlwy0i for <devel@linuxdriverproject.org>;
 Tue, 22 Oct 2019 17:14:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 16DDD87861
 for <devel@driverdev.osuosl.org>; Tue, 22 Oct 2019 17:14:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1571764460;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=RJLxUYZkphEfv5+PiNRBYPJsBqxuoPsQs816P7mVHAI=;
 b=NNwUX6CgFZ70V4w5Uk1yxnzjKqOFuMgWexwXGUZe/MyItZUaXvIcibPpFUHdHmANpuoeuk
 Ow/yjaidrdMb+gMXg5czxi0pwKK2G0bG8QdhbppX713R1eDQZXlR6jSuY37vilF7KNpwHK
 olVgle/K15j/ou/AMSDrj+RcgQeRHiE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-196-LQ7sslTiPc68PqWCypqf4g-1; Tue, 22 Oct 2019 13:14:18 -0400
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C3CE880183D;
 Tue, 22 Oct 2019 17:14:13 +0000 (UTC)
Received: from t460s.redhat.com (ovpn-116-248.ams2.redhat.com [10.36.116.248])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 83D8F5ED21;
 Tue, 22 Oct 2019 17:13:53 +0000 (UTC)
From: David Hildenbrand <david@redhat.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH RFC v1 03/12] KVM: x86/mmu: Prepare kvm_is_mmio_pfn() for
 PG_reserved changes
Date: Tue, 22 Oct 2019 19:12:30 +0200
Message-Id: <20191022171239.21487-4-david@redhat.com>
In-Reply-To: <20191022171239.21487-1-david@redhat.com>
References: <20191022171239.21487-1-david@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-MC-Unique: LQ7sslTiPc68PqWCypqf4g-1
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
V2Ugd2FudCB0bwpjaGFuZ2UgdGhhdC4KCktWTSBoYXMgdGhpcyB3ZWlyZCB1c2UgY2FzZSB0aGF0
IHlvdSBjYW4gbWFwIGFueXRoaW5nIGZyb20gL2Rldi9tZW0KaW50byB0aGUgZ3Vlc3QuIHBmbl92
YWxpZCgpIGlzIG5vdCBhIHJlbGlhYmxlIGNoZWNrIHdoZXRoZXIgdGhlIG1lbW1hcAp3YXMgaW5p
dGlhbGl6ZWQgYW5kIGNhbiBiZSB0b3VjaGVkLiBwZm5fdG9fb25saW5lX3BhZ2UoKSBtYWtlcyBz
dXJlCnRoYXQgd2UgaGF2ZSBhbiBpbml0aWFsaXplZCBtZW1tYXAgLSBob3dldmVyLCB0aGVyZSBp
cyBubyByZWxpYWJsZSBhbmQKZmFzdCBjaGVjayB0byBkZXRlY3QgbWVtbWFwcyB0aGF0IHdlcmUg
aW5pdGlhbGl6ZWQgYW5kIGFyZSBaT05FX0RFVklDRS4KCkxldCdzIHJld3JpdGUga3ZtX2lzX21t
aW9fcGZuKCkgc28gd2UgcmVhbGx5IG9ubHkgdG91Y2ggaW5pdGlhbGl6ZWQKbWVtbWFwcyB0aGF0
IGFyZSBndWFyYW50ZWVkIHRvIG5vdCBjb250YWluIGdhcmJhZ2UuIE1ha2Ugc3VyZSB0aGF0ClJB
TSB3aXRob3V0IGEgbWVtbWFwIGlzIHN0aWxsIG5vdCBkZXRlY3RlZCBhcyBNTUlPIGFuZCB0aGF0
IFpPTkVfREVWSUNFCnRoYXQgaXMgbm90IFVDL1VDLS9XQyBpcyBub3QgZGV0ZWN0ZWQgYXMgTU1J
Ty4KCkNjOiBQYW9sbyBCb256aW5pIDxwYm9uemluaUByZWRoYXQuY29tPgpDYzogIlJhZGltIEty
xI1tw6HFmSIgPHJrcmNtYXJAcmVkaGF0LmNvbT4KQ2M6IFNlYW4gQ2hyaXN0b3BoZXJzb24gPHNl
YW4uai5jaHJpc3RvcGhlcnNvbkBpbnRlbC5jb20+CkNjOiBWaXRhbHkgS3V6bmV0c292IDx2a3V6
bmV0c0ByZWRoYXQuY29tPgpDYzogV2FucGVuZyBMaSA8d2FucGVuZ2xpQHRlbmNlbnQuY29tPgpD
YzogSmltIE1hdHRzb24gPGptYXR0c29uQGdvb2dsZS5jb20+CkNjOiBKb2VyZyBSb2VkZWwgPGpv
cm9AOGJ5dGVzLm9yZz4KQ2M6IFRob21hcyBHbGVpeG5lciA8dGdseEBsaW51dHJvbml4LmRlPgpD
YzogSW5nbyBNb2xuYXIgPG1pbmdvQHJlZGhhdC5jb20+CkNjOiBCb3Jpc2xhdiBQZXRrb3YgPGJw
QGFsaWVuOC5kZT4KQ2M6ICJILiBQZXRlciBBbnZpbiIgPGhwYUB6eXRvci5jb20+CkNjOiBLYXJp
bUFsbGFoIEFobWVkIDxrYXJhaG1lZEBhbWF6b24uZGU+CkNjOiBNaWNoYWwgSG9ja28gPG1ob2Nr
b0BrZXJuZWwub3JnPgpDYzogRGFuIFdpbGxpYW1zIDxkYW4uai53aWxsaWFtc0BpbnRlbC5jb20+
ClNpZ25lZC1vZmYtYnk6IERhdmlkIEhpbGRlbmJyYW5kIDxkYXZpZEByZWRoYXQuY29tPgotLS0K
IGFyY2gveDg2L2t2bS9tbXUuYyB8IDMwICsrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLQog
MSBmaWxlIGNoYW5nZWQsIDE4IGluc2VydGlvbnMoKyksIDEyIGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2FyY2gveDg2L2t2bS9tbXUuYyBiL2FyY2gveDg2L2t2bS9tbXUuYwppbmRleCAyNGMy
M2M2NmIyMjYuLjc5NTg2OWZmZDRiYiAxMDA2NDQKLS0tIGEvYXJjaC94ODYva3ZtL21tdS5jCisr
KyBiL2FyY2gveDg2L2t2bS9tbXUuYwpAQCAtMjk2MiwyMCArMjk2MiwyNiBAQCBzdGF0aWMgYm9v
bCBtbXVfbmVlZF93cml0ZV9wcm90ZWN0KHN0cnVjdCBrdm1fdmNwdSAqdmNwdSwgZ2ZuX3QgZ2Zu
LAogCiBzdGF0aWMgYm9vbCBrdm1faXNfbW1pb19wZm4oa3ZtX3Bmbl90IHBmbikKIHsKKwlzdHJ1
Y3QgcGFnZSAqcGFnZSA9IHBmbl90b19vbmxpbmVfcGFnZShwZm4pOworCisJLyoKKwkgKiBPbmxp
bmUgcGFnZXMgY29uc2lzdCBvZiBwYWdlcyBtYW5hZ2VkIGJ5IHRoZSBidWRkeS4gRXNwZWNpYWxs
eSwKKwkgKiBaT05FX0RFVklDRSBwYWdlcyBhcmUgbmV2ZXIgb25saW5lLiBPbmxpbmUgcGFnZXMg
dGhhdCBhcmUgcmVzZXJ2ZWQKKwkgKiBpbmRpY2F0ZSB0aGUgemVybyBwYWdlIGFuZCBNTUlPIHBh
Z2VzLgorCSAqLworCWlmIChwYWdlKQorCQlyZXR1cm4gIWlzX3plcm9fcGZuKHBmbikgJiYgUGFn
ZVJlc2VydmVkKHBmbl90b19wYWdlKHBmbikpOworCisJLyoKKwkgKiBBbnl0aGluZyB3aXRoIGEg
dmFsaWQgbWVtbWFwIGNvdWxkIGJlIFpPTkVfREVWSUNFIC0gb3IgdGhlCisJICogbWVtbWFwIGNv
dWxkIGJlIHVuaW5pdGlhbGl6ZWQuIFRyZWF0IG9ubHkgVUMvVUMtL1dDIHBhZ2VzIGFzIE1NSU8u
CisJICovCiAJaWYgKHBmbl92YWxpZChwZm4pKQotCQlyZXR1cm4gIWlzX3plcm9fcGZuKHBmbikg
JiYgUGFnZVJlc2VydmVkKHBmbl90b19wYWdlKHBmbikpICYmCi0JCQkvKgotCQkJICogU29tZSBy
ZXNlcnZlZCBwYWdlcywgc3VjaCBhcyB0aG9zZSBmcm9tIE5WRElNTQotCQkJICogREFYIGRldmlj
ZXMsIGFyZSBub3QgZm9yIE1NSU8sIGFuZCBjYW4gYmUgbWFwcGVkCi0JCQkgKiB3aXRoIGNhY2hl
ZCBtZW1vcnkgdHlwZSBmb3IgYmV0dGVyIHBlcmZvcm1hbmNlLgotCQkJICogSG93ZXZlciwgdGhl
IGFib3ZlIGNoZWNrIG1pc2NvbmNlaXZlcyB0aG9zZSBwYWdlcwotCQkJICogYXMgTU1JTywgYW5k
IHJlc3VsdHMgaW4gS1ZNIG1hcHBpbmcgdGhlbSB3aXRoIFVDCi0JCQkgKiBtZW1vcnkgdHlwZSwg
d2hpY2ggd291bGQgaHVydCB0aGUgcGVyZm9ybWFuY2UuCi0JCQkgKiBUaGVyZWZvcmUsIHdlIGNo
ZWNrIHRoZSBob3N0IG1lbW9yeSB0eXBlIGluIGFkZGl0aW9uCi0JCQkgKiBhbmQgb25seSB0cmVh
dCBVQy9VQy0vV0MgcGFnZXMgYXMgTU1JTy4KLQkJCSAqLwotCQkJKCFwYXRfZW5hYmxlZCgpIHx8
IHBhdF9wZm5faW1tdW5lX3RvX3VjX210cnIocGZuKSk7CisJCXJldHVybiAhcGF0X2VuYWJsZWQo
KSB8fCBwYXRfcGZuX2ltbXVuZV90b191Y19tdHJyKHBmbik7CiAKKwkvKgorCSAqIEFueSBSQU0g
dGhhdCBoYXMgbm8gbWVtbWFwIChlLmcuLCBtYXBwZWQgdmlhIC9kZXYvbWVtKSBpcyBub3QgTU1J
Ty4KKwkgKi8KIAlyZXR1cm4gIWU4MjBfX21hcHBlZF9yYXdfYW55KHBmbl90b19ocGEocGZuKSwK
IAkJCQkgICAgIHBmbl90b19ocGEocGZuICsgMSkgLSAxLAogCQkJCSAgICAgRTgyMF9UWVBFX1JB
TSk7Ci0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0
dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2Ry
aXZlcmRldi1kZXZlbAo=

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A6FE7E0A42
	for <lists+driverdev-devel@lfdr.de>; Tue, 22 Oct 2019 19:14:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 421F487117;
	Tue, 22 Oct 2019 17:14:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id epuKDyEVOEKL; Tue, 22 Oct 2019 17:14:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1D3DD86C12;
	Tue, 22 Oct 2019 17:14:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 07B0A1BF866
 for <devel@linuxdriverproject.org>; Tue, 22 Oct 2019 17:14:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 01E088452A
 for <devel@linuxdriverproject.org>; Tue, 22 Oct 2019 17:14:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WxHp2HxWN+pb for <devel@linuxdriverproject.org>;
 Tue, 22 Oct 2019 17:14:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 450BD82419
 for <devel@driverdev.osuosl.org>; Tue, 22 Oct 2019 17:14:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1571764482;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=chgWTCW++wbVEBqtrkoZWwqs/HmhChTIKNep7qKM+do=;
 b=IaNcIAnqqAtl0TEvVJJK6d5jFPghdZuWT104GKF04pmxP25RHfvrGK5rauqLRFUXDtoiS2
 VC5LX7CldoS1P9JcZvJFlfKjE4PcCpLZBZDNXzHbDyAsnBMXeK7YorUhxAZu+WjZXZBRg0
 xZ2jfL7E9zZtyTUBmKHomaIqRj8ms6I=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-253-Yw0ZwIooOVS1tCl_tEVIdg-1; Tue, 22 Oct 2019 13:14:40 -0400
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4E4731800D6A;
 Tue, 22 Oct 2019 17:14:35 +0000 (UTC)
Received: from t460s.redhat.com (ovpn-116-248.ams2.redhat.com [10.36.116.248])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 20E7A5ED21;
 Tue, 22 Oct 2019 17:14:13 +0000 (UTC)
From: David Hildenbrand <david@redhat.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH RFC v1 04/12] KVM: Prepare kvm_is_reserved_pfn() for
 PG_reserved changes
Date: Tue, 22 Oct 2019 19:12:31 +0200
Message-Id: <20191022171239.21487-5-david@redhat.com>
In-Reply-To: <20191022171239.21487-1-david@redhat.com>
References: <20191022171239.21487-1-david@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-MC-Unique: Yw0ZwIooOVS1tCl_tEVIdg-1
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
dXJlCnRoYXQgd2UgaGF2ZSBhbiBpbml0aWFsaXplZCBtZW1tYXAuIE5vdGUgdGhhdCBaT05FX0RF
VklDRSBtZW1vcnkgaXMKbmV2ZXIgb25saW5lIChJT1csIG1hbmFnZWQgYnkgdGhlIGJ1ZGR5KS4K
ClN3aXRjaGluZyB0byBwZm5fdG9fb25saW5lX3BhZ2UoKSBrZWVwcyB0aGUgZXhpc3RpbmcgYmVo
YXZpb3IgZm9yClBGTnMgd2l0aG91dCBhIG1lbW1hcCBhbmQgZm9yIFpPTkVfREVWSUNFIG1lbW9y
eS4gVGhleSBhcmUgdHJlYXRlZCBhcwpyZXNlcnZlZCBhbmQgdGhlIHBhZ2UgaXMgbm90IHRvdWNo
ZWQgKGUuZy4sIHRvIHNldCBpdCBkaXJ0eSBvciBhY2Nlc3NlZCkuCgpDYzogUGFvbG8gQm9uemlu
aSA8cGJvbnppbmlAcmVkaGF0LmNvbT4KQ2M6ICJSYWRpbSBLcsSNbcOhxZkiIDxya3JjbWFyQHJl
ZGhhdC5jb20+CkNjOiBNaWNoYWwgSG9ja28gPG1ob2Nrb0BrZXJuZWwub3JnPgpDYzogRGFuIFdp
bGxpYW1zIDxkYW4uai53aWxsaWFtc0BpbnRlbC5jb20+CkNjOiBLYXJpbUFsbGFoIEFobWVkIDxr
YXJhaG1lZEBhbWF6b24uZGU+ClNpZ25lZC1vZmYtYnk6IERhdmlkIEhpbGRlbmJyYW5kIDxkYXZp
ZEByZWRoYXQuY29tPgotLS0KIHZpcnQva3ZtL2t2bV9tYWluLmMgfCAxMCArKysrKysrKy0tCiAx
IGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL3ZpcnQva3ZtL2t2bV9tYWluLmMgYi92aXJ0L2t2bS9rdm1fbWFpbi5jCmluZGV4IDY2YTk3
NzQ3MmExYy4uYjIzM2Q0MTI5MDE0IDEwMDY0NAotLS0gYS92aXJ0L2t2bS9rdm1fbWFpbi5jCisr
KyBiL3ZpcnQva3ZtL2t2bV9tYWluLmMKQEAgLTE1MSw5ICsxNTEsMTUgQEAgX193ZWFrIGludCBr
dm1fYXJjaF9tbXVfbm90aWZpZXJfaW52YWxpZGF0ZV9yYW5nZShzdHJ1Y3Qga3ZtICprdm0sCiAK
IGJvb2wga3ZtX2lzX3Jlc2VydmVkX3Bmbihrdm1fcGZuX3QgcGZuKQogewotCWlmIChwZm5fdmFs
aWQocGZuKSkKLQkJcmV0dXJuIFBhZ2VSZXNlcnZlZChwZm5fdG9fcGFnZShwZm4pKTsKKwlzdHJ1
Y3QgcGFnZSAqcGFnZSA9IHBmbl90b19vbmxpbmVfcGFnZShwZm4pOwogCisJLyoKKwkgKiBXZSB0
cmVhdCBhbnkgcGFnZXMgdGhhdCBhcmUgbm90IG9ubGluZSAobm90IG1hbmFnZWQgYnkgdGhlIGJ1
ZGR5KQorCSAqIGFzIHJlc2VydmVkIC0gdGhpcyBpbmNsdWRlcyBaT05FX0RFVklDRSBwYWdlcyBh
bmQgcGFnZXMgd2l0aG91dAorCSAqIGEgbWVtbWFwIChlLmcuLCBtYXBwZWQgdmlhIC9kZXYvbWVt
KS4KKwkgKi8KKwlpZiAocGFnZSkKKwkJcmV0dXJuIFBhZ2VSZXNlcnZlZChwYWdlKTsKIAlyZXR1
cm4gdHJ1ZTsKIH0KIAotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9q
ZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK

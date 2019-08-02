Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 977207EC42
	for <lists+driverdev-devel@lfdr.de>; Fri,  2 Aug 2019 07:50:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DE06523119;
	Fri,  2 Aug 2019 05:50:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FhNFBq6tkgYr; Fri,  2 Aug 2019 05:50:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9232722EC1;
	Fri,  2 Aug 2019 05:49:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BFD0E1BF407
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 05:49:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BC68587862
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 05:49:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KQLMfqIxiOsk for <devel@linuxdriverproject.org>;
 Fri,  2 Aug 2019 05:49:55 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from hqemgate14.nvidia.com (hqemgate14.nvidia.com [216.228.121.143])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1B7C887838
 for <devel@driverdev.osuosl.org>; Fri,  2 Aug 2019 05:49:55 +0000 (UTC)
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate14.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d43cf030000>; Thu, 01 Aug 2019 22:49:55 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Thu, 01 Aug 2019 22:49:54 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Thu, 01 Aug 2019 22:49:54 -0700
Received: from [10.2.171.217] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 2 Aug
 2019 05:49:53 +0000
Subject: Re: [PATCH 20/34] xen: convert put_page() to put_user_page*()
To: Juergen Gross <jgross@suse.com>, <john.hubbard@gmail.com>, Andrew Morton
 <akpm@linux-foundation.org>
References: <20190802022005.5117-1-jhubbard@nvidia.com>
 <20190802022005.5117-21-jhubbard@nvidia.com>
 <4471e9dc-a315-42c1-0c3c-55ba4eeeb106@suse.com>
X-Nvconfidentiality: public
From: John Hubbard <jhubbard@nvidia.com>
Message-ID: <d5140833-e9ee-beb5-ff0a-2d13a4fe819f@nvidia.com>
Date: Thu, 1 Aug 2019 22:48:15 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <4471e9dc-a315-42c1-0c3c-55ba4eeeb106@suse.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL104.nvidia.com (172.18.146.11) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1564724995; bh=OWvjPY2RJnSXiNaT1G8Eyahp8MUAsm98cTkExQmaDUY=;
 h=X-PGP-Universal:Subject:To:CC:References:X-Nvconfidentiality:From:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=g4+wbBM5eRNl11+v4FSAl8PrvEnWACjbjTJMUv4Ewv3g+h7PgD8hueH5dPeoF8sW5
 c20eFrVi38BUjWugKSUxA2GH7CM3A3OrXQMppFfNCHg/NTgln/g1EuAeIEfsheR70J
 47ajhTYRdBziMz0qVCHRjvKDjLN869T+rpjyKMqZQbhfLl80UOF5a6wxQMkyYeuu5C
 +SnQBQbOJUSigTfdZ2ZjmuC0GsGJhOMqTD72slI2rg2m1d7LKmLad2tBrS2UUN+9aI
 ixGXEdOyIH0YMQhEWsNGgp8xCyCNq0cOZ0EzzfGMekaZZJReXbXnLe2japHjsnQzSN
 gxuwPmkfTC8TQ==
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
Cc: linux-fbdev@vger.kernel.org, Jan Kara <jack@suse.cz>, kvm@vger.kernel.org,
 Boris Ostrovsky <boris.ostrovsky@oracle.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, Dave Chinner <david@fromorbit.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 sparclinux@vger.kernel.org, Dan Williams <dan.j.williams@intel.com>,
 devel@driverdev.osuosl.org, rds-devel@oss.oracle.com,
 linux-rdma@vger.kernel.org, x86@kernel.org, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 xen-devel@lists.xenproject.org, devel@lists.orangefs.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-block@vger.kernel.org,
 =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 linux-rpi-kernel@lists.infradead.org, ceph-devel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-nfs@vger.kernel.org,
 netdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 linux-xfs@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-fsdevel@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gOC8xLzE5IDk6MzYgUE0sIEp1ZXJnZW4gR3Jvc3Mgd3JvdGU6Cj4gT24gMDIuMDguMTkgMDQ6
MTksIGpvaG4uaHViYmFyZEBnbWFpbC5jb20gd3JvdGU6Cj4+IEZyb206IEpvaG4gSHViYmFyZCA8
amh1YmJhcmRAbnZpZGlhLmNvbT4KLi4uCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3hlbi9wcml2
Y21kLmMgYi9kcml2ZXJzL3hlbi9wcml2Y21kLmMKPj4gaW5kZXggMmY1Y2U3MjMwYTQzLi4yOWU0
NjFkYmVlMmQgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMveGVuL3ByaXZjbWQuYwo+PiArKysgYi9k
cml2ZXJzL3hlbi9wcml2Y21kLmMKPj4gQEAgLTYxMSwxNSArNjExLDEwIEBAIHN0YXRpYyBpbnQg
bG9ja19wYWdlcygKPj4gwqAgc3RhdGljIHZvaWQgdW5sb2NrX3BhZ2VzKHN0cnVjdCBwYWdlICpw
YWdlc1tdLCB1bnNpZ25lZCBpbnQgbnJfcGFnZXMpCj4+IMKgIHsKPj4gLcKgwqDCoCB1bnNpZ25l
ZCBpbnQgaTsKPj4gLQo+PiDCoMKgwqDCoMKgIGlmICghcGFnZXMpCj4+IMKgwqDCoMKgwqDCoMKg
wqDCoCByZXR1cm47Cj4+IC3CoMKgwqAgZm9yIChpID0gMDsgaSA8IG5yX3BhZ2VzOyBpKyspIHsK
Pj4gLcKgwqDCoMKgwqDCoMKgIGlmIChwYWdlc1tpXSkKPj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgcHV0X3BhZ2UocGFnZXNbaV0pOwo+PiAtwqDCoMKgIH0KPj4gK8KgwqDCoCBwdXRfdXNlcl9w
YWdlcyhwYWdlcywgbnJfcGFnZXMpOwo+IAo+IFlvdSBhcmUgbm90IGhhbmRsaW5nIHRoZSBjYXNl
IHdoZXJlIHBhZ2VzW2ldIGlzIE5VTEwgaGVyZS4gT3IgYW0gSQo+IG1pc3NpbmcgYSBwZW5kaW5n
IHBhdGNoIHRvIHB1dF91c2VyX3BhZ2VzKCkgaGVyZT8KPiAKCkhpIEp1ZXJnZW4sCgpZb3UgYXJl
IGNvcnJlY3QtLXRoaXMgbm8gbG9uZ2VyIGhhbmRsZXMgdGhlIGNhc2VzIHdoZXJlIHBhZ2VzW2ld
CmlzIE5VTEwuIEl0J3MgaW50ZW50aW9uYWwsIHRob3VnaCBwb3NzaWJseSB3cm9uZy4gOikKCkkg
c2VlIHRoYXQgSSBzaG91bGQgaGF2ZSBhZGRlZCBteSBzdGFuZGFyZCBibHVyYiB0byB0aGlzCmNv
bW1pdCBkZXNjcmlwdGlvbi4gSSBtaXNzZWQgdGhpcyBvbmUsIGJ1dCBzb21lIG9mIHRoZSBvdGhl
ciBwYXRjaGVzCmhhdmUgaXQuIEl0IG1ha2VzIHRoZSBmb2xsb3dpbmcsIHBvc3NpYmx5IGluY29y
cmVjdCBjbGFpbToKCiJUaGlzIGNoYW5nZXMgdGhlIHJlbGVhc2UgY29kZSBzbGlnaHRseSwgYmVj
YXVzZSBlYWNoIHBhZ2Ugc2xvdCBpbiB0aGUKcGFnZV9saXN0W10gYXJyYXkgaXMgbm8gbG9uZ2Vy
IGNoZWNrZWQgZm9yIE5VTEwuIEhvd2V2ZXIsIHRoYXQgY2hlY2sKd2FzIHdyb25nIGFueXdheSwg
YmVjYXVzZSB0aGUgZ2V0X3VzZXJfcGFnZXMoKSBwYXR0ZXJuIG9mIHVzYWdlIGhlcmUKbmV2ZXIg
YWxsb3dlZCBmb3IgTlVMTCBlbnRyaWVzIHdpdGhpbiBhIHJhbmdlIG9mIHBpbm5lZCBwYWdlcy4i
CgpUaGUgd2F5IEkndmUgc2VlbiB0aGVzZSBwYWdlIGFycmF5cyB1c2VkIHdpdGggZ2V0X3VzZXJf
cGFnZXMoKSwKdGhpbmdzIGFyZSBlaXRoZXIgZG9uZSBzaW5nbGUgcGFnZSwgb3Igd2l0aCBhIGNv
bnRpZ3VvdXMgcmFuZ2UuIFNvCnVubGVzcyBJJ20gbWlzc2luZyBhIGNhc2Ugd2hlcmUgc29tZW9u
ZSBpcyBlaXRoZXIKCmEpIHJlbGVhc2luZyBpbmRpdmlkdWFsIHBhZ2VzIHdpdGhpbiBhIHJhbmdl
IChhbmQgdGh1cyBsaWtlbHkgbWVzc2luZwp1cCB0aGVpciBjb3VudCBvZiBwYWdlcyB0aGV5IGhh
dmUpLCBvcgoKYikgYWxsb2NhdGluZyB0d28gZ3VwIHJhbmdlcyB3aXRoaW4gdGhlIHNhbWUgcGFn
ZXNbXSBhcnJheSwgd2l0aCBhCmdhcCBiZXR3ZWVuIHRoZSBhbGxvY2F0aW9ucywKCi4uLnRoZW4g
aXQgc2hvdWxkIGJlIGNvcnJlY3QuIElmIHNvLCB0aGVuIEknbGwgYWRkIHRoZSBhYm92ZSBibHVy
Ygp0byB0aGlzIHBhdGNoJ3MgY29tbWl0IGRlc2NyaXB0aW9uLgoKSWYgdGhhdCdzIG5vdCB0aGUg
Y2FzZSAoYm90aCBoZXJlLCBhbmQgaW4gMyBvciA0IG90aGVyIHBhdGNoZXMgaW4gdGhpcwpzZXJp
ZXMsIHRoZW4gYXMgeW91IHNhaWQsIEkgc2hvdWxkIGFkZCBOVUxMIGNoZWNrcyB0byBwdXRfdXNl
cl9wYWdlcygpCmFuZCBwdXRfdXNlcl9wYWdlc19kaXJ0eV9sb2NrKCkuCgoKdGhhbmtzLAotLSAK
Sm9obiBIdWJiYXJkCk5WSURJQQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9y
ZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5m
by9kcml2ZXJkZXYtZGV2ZWwK

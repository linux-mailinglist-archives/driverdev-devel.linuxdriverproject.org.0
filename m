Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFE238082F
	for <lists+driverdev-devel@lfdr.de>; Sat,  3 Aug 2019 22:03:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 770B6880CA;
	Sat,  3 Aug 2019 20:03:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lFMDmGjNUTx8; Sat,  3 Aug 2019 20:03:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 24AFA87EA9;
	Sat,  3 Aug 2019 20:03:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5B1A71BF31B
 for <devel@linuxdriverproject.org>; Sat,  3 Aug 2019 20:03:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 574AD86FA6
 for <devel@linuxdriverproject.org>; Sat,  3 Aug 2019 20:03:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xhZszouJY2jN for <devel@linuxdriverproject.org>;
 Sat,  3 Aug 2019 20:03:06 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from hqemgate16.nvidia.com (hqemgate16.nvidia.com [216.228.121.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9F32986F8A
 for <devel@driverdev.osuosl.org>; Sat,  3 Aug 2019 20:03:06 +0000 (UTC)
Received: from hqpgpgate102.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate16.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d45e87a0000>; Sat, 03 Aug 2019 13:03:06 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate102.nvidia.com (PGP Universal service);
 Sat, 03 Aug 2019 13:03:06 -0700
X-PGP-Universal: processed;
 by hqpgpgate102.nvidia.com on Sat, 03 Aug 2019 13:03:06 -0700
Received: from [10.110.48.28] (172.20.13.39) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Sat, 3 Aug
 2019 20:03:05 +0000
Subject: Re: [PATCH 06/34] drm/i915: convert put_page() to put_user_page*()
From: John Hubbard <jhubbard@nvidia.com>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Andrew Morton
 <akpm@linux-foundation.org>, <john.hubbard@gmail.com>
References: <20190802022005.5117-1-jhubbard@nvidia.com>
 <20190802022005.5117-7-jhubbard@nvidia.com>
 <156473756254.19842.12384378926183716632@jlahtine-desk.ger.corp.intel.com>
 <7d9a9c57-4322-270b-b636-7214019f87e9@nvidia.com>
X-Nvconfidentiality: public
Message-ID: <22c309f6-a7ca-2624-79c3-b16a1487f488@nvidia.com>
Date: Sat, 3 Aug 2019 13:03:05 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <7d9a9c57-4322-270b-b636-7214019f87e9@nvidia.com>
X-Originating-IP: [172.20.13.39]
X-ClientProxiedBy: HQMAIL107.nvidia.com (172.20.187.13) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1564862587; bh=ilU/8cKxAxLoWjJW9QtQ++HPyf9Kp7C47ReaMR8aBDk=;
 h=X-PGP-Universal:Subject:From:To:CC:References:X-Nvconfidentiality:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=I2YSIJHtEvh6s6ys5+qZOy9oK09e18lfnMQt77fXZCyrgzqntxCUGfZ7oWikmHJt5
 4V1+y4MySAejsYy1JLbf4x7KQ0hiidb6jg5xsakkPPG/MxjywoS180jIN6uhV11y/O
 011sP6dgxSCe7CPHZfVmc5h9v3h4EFz6CzWGnO3zjeLQA+xNf7n8Aq4VIo5dqejc1s
 ogxZqWO3QmjUKVwNVzjjVrVg9ptoPI8+f8bAuuTtyZ6ixyHn7fxeF7f3r5zkr6u4id
 LKe10E8R/74E4Fa+DG9GwiVmNsBu++raNIZCy4+8RyCJBTlO14Pl8lc8yCIpDgUHCO
 oxDfeJ3aA6pnw==
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
 David Airlie <airlied@linux.ie>, Dave Hansen <dave.hansen@linux.intel.com>,
 Dave Chinner <david@fromorbit.com>, dri-devel@lists.freedesktop.org,
 linux-mm@kvack.org, sparclinux@vger.kernel.org, ceph-devel@vger.kernel.org,
 devel@driverdev.osuosl.org, rds-devel@oss.oracle.com,
 linux-rdma@vger.kernel.org, x86@kernel.org, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 xen-devel@lists.xenproject.org, devel@lists.orangefs.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 Jani Nikula <jani.nikula@linux.intel.com>, linux-block@vger.kernel.org,
 =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 linux-rpi-kernel@lists.infradead.org, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org,
 linux-nfs@vger.kernel.org, netdev@vger.kernel.org,
 LKML <linux-kernel@vger.kernel.org>, linux-xfs@vger.kernel.org,
 linux-crypto@vger.kernel.org, linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gOC8yLzE5IDExOjQ4IEFNLCBKb2huIEh1YmJhcmQgd3JvdGU6Cj4gT24gOC8yLzE5IDI6MTkg
QU0sIEpvb25hcyBMYWh0aW5lbiB3cm90ZToKPj4gUXVvdGluZyBqb2huLmh1YmJhcmRAZ21haWwu
Y29tICgyMDE5LTA4LTAyIDA1OjE5OjM3KQo+Pj4gRnJvbTogSm9obiBIdWJiYXJkIDxqaHViYmFy
ZEBudmlkaWEuY29tPgouLi4KPiBJbiBvcmRlciB0byBkZWFsIHdpdGggdGhlIG1lcmdlIHByb2Js
ZW0sIEknbGwgZHJvcCB0aGlzIHBhdGNoIGZyb20gbXkgc2VyaWVzLAo+IGFuZCBJJ2QgcmVjb21t
ZW5kIHRoYXQgdGhlIGRybS1pbnRlbC1uZXh0IHRha2UgdGhlIGZvbGxvd2luZyBhcHByb2FjaDoK
CkFjdHVhbGx5LCBJIGp1c3QgcHVsbGVkIHRoZSBsYXRlc3QgbGludXguZ2l0LCBhbmQgdGhlcmUg
YXJlIGEgZmV3IGNoYW5nZXM6Cgo+IAo+IDEpIEZvciBub3csIHMvcHV0X3BhZ2UvcHV0X3VzZXJf
cGFnZS8gaW4gaTkxNV9nZW1fdXNlcnB0cl9wdXRfcGFnZXMoKSwKPiBhbmQgZml4IHVwIHRoZSBz
ZXRfcGFnZV9kaXJ0eSgpIC0tPiBzZXRfcGFnZV9kaXJ0eV9sb2NrKCkgaXNzdWUsIGxpa2UgdGhp
cwo+IChiYXNlZCBhZ2FpbnN0IGxpbnV4LmdpdCk6Cj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV91c2VycHRyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fdXNlcnB0ci5jCj4gaW5kZXggNTI4YjYxNjc4MzM0Li45NDcyMWNjMDA5
M2IgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3VzZXJw
dHIuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV91c2VycHRyLmMK
PiBAQCAtNjY0LDEwICs2NjQsMTAgQEAgaTkxNV9nZW1fdXNlcnB0cl9wdXRfcGFnZXMoc3RydWN0
IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKPiAKPiDCoMKgwqDCoMKgwqDCoCBmb3JfZWFjaF9z
Z3RfcGFnZShwYWdlLCBzZ3RfaXRlciwgcGFnZXMpIHsKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgaWYgKG9iai0+bW0uZGlydHkpCj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIHNldF9wYWdlX2RpcnR5KHBhZ2UpOwo+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzZXRfcGFnZV9kaXJ0eV9sb2NrKHBhZ2Up
OwoKSSBzZWUgeW91J3ZlIGFscmVhZHkgYXBwbGllZCB0aGlzIGZpeCB0byB5b3VyIHRyZWUsIGlu
IGxpbnV4LmdpdCBhbHJlYWR5LgoKPiAKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
bWFya19wYWdlX2FjY2Vzc2VkKHBhZ2UpOwo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHB1dF9wYWdlKHBhZ2UpOwo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHB1dF91c2Vy
X3BhZ2UocGFnZSk7CgpCdXQgdGhpcyBjb252ZXJzaW9uIHN0aWxsIG5lZWRzIGRvaW5nLiBTbyBJ
J2xsIHJlcG9zdCBhIHBhdGNoIHRoYXQgb25seSBkb2VzIAp0aGlzIChwbHVzIHRoZSBvdGhlciBj
YWxsIHNpdGVzKS4gCgpUaGF0IGNhbiBnbyBpbiB2aWEgZWl0aGVyIHlvdXIgdHJlZSwgb3IgQW5k
cmV3J3MgLW1tIHRyZWUsIHdpdGhvdXQgZ2VuZXJhdGluZwphbnkgY29uZmxpY3RzLgoKdGhhbmtz
LAotLSAKSm9obiBIdWJiYXJkCk5WSURJQQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9q
ZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK

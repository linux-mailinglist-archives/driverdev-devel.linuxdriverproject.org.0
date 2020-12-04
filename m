Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D90A2CEAB4
	for <lists+driverdev-devel@lfdr.de>; Fri,  4 Dec 2020 10:19:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 327A42E2BB;
	Fri,  4 Dec 2020 09:19:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YH4zp5UrcKSU; Fri,  4 Dec 2020 09:19:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1D9ED2E2D7;
	Fri,  4 Dec 2020 09:19:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 47F881BF3A3
 for <devel@linuxdriverproject.org>; Fri,  4 Dec 2020 09:19:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 442F22E1DE
 for <devel@linuxdriverproject.org>; Fri,  4 Dec 2020 09:19:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OHO3qlOFonX6 for <devel@linuxdriverproject.org>;
 Fri,  4 Dec 2020 09:19:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from szxga04-in.huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by silver.osuosl.org (Postfix) with ESMTPS id 29B4020131
 for <devel@driverdev.osuosl.org>; Fri,  4 Dec 2020 09:19:30 +0000 (UTC)
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.58])
 by szxga04-in.huawei.com (SkyGuard) with ESMTP id 4CnRwN0GQKz15XR8;
 Fri,  4 Dec 2020 17:19:00 +0800 (CST)
Received: from [10.174.179.81] (10.174.179.81) by
 DGGEMS414-HUB.china.huawei.com (10.3.19.214) with Microsoft SMTP Server id
 14.3.487.0; Fri, 4 Dec 2020 17:19:25 +0800
Subject: Re: [PATCH] staging: greybus: audio: Add missing unlock in
 gbaudio_dapm_free_controls()
To: Johan Hovold <johan@kernel.org>, Vaibhav Agarwal <vaibhav.sr@gmail.com>
References: <20201204021350.28182-1-wanghai38@huawei.com>
 <X8n2CL58pQ/077rQ@localhost>
From: "wanghai (M)" <wanghai38@huawei.com>
Message-ID: <d95dac95-09d0-66bb-4f3b-5ffa154be174@huawei.com>
Date: Fri, 4 Dec 2020 17:19:25 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <X8n2CL58pQ/077rQ@localhost>
X-Originating-IP: [10.174.179.81]
X-CFilter-Loop: Reflected
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
Cc: devel@driverdev.osuosl.org, elder@kernel.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, aibhav.sr@gmail.com,
 greybus-dev@lists.linaro.org, dan.carpenter@oracle.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="gbk"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

CtTaIDIwMjAvMTIvNCAxNjo0MCwgSm9oYW4gSG92b2xkINC0tcA6Cj4gT24gRnJpLCBEZWMgMDQs
IDIwMjAgYXQgMTA6MTM6NTBBTSArMDgwMCwgV2FuZyBIYWkgd3JvdGU6Cj4+IEFkZCB0aGUgbWlz
c2luZyB1bmxvY2sgYmVmb3JlIHJldHVybiBmcm9tIGZ1bmN0aW9uCj4+IGdiYXVkaW9fZGFwbV9m
cmVlX2NvbnRyb2xzKCkgaW4gdGhlIGVycm9yIGhhbmRsaW5nIGNhc2UuCj4+Cj4+IEZpeGVzOiA1
MTBlMzQwZWZlMGMgKCJzdGFnaW5nOiBncmV5YnVzOiBhdWRpbzogQWRkIGhlbHBlciBBUElzIGZv
ciBkeW5hbWljIGF1ZGlvIG1vZHVsZSIpCj4+IFJlcG9ydGVkLWJ5OiBIdWxrIFJvYm90IDxodWxr
Y2lAaHVhd2VpLmNvbT4KPj4gU2lnbmVkLW9mZi1ieTogV2FuZyBIYWkgPHdhbmdoYWkzOEBodWF3
ZWkuY29tPgo+PiAtLS0KPj4gICBkcml2ZXJzL3N0YWdpbmcvZ3JleWJ1cy9hdWRpb19oZWxwZXIu
YyB8IDEgKwo+PiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+Pgo+PiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9zdGFnaW5nL2dyZXlidXMvYXVkaW9faGVscGVyLmMgYi9kcml2ZXJzL3N0
YWdpbmcvZ3JleWJ1cy9hdWRpb19oZWxwZXIuYwo+PiBpbmRleCAyMzc1MzFiYTYwZjMuLjI5MzY3
NWRiZWExMCAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9zdGFnaW5nL2dyZXlidXMvYXVkaW9faGVs
cGVyLmMKPj4gKysrIGIvZHJpdmVycy9zdGFnaW5nL2dyZXlidXMvYXVkaW9faGVscGVyLmMKPj4g
QEAgLTEzNSw2ICsxMzUsNyBAQCBpbnQgZ2JhdWRpb19kYXBtX2ZyZWVfY29udHJvbHMoc3RydWN0
IHNuZF9zb2NfZGFwbV9jb250ZXh0ICpkYXBtLAo+PiAgIAkJaWYgKCF3KSB7Cj4+ICAgCQkJZGV2
X2VycihkYXBtLT5kZXYsICIlczogd2lkZ2V0IG5vdCBmb3VuZFxuIiwKPj4gICAJCQkJd2lkZ2V0
LT5uYW1lKTsKPj4gKwkJCW11dGV4X3VubG9jaygmZGFwbS0+Y2FyZC0+ZGFwbV9tdXRleCk7Cj4+
ICAgCQkJcmV0dXJuIC1FSU5WQUw7Cj4+ICAgCQl9Cj4+ICAgCQl3aWRnZXQrKzsKPiBUaGlzIHN1
cGVyZmljaWFsbHkgbG9va3MgY29ycmVjdCwgYnV0IHRoZXJlIHNlZW1zIHRvIGJlIGFub3RoZXIg
YnVnIGluCj4gdGhpcyBmdW5jdGlvbi4gSXQgY2FuIGJlIHVzZWQgZnJlZSBhbiBhcnJheSBvZiB3
aWRnZXRzLCBidXQgaWYgb25lIG9mCj4gdGhlbSBpc24ndCBmb3VuZCB3ZSBqdXN0IGxlYWsgdGhl
IHJlc3QuIFBlcmhhcHMgdGhhdCByZXR1cm4gc2hvdWxkCj4gcmF0aGVyIGJlICJ3aWRnZXQrKzsg
Y29udGludWU7Ii4KPgpJIHRoaW5rIHRoaXMgaXMgYSBnb29kIGlkZWEsIHNob3VsZCBJIHNlbmQg
YSB2MiBwYXRjaD8KPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRw
Oi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2
ZXJkZXYtZGV2ZWwK

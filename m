Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A0ADF3EFF
	for <lists+driverdev-devel@lfdr.de>; Fri,  8 Nov 2019 05:46:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 53D81204BF;
	Fri,  8 Nov 2019 04:46:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DnY5FGr5mopF; Fri,  8 Nov 2019 04:46:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 295192047D;
	Fri,  8 Nov 2019 04:46:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 40A961BF420
 for <devel@linuxdriverproject.org>; Fri,  8 Nov 2019 04:46:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 384882046D
 for <devel@linuxdriverproject.org>; Fri,  8 Nov 2019 04:46:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AjWF1zBPHWJY for <devel@linuxdriverproject.org>;
 Fri,  8 Nov 2019 04:46:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 69EED2046B
 for <devel@driverdev.osuosl.org>; Fri,  8 Nov 2019 04:46:13 +0000 (UTC)
Received: from [10.44.0.22] (unknown [103.48.210.53])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CC92721848;
 Fri,  8 Nov 2019 04:46:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573188373;
 bh=gH4YV/wqrobeQnaVD22aDnltH06bEHnjtZENRGZ48q4=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=xRn6UE1fCLscoGa0SSMS43OBs/hmPEGgj8EzH0pTY9x2nudK/0/KLYUDldyDZFBiW
 eefoao4dK85ZkzfVnGne6x8pop9UgAK0gyCag4BvbaJ1GqmvgyozJHyhg8t+8IWe7v
 Jqu6973Y1RC3ZxksXaZzEc2ZHihhNBSO+oKuM9iw=
Subject: Re: [PATCH] mtd: rawnand: driver for Mediatek MT7621 SoC NAND flash
 controller
To: =?UTF-8?Q?Ren=c3=a9_van_Dorst?= <opensource@vdorst.com>
References: <20191107092053.Horde.i3MVcW9RqZDOQBMADZX9fuc@www.vdorst.com>
From: Greg Ungerer <gerg@kernel.org>
Message-ID: <b7e61be8-bd72-a4ef-6fb7-1047c7874342@kernel.org>
Date: Fri, 8 Nov 2019 14:46:07 +1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191107092053.Horde.i3MVcW9RqZDOQBMADZX9fuc@www.vdorst.com>
Content-Language: en-US
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
Cc: devel@driverdev.osuosl.org, Weijie Gao <hackpascal@gmail.com>,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 DENG Qingfang <dengqf6@mail2.sysu.edu.cn>, linux-mediatek@lists.infradead.org,
 neil@brown.name, linux-mtd@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Ck9uIDcvMTEvMTkgNzoyMCBwbSwgUmVuw6kgdmFuIERvcnN0IHdyb3RlOgo+IFF1b3RpbmcgZ2Vy
Z0BrZXJuZWwub3JnOgo+IAo+PiBGcm9tOiBHcmVnIFVuZ2VyZXIgPGdlcmdAa2VybmVsLm9yZz4K
Pj4KPj4gQWRkIGEgZHJpdmVyIHRvIHN1cHBvcnQgdGhlIE5BTkQgZmxhc2ggY29udHJvbGxlciBv
ZiB0aGUgTWVkaWFUZWsgTVQ3NjIxCj4+IFN5c3RlbS1vbi1DaGlwIGRldmljZS4gKFRoaXMgb25l
IGlzIHRoZSBNSVBTIGJhc2VkIHBhcnRzIGZyb20gTWVkaWF0ZWspLgo+Pgo+PiBUaGlzIGNvZGUg
aXMgYSByZS13b3JraW5nIG9mIHRoZSBlYXJsaWVyIHBhdGNoZXMgZm9yIHRoaXMgaGFyZHdhcmUg
dGhhdAo+PiBoYXZlIGJlZW4gZmxvYXRpbmcgYXJvdW5kIHRoZSBpbnRlcm5ldCBmb3IgeWVhcnM6
Cj4+Cj4+IGh0dHBzOi8vZ2l0aHViLmNvbS9SZWNsYWltWW91clByaXZhY3kvY2xvYWsvYmxvYi9t
YXN0ZXIvdGFyZ2V0L2xpbnV4L3JhbWlwcy9wYXRjaGVzLTMuMTgvMDA0NS1tdGQtYWRkLW10NzYy
MS1uYW5kLXN1cHBvcnQucGF0Y2gKPj4KPj4gVGhpcyBpcyBhIG11Y2ggY2xlYW5lZCB1cCB2ZXJz
aW9uLCBwdXQgaW4gc3RhZ2luZyB0byBzdGFydCB3aXRoLgo+PiBJdCBkb2VzIHN0aWxsIGhhdmUg
c29tZSBwcm9ibGVtcywgbWFpbmx5IHRoYXQgaXQgc3RpbGwgdXNlcyBhIGxvdCBvZiB0aGUKPj4g
bXRkIHJhdyBuYW5kIGxlZ2FjeSBzdXBwb3J0Lgo+Pgo+PiBUaGUgZHJpdmVyIG5vdCBvbmx5IGNv
bXBpbGVzLCBidXQgaXQgd29ya3Mgd2VsbCBvbiB0aGUgc21hbGwgcmFuZ2Ugb2YKPj4gaGFyZHdh
cmUgcGxhdGZvcm1zIHRoYXQgaXQgaGFzIGJlZW4gdXNlZCBvbiBzbyBmYXIuIEkgaGF2ZSBiZWVu
IHVzaW5nCj4+IGZvciBxdWl0ZSBhIHdoaWxlIG5vdywgY2xlYW5pbmcgdXAgYXMgSSBnZXQgdGlt
ZS4KPj4KPj4gU28uLi4gSSBhbSBsb29raW5nIGZvciBjb21tZW50cyBvbiB0aGUgYmVzdCBhcHBy
b2FjaCBmb3J3YXJkIHdpdGggdGhpcy4KPj4gQXQgbGVhc3QgaW4gc3RhZ2luZyBpdCBjYW4gZ2V0
IHNvbWUgbW9yZSBleWViYWxscyBnb2luZyBvdmVyIGl0Lgo+Pgo+PiBUaGVyZSBpcyBhIG1lZGlh
dGVrIG5hbmQgZHJpdmVyIGFscmVhZHksIG10a19uYW5kLmMsIGZvciB0aGVpciBBUk0gYmFzZWQK
Pj4gU3lzdGVtLW9uLUNoaXAgZGV2aWNlcy4gVGhhdCBoYXJkd2FyZSBtb2R1bGUgbG9va3MgdG8g
aGF2ZSBzb21lIGhhcmR3YXJlCj4+IHNpbWlsYXJpdGllcyB3aXRoIHRoaXMgb25lLiBBdCB0aGlz
IHBvaW50IEkgZG9uJ3Qga25vdyBpZiB0aGF0IGNhbiBiZQo+PiB1c2VkIG9uIHRoZSA3NjIxIGJh
c2VkIGRldmljZXMuIChJIHRyaWVkIGEgcXVpY2sgYW5kIGRpcnR5IHNldHVwIGFuZCBoYWQKPj4g
bm8gc3VjY2VzcyB1c2luZyBpdCBvbiB0aGUgNzYyMSkuCj4+Cj4+IFRob3VnaHRzPwo+IAo+ICtD
QyBERU5HIFFpbmdmYW5nLCBDaHVhbmhvbmcgR3VvLCBXZWlqaWUgR2FvIHRvIHRoZSBsaXN0Lgo+
IAo+IEhpIEdyZWcsCj4gCj4gVGhhbmtzIGZvciBwb3N0aW5nIHRoaXMgZHJpdmVyLgo+IAo+IEJ1
dCBJIHdvdWxkIGxpa2UgdG8gbWVudGlvbiB0aGF0IHRoZSBvcGVud3J0IGNvbW11bml0eSBpcyBj
dXJyZW50bHkgd29ya2luZyBvbiBhCj4gbmV3IHZlcnNpb24gd2hpY2ggaXMgYmFzZWQgYSBuZXdl
ciB2ZXJzaW9uIG9mIHRoZSBNZWRpYVRlayB2ZW5kb3IgZHJpdmVyLgo+IFRoYXQgdmVyc2lvbiBp
cyBjdXJyZW50bHkgdGFyZ2V0ZWQgZm9yIHRoZSBvcGVud3J0IDQuMTkga2VybmVsLgo+IFNlZSBm
dWxsIHB1bGwgcmVxdWVzdCBbMV0gYW5kIE5BTkQgZHJpdmVyIHBhdGNoIFsyXQo+IAo+IEl0IHdv
dWxkIGJlIGEgc2hhbWUgaWYgZHVwbGljYXRlIHdvcmsgaGFzIGJlZW4gZG9uZS4KClRoYW5rcyBm
b3IgcG9pbnRpbmcgdGhhdCBvdXQuIEkgaGF2ZSBubyBwYXJ0aWN1bGFyIGF0dGFjaG1lbnQgdG8g
dGhlCnBhdGNoIGNvZGUgSSBzZW50IChJIGRpZG4ndCB3cml0ZSBpdCkuIFJlYWxseSBqdXN0IHdh
bnQgdG8gc2VlIGEgZHJpdmVyCmluIG1haW5saW5lLgoKSSBhbSBnb2luZyB0byBzcGluIGEgdjIg
b2YgaXQsIGxldHMgc2VlIGhvdyB0byB0aGUgMiBkcml2ZXJzIHN0YWNrIHVwCmFnYWluc3QgZWFj
aCBvdGhlci4KClJlZ2FyZHMKR3JlZwoKCgo+IFsxXTogaHR0cHM6Ly9naXRodWIuY29tL29wZW53
cnQvb3BlbndydC9wdWxsLzIzODUKPiBbMl06IGh0dHBzOi8vZ2l0aHViLmNvbS9vcGVud3J0L29w
ZW53cnQvcHVsbC8yMzg1L2NvbW1pdHMvYjI1NjljMGE1OTQzZmU4Zjk0YmEwN2M5NTQwZWNkMTQw
MDZkNzI5YQo+IAo+IDxzbmlwPgo+IAo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9q
ZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK

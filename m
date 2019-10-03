Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C197C97EB
	for <lists+driverdev-devel@lfdr.de>; Thu,  3 Oct 2019 07:21:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7E36088098;
	Thu,  3 Oct 2019 05:21:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iPU9U1zNAABi; Thu,  3 Oct 2019 05:21:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9FE5A88035;
	Thu,  3 Oct 2019 05:21:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 23B4D1BF94B
 for <devel@linuxdriverproject.org>; Thu,  3 Oct 2019 05:21:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1B0CA87E65
 for <devel@linuxdriverproject.org>; Thu,  3 Oct 2019 05:21:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eQ4WdkNXss-m for <devel@linuxdriverproject.org>;
 Thu,  3 Oct 2019 05:21:33 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.siol.net (mailoutvs38.siol.net [185.57.226.229])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1D6E581B17
 for <devel@driverdev.osuosl.org>; Thu,  3 Oct 2019 05:21:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id B0B825212B8;
 Thu,  3 Oct 2019 07:21:30 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta10.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta10.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id fiKaRxyZbaY9; Thu,  3 Oct 2019 07:21:30 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 57E7852128A;
 Thu,  3 Oct 2019 07:21:30 +0200 (CEST)
Received: from jernej-laptop.localnet (cpe-86-58-59-25.static.triera.net
 [86.58.59.25]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id EA2655212B8;
 Thu,  3 Oct 2019 07:21:29 +0200 (CEST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Subject: Re: [PATCH v2 0/3] media: cedrus: improvements
Date: Thu, 03 Oct 2019 07:21:29 +0200
Message-ID: <8173759.PpYHodOKdy@jernej-laptop>
In-Reply-To: <20191002222307.GD24151@aptenodytes>
References: <20191002193553.1633467-1-jernej.skrabec@siol.net>
 <20191002222307.GD24151@aptenodytes>
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, mripard@kernel.org, wens@csie.org,
 hverkuil-cisco@xs4all.nl, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RG5lIMSNZXRydGVrLCAwMy4gb2t0b2JlciAyMDE5IG9iIDAwOjIzOjA3IENFU1QgamUgUGF1bCBL
b2NpYWxrb3dza2kgCm5hcGlzYWwoYSk6Cj4gSGksCj4gCj4gT24gV2VkIDAyIE9jdCAxOSwgMjE6
MzUsIEplcm5laiBTa3JhYmVjIHdyb3RlOgo+ID4gVGhpcyBpcyBjb250aW51YXRpb24gb2YgaHR0
cHM6Ly9sa21sLm9yZy9sa21sLzIwMTkvNS8zMC8xNDU5IHdpdGggc2V2ZXJhbAo+ID4gcGF0Y2hl
cyByZW1vdmVkICgyIG1lcmdlZCwgb3RoZXJzIG5lZWRzIHJlZGVzaWduKSBhbmQgb25lIGFkZGVk
Lgo+IAo+IFRoYW5rcyBmb3IgdGhlIGNvbnRpbnVlZCBlZmZvcnQgb24gdGhpcywgdGhlc2UgZml4
ZXMgYXJlIGdyZWF0bHkgYXBwcmVjaWF0ZWQKPiAoYW5kIG1vcmUgZ2VuZXJhbGx5LCBhbGwgdGhl
IHdvcmsgeW91IGFyZSBwdXR0aW5nIGludG8gY2VkcnVzKSEKPiAKPiBBbHRob3VnaCBJJ3ZlIGJl
ZW4gb3V0IG9mIHRoZSBsb29wIG9uIGNlZHJ1cywgaXQgaXMgdmVyeSBuaWNlIHRvIHNlZQo+IGRl
dmVsb3BtZW50IGhhcHBlbmluZy4gS2VlcCB1cCB0aGUgZ29vZCB3b3JrIQoKVGhhbmtzISBUaG9z
ZSBmaXhlcyBhcmUganVzdCBjbGVhbmVkIHVwIHZlcnNpb24gb2YgcGF0Y2hlcyBJJ20gdXNpbmcg
aW4gCkxpYnJlRUxFQyBmb3Igc29tZSB0aW1lIG5vdy4gSSBoYXRlIG1haW50YWluaW5nIG91dC1v
Zi10cmVlIHBhdGNoZXMgb3ZlciBhIApsb25nIHBlcmlvZCwgc28gcHVzaGluZyB0aGVtIHVwc3Ry
ZWFtIGlzIGJlbmVmaWNpYWwgZm9yIGFsbCA6KQoKSSdsbCBzZW5kIG1vcmUgaW1wcm92ZW1lbnRz
IG9uY2UgeW91ciBIRVZDIHBhdGNoZXMgYXJlIG1lcmdlZC4KCkJlc3QgcmVnYXJkcywKSmVybmVq
Cgo+IAo+IENoZWVycywKPiAKPiBQYXVsCj4gCj4gPiBQYXRjaCAxIGZpeGVzIGgyNjQgcGxheWJh
Y2sgaXNzdWUgd2hpY2ggaGFwcGVucyBpbiByYXJlIGNhc2VzLgo+ID4gCj4gPiBQYXRjaCAyIHNl
dHMgUFBTIGRlZmF1bHQgcmVmZXJlbmNlIGluZGV4IGNvdW50IGluIHJlZ2lzdGVyIGZyb20gUFBT
Cj4gPiBjb250cm9sLiBDdXJyZW50bHkgaXQgd2FzIHNldCB0byB2YWx1ZXMgZnJvbSBzbGljZSBj
b250cm9sLgo+ID4gCj4gPiBQYXRjaCAzIHJlcGxhY2VzIGRpcmVjdCBhY2Nlc3NlcyB0byBjYXB0
dXJlIHF1ZXVlIGZyb20gbTJtIGNvbnRleCB3aXRoCj4gPiBoZWxwZXJzIHdoaWNoIHdhcyBkZXNp
Z25lZCBleGFjdGx5IGZvciB0aGF0LiBJdCdzIGFsc28gc2FmZXIgc2luY2UKPiA+IGhlbHBlcnMg
ZG8gc29tZSBjaGVja3MuCj4gPiAKPiA+IEJlc3QgcmVnYXJkcywKPiA+IEplcm5lago+ID4gCj4g
PiBKZXJuZWogU2tyYWJlYyAoMyk6Cj4gPiAgIG1lZGlhOiBjZWRydXM6IEZpeCBkZWNvZGluZyBm
b3Igc29tZSBIMjY0IHZpZGVvcwo+ID4gICBtZWRpYTogY2VkcnVzOiBGaXggSDI2NCBkZWZhdWx0
IHJlZmVyZW5jZSBpbmRleCBjb3VudAo+ID4gICBtZWRpYTogY2VkcnVzOiBVc2UgaGVscGVycyB0
byBhY2Nlc3MgY2FwdHVyZSBxdWV1ZQo+ID4gIAo+ID4gIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9z
dW54aS9jZWRydXMvY2VkcnVzLmggICB8ICA4ICsrKy0KPiA+ICAuLi4vc3RhZ2luZy9tZWRpYS9z
dW54aS9jZWRydXMvY2VkcnVzX2gyNjQuYyAgfCA0NiArKysrKysrKysrKysrKy0tLS0tCj4gPiAg
Li4uL3N0YWdpbmcvbWVkaWEvc3VueGkvY2VkcnVzL2NlZHJ1c19yZWdzLmggIHwgIDMgKysKPiA+
ICAzIGZpbGVzIGNoYW5nZWQsIDQ0IGluc2VydGlvbnMoKyksIDEzIGRlbGV0aW9ucygtKQoKCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFp
bGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5s
aW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 23C31CB0FB
	for <lists+driverdev-devel@lfdr.de>; Thu,  3 Oct 2019 23:20:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6B089231B1;
	Thu,  3 Oct 2019 21:20:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uoDjDhSVKalK; Thu,  3 Oct 2019 21:20:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1213C23120;
	Thu,  3 Oct 2019 21:20:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7AC721BF383
 for <devel@linuxdriverproject.org>; Thu,  3 Oct 2019 21:20:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 77B6286224
 for <devel@linuxdriverproject.org>; Thu,  3 Oct 2019 21:20:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PwLaFlgtnuy4 for <devel@linuxdriverproject.org>;
 Thu,  3 Oct 2019 21:20:01 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.siol.net (mailoutvs59.siol.net [185.57.226.250])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2F27B86216
 for <devel@driverdev.osuosl.org>; Thu,  3 Oct 2019 21:20:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 3580F524692;
 Thu,  3 Oct 2019 23:19:59 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta10.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta10.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id V4LW_LeUUw9g; Thu,  3 Oct 2019 23:19:58 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 9C5E452469A;
 Thu,  3 Oct 2019 23:19:58 +0200 (CEST)
Received: from jernej-laptop.localnet (cpe-86-58-59-25.static.triera.net
 [86.58.59.25]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id CB941524698;
 Thu,  3 Oct 2019 23:19:57 +0200 (CEST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Subject: Re: [PATCH v2 2/3] media: cedrus: Fix H264 default reference index
 count
Date: Thu, 03 Oct 2019 23:19:57 +0200
Message-ID: <1700094.IKIOnZr010@jernej-laptop>
In-Reply-To: <20191003205857.GA3927@aptenodytes>
References: <20191002193553.1633467-1-jernej.skrabec@siol.net>
 <3413755.LxPTGpI9pz@jernej-laptop> <20191003205857.GA3927@aptenodytes>
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

RG5lIMSNZXRydGVrLCAwMy4gb2t0b2JlciAyMDE5IG9iIDIyOjU4OjU3IENFU1QgamUgUGF1bCBL
b2NpYWxrb3dza2kgCm5hcGlzYWwoYSk6Cj4gSGksCj4gCj4gT24gVGh1IDAzIE9jdCAxOSwgMjI6
NDQsIEplcm5laiDFoGtyYWJlYyB3cm90ZToKPiA+IERuZSDEjWV0cnRlaywgMDMuIG9rdG9iZXIg
MjAxOSBvYiAyMjoyODo0NiBDRVNUIGplIFBhdWwgS29jaWFsa293c2tpCj4gPiAKPiA+IG5hcGlz
YWwoYSk6Cj4gPiA+IEhpLAo+ID4gPiAKPiA+ID4gT24gVGh1IDAzIE9jdCAxOSwgMDc6MTYsIEpl
cm5laiDFoGtyYWJlYyB3cm90ZToKPiA+ID4gPiBEbmUgxI1ldHJ0ZWssIDAzLiBva3RvYmVyIDIw
MTkgb2IgMDA6MDY6NTAgQ0VTVCBqZSBQYXVsIEtvY2lhbGtvd3NraQo+ID4gPiA+IAo+ID4gPiA+
IG5hcGlzYWwoYSk6Cj4gPiA+ID4gPiBIaSwKPiA+ID4gPiA+IAo+ID4gPiA+ID4gT24gV2VkIDAy
IE9jdCAxOSwgMjE6MzUsIEplcm5laiBTa3JhYmVjIHdyb3RlOgo+ID4gPiA+ID4gPiBSZWZlcmVu
Y2UgaW5kZXggY291bnQgaW4gVkVfSDI2NF9QUFMgc2hvdWxkIGNvbWUgZnJvbSBQUFMgY29udHJv
bC4KPiA+ID4gPiA+ID4gSG93ZXZlciwgdGhpcyBpcyBub3QgcmVhbGx5IGltcG9ydGFudCwgYmVj
YXVzZSByZWZlcmVuY2UgaW5kZXgKPiA+ID4gPiA+ID4gY291bnQKPiA+ID4gPiA+ID4gaXMKPiA+
ID4gPiA+ID4gaW4gb3VyIGNhc2UgYWx3YXlzIG92ZXJyaWRkZW4gYnkgdGhhdCBmcm9tIHNsaWNl
IGhlYWRlci4KPiA+ID4gPiA+IAo+ID4gPiA+ID4gVGhhbmtzIGZvciB0aGUgZml4dXAhCj4gPiA+
ID4gPiAKPiA+ID4gPiA+IE91ciBsaWJ2YSB1c2Vyc3BhY2UgYW5kIHY0bDItcmVxdWVzdCB0ZXN0
aW5nIHRvb2wgY3VycmVudGx5IGRvbid0Cj4gPiA+ID4gPiBwcm92aWRlCj4gPiA+ID4gPiB0aGlz
LCBidXQgSSBoYXZlIGEgcGVuZGluZyBtZXJnZSByZXF1ZXN0IGFkZGluZyBpdCBmb3IgdGhlIGhh
bnRybyBzbwo+ID4gPiA+ID4gaXQncwo+ID4gPiA+ID4gZ29vZCB0byBnby4KPiA+ID4gPiAKPiA+
ID4gPiBBY3R1YWxseSwgSSB0aGluayB0aGlzIGlzIGp1c3QgY29zbWV0aWMgYW5kIGl0IHdvdWxk
IHdvcmsgZXZlbiBpZiBpdAo+ID4gPiA+IHdvdWxkCj4gPiA+ID4gYmUgYWx3YXlzIDAuIFdlIGFs
d2F5cyBvdmVycmlkZSB0aGlzIG51bWJlciBpbiBTSFMyIHJlZ2lzdGVyIHdpdGgKPiA+ID4gPiBW
RV9IMjY0X1NIUzJfTlVNX1JFRl9JRFhfQUNUSVZFX09WUkQgZmxhZyBhbmQgcmVjZW50bHkgdGhl
cmUgd2FzIGEKPiA+ID4gPiBwYXRjaAo+ID4gPiA+IG1lcmdlZCB0byBjbGFyaWZ5IHRoYXQgdmFs
dWUgaW4gc2xpY2UgcGFyYW1ldGVycyBzaG91bGQgYmUgdGhlIG9uZQo+ID4gPiA+IHRoYXQncwo+
ID4gPiA+IHNldCBvbiBkZWZhdWx0IHZhbHVlIGlmIG92ZXJyaWRlIGZsYWcgaXMgbm90IHNldCBp
biBiaXRzdHJlYW06Cj4gPiA+ID4gaHR0cHM6Ly9naXQubGludXh0di5vcmcvbWVkaWFfdHJlZS5n
aXQvY29tbWl0Lz8KPiA+ID4gPiBpZD0xODdlZjdjNWM3ODE1M2FjZGNlOGM4NzE0ZTU5MThiMTAx
OGM3MTBiCj4gPiA+ID4gCj4gPiA+ID4gV2VsbCwgd2UgY291bGQgYWx3YXlzIGNvbXBhcmUgZGVm
YXVsdCBhbmQgdmFsdWUgaW4gc2xpY2UgcGFyYW1ldGVycywKPiA+ID4gPiBidXQgSQo+ID4gPiA+
IHJlYWxseSBkb24ndCBzZWUgdGhlIGJlbmVmaXQgb2YgZG9pbmcgdGhhdCBleHRyYSB3b3JrLgo+
ID4gPiAKPiA+ID4gVGhhbmtzIGZvciB0aGUgZGV0YWlsZWQgZXhwbGFuYXRpb24hIFNvIEkganVz
dCByZWFsaXplZCB0aGF0IGZvciBIRVZDLCBJCj4gPiA+IGRpZG4ndCBldmVuIGluY2x1ZGUgdGhl
IGRlZmF1bHQgdmFsdWUgaW4gUFBTIGFuZCBvbmx5IHdlbnQgZm9yIHRoZQo+ID4gPiBwZXItc2xp
Y2UgdmFsdWUuIFRoZSBIRVZDIGhhcmR3YXJlIGJsb2NrIGFwcGFyZW50bHkgb25seSBuZWVkcyB0
aGUKPiA+ID4gZmllbGRzCj4gPiA+IG9uY2UgYXQgc2xpY2UgbGV2ZWwsIGFuZCBieSBsb29raW5n
IGF0IHRoZSBzcGVjLCBvbmx5IG9uZSBvZiB0aGUgdHdvIHNldAo+ID4gPiBvZgo+ID4gPiBmaWVs
ZHMgd2lsbCBiZSB1c2VkLgo+ID4gPiAKPiA+ID4gU28gcGVyaGFwcyB3ZSBjb3VsZCBkbyB0aGUg
c2FtZSBmb3IgSC4yNjQgYW5kIG9ubHkgaGF2ZSB0aGUgc2V0IG9mCj4gPiA+IGZpZWxkcwo+ID4g
PiBvbmNlIGluIHRoZSBzbGljZSBwYXJhbXMsIHNvIHRoYXQgYm90aCBjb2RlY3MgYXJlIGNvbnNp
c3RlbnQuIFVzZXJzcGFjZQo+ID4gPiBjYW4KPiA+ID4ganVzdCBjaGVjayB0aGUgZmxhZyB0byBr
bm93IHdoZXRoZXIgaXQgc2hvdWxkIHB1dCB0aGUgUFBTIGRlZmF1bHQgb3IKPiA+ID4gc2xpY2Ut
c3BlY2lmaWMgdmFsdWUgaW4gdGhlIHNsaWNlLXNwZWNpZmljIGNvbnRyb2wuCj4gPiA+IAo+ID4g
PiBXaGF0IGRvIHlvdSB0aGluaz8KPiA+IAo+ID4gSSB0aGluayB0aGF0IHRoZXJlIHdvdWxkIGJl
IGxlc3MgY29uZnVzaW9uIGlmIG9ubHkgdmFsdWUgaW4gc2xpY2UgcGFyYW1zCj4gPiB3b3VsZCBl
eGlzdHMuIEJ1dCBzaW5jZSBQaGlsaXBwIHJhdGhlciBtYWRlIGNsYXJpZmljYXRpb24gaW4KPiA+
IGRvY3VtZW50YXRpb24sIG1heWJlIGhlIHNlZXMgYmVuZWZpdCBoYXZpbmcgYm90aCB2YWx1ZXM/
Cj4gCj4gQWN0dWFsbHkgSSBqdXN0IGNhdWdodCB1cCB3aXRoIHRoZSBkaXNjdXNzaW9uIGZyb20g
dGhyZWFkOgo+IG1lZGlhOiB1YXBpOiBoMjY0OiBBZGQgbnVtX3JlZl9pZHhfYWN0aXZlX292ZXJy
aWRlX2ZsYWcKPiAKPiB3aGljaCBleHBsYWlucyB0aGF0IHdlIG5lZWQgdG8gcGFzcyB0aGUgZGVm
YXVsdCBmaWVsZHMgZm9yIGhhcmR3YXJlIHRoYXQKPiBwYXJzZXMgdGhlIHNsaWNlIGhlYWRlciBp
dHNlbGYgYW5kIHdlIG5lZWQgdGhlIG5vbi1kZWZhdWx0IGZpZWxkcyBhbmQgZmxhZwo+IGZvciBv
dGhlciBjYXNlcy4KPiAKPiBUbyBjb3ZlciB0aGUgY2FzZSBvZiBoYXJkd2FyZSB0aGF0IGRvZXMg
c2xpY2UgaGVhZGVyIHBhcnNpbmcsIEkgZ3Vlc3MgaXQKPiB3b3VsZCBhbHNvIHdvcmsgdG8gdXNl
IHRoZSBzbGljZS1zcGVjaWZpYyB2YWx1ZXMgaW4gcGxhY2Ugb2YgdGhlIHBwcwo+IGRlZmF1bHQg
dmFsdWVzIGluIHRoZSBoYXJkd2FyZSByZWdpc3RlciBmb3IgdGhhdC4gQnV0IGl0IGZlZWxzIHF1
aXRlCj4gY29uZnVzaW5nIGFuZCBhIGxvdCBsZXNzIHN0cmFpZ2h0Zm9yd2FyZCB0aGFuIGhhdmlu
ZyBhbGwgdGhlIGZpZWxkcyBhbmQgdGhlCj4gb3ZlcnJpZGUgZmxhZyBleHBvc2VkLgoKSSB3YXNu
J3QgYXdhcmUgb2YgdGhhdCBwYXRjaCBhbmQgcmVsYXRlZCBkaXNjdXNzaW9uLiBPaywgc28gaXQg
bWFrZSBzZW5zZSB0byAKaGF2ZSBib3RoIHZhbHVlcy4gSG93ZXZlciwgZG9lcyBpdCBtYWtlIHNl
bnNlIHRvIHVzZSBkZWZhdWx0IHZhbHVlcyBpbiBDZWRydXM/Cgo+IAo+IFNvIEkgdGhpbmsgSSBz
aG91bGQgZml4IEhFVkMgc3VwcG9ydCBhY2NvcmRpbmdseSwganVzdCBpbiBjYXNlIHRoZSBzYW1l
Cj4gc2l0dWF0aW9uIGFyaXNlcyBmb3IgSEVWQy4KClNlZW1zIHJlYXNvbmFibGUuIERvZXMgdGhh
dCBtZWFuIHRoZXJlIHdpbGwgYmUgYW5vdGhlciByZXZpc2lvbiBvZiBIRVZDIApwYXRjaGVzPyAg
SWYgc28sIEkgdGhpbmsgc2xpY2Vfc2VnbWVudF9hZGRyIHNob3VsZCBhbHNvIGJlIGluY2x1ZGVk
IGluIHNsaWNlIApwYXJhbXMsIHNvIG11bHRpLXNsaWNlIGZyYW1lcyBjYW4gYmUgc3VwcG9ydGVk
IGF0IGxhdGVyIHRpbWUuCgpCZXN0IHJlZ2FyZHMsCkplcm5laiAKCj4gCj4gQ2hlZXJzLAo+IAo+
IFBhdWwKPiAKPiA+IEJlc3QgcmVnYXJkcywKPiA+IEplcm5lago+ID4gCj4gPiA+IENoZWVycywK
PiA+ID4gCj4gPiA+IFBhdWwKPiA+ID4gCj4gPiA+ID4gQmVzdCByZWdhcmRzLAo+ID4gPiA+IEpl
cm5lago+ID4gPiA+IAo+ID4gPiA+ID4gQWNrZWQtYnk6IFBhdWwgS29jaWFsa293c2tpIDxwYXVs
LmtvY2lhbGtvd3NraUBib290bGluLmNvbT4KPiA+ID4gPiA+IAo+ID4gPiA+ID4gQ2hlZXJzLAo+
ID4gPiA+ID4gCj4gPiA+ID4gPiBQYXVsCj4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gU2lnbmVkLW9m
Zi1ieTogSmVybmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVjQHNpb2wubmV0Pgo+ID4gPiA+ID4g
PiAtLS0KPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ICBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvc3Vu
eGkvY2VkcnVzL2NlZHJ1c19oMjY0LmMgfCA4ICsrLS0tLS0tCj4gPiA+ID4gPiA+ICAxIGZpbGUg
Y2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQo+ID4gPiA+ID4gPiAKPiA+
ID4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9zdW54aS9jZWRydXMv
Y2VkcnVzX2gyNjQuYwo+ID4gPiA+ID4gPiBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9zdW54aS9j
ZWRydXMvY2VkcnVzX2gyNjQuYyBpbmRleAo+ID4gPiA+ID4gPiBiZDg0ODE0NmVhZGEuLjRhMGU2
OTg1NWM3ZiAxMDA2NDQKPiA+ID4gPiA+ID4gLS0tIGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL3N1
bnhpL2NlZHJ1cy9jZWRydXNfaDI2NC5jCj4gPiA+ID4gPiA+ICsrKyBiL2RyaXZlcnMvc3RhZ2lu
Zy9tZWRpYS9zdW54aS9jZWRydXMvY2VkcnVzX2gyNjQuYwo+ID4gPiA+ID4gPiBAQCAtMzY0LDEy
ICszNjQsOCBAQCBzdGF0aWMgdm9pZCBjZWRydXNfc2V0X3BhcmFtcyhzdHJ1Y3QKPiA+ID4gPiA+
ID4gY2VkcnVzX2N0eAo+ID4gPiA+ID4gPiAqY3R4LAo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4g
IAkvLyBwaWN0dXJlIHBhcmFtZXRlcnMKPiA+ID4gPiA+ID4gIAlyZWcgPSAwOwo+ID4gPiA+ID4g
PiAKPiA+ID4gPiA+ID4gLQkvKgo+ID4gPiA+ID4gPiAtCSAqIEZJWE1FOiB0aGUga2VybmVsIGhl
YWRlcnMgYXJlIGFsbG93aW5nIHRoZSBkZWZhdWx0IHZhbHVlIHRvCj4gPiA+ID4gPiA+IC0JICog
YmUgcGFzc2VkLCBidXQgdGhlIGxpYnZhIGRvZXNuJ3QgZ2l2ZSB1cyB0aGF0Lgo+ID4gPiA+ID4g
PiAtCSAqLwo+ID4gPiA+ID4gPiAtCXJlZyB8PSAoc2xpY2UtPm51bV9yZWZfaWR4X2wwX2FjdGl2
ZV9taW51czEgJiAweDFmKSA8PCAxMDsKPiA+ID4gPiA+ID4gLQlyZWcgfD0gKHNsaWNlLT5udW1f
cmVmX2lkeF9sMV9hY3RpdmVfbWludXMxICYgMHgxZikgPDwgNTsKPiA+ID4gPiA+ID4gKwlyZWcg
fD0gKHBwcy0+bnVtX3JlZl9pZHhfbDBfZGVmYXVsdF9hY3RpdmVfbWludXMxICYgMHgxZikgPDwg
MTA7Cj4gPiA+ID4gPiA+ICsJcmVnIHw9IChwcHMtPm51bV9yZWZfaWR4X2wxX2RlZmF1bHRfYWN0
aXZlX21pbnVzMSAmIDB4MWYpIDw8IDU7Cj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiAgCXJlZyB8
PSAocHBzLT53ZWlnaHRlZF9iaXByZWRfaWRjICYgMHgzKSA8PCAyOwo+ID4gPiA+ID4gPiAgCWlm
IChwcHMtPmZsYWdzICYgVjRMMl9IMjY0X1BQU19GTEFHX0VOVFJPUFlfQ09ESU5HX01PREUpCj4g
PiA+ID4gPiA+ICAJCj4gPiA+ID4gPiA+ICAJCXJlZyB8PSBWRV9IMjY0X1BQU19FTlRST1BZX0NP
RElOR19NT0RFOwoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0
cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJp
dmVyZGV2LWRldmVsCg==

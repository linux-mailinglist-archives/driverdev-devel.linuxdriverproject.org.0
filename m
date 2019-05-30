Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EB6322EA55
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 May 2019 03:46:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 92F9C8759C;
	Thu, 30 May 2019 01:46:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O6415Sutb1IX; Thu, 30 May 2019 01:46:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4485087586;
	Thu, 30 May 2019 01:46:24 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8A2751BF999
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 30 May 2019 01:46:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7E5B48822A
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 30 May 2019 01:46:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mlU7HuQqzeum
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 30 May 2019 01:46:21 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from icp-osb-irony-out2.external.iinet.net.au
 (icp-osb-irony-out2.external.iinet.net.au [203.59.1.155])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3D42B87B9B
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 30 May 2019 01:46:20 +0000 (UTC)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2AFAACRNO9c/zXSMGcNWBkBAQEBAQE?=
 =?us-ascii?q?BAQEBAQEHAQEBAQEBgVMCAQEBAQELAYg5k1IBAQEBAQEGgTWDX4VxiXCFGxS?=
 =?us-ascii?q?BZwkBAQEBAQEBAQE3AQEBhD8Cgxg2Bw4BAwEBAQQBAQEBAwGGYAEBAQMjDwE?=
 =?us-ascii?q?FQRALDQsCAiYCAlcGDQgBAYMegXepCnGBLxqIU4FGgQwoAYFgigp4gQeBEAE?=
 =?us-ascii?q?ngms+hC2DIYJYBIt1nGsJgg+TGQYbgh+GaYNuA4laLY1wllcHggIzGggoCIM?=
 =?us-ascii?q?okGOPDQEB?=
X-IPAS-Result: =?us-ascii?q?A2AFAACRNO9c/zXSMGcNWBkBAQEBAQEBAQEBAQEHAQEBA?=
 =?us-ascii?q?QEBgVMCAQEBAQELAYg5k1IBAQEBAQEGgTWDX4VxiXCFGxSBZwkBAQEBAQEBA?=
 =?us-ascii?q?QE3AQEBhD8Cgxg2Bw4BAwEBAQQBAQEBAwGGYAEBAQMjDwEFQRALDQsCAiYCA?=
 =?us-ascii?q?lcGDQgBAYMegXepCnGBLxqIU4FGgQwoAYFgigp4gQeBEAEngms+hC2DIYJYB?=
 =?us-ascii?q?It1nGsJgg+TGQYbgh+GaYNuA4laLY1wllcHggIzGggoCIMokGOPDQEB?=
X-IronPort-AV: E=Sophos;i="5.60,529,1549900800"; d="scan'208";a="210306531"
Received: from unknown (HELO [10.44.0.22]) ([103.48.210.53])
 by icp-osb-irony-out2.iinet.net.au with ESMTP; 30 May 2019 09:46:16 +0800
Subject: Re: staging: mt7621-pci: factor out 'mt7621_pcie_enable_port' function
From: Greg Ungerer <gerg@kernel.org>
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>
References: <678a78fd-a7f4-5a1f-9819-51c5a0731877@kernel.org>
 <CAMhs-H-Js2wiF5yH3pB5bFq9SE1X17OovsXtYuNH+obe0owknw@mail.gmail.com>
 <5a7dc59b-f9ef-beab-7221-231f64716d5a@kernel.org>
 <CAMhs-H-8EQPPy0vMFCG-PKu3RLz4_d0ucO6bCgMCfMuD7ZYRSg@mail.gmail.com>
 <a2f6ee9c-dc4e-a7e7-8723-880a3472e9ba@kernel.org>
 <CAMhs-H8der72iXY0NFhXLUyTHvsBZ3t5VUagfgiO4CwuXhAXKw@mail.gmail.com>
 <9224bde1-ea67-db9f-570f-178bbc8e6b40@kernel.org>
 <CAMhs-H8vutK=KLHVGwpvY2bmx3khpjW5U=2jC=-pEV_HLZP5-Q@mail.gmail.com>
 <4aa016a4-9fac-5273-0f7f-d372f0de34ba@kernel.org>
 <CAMhs-H9M8D2nWibZqKeBEZ8y+E38iTRk7sB28vHb0-P5tU8+EA@mail.gmail.com>
 <9e24fe2f-42df-7b1f-2cd5-82d3f82f688b@kernel.org>
 <CAMhs-H-GtrJZKx2Y3GhoXn9O=C4xx1QAeQ1CYt51LwrFY7y1sQ@mail.gmail.com>
 <7335025e-372d-c5bd-80ee-75b3e0c61249@kernel.org>
 <CAMhs-H_zFUecOu95U-xekQ3Da5psbc6YdQttosCJbZi5vetKSw@mail.gmail.com>
 <790e5f32-5c70-e277-46ad-7956aaf32af3@kernel.org>
Message-ID: <ddd690f9-a2d6-5fbf-260e-9e535d81b3e6@kernel.org>
Date: Thu, 30 May 2019 11:46:14 +1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <790e5f32-5c70-e277-46ad-7956aaf32af3@kernel.org>
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
Cc: NeilBrown <neil@brown.name>, driverdev-devel@linuxdriverproject.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGkgU2VyZ2lvLAoKT24gMzAvNS8xOSAxMDo0NCBhbSwgR3JlZyBVbmdlcmVyIHdyb3RlOgo+IE9u
IDI5LzUvMTkgNjowOCBwbSwgU2VyZ2lvIFBhcmFjdWVsbG9zIHdyb3RlOgo+IFtzbmlwXQo+PiBJ
IGhhdmUgYWRkZWQgZ3BpbyBjb25zdW1lciBzdHVmZiBhbmQgcmVvcmRlciBhIGJpdCB0aGUgY29k
ZSB0byBiZSBtb3JlCj4+IHNpbWlsYXIgdG8gNC4yMC4KPj4KPj4gSSBhdHRhY2ggdGhlIHBhdGNo
LiBJIGhhdmUgbm90IHRyeSBpdCB0byBjb21waWxlIGl0LCBiZWNhdXNlIG15IG5vcm1hbAo+PiBl
bnZpcm9ubWVudCBpcyBpbiBhbm90aGVyCj4+IGNvbXB1dGVyIGFuZCBJIGFtIGluIHRoZSBtaWRk
bGUgb2YgbW92aW5nIGZyb20gbXkgY3VycmVudCBob3VzZSBhbmQKPj4gZG9uJ3QgaGF2ZSBhY2Nl
c3MgdG8gaXQsIHNvcnJ5Lgo+PiBTbywgcGxlYXNlIHRyeSB0aGlzIGFuZCBsZXQncyBzZWUgd2hh
dCBoYXBwZW5zLgo+IAo+IE5vIHByb2JsZW0sIHRoYW5rcyBmb3IgdGhlIHBhdGNoLgo+IAo+IFVu
Zm9ydHVuYXRlbHkgYWx3YXlzIGxvY2tzIHVwIG9uIGtlcm5lbCBib290Ogo+IAo+ICDCoCAuLi4K
PiAgwqAgbXQ3NjIxLXBjaS1waHkgMWUxNDkwMDAucGNpZS1waHk6IFh0YWwgaXMgNDBNSHoKPiAg
wqAgbXQ3NjIxLXBjaSAxZTE0MDAwMC5wY2llOiBQb3J0IDQ1NDA0MzY0OCBOX0ZUUyA9IDAKPiAg
wqAgbXQ3NjIxLXBjaS1waHkgMWUxNDkwMDAucGNpZS1waHk6IFh0YWwgaXMgNDBNSHoKPiAgwqAg
bXQ3NjIxLXBjaSAxZTE0MDAwMC5wY2llOiBQb3J0IDQ1NDA0MzY0OCBOX0ZUUyA9IDEKPiAgwqAg
bXQ3NjIxLXBjaS1waHkgMWUxNGEwMDAucGNpZS1waHk6IFh0YWwgaXMgNDBNSHoKPiAgwqAgbXQ3
NjIxLXBjaSAxZTE0MDAwMC5wY2llOiBQb3J0IDQ1NDA0MzY0OCBOX0ZUUyA9IDIKPiAgwqAgbXQ3
NjIxLXBjaSAxZTE0MDAwMC5wY2llOiBwY2llMCBubyBjYXJkLCBkaXNhYmxlIGl0IChSU1QgJiBD
TEspCj4gIMKgIG10NzYyMS1wY2kgMWUxNDAwMDAucGNpZTogcGNpZTEgbm8gY2FyZCwgZGlzYWJs
ZSBpdCAoUlNUICYgQ0xLKQo+ICDCoCBtdDc2MjEtcGNpIDFlMTQwMDAwLnBjaWU6IHBjaWUyIG5v
IGNhcmQsIGRpc2FibGUgaXQgKFJTVCAmIENMSykKPiAKPiBUaGF0IHdhcyBvcmlnaW5hbCBsaW51
eC01LjEgcGF0Y2hlZCB3aXRoIHlvdXIgYXR0YWNoZWQgcGF0Y2guCj4gCj4gSSdsbCB0cnkgYW5k
IGRpZyBkb3duIGludG8gdGhhdCBmdXJ0aGVyIHRvZGF5IGFuZCBnZXQgc29tZQo+IGZlZWRiYWNr
IG9uIHdoZXJlIGl0IGlzIGZhaWxpbmcuCgpUaGUgZmlyc3QgcHJvYmxlbSBJIHNlZSBpcyB0aGF0
IHRoZSBHUElPIE1PREUgcmVnaXN0ZXIgYml0cyBmb3IKUEVSU1RfTU9ERSBhcmUgc2V0IHRvIDAw
LCBzbyBpbiAiUENJZSBSZXNldCIgbW9kZS4gSWYgSSBoYWNrIGluCmEgcmVnaXN0ZXIgdXBkYXRl
IGZvciB0aGF0IHdpdGg6CgogICAgIC8qIEZvcmNlIFBFUlNUIFBDSWUgcmVzZXQgaW50byBHUElP
IG1vZGUgKi8KICAgICAqKHVuc2lnbmVkIGludCAqKSgweGJlMDAwMDYwKSB8PSAgQklUKDEwKTsK
CkkgZG8gdGhhdCBhdCB0aGUgc3RhcnQgb2YgbXQ3NjIxX3BjaWVfaW5pdF9wb3J0cygpLiBXaXRo
IHRoYXQgaW4KcGxhY2UgSSBnZXQgZnVydGhlcjoKCiAgIG10NzYyMS1wY2ktcGh5IDFlMTQ5MDAw
LnBjaWUtcGh5OiBYdGFsIGlzIDQwTUh6CiAgIG10NzYyMS1wY2kgMWUxNDAwMDAucGNpZTogUG9y
dCA0NTQwNDM2NDggTl9GVFMgPSAwCiAgIG10NzYyMS1wY2ktcGh5IDFlMTQ5MDAwLnBjaWUtcGh5
OiBYdGFsIGlzIDQwTUh6CiAgIG10NzYyMS1wY2kgMWUxNDAwMDAucGNpZTogUG9ydCA0NTQwNDM2
NDggTl9GVFMgPSAxCiAgIG10NzYyMS1wY2ktcGh5IDFlMTRhMDAwLnBjaWUtcGh5OiBYdGFsIGlz
IDQwTUh6CiAgIG10NzYyMS1wY2kgMWUxNDAwMDAucGNpZTogUG9ydCA0NTQwNDM2NDggTl9GVFMg
PSAyCiAgIG10NzYyMS1wY2kgMWUxNDAwMDAucGNpZTogcGNpZTEgbm8gY2FyZCwgZGlzYWJsZSBp
dCAoUlNUICYgQ0xLKQogICBtdDc2MjEtcGNpIDFlMTQwMDAwLnBjaWU6IHBjaWUyIG5vIGNhcmQs
IGRpc2FibGUgaXQgKFJTVCAmIENMSykKICAgbXQ3NjIxLXBjaSAxZTE0MDAwMC5wY2llOiBQQ0lF
MCBlbmFibGVkCiAgIG10NzYyMS1wY2kgMWUxNDAwMDAucGNpZTogUENJIGNvaGVyZW5jZSByZWdp
b24gYmFzZTogMHg2MDAwMDAwMCwgbWFzay9zZXR0aW5nczogMHhmMDAwMDAwMgogICBtdDc2MjEt
cGNpIDFlMTQwMDAwLnBjaWU6IFBDSSBob3N0IGJyaWRnZSB0byBidXMgMDAwMDowMAogICBwY2lf
YnVzIDAwMDA6MDA6IHJvb3QgYnVzIHJlc291cmNlIFtpbyAgMHhmZmZmZmZmZl0KICAgcGNpX2J1
cyAwMDAwOjAwOiByb290IGJ1cyByZXNvdXJjZSBbbWVtIDB4NjAwMDAwMDAtMHg2ZmZmZmZmZl0K
ICAgcGNpX2J1cyAwMDAwOjAwOiByb290IGJ1cyByZXNvdXJjZSBbYnVzIDAwLWZmXQogICBwY2kg
MDAwMDowMDowMC4wOiBicmlkZ2UgY29uZmlndXJhdGlvbiBpbnZhbGlkIChbYnVzIDAwLTAwXSks
IHJlY29uZmlndXJpbmcKCkl0IGhhbmdzIHRoZXJlLi4uCgpSZWdhcmRzCkdyZWcKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxp
c3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJp
dmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK

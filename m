Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D5442E9D2
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 May 2019 02:47:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 972AC20349;
	Thu, 30 May 2019 00:47:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YgnufnOshvXg; Thu, 30 May 2019 00:47:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1073E2033C;
	Thu, 30 May 2019 00:47:29 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 67D281BF999
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 30 May 2019 00:47:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 565F720338
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 30 May 2019 00:47:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rfnWCLCqimlQ
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 30 May 2019 00:47:26 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from icp-osb-irony-out5.external.iinet.net.au
 (icp-osb-irony-out5.external.iinet.net.au [203.59.1.221])
 by silver.osuosl.org (Postfix) with ESMTP id 9C13D20334
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 30 May 2019 00:47:25 +0000 (UTC)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2A1AAAmJ+9c/zXSMGcNWBkBAQEBAQE?=
 =?us-ascii?q?BAQEBAQEHAQEBAQEBgWWEJoQUk1EBAQEBAQEGgTWDX4VjDolwhxYJAQEBAQE?=
 =?us-ascii?q?BAQEBNwEBAYQ/AoMYOBMBAwEBAQQBAQEBAwGGXwEBAQECASMPAQUzDgULCw0?=
 =?us-ascii?q?BCgICIwMCAiElEQYBDAYCAQGDHoFrAwkFqSBxgS8ahS2COw1dgUaBDCiBYYo?=
 =?us-ascii?q?KeIEHgRABJ4JrPoIaggODMYJYBIs8iUqTHD4Jgg+POoNfBhuCH4Zpg24DiVo?=
 =?us-ascii?q?tjEiIYY8ugXkzGggoCIMnkGRgi1uCUgEB?=
X-IPAS-Result: =?us-ascii?q?A2A1AAAmJ+9c/zXSMGcNWBkBAQEBAQEBAQEBAQEHAQEBA?=
 =?us-ascii?q?QEBgWWEJoQUk1EBAQEBAQEGgTWDX4VjDolwhxYJAQEBAQEBAQEBNwEBAYQ/A?=
 =?us-ascii?q?oMYOBMBAwEBAQQBAQEBAwGGXwEBAQECASMPAQUzDgULCw0BCgICIwMCAiElE?=
 =?us-ascii?q?QYBDAYCAQGDHoFrAwkFqSBxgS8ahS2COw1dgUaBDCiBYYoKeIEHgRABJ4JrP?=
 =?us-ascii?q?oIaggODMYJYBIs8iUqTHD4Jgg+POoNfBhuCH4Zpg24DiVotjEiIYY8ugXkzG?=
 =?us-ascii?q?ggoCIMnkGRgi1uCUgEB?=
X-IronPort-AV: E=Sophos;i="5.60,529,1549900800"; d="scan'208";a="227062703"
Received: from unknown (HELO [10.44.0.22]) ([103.48.210.53])
 by icp-osb-irony-out5.iinet.net.au with ESMTP; 30 May 2019 08:47:22 +0800
Subject: Re: staging: mt7621-pci: factor out 'mt7621_pcie_enable_port' function
To: Brett Neumeier <bneumeier@gmail.com>,
 Sergio Paracuellos <sergio.paracuellos@gmail.com>
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
 <CAGSetNvkNQpqo+F7BRbbh4tdr7FpAU28iyydV5eBCXztNPoFyQ@mail.gmail.com>
From: Greg Ungerer <gerg@kernel.org>
Message-ID: <bd7e2c37-a255-9a0a-d437-6554c94cbb94@kernel.org>
Date: Thu, 30 May 2019 10:47:22 +1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CAGSetNvkNQpqo+F7BRbbh4tdr7FpAU28iyydV5eBCXztNPoFyQ@mail.gmail.com>
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

SGkgQnJldHQsCgpPbiAzMC81LzE5IDEyOjQ0IGFtLCBCcmV0dCBOZXVtZWllciB3cm90ZToKPiBP
biBXZWQsIE1heSAyOSwgMjAxOSBhdCAzOjA5IEFNIFNlcmdpbyBQYXJhY3VlbGxvcyA8c2VyZ2lv
LnBhcmFjdWVsbG9zQGdtYWlsLmNvbSA8bWFpbHRvOnNlcmdpby5wYXJhY3VlbGxvc0BnbWFpbC5j
b20+PiB3cm90ZToKPiAKPiAgICAgSSBoYXZlIGFkZGVkIGdwaW8gY29uc3VtZXIgc3R1ZmYgYW5k
IHJlb3JkZXIgYSBiaXQgdGhlIGNvZGUgdG8gYmUgbW9yZQo+ICAgICBzaW1pbGFyIHRvIDQuMjAu
Cj4gCj4gICAgIEkgYXR0YWNoIHRoZSBwYXRjaC4gSSBoYXZlIG5vdCB0cnkgaXQgdG8gY29tcGls
ZSBpdCwgYmVjYXVzZSBteSBub3JtYWwKPiAgICAgZW52aXJvbm1lbnQgaXMgaW4gYW5vdGhlcgo+
ICAgICBjb21wdXRlciBhbmQgSSBhbSBpbiB0aGUgbWlkZGxlIG9mIG1vdmluZyBmcm9tIG15IGN1
cnJlbnQgaG91c2UgYW5kCj4gICAgIGRvbid0IGhhdmUgYWNjZXNzIHRvIGl0LCBzb3JyeS4KPiAg
ICAgU28sIHBsZWFzZSB0cnkgdGhpcyBhbmQgbGV0J3Mgc2VlIHdoYXQgaGFwcGVucy4KPiAKPiBJ
J20ganVtcGluZyBpbiBsYXRlIGhlcmUgYmVjYXVzZSBJIGp1c3QgcmVjZW50bHkgYmVjYW1lIGF3
YXJlIG9mIHRoaXMgdGhyZWFkLiBJIGhhdmUgYSBHbnVCZWUgUEMyIG9uIHdoaWNoIEknbSBydW5u
aW5nIGEgNS4xLjQga2VybmVsIHdpdGggTmVpbCBCcm93bidzIHBhdGNoZXMgYXBwbGllZDsgSSdt
IGhhdmluZyBhbiBpc3N1ZSB3aGVyZSBhcHByb3hpbWF0ZWx5IDIvMyBvZiB0aGUgdGltZSB0aGUg
a2VybmVsIGhhbmdzIGZyb20gYSBjb2xkIGJvb3Qgd2hpbGUgY29uZmlndXJpbmcgUENJZS4gSSdk
IGJlIGhhcHB5IHRvIHRlc3Qgd2hhdGV2ZXIgcGF0Y2hlcyBtaWdodCBoZWxwIGRpc2Fnbm9zZSBv
ciBjb3JyZWN0IHdoYXQncyBnb2luZyBvbi4gKEkgYW0gbm90IGFuIGV4cGVydCBkZXZpY2UgZHJp
dmVyIGVuZ2luZWVyIG9yIGFueXRoaW5nLCBzbyBJIHByb2JhYmx5IHdvbid0IGJlIG11Y2ggaGVs
cCBpbiBvdGhlciB3YXlzLikKPiAKPiBJbiBjYXNlIGl0IGlzIGhlbHBmdWwgLS0gdGhlIGtlcm5l
bCBtZXNzYWdlcyBsb2dnZWQgcmVnYXJkbGVzcyBvZiB3aGV0aGVyIG9yIG5vdCB0aGUgcHJvYmxl
bSBvY2N1cnMgYXJlOgo+IAo+IG10NzYyMS1wY2kgMWUxNDAwMDAucGNpZTogUGFyc2luZyBEVCBm
YWlsZWQKPiBtdDc2MjFfZ3BpbyAxZTAwMDYwMC5ncGlvOiByZWdpc3RlcmluZyAzMiBncGlvcwo+
IG10NzYyMV9ncGlvIDFlMDAwNjAwLmdwaW86IHJlZ2lzdGVyaW5nIDMyIGdwaW9zCj4gbXQ3NjIx
X2dwaW8gMWUwMDA2MDAuZ3BpbzogcmVnaXN0ZXJpbmcgMzIgZ3Bpb3MKPiBzcGktbXQ3NjIxIDFl
MDAwYjAwLnNwaTogc3lzX2ZyZXE6IDIyNTAwMDAwMAo+IHJ0Mjg4MC1waW5tdXggcGluY3RybDog
cGNpZSBpcyBhbHJlYWR5IGVuYWJsZWQKPiBtdDc2MjEtcGNpIDFlMTQwMDAwLnBjaWU6IEVycm9y
IGFwcGx5aW5nIHNldHRpbmcsIHJldmVyc2UgdGhpbmdzIGJhY2sKPiBtdDc2MjEtcGNpIDFlMTQw
MDAwLnBjaWU6IFBvcnQgNDU0MDQzNjQ4IE5fRlRTID0gMAo+IG10NzYyMS1wY2ktcGh5IDFlMTQ5
MDAwLnBjaWUtcGh5OiBYdGFsIGlzIDQwTUh6Cj4gbXQ3NjIxLXBjaSAxZTE0MDAwMC5wY2llOiBQ
b3J0IDQ1NDA0MzY0OCBOX0ZUUyA9IDEKPiBtdDc2MjEtcGNpLXBoeSAxZTE0OTAwMC5wY2llLXBo
eTogWHRhbCBpcyA0ME1Iego+IG10NzYyMS1wY2kgMWUxNDAwMDAucGNpZTogUG9ydCA0NTQwNDM2
NDggTl9GVFMgPSAyCj4gbXQ3NjIxLXBjaS1waHkgMWUxNGEwMDAucGNpZS1waHk6IFh0YWwgaXMg
NDBNSHoKPiBtdDc2MjEtcGNpIDFlMTQwMDAwLnBjaWU6IFBDSUUwIGVuYWJsZWQKPiBtdDc2MjEt
cGNpIDFlMTQwMDAwLnBjaWU6IFBDSUUwIGVuYWJsZWQKPiBtdDc2MjEtcGNpIDFlMTQwMDAwLnBj
aWU6IFBDSUUwIGVuYWJsZWQKPiBtdDc2MjEtcGNpIDFlMTQwMDAwLnBjaWU6IFBDSSBjb2hlcmVu
Y2UgcmVnaW9uIGJhc2U6IDB4NjAwMDAwMDAsIG1hc2svc2V0dGluZ3M6IDB4ZjAwMDAwMDIKPiBt
dDc2MjEtcGNpIDFlMTQwMDAwLnBjaWU6IFBDSSBob3N0IGJyaWRnZSB0byBidXMgMDAwMDowMAo+
IHBjaV9idXMgMDAwMDowMDogcm9vdCBidXMgcmVzb3VyY2UgW2lvIMKgMHhmZmZmZmZmZl0KPiBw
Y2lfYnVzIDAwMDA6MDA6IHJvb3QgYnVzIHJlc291cmNlIFttZW0gMHg2MDAwMDAwMC0weDZmZmZm
ZmZmXQo+IHBjaV9idXMgMDAwMDowMDogcm9vdCBidXMgcmVzb3VyY2UgW2J1cyAwMC1mZl0KPiBw
Y2kgMDAwMDowMDowMC4wOiBicmlkZ2UgY29uZmlndXJhdGlvbiBpbnZhbGlkIChbYnVzIDAwLTAw
XSksIHJlY29uZmlndXJpbmcKPiBwY2kgMDAwMDowMDowMS4wOiBicmlkZ2UgY29uZmlndXJhdGlv
biBpbnZhbGlkIChbYnVzIDAwLTAwXSksIHJlY29uZmlndXJpbmcKPiBwY2kgMDAwMDowMDowMi4w
OiBicmlkZ2UgY29uZmlndXJhdGlvbiBpbnZhbGlkIChbYnVzIDAwLTAwXSksIHJlY29uZmlndXJp
bmcKPiAKPiBhdCB0aGF0IHBvaW50IHRoZSBib290IHByb2Nlc3Mgc29tZXRpbWVzIGhhbmdzLgoK
RldJVywgSSBzZWUgdGhpcyBvY2Nhc2lvbmFsIGhhbmcgaGVyZSB0b28uIFNvbWV0aW1lcyBpdCBi
b290cyB0aHJvdWdoLApzb21ldGltZXMgaGFuZ3MgLSB3aXRoIHVuY2hhbmdlZCBjb2RlLgoKRGlm
ZmVyZW5jZSBpcyB3aGVuIEkgZ2V0IGEgZ29vZCBib290LCBJIG5ldmVyIGdldCB0aGUgUENJIGJ1
cwpwcm9iZWQsIGFuZCBuZXZlciBhbnkgZGV2aWNlcyBmb3VuZC4KClJlZ2FyZHMKR3JlZwoKCj4g
V2hlbiBpdCBkb2VzIG5vdCBoYW5nLCBpdCBwcm9jZWVkcyB3aXRoOgo+IAo+IHBjaSAwMDAwOjAx
OjAwLjA6IDIuMDAwIEdiL3MgYXZhaWxhYmxlIFBDSWUgYmFuZHdpZHRoLCBsaW1pdGVkIGJ5IDIu
NSBHVC9zIHgxIGxpbmsgYXQgMDAwMDowMDowMC4wIChjYXBhYmxlIG9mIDQuMDAwIEdiL3Mgd2l0
aCA1IEdUL3MgeDEgbGluaykKPiBwY2kgMDAwMDowMDowMC4wOiBQQ0kgYnJpZGdlIHRvIFtidXMg
MDEtZmZdCj4gcGNpIDAwMDA6MDI6MDAuMDogMi4wMDAgR2IvcyBhdmFpbGFibGUgUENJZSBiYW5k
d2lkdGgsIGxpbWl0ZWQgYnkgMi41IEdUL3MgeDEgbGluayBhdCAwMDAwOjAwOjAxLjAgKGNhcGFi
bGUgb2YgNC4wMDAgR2IvcyB3aXRoIDUgR1QvcyB4MSBsaW5rKQo+IHBjaSAwMDAwOjAwOjAxLjA6
IFBDSSBicmlkZ2UgdG8gW2J1cyAwMi1mZl0KPiBwY2kgMDAwMDowMzowMC4wOiAyLjAwMCBHYi9z
IGF2YWlsYWJsZSBQQ0llIGJhbmR3aWR0aCwgbGltaXRlZCBieSAyLjUgR1QvcyB4MSBsaW5rIGF0
IDAwMDA6MDA6MDIuMCAoY2FwYWJsZSBvZiA0LjAwMCBHYi9zIHdpdGggNSBHVC9zIHgxIGxpbmsp
Cj4gcGNpIDAwMDA6MDA6MDIuMDogUENJIGJyaWRnZSB0byBbYnVzIDAzLWZmXQo+IAo+IGFuZCB0
aGVuIGRvZXMgYSBidW5jaCBvZiByZXNvdXJjZSBhc3NpZ25tZW50cyBhbmQgdGhpbmdzIGFuZCBh
bGwgaXMgd2VsbC4KPiAKPiBJJ20gYnVpbGRpbmcgYSBuZXcga2VybmVsIHdpdGggdGhlICJ1c2Ug
cGVyc3QgZ3BpbyBpbnN0ZWFkIG9mIGJ1aWx0aW4gcGVyc3QiIHBhdGNoIGFuZCB3aWxsIHJlcG9y
dCBiYWNrIG15IHJlc3VsdHMuIElmIHRoZXJlJ3MgYW55dGhpbmcgZWxzZSBJIGNhbiBkbyB0byBo
ZWxwLCBwbGVhc2UgbGV0IG1lIGtub3chCj4gCj4gLS0gCj4gQnJldHQgTmV1bWVpZXIgKGJuZXVt
ZWllckBnbWFpbC5jb20gPG1haWx0bzpibmV1bWVpZXJAZ21haWwuY29tPikKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRl
dmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnBy
b2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==

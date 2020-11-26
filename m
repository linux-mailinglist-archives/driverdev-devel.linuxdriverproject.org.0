Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 81DAA2C5E40
	for <lists+driverdev-devel@lfdr.de>; Fri, 27 Nov 2020 00:40:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 78CB02E23C;
	Thu, 26 Nov 2020 23:40:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aYv8oggRsiA2; Thu, 26 Nov 2020 23:39:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C7B3320469;
	Thu, 26 Nov 2020 23:39:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A142E1BF275
 for <devel@linuxdriverproject.org>; Thu, 26 Nov 2020 23:39:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8E805203A7
 for <devel@linuxdriverproject.org>; Thu, 26 Nov 2020 23:39:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8Ws-YNMW-dq8 for <devel@linuxdriverproject.org>;
 Thu, 26 Nov 2020 23:39:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by silver.osuosl.org (Postfix) with ESMTPS id CF14920397
 for <devel@driverdev.osuosl.org>; Thu, 26 Nov 2020 23:39:52 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 04CD01F460AC
Message-ID: <726ab182da7776bdb4f7205483442ce262293b57.camel@collabora.com>
Subject: Re: Re: [PATCH v3] media: cedrus: Add support for VP8 decoding
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Jernej =?UTF-8?Q?=C5=A0krabec?= <jernej.skrabec@siol.net>, 
 mripard@kernel.org, paul.kocialkowski@bootlin.com
Date: Thu, 26 Nov 2020 20:39:40 -0300
In-Reply-To: <2282897.HYN9I3zZbb@kista>
References: <20201110223540.4105284-1-jernej.skrabec@siol.net>
 <1496f292eadc62a3ab585a89cf9b997ce4a1d799.camel@collabora.com>
 <2282897.HYN9I3zZbb@kista>
Organization: Collabora
User-Agent: Evolution 3.36.3-1 
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
Cc: devel@driverdev.osuosl.org, Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org, hverkuil@xs4all.nl,
 wens@csie.org, mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gRnJpLCAyMDIwLTExLTI3IGF0IDAwOjQwICswMTAwLCBKZXJuZWogxaBrcmFiZWMgd3JvdGU6
Cj4gSGkhCj4gCj4gRG5lIHBldGVrLCAyNy4gbm92ZW1iZXIgMjAyMCBvYiAwMDoyMToxMSBDRVQg
amUgRXplcXVpZWwgR2FyY2lhIG5hcGlzYWwoYSk6Cj4gPiBIaSBKZXJuZWosIEVtbWFudWVsLAo+
ID4gCj4gPiBUaGFua3MgZm9yIHRoZSBwYXRjaC4KPiA+IAo+ID4gT24gVHVlLCAyMDIwLTExLTEw
IGF0IDIzOjM1ICswMTAwLCBKZXJuZWogU2tyYWJlYyB3cm90ZToKPiA+ID4gVlA4IGluIENlZHJ1
cyBzaGFyZXMgc2FtZSBlbmdpbmUgYXMgSDI2NC4KPiA+ID4gCj4gPiA+IE5vdGUgdGhhdCBpdCBz
ZWVtcyBuZWNlc3NhcnkgdG8gY2FsbCBiaXRzdHJlYW0gcGFyc2luZyBmdW5jdGlvbnMsCj4gPiA+
IHRvIHBhcnNlIGZyYW1lIGhlYWRlciwgb3RoZXJ3aXNlIGRlY29kZWQgaW1hZ2UgaXMgZ2FyYmFn
ZS4gVGhpcyBpcwo+ID4gPiBjb250cmFyeSB0byB3aGF0IGlzIGRyaXZlciBzdXBwb3NlZCB0byBk
by4gSG93ZXZlciwgdmFsdWVzIGFyZSBub3QKPiA+ID4gcmVhbGx5IHVzZWQsIHNvIHRoaXMgbWln
aHQgYmUgYWNjZXB0YWJsZS4gSXQncyBwb3NzaWJsZSB0aGF0IGJpdHN0cmVhbQo+ID4gPiBwYXJz
aW5nIGZ1bmN0aW9ucyBzZXQgc29tZSBpbnRlcm5hbCBWUFUgc3RhdGUsIHdoaWNoIGlzIGxhdGVy
IG5lY2Vzc2FyeQo+ID4gPiBmb3IgcHJvcGVyIGRlY29kaW5nLiBCaWdnZXN0IHN1c3BlY3QgaXMg
IlZQOCBwcm9icyB1cGRhdGUiIHRyaWdnZXIuCj4gPiA+IAo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBK
ZXJuZWogU2tyYWJlYyA8amVybmVqLnNrcmFiZWNAc2lvbC5uZXQ+Cj4gPiA+IFthZGRyZXNzZWQg
aXNzdWVzIGZyb20gcmV2aWV3ZXJdCj4gPiA+IFNpZ25lZC1vZmYtYnk6IEVtbWFudWVsIEdpbCBQ
ZXlyb3QgPGxpbmttYXV2ZUBsaW5rbWF1dmUuZnI+Cj4gPiA+IC0tLQo+ID4gPiBDaGFuZ2VzIGlu
IHYzOgo+ID4gPiAtIGFkZHJlc3NlZCBjb21tZW50cyBmcm9tIEV6ZXF1aWVsIEdhcmNpYSAtIG5l
dyBjb21tZW50cywKPiA+ID4gICB1c2luZyBuZXcgbWFjcm9zIGZyb20gVlA4IFVBUEksIG5ldyBm
dW5jdGlvbiBmb3Igd2FpdGluZwo+ID4gPiAgIG9uIGJpdCB0byBiZSBzZXQKPiA+ID4gQ2hhbmdl
cyBpbiB2MjoKPiA+ID4gLSByZWJhc2VkIG9uIHRvcCBvZiBjdXJyZW50IGxpbnV4LW1lZGlhIG1h
c3RlciBicmFuY2gKPiA+ID4gCj4gPiA+IE5PVEU6IFRoaXMgbm93IGRlcGVuZHMgb24gZm9sbG93
aW5nIHBhdGNoOgo+ID4gPiBodHRwczovL3BhdGNod29yay5saW51eHR2Lm9yZy9wcm9qZWN0L2xp
bnV4LW1lZGlhL3BhdGNoLwo+IDIwMjAxMTA4MjAyMDIxLjQxODctMS1saW5rbWF1dmVAbGlua21h
dXZlLmZyLwo+ID4gCj4gPiBUaGUgcGF0Y2ggbG9va3MgZmFpcmx5IGdvb2QsIHNvIGxldCdzIHdh
aXQgYW5kIHNlZQo+ID4gd2hhdCBIYW5zLCBQYXVsIGFuZCBNYXhpbWUgdGhpbmsgYWJvdXQgaXQu
Cj4gPiAKPiA+IEZXSVcsIG15IGh1bWJsZSBSZXZpZXdlZC1ieTogRXplcXVpZWwgR2FyY2lhIDxl
emVxdWllbEBjb2xsYWJvcmEuY29tPgo+IAo+IFRoYW5rcyEKPiAKPiA+IEl0IHdvdWxkIGJlIGdv
b2QgdG8gbWFrZSBzdXJlIHRoaXMgZG9lc24ndCByZWdyZXNzCj4gPiB2NGwyLWNvbXBsaWFuY2Us
IG9yIGNhdXNlIHNvbWUgcmVncmVzc2lvbiBpbiBkZWNvZGluZy4KPiAKPiBJIGRpZG4ndCBpbmNs
dWRlIHY0bDItY29tcGxpYW5jZSBoZXJlLCBidXQgaXQgd2FzIGluIHByZXZpb3VzIHJldmlzaW9u
cy4gVGhpcyAKPiByZXZpc2lvbiBoYXMganVzdCBjb3NtZXRpY3MuIE5vdCBzdXJlIGhvdyBpdCBj
b3VsZCBjYXVzZSBhbnkgcmVncmVzc2lvbiBzaW5jZSAKPiBpdCdzIHByZXR0eSBzdGFuZGFsb25l
Lgo+IAoKWWVzLCBpbmRlZWQuCgo+ID4gTm90IHJlYWxseSBhIGJsb2NrZXIgdG8gbWVyZ2UgdGhp
cywgYnV0IEknbSB0aGlua2luZwo+ID4gdGhhdCBub3cgdGhhdCB3ZSBoYXZlIEZsdXN0ZXIgZm9y
IGNvbmZvcm1hbmNlIHRlc3RpbmcsCj4gPiB3ZSBjb3VsZCBhZGQgdGhlIFZQOCB2ZWN0b3JzIGFu
ZCB1c2UgdGhlbSBhZ2FpbnN0Cj4gPiBDZWRydXMgYW5kIEhhbnRybzoKPiA+IAo+ID4gaHR0cHM6
Ly9jaHJvbWl1bS5nb29nbGVzb3VyY2UuY29tL3dlYm0vdnA4LXRlc3QtdmVjdG9ycy8rL3JlZnMv
aGVhZHMvbWFzdGVyCj4gCj4gSSB0ZXN0ZWQgVlA4IHRlc3QgdmVjdG9ycyB3aXRoIGluaXRpYWwg
dmVyc2lvbiBvZiB0aGlzIGRlY29kZXIgYnkgaGFuZCBhbmQgYWxsIAo+IHZpZGVvcyB3ZXJlIHBy
b3Blcmx5IGRlY29kZWQgYXMgZmFyIGFzIEkgY2FuIHRlbGwuIEJ1dCBhdXRvbWF0ZWQgdGVzdGlu
ZyBpcyAKPiBhbHdheXMgd2VsY29tZS4KPiAKCk1vcmUgdGhlIHJlYXNvbiB0byBjb25zaWRlciB0
aGlzIHNhZmUgdG8gbWVyZ2UhCgpUaGFua3MsCkV6ZXF1aWVsCgo+IEJlc3QgcmVnYXJkcywKPiBK
ZXJuZWoKPiAKPiA+IFRoYW5rcywKPiA+IEV6ZXF1aWVsCj4gPiAKPiA+ID4gIGRyaXZlcnMvc3Rh
Z2luZy9tZWRpYS9zdW54aS9jZWRydXMvTWFrZWZpbGUgICB8ICAgMyArLQo+ID4gPiAgZHJpdmVy
cy9zdGFnaW5nL21lZGlhL3N1bnhpL2NlZHJ1cy9jZWRydXMuYyAgIHwgICA4ICsKPiA+ID4gIGRy
aXZlcnMvc3RhZ2luZy9tZWRpYS9zdW54aS9jZWRydXMvY2VkcnVzLmggICB8ICAyNCArCj4gPiA+
ICAuLi4vc3RhZ2luZy9tZWRpYS9zdW54aS9jZWRydXMvY2VkcnVzX2RlYy5jICAgfCAgIDUgKwo+
ID4gPiAgLi4uL3N0YWdpbmcvbWVkaWEvc3VueGkvY2VkcnVzL2NlZHJ1c19ody5jICAgIHwgICAy
ICsKPiA+ID4gIC4uLi9zdGFnaW5nL21lZGlhL3N1bnhpL2NlZHJ1cy9jZWRydXNfcmVncy5oICB8
ICA4MCArKwo+ID4gPiAgLi4uL3N0YWdpbmcvbWVkaWEvc3VueGkvY2VkcnVzL2NlZHJ1c192aWRl
by5jIHwgICA5ICsKPiA+ID4gIC4uLi9zdGFnaW5nL21lZGlhL3N1bnhpL2NlZHJ1cy9jZWRydXNf
dnA4LmMgICB8IDkwNyArKysrKysrKysrKysrKysrKysKPiA+ID4gIDggZmlsZXMgY2hhbmdlZCwg
MTAzNyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gPiA+ICBjcmVhdGUgbW9kZSAxMDA2
NDQgZHJpdmVycy9zdGFnaW5nL21lZGlhL3N1bnhpL2NlZHJ1cy9jZWRydXNfdnA4LmMKPiA+ID4g
Cj4gCj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
ZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2Ry
aXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2
LWRldmVsCg==

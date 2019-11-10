Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E9DBF7001
	for <lists+driverdev-devel@lfdr.de>; Mon, 11 Nov 2019 10:00:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 791E786CDB;
	Mon, 11 Nov 2019 09:00:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 53SHXa8OxV+M; Mon, 11 Nov 2019 09:00:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id F33B98359A;
	Mon, 11 Nov 2019 09:00:09 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 96D721BF954
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 11 Nov 2019 09:00:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 93C4A87E14
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 11 Nov 2019 09:00:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h9-+QV-PR36M
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 11 Nov 2019 09:00:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from blaine.gmane.org (195-159-176-226.customer.powertech.no
 [195.159.176.226])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 72A07876D8
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 11 Nov 2019 09:00:05 +0000 (UTC)
Received: from list by blaine.gmane.org with local (Exim 4.89)
 (envelope-from <glddd-devel@m.gmane.org>) id 1iU5YI-000lGy-AT
 for driverdev-devel@linuxdriverproject.org; Mon, 11 Nov 2019 10:00:02 +0100
X-Injected-Via-Gmane: http://gmane.org/
To: driverdev-devel@linuxdriverproject.org
From: "Andrey Jr. Melnikov" <temnota.am@gmail.com>
Subject: Re: [PATCH] mtd: rawnand: driver for Mediatek MT7621 SoC NAND flash
 controller
Date: Sun, 10 Nov 2019 20:37:45 +0300
Message-ID: <7gul9g-je5.ln1@banana.localnet>
References: <20191107073521.11413-1-gerg@kernel.org>
 <20191107092053.Horde.i3MVcW9RqZDOQBMADZX9fuc@www.vdorst.com>
 <20191110123531.5a27206a@collabora.com>
Mime-Version: 1.0
User-Agent: tin/2.2.1-20140504 ("Tober an Righ") (UNIX) (Linux/4.3.3-bananian
 (armv7l))
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
Cc: linux-mtd@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SW4gZ21hbmUubGludXguZHJpdmVycy5tdGQgQm9yaXMgQnJlemlsbG9uIDxib3Jpcy5icmV6aWxs
b25AY29sbGFib3JhLmNvbT4gd3JvdGU6Cj4gK1JpY2hhcmQgYW5kIE1pcXVlbAoKPiBPbiBUaHUs
IDA3IE5vdiAyMDE5IDA5OjIwOjUzICswMDAwCj4gUmVuw6kgdmFuIERvcnN0IDxvcGVuc291cmNl
QHZkb3JzdC5jb20+IHdyb3RlOgoKPiA+IFF1b3RpbmcgZ2VyZ0BrZXJuZWwub3JnOgo+ID4gCj4g
PiA+IEZyb206IEdyZWcgVW5nZXJlciA8Z2VyZ0BrZXJuZWwub3JnPgoKWy4uc2tpcHAuLl0KCj4g
PiArQ0MgREVORyBRaW5nZmFuZywgQ2h1YW5ob25nIEd1bywgV2VpamllIEdhbyB0byB0aGUgbGlz
dC4KPiA+IAo+ID4gSGkgR3JlZywKPiA+IAo+ID4gVGhhbmtzIGZvciBwb3N0aW5nIHRoaXMgZHJp
dmVyLgo+ID4gCj4gPiBCdXQgSSB3b3VsZCBsaWtlIHRvIG1lbnRpb24gdGhhdCB0aGUgb3Blbndy
dCBjb21tdW5pdHkgaXMgY3VycmVudGx5ICAKPiA+IHdvcmtpbmcgb24gYQo+ID4gbmV3IHZlcnNp
b24gd2hpY2ggaXMgYmFzZWQgYSBuZXdlciB2ZXJzaW9uIG9mIHRoZSBNZWRpYVRlayB2ZW5kb3Ig
ZHJpdmVyLgo+ID4gVGhhdCB2ZXJzaW9uIGlzIGN1cnJlbnRseSB0YXJnZXRlZCBmb3IgdGhlIG9w
ZW53cnQgNC4xOSBrZXJuZWwuCj4gPiBTZWUgZnVsbCBwdWxsIHJlcXVlc3QgWzFdIGFuZCBOQU5E
IGRyaXZlciBwYXRjaCBbMl0KPiA+IAo+ID4gSXQgd291bGQgYmUgYSBzaGFtZSBpZiBkdXBsaWNh
dGUgd29yayBoYXMgYmVlbiBkb25lLgoKPiBTb3JyeSwgYnV0IGlmIHRoZXJlJ3MgZHVwbGljYXRl
IGVmZm9ydCB0aGF0J3Mga2luZGEgeW91ciAoT3BlbldSVCBmb2xrcykKPiBmYXVsdDogc2luY2Ug
d2hlbiBPcGVuV1JUIGlzIHRoZSBjZW50cmFsIHBvaW50IGZvciBrZXJuZWwgZHJpdmVycz8KPiBD
b3JyZWN0IG1lIGlmIEknbSB3cm9uZywgYnV0IEkgZG9uJ3QgcmVtZW1iZXIgc2VlaW5nIHRoaXMg
ZHJpdmVyIHBvc3RlZAo+IHRvIHRoZSBNVEQgTUwuIFBsdXMsIHRoZSBkcml2ZXIgeW91J3JlIHBv
aW50aW5nIHRvIHN0aWxsIGltcGxlbWVudHMgdGhlCj4gbGVnYWN5IGhvb2tzIGFuZCBpcyBiYXNl
ZCBvbiA0LjE5LCBhbmQgaXQgaGFzIGJlZW4gZGVjaWRlZCB0aGF0IGFsbCBuZXcKPiBOQU5EIGNv
bnRyb2xsZXIgZHJpdmVycyBzaG91bGQgaW1wbGVtZW50IHRoZSBuZXcgLT5leGVjX29wKCkgaG9v
awo+IGluc3RlYWQuCgpJJ20gYWxyZWFkeSBzZW50IHRvIEdyZWcgVW5nZXJlciA1LjMgdmFyaWFu
dCBvZiB0aGlzIHBhdGNoLgpidXQgaXQ6Ci0gUElPIG9ubHkgKG9sZCBkcml2ZXIgZnJvbSAzLjQu
eCBrZXJuZWwgaGF2ZSAiRE1BIikKLSBzdHJhbmdlIFNMT1cgKDQuMTkgb24gc2FtZSBoYXJkd2Fy
ZSBpcyBmYXN0ZXIpCgp5b3UgbWF5IGdyYWIgaXQgZnJvbSBodHRwOi8vbGMudnJ0cHJvLnJ1L2xl
ZGUvNS4zLW5ldy1tdGs3NjIxLW5hbmQtZHJpdmVyLnBhdGNoCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGlu
dXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5v
cmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK

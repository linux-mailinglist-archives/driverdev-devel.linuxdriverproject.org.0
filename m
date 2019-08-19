Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6DFB91C77
	for <lists+driverdev-devel@lfdr.de>; Mon, 19 Aug 2019 07:25:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3D4AF879C3;
	Mon, 19 Aug 2019 05:25:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A6bRLw8+EYaE; Mon, 19 Aug 2019 05:25:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A569584ADE;
	Mon, 19 Aug 2019 05:25:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 04EC01BF41B
 for <devel@linuxdriverproject.org>; Mon, 19 Aug 2019 05:25:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 020982040B
 for <devel@linuxdriverproject.org>; Mon, 19 Aug 2019 05:25:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jAe5w+Rch3kz for <devel@linuxdriverproject.org>;
 Mon, 19 Aug 2019 05:25:41 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id A53762040A
 for <devel@driverdev.osuosl.org>; Mon, 19 Aug 2019 05:25:41 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0C80C2087E;
 Mon, 19 Aug 2019 05:25:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566192341;
 bh=AwTUduT9b22UbtIBvD/06jT9jdDhKUoHKsa26bnugjw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gd+A7R4e6F3qWauynpPW2cCYzfyMKPTuWJGy+I9yt7Ou8mlwFwDAwJavSq18/njvn
 H3S7ngdvQxHxGxAoGKs9o5T1wQbHoaWayL9CwgicLX3pfId2DTaB3PNyplDmPoNAAO
 9EcA6H4cn+a0Z5Wypd/qOqHY4zecCaJ1F81EVvu4=
Date: Mon, 19 Aug 2019 07:25:39 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: "Zhao, Yakui" <yakui.zhao@intel.com>
Subject: Re: [RFC PATCH 00/15] acrn: add the ACRN driver module
Message-ID: <20190819052539.GB915@kroah.com>
References: <1565922356-4488-1-git-send-email-yakui.zhao@intel.com>
 <20190816063925.GB18980@zn.tnic> <20190816070343.GA1368@kroah.com>
 <30d31b78-7da6-5344-6f64-b7273b40f611@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <30d31b78-7da6-5344-6f64-b7273b40f611@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: devel@driverdev.osuosl.org, x86@kernel.org, Borislav Petkov <bp@alien8.de>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gTW9uLCBBdWcgMTksIDIwMTkgYXQgMTA6Mzk6MzJBTSArMDgwMCwgWmhhbywgWWFrdWkgd3Jv
dGU6Cj4gCj4gCj4gT24gMjAxOeW5tDA45pyIMTbml6UgMTU6MDMsIEdyZWcgS0ggd3JvdGU6Cj4g
PiBPbiBGcmksIEF1ZyAxNiwgMjAxOSBhdCAwODozOToyNUFNICswMjAwLCBCb3Jpc2xhdiBQZXRr
b3Ygd3JvdGU6Cj4gPiA+IE9uIEZyaSwgQXVnIDE2LCAyMDE5IGF0IDEwOjI1OjQxQU0gKzA4MDAs
IFpoYW8gWWFrdWkgd3JvdGU6Cj4gPiA+ID4gVGhlIGZpcnN0IHRocmVlIHBhdGNoZXMgYXJlIHRo
ZSBjaGFuZ2VzIHVuZGVyIHg4Ni9hY3JuLCB3aGljaCBhZGRzIHRoZQo+ID4gPiA+IHJlcXVpcmVk
IEFQSXMgZm9yIHRoZSBkcml2ZXIgYW5kIHJlcG9ydHMgdGhlIFgyQVBJQyBjYXBzLgo+ID4gPiA+
IFRoZSByZW1haW5pbmcgcGF0Y2hlcyBhZGQgdGhlIEFDUk4gZHJpdmVyIG1vZHVsZSwgd2hpY2gg
YWNjZXB0cyB0aGUgaW9jdGwKPiA+ID4gPiBmcm9tIHVzZXItc3BhY2UgYW5kIHRoZW4gY29tbXVu
aWNhdGUgd2l0aCB0aGUgbG93LWxldmVsIEFDUk4gaHlwZXJ2aXNvcgo+ID4gPiA+IGJ5IHVzaW5n
IGh5cGVyY2FsbC4KPiA+ID4gCj4gPiA+IEkgaGF2ZSBhIHByb2JsZW0gd2l0aCB0aGF0OiB5b3Un
cmUgYWRkaW5nIGludGVyZmFjZXMgdG8gYXJjaC94ODYvIGFuZAo+ID4gPiBpdHMgdXNlcnMgZ28g
aW50byBzdGFnaW5nLiBXaHk/IFdoeSBub3QgZGlyZWN0bHkgcHV0IHRoZSBkcml2ZXIgd2hlcmUK
PiA+ID4gaXQgYmVsb25ncywgY2xlYW4gaXQgdXAgcHJvcGVybHkgYW5kIHN1Ym1pdCBpdCBsaWtl
IGV2ZXJ5dGhpbmcgZWxzZSBpcwo+ID4gPiBzdWJtaXR0ZWQ/Cj4gPiA+IAo+ID4gPiBJIGRvbid0
IHdhbnQgdG8gaGF2ZSBzdHVmZiBpbiBhcmNoL3g4Ni8gd2hpY2ggaXMgdXNlZCBzb2xlbHkgYnkg
Y29kZSBpbgo+ID4gPiBzdGFnaW5nIGFuZCB0aGUgbGF0dGVyIGlzIGxpbmdlcmluZyB0aGVyZSBp
bmRlZmluaXRlbHkgYmVjYXVzZSBubyBvbmUgaXMKPiA+ID4gY2xlYW5pbmcgaXQgdXAuLi4KPiA+
IAo+ID4gSSBhZ3JlZSwgc3R1ZmYgaW4gZHJpdmVycy9zdGFnaW5nLyBtdXN0IGJlIHNlbGYtY29u
dGFpbmVkLCB3aXRoIG5vCj4gPiBjaGFuZ2VzIG91dHNpZGUgb2YgdGhlIGNvZGUncyBzdWJkaXJl
Y3RvcnkgbmVlZGVkIGluIG9yZGVyIGZvciBpdCB0bwo+ID4gd29yay4gIFRoYXQgd2F5IGl0IGlz
IHRyaXZpYWwgZm9yIHVzIHRvIGRlbGV0ZSBpdCB3aGVuIGl0IG5ldmVyIGdldHMKPiA+IGNsZWFu
ZWQgdXAgOikKPiAKPiBUaGFua3MgZm9yIHBvaW50aW5nIG91dCB0aGUgcnVsZSBvZiBkcml2ZXJz
L3N0YWdpbmcuCj4gVGhlIGFjcm4gc3RhZ2luZyBkcml2ZXIgaXMgb25lIHNlbGYtY29udGFpbmVk
IGRyaXZlci4gQnV0IGl0IGhhcyBzb21lCj4gZGVwZW5kZW5jeSBvbiBhcmNoL3g4Ni9hY3JuIGFu
ZCBuZWVkIHRvIGNhbGwgdGhlIEFQSXMgaW4gYXJjaC94ODYvYWNybi4KClRoZW4gaXQgc2hvdWxk
IG5vdCBiZSBpbiBkcml2ZXJzL3N0YWdpbmcvICBQbGVhc2Ugd29yayB0byBnZXQgdGhpcwphY2Nl
cHRlZCAibm9ybWFsbHkiLgoKdGhhbmtzLAoKZ3JlZyBrLWgKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4
ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3Jn
L21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==

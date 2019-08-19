Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33D3C91B18
	for <lists+driverdev-devel@lfdr.de>; Mon, 19 Aug 2019 04:46:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id ED21C85C62;
	Mon, 19 Aug 2019 02:46:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jS3OcuPC1FJp; Mon, 19 Aug 2019 02:46:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6160B855C7;
	Mon, 19 Aug 2019 02:46:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 277B51BF3D6
 for <devel@linuxdriverproject.org>; Mon, 19 Aug 2019 02:46:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 241CE855C7
 for <devel@linuxdriverproject.org>; Mon, 19 Aug 2019 02:46:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jJaZjoaVquFx for <devel@linuxdriverproject.org>;
 Mon, 19 Aug 2019 02:46:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7C76684C5F
 for <devel@driverdev.osuosl.org>; Mon, 19 Aug 2019 02:46:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Aug 2019 19:46:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,403,1559545200"; d="scan'208";a="261698076"
Received: from genxtest-ykzhao.sh.intel.com (HELO [10.239.143.71])
 ([10.239.143.71])
 by orsmga001.jf.intel.com with ESMTP; 18 Aug 2019 19:46:31 -0700
Subject: Re: [RFC PATCH 00/15] acrn: add the ACRN driver module
To: Greg KH <gregkh@linuxfoundation.org>
References: <1565922356-4488-1-git-send-email-yakui.zhao@intel.com>
 <20190816063925.GB18980@zn.tnic> <20190816070343.GA1368@kroah.com>
From: "Zhao, Yakui" <yakui.zhao@intel.com>
Message-ID: <30d31b78-7da6-5344-6f64-b7273b40f611@intel.com>
Date: Mon, 19 Aug 2019 10:39:32 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <20190816070343.GA1368@kroah.com>
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
Cc: devel@driverdev.osuosl.org, x86@kernel.org, Borislav Petkov <bp@alien8.de>,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

CgpPbiAyMDE55bm0MDjmnIgxNuaXpSAxNTowMywgR3JlZyBLSCB3cm90ZToKPiBPbiBGcmksIEF1
ZyAxNiwgMjAxOSBhdCAwODozOToyNUFNICswMjAwLCBCb3Jpc2xhdiBQZXRrb3Ygd3JvdGU6Cj4+
IE9uIEZyaSwgQXVnIDE2LCAyMDE5IGF0IDEwOjI1OjQxQU0gKzA4MDAsIFpoYW8gWWFrdWkgd3Jv
dGU6Cj4+PiBUaGUgZmlyc3QgdGhyZWUgcGF0Y2hlcyBhcmUgdGhlIGNoYW5nZXMgdW5kZXIgeDg2
L2Fjcm4sIHdoaWNoIGFkZHMgdGhlCj4+PiByZXF1aXJlZCBBUElzIGZvciB0aGUgZHJpdmVyIGFu
ZCByZXBvcnRzIHRoZSBYMkFQSUMgY2Fwcy4KPj4+IFRoZSByZW1haW5pbmcgcGF0Y2hlcyBhZGQg
dGhlIEFDUk4gZHJpdmVyIG1vZHVsZSwgd2hpY2ggYWNjZXB0cyB0aGUgaW9jdGwKPj4+IGZyb20g
dXNlci1zcGFjZSBhbmQgdGhlbiBjb21tdW5pY2F0ZSB3aXRoIHRoZSBsb3ctbGV2ZWwgQUNSTiBo
eXBlcnZpc29yCj4+PiBieSB1c2luZyBoeXBlcmNhbGwuCj4+Cj4+IEkgaGF2ZSBhIHByb2JsZW0g
d2l0aCB0aGF0OiB5b3UncmUgYWRkaW5nIGludGVyZmFjZXMgdG8gYXJjaC94ODYvIGFuZAo+PiBp
dHMgdXNlcnMgZ28gaW50byBzdGFnaW5nLiBXaHk/IFdoeSBub3QgZGlyZWN0bHkgcHV0IHRoZSBk
cml2ZXIgd2hlcmUKPj4gaXQgYmVsb25ncywgY2xlYW4gaXQgdXAgcHJvcGVybHkgYW5kIHN1Ym1p
dCBpdCBsaWtlIGV2ZXJ5dGhpbmcgZWxzZSBpcwo+PiBzdWJtaXR0ZWQ/Cj4+Cj4+IEkgZG9uJ3Qg
d2FudCB0byBoYXZlIHN0dWZmIGluIGFyY2gveDg2LyB3aGljaCBpcyB1c2VkIHNvbGVseSBieSBj
b2RlIGluCj4+IHN0YWdpbmcgYW5kIHRoZSBsYXR0ZXIgaXMgbGluZ2VyaW5nIHRoZXJlIGluZGVm
aW5pdGVseSBiZWNhdXNlIG5vIG9uZSBpcwo+PiBjbGVhbmluZyBpdCB1cC4uLgo+IAo+IEkgYWdy
ZWUsIHN0dWZmIGluIGRyaXZlcnMvc3RhZ2luZy8gbXVzdCBiZSBzZWxmLWNvbnRhaW5lZCwgd2l0
aCBubwo+IGNoYW5nZXMgb3V0c2lkZSBvZiB0aGUgY29kZSdzIHN1YmRpcmVjdG9yeSBuZWVkZWQg
aW4gb3JkZXIgZm9yIGl0IHRvCj4gd29yay4gIFRoYXQgd2F5IGl0IGlzIHRyaXZpYWwgZm9yIHVz
IHRvIGRlbGV0ZSBpdCB3aGVuIGl0IG5ldmVyIGdldHMKPiBjbGVhbmVkIHVwIDopCgpUaGFua3Mg
Zm9yIHBvaW50aW5nIG91dCB0aGUgcnVsZSBvZiBkcml2ZXJzL3N0YWdpbmcuClRoZSBhY3JuIHN0
YWdpbmcgZHJpdmVyIGlzIG9uZSBzZWxmLWNvbnRhaW5lZCBkcml2ZXIuIEJ1dCBpdCBoYXMgc29t
ZSAKZGVwZW5kZW5jeSBvbiBhcmNoL3g4Ni9hY3JuIGFuZCBuZWVkIHRvIGNhbGwgdGhlIEFQSXMg
aW4gYXJjaC94ODYvYWNybi4KCklmIHRoZXJlIGlzIG5vIGRyaXZlciwgIHRoZSBBUEkgd2l0aG91
dCB1c2VyIGhhZCBiZXR0ZXIgbm90IGJlIGFkZGVkLgpJZiBBUEkgaXMgbm90IGFkZGVkLCAgdGhl
IGRyaXZlciBjYW4ndCBiZSBjb21waWxlZCBjb3JyZWN0bHkuClRoZSBBQ1JOIGRyaXZlciBpcyBv
bmUgbmV3IGRyaXZlci4gTWF5YmUgaXQgd2lsbCBoYXZlIHNvbWUgYnVncyBhbmQgbm90IApiZSBt
YXR1cmUuIFNvIHdlIHdhbnQgdG8gYWRkIHRoZSBkcml2ZXIgYXMgdGhlIHN0YWdpbmcuCgpXaGF0
IGlzIHRoZSBiZXR0ZXIgYXBwcm9hY2ggdG8gaGFuZGxlIHN1Y2ggc2NlbmFyaW8/Cgo+IAo+IFlv
dSBuZXZlciBzYXkgX3doeV8gdGhpcyBzaG91bGQgZ28gaW50byBkcml2ZXJzL3N0YWdpbmcvLCBu
b3IgZG8geW91Cj4gaGF2ZSBhIFRPRE8gZmlsZSBsaWtlIGFsbCBvdGhlciBzdGFnaW5nIGNvZGUg
dGhhdCBleHBsYWlucyBleGFjdGx5IHdoYXQKPiBuZWVkcyB0byBiZSBkb25lIHRvIGdldCBpdCBv
dXQgb2YgdGhlcmUuCgpPay4gVGhlIFRPRE8gZmlsZSB3aWxsIGJlIGFkZGVkIGluIG5leHQgdmVy
c2lvbi4KCgo+IAo+IHRoYW5rcywKPiAKPiBncmVnIGstaAo+IApfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGlu
dXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5v
cmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK

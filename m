Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CD67191ADF
	for <lists+driverdev-devel@lfdr.de>; Mon, 19 Aug 2019 03:51:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7065685570;
	Mon, 19 Aug 2019 01:51:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QXszJH3tti_I; Mon, 19 Aug 2019 01:51:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1FDEB8459B;
	Mon, 19 Aug 2019 01:51:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0E5F21BF423
 for <devel@linuxdriverproject.org>; Mon, 19 Aug 2019 01:51:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0AD8D8488A
 for <devel@linuxdriverproject.org>; Mon, 19 Aug 2019 01:51:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GCu8TXFf85zb for <devel@linuxdriverproject.org>;
 Mon, 19 Aug 2019 01:51:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CB37083668
 for <devel@driverdev.osuosl.org>; Mon, 19 Aug 2019 01:51:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Aug 2019 18:51:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,403,1559545200"; d="scan'208";a="202096627"
Received: from genxtest-ykzhao.sh.intel.com (HELO [10.239.143.71])
 ([10.239.143.71])
 by fmsmga004.fm.intel.com with ESMTP; 18 Aug 2019 18:51:24 -0700
Subject: Re: [RFC PATCH 00/15] acrn: add the ACRN driver module
To: Borislav Petkov <bp@alien8.de>
References: <1565922356-4488-1-git-send-email-yakui.zhao@intel.com>
 <20190816063925.GB18980@zn.tnic>
From: "Zhao, Yakui" <yakui.zhao@intel.com>
Message-ID: <78897bb2-e6eb-cac2-7166-eccb7cd5c959@intel.com>
Date: Mon, 19 Aug 2019 09:44:25 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <20190816063925.GB18980@zn.tnic>
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
Cc: devel@driverdev.osuosl.org, x86@kernel.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

CgpPbiAyMDE55bm0MDjmnIgxNuaXpSAxNDozOSwgQm9yaXNsYXYgUGV0a292IHdyb3RlOgo+IE9u
IEZyaSwgQXVnIDE2LCAyMDE5IGF0IDEwOjI1OjQxQU0gKzA4MDAsIFpoYW8gWWFrdWkgd3JvdGU6
Cj4+IFRoZSBmaXJzdCB0aHJlZSBwYXRjaGVzIGFyZSB0aGUgY2hhbmdlcyB1bmRlciB4ODYvYWNy
biwgd2hpY2ggYWRkcyB0aGUKPj4gcmVxdWlyZWQgQVBJcyBmb3IgdGhlIGRyaXZlciBhbmQgcmVw
b3J0cyB0aGUgWDJBUElDIGNhcHMuCj4+IFRoZSByZW1haW5pbmcgcGF0Y2hlcyBhZGQgdGhlIEFD
Uk4gZHJpdmVyIG1vZHVsZSwgd2hpY2ggYWNjZXB0cyB0aGUgaW9jdGwKPj4gZnJvbSB1c2VyLXNw
YWNlIGFuZCB0aGVuIGNvbW11bmljYXRlIHdpdGggdGhlIGxvdy1sZXZlbCBBQ1JOIGh5cGVydmlz
b3IKPj4gYnkgdXNpbmcgaHlwZXJjYWxsLgo+IAo+IEkgaGF2ZSBhIHByb2JsZW0gd2l0aCB0aGF0
OiB5b3UncmUgYWRkaW5nIGludGVyZmFjZXMgdG8gYXJjaC94ODYvIGFuZAo+IGl0cyB1c2VycyBn
byBpbnRvIHN0YWdpbmcuIFdoeT8gV2h5IG5vdCBkaXJlY3RseSBwdXQgdGhlIGRyaXZlciB3aGVy
ZQo+IGl0IGJlbG9uZ3MsIGNsZWFuIGl0IHVwIHByb3Blcmx5IGFuZCBzdWJtaXQgaXQgbGlrZSBl
dmVyeXRoaW5nIGVsc2UgaXMKPiBzdWJtaXR0ZWQ/CgpUaGFua3MgZm9yIHlvdXIgcmVwbHkgYW5k
IHRoZSBjb25jZXJuLgoKQWZ0ZXIgdGFraW5nIGEgbG9vayBhdCBzZXZlcmFsIGRyaXZlciBleGFt
cGxlcyhnbWE1MDAsIGFuZHJvaWQpLCBpdCAKc2VlbXMgdGhhdCB0aGV5IGFyZSBmaXJzdGx5IGFk
ZGVkIGludG8gZHJpdmVycy9zdGFnaW5nL1hYWCBhbmQgdGhlbiAKbW92ZWQgdG8gZHJpdmVycy9Y
WFggYWZ0ZXIgdGhlIGRyaXZlciBiZWNvbWVzIG1hdHVyZS4KU28gd2UgcmVmZXIgdG8gdGhpcyBt
ZXRob2QgdG8gdXBzdHJlYW0gQUNSTiBkcml2ZXIgcGFydC4KCklmIHRoZSBuZXcgZHJpdmVyIGNh
biBhbHNvIGJlIGFkZGVkIGJ5IHNraXBwaW5nIHRoZSBzdGFnaW5nIGFwcHJvYWNoLAp3ZSB3aWxs
IHJlZmluZSBpdCBhbmQgdGhlbiBzdWJtaXQgaXQgaW4gbm9ybWFsIHByb2Nlc3MuCj4gCj4gSSBk
b24ndCB3YW50IHRvIGhhdmUgc3R1ZmYgaW4gYXJjaC94ODYvIHdoaWNoIGlzIHVzZWQgc29sZWx5
IGJ5IGNvZGUgaW4KPiBzdGFnaW5nIGFuZCB0aGUgbGF0dGVyIGlzIGxpbmdlcmluZyB0aGVyZSBp
bmRlZmluaXRlbHkgYmVjYXVzZSBubyBvbmUgaXMKPiBjbGVhbmluZyBpdCB1cC4uLgo+IAoKVGhl
IEFDUk4gZHJpdmVyIHdpbGwgYmUgdGhlIG9ubHkgdXNlciBvZiB0aGUgYWRkZWQgQVBJcyBpbiB4
ODYvYWNybi4gCldpdGhvdXQgdGhlIEFQSXMgaW4geDg2L2Fjcm4sIHRoZSBkcml2ZXIgY2FuJ3Qg
YWRkIHRoZSBkcml2ZXItc3BlY2lmYyAKdXBjYWxsIG5vdGlmaWNhdGlvbiBJU1Igb3IgY2FsbCB0
aGUgaHlwZXJjYWxsLgoKTm90IHN1cmUgd2hldGhlciBpdCBjYW4gYmUgc2VudCBpbiB0d28gcGF0
Y2ggc2V0cz8KVGhlIGZpcnN0IGlzIHRvIGFkZCB0aGUgcmVxdWlyZWQgQVBJcyBmb3IgQUNSTiBk
cml2ZXIuClRoZSBzZWNvbmQgaXMgdG8gYWRkIHRoZSBBQ1JOIGRyaXZlcgoKVGhhbmtzCiAgICBZ
YWt1aQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZl
bCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVy
ZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2
ZWwK

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AD3CE91CAB
	for <lists+driverdev-devel@lfdr.de>; Mon, 19 Aug 2019 07:46:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DDE1A856BF;
	Mon, 19 Aug 2019 05:46:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Pn9HvXCOASQO; Mon, 19 Aug 2019 05:46:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6FB9D847D5;
	Mon, 19 Aug 2019 05:46:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DCA3A1BF41B
 for <devel@linuxdriverproject.org>; Mon, 19 Aug 2019 05:46:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D9EAF847D5
 for <devel@linuxdriverproject.org>; Mon, 19 Aug 2019 05:46:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8dI_aCSForco for <devel@linuxdriverproject.org>;
 Mon, 19 Aug 2019 05:46:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5BCF684785
 for <devel@driverdev.osuosl.org>; Mon, 19 Aug 2019 05:46:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Aug 2019 22:46:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,403,1559545200"; d="scan'208";a="378084095"
Received: from genxtest-ykzhao.sh.intel.com (HELO [10.239.143.71])
 ([10.239.143.71])
 by fmsmga006.fm.intel.com with ESMTP; 18 Aug 2019 22:46:24 -0700
Subject: Re: [RFC PATCH 00/15] acrn: add the ACRN driver module
To: Greg KH <gregkh@linuxfoundation.org>
References: <1565922356-4488-1-git-send-email-yakui.zhao@intel.com>
 <20190816063925.GB18980@zn.tnic>
 <78897bb2-e6eb-cac2-7166-eccb7cd5c959@intel.com>
 <20190819052505.GA915@kroah.com>
From: "Zhao, Yakui" <yakui.zhao@intel.com>
Message-ID: <291ffa06-731d-d4d1-44f9-32d119303ae4@intel.com>
Date: Mon, 19 Aug 2019 13:39:25 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <20190819052505.GA915@kroah.com>
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

CgpPbiAyMDE55bm0MDjmnIgxOeaXpSAxMzoyNSwgR3JlZyBLSCB3cm90ZToKPiBPbiBNb24sIEF1
ZyAxOSwgMjAxOSBhdCAwOTo0NDoyNUFNICswODAwLCBaaGFvLCBZYWt1aSB3cm90ZToKPj4KPj4K
Pj4gT24gMjAxOeW5tDA45pyIMTbml6UgMTQ6MzksIEJvcmlzbGF2IFBldGtvdiB3cm90ZToKPj4+
IE9uIEZyaSwgQXVnIDE2LCAyMDE5IGF0IDEwOjI1OjQxQU0gKzA4MDAsIFpoYW8gWWFrdWkgd3Jv
dGU6Cj4+Pj4gVGhlIGZpcnN0IHRocmVlIHBhdGNoZXMgYXJlIHRoZSBjaGFuZ2VzIHVuZGVyIHg4
Ni9hY3JuLCB3aGljaCBhZGRzIHRoZQo+Pj4+IHJlcXVpcmVkIEFQSXMgZm9yIHRoZSBkcml2ZXIg
YW5kIHJlcG9ydHMgdGhlIFgyQVBJQyBjYXBzLgo+Pj4+IFRoZSByZW1haW5pbmcgcGF0Y2hlcyBh
ZGQgdGhlIEFDUk4gZHJpdmVyIG1vZHVsZSwgd2hpY2ggYWNjZXB0cyB0aGUgaW9jdGwKPj4+PiBm
cm9tIHVzZXItc3BhY2UgYW5kIHRoZW4gY29tbXVuaWNhdGUgd2l0aCB0aGUgbG93LWxldmVsIEFD
Uk4gaHlwZXJ2aXNvcgo+Pj4+IGJ5IHVzaW5nIGh5cGVyY2FsbC4KPj4+Cj4+PiBJIGhhdmUgYSBw
cm9ibGVtIHdpdGggdGhhdDogeW91J3JlIGFkZGluZyBpbnRlcmZhY2VzIHRvIGFyY2gveDg2LyBh
bmQKPj4+IGl0cyB1c2VycyBnbyBpbnRvIHN0YWdpbmcuIFdoeT8gV2h5IG5vdCBkaXJlY3RseSBw
dXQgdGhlIGRyaXZlciB3aGVyZQo+Pj4gaXQgYmVsb25ncywgY2xlYW4gaXQgdXAgcHJvcGVybHkg
YW5kIHN1Ym1pdCBpdCBsaWtlIGV2ZXJ5dGhpbmcgZWxzZSBpcwo+Pj4gc3VibWl0dGVkPwo+Pgo+
PiBUaGFua3MgZm9yIHlvdXIgcmVwbHkgYW5kIHRoZSBjb25jZXJuLgo+Pgo+PiBBZnRlciB0YWtp
bmcgYSBsb29rIGF0IHNldmVyYWwgZHJpdmVyIGV4YW1wbGVzKGdtYTUwMCwgYW5kcm9pZCksIGl0
IHNlZW1zCj4+IHRoYXQgdGhleSBhcmUgZmlyc3RseSBhZGRlZCBpbnRvIGRyaXZlcnMvc3RhZ2lu
Zy9YWFggYW5kIHRoZW4gbW92ZWQgdG8KPj4gZHJpdmVycy9YWFggYWZ0ZXIgdGhlIGRyaXZlciBi
ZWNvbWVzIG1hdHVyZS4KPj4gU28gd2UgcmVmZXIgdG8gdGhpcyBtZXRob2QgdG8gdXBzdHJlYW0g
QUNSTiBkcml2ZXIgcGFydC4KPiAKPiBUaG9zZSB0d28gZXhhbXBsZXMgYXJlIHByb2JhYmx5IHRo
ZSB3b3JzdCBleGFtcGxlcyB0byBldmVyIGxvb2sgYXQgOikKPiAKPiBUaGUgY29kZSBxdWFsaXR5
IG9mIHRob3NlIHN1Ym1pc3Npb25zIHdhcyBob3JyaWJsZSwgZ21hNTAwIHRvb2sgYSB2ZXJ5Cj4g
bG9uZyB0aW1lIHRvIGNsZWFuIHVwIGFuZCB0aGVyZSBhcmUgcGFydHMgb2YgdGhlIGFuZHJvaWQg
Y29kZSB0aGF0IGFyZQo+IHN0aWxsIGluIHN0YWdpbmcgdG8gdGhpcyBkYXkuCj4gCj4+IElmIHRo
ZSBuZXcgZHJpdmVyIGNhbiBhbHNvIGJlIGFkZGVkIGJ5IHNraXBwaW5nIHRoZSBzdGFnaW5nIGFw
cHJvYWNoLAo+PiB3ZSB3aWxsIHJlZmluZSBpdCBhbmQgdGhlbiBzdWJtaXQgaXQgaW4gbm9ybWFs
IHByb2Nlc3MuCj4gCj4gVGhhdCBpcyB0aGUgbm9ybWFsIHByb2Nlc3MsIHN0YWdpbmcgc2hvdWxk
IG5vdCBiZSBuZWVkZWQgYXQgYWxsIGZvciBhbnkKPiBjb2RlLiAgSXQgaXMgYSBmYWxsLWJhY2sg
Zm9yIHdoZW4gdGhlIGNvbXBhbnkgaW52b2x2ZWQgaGFzIG5vIGlkZWEgb2YKPiBob3cgdG8gdXBz
dHJlYW0gdGhlaXIgY29kZSwgd2hpY2ggc2hvdWxkIE5PVCBiZSB0aGUgY2FzZSBoZXJlLgoKVGhh
bmtzIGZvciB5b3VyIGV4cGxhbmF0aW9uLgoKT0suIFdlIHdpbGwgc3VibWl0IGl0IGluIG5vcm1h
bCBwcm9jZXNzLgoKPiAKPiB0aGFua3MsCj4gCj4gZ3JlZyBrLWgKPiAKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVs
QGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2pl
Y3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==

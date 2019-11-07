Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 32800F2B30
	for <lists+driverdev-devel@lfdr.de>; Thu,  7 Nov 2019 10:48:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6DE6F857BF;
	Thu,  7 Nov 2019 09:48:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DETMI-LCxxE2; Thu,  7 Nov 2019 09:48:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A5EC685549;
	Thu,  7 Nov 2019 09:48:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1CD991BF2E4
 for <devel@linuxdriverproject.org>; Thu,  7 Nov 2019 09:48:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0609585580
 for <devel@linuxdriverproject.org>; Thu,  7 Nov 2019 09:48:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sbOxoFCi_TP4 for <devel@linuxdriverproject.org>;
 Thu,  7 Nov 2019 09:48:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A1C95854A7
 for <devel@driverdev.osuosl.org>; Thu,  7 Nov 2019 09:48:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Nov 2019 01:48:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,277,1569308400"; d="scan'208";a="201359528"
Received: from linux.intel.com ([10.54.29.200])
 by fmsmga007.fm.intel.com with ESMTP; 07 Nov 2019 01:48:02 -0800
Received: from [10.226.38.236] (unknown [10.226.38.236])
 by linux.intel.com (Postfix) with ESMTP id A2C09580517;
 Thu,  7 Nov 2019 01:47:59 -0800 (PST)
Subject: Re: [PATCH v1] staging: intel-dpa: gswip: Introduce Gigabit Ethernet
 Switch (GSWIP) device driver
To: Greg KH <gregkh@linuxfoundation.org>, Andrew Lunn <andrew@lunn.ch>
References: <03832ecb6a34876ef26a24910816f22694c0e325.1572863013.git.jack.ping.chng@intel.com>
 <20191104122009.GA2126921@kroah.com> <20191104164209.GC16970@lunn.ch>
 <4D649A99D5D6C446954219080E51FB468192606D@BGSMSX103.gar.corp.intel.com>
From: "Chng, Jack Ping" <jack.ping.chng@linux.intel.com>
Message-ID: <5e7a5410-9797-817d-87c6-61dfce9df739@linux.intel.com>
Date: Thu, 7 Nov 2019 17:47:58 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <4D649A99D5D6C446954219080E51FB468192606D@BGSMSX103.gar.corp.intel.com>
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
Cc: "Kim, Cheol Yong" <cheol.yong.kim@intel.com>, devel@driverdev.osuosl.org,
 "Chng, Jack Ping" <jack.ping.chng@intel.com>, "Shevchenko,
 Andriy" <andriy.shevchenko@intel.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, mallikarjunax.reddy@linux.intel.com,
 davem@davemloft.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gTW9uLCBOb3YgMDQsIDIwMTkgYXQgMDE6MjA6MDlQTSArMDEwMCwgR3JlZyBLSCB3cm90ZToK
Pj4gT24gTW9uLCBOb3YgMDQsIDIwMTkgYXQgMDc6MjI6MjBQTSArMDgwMCwgSmFjayBQaW5nIENI
Tkcgd3JvdGU6Cj4+PiBUaGlzIGRyaXZlciBlbmFibGVzIHRoZSBJbnRlbCdzIExHTSBTb0MgR1NX
SVAgYmxvY2suCj4+PiBHU1dJUCBpcyBhIGNvcmUgbW9kdWxlIHRhaWxvcmVkIGZvciBMMi9MMy9M
NCsgZGF0YSBwbGFuZSBhbmQgUW9TIGZ1bmN0aW9ucy4KPj4+IEl0IGFsbG93cyBDUFVzIGFuZCBv
dGhlciBhY2NlbGVyYXRvcnMgY29ubmVjdGVkIHRvIHRoZSBTb0MgZGF0YXBhdGgKPj4+IHRvIGVu
cXVldWUgYW5kIGRlcXVldWUgcGFja2V0cyB0aHJvdWdoIERNQXMuCj4+PiBNb3N0IGNvbmZpZ3Vy
YXRpb24gdmFsdWVzIGFyZSBzdG9yZWQgaW4gdGFibGVzIHN1Y2ggYXMgUGFyc2luZyBhbmQKPj4+
IENsYXNzaWZpY2F0aW9uIEVuZ2luZSB0YWJsZXMsIEJ1ZmZlciBNYW5hZ2VyIHRhYmxlcyBhbmQg
UHNldWRvIE1BQwo+Pj4gdGFibGVzLgo+PiBXaHkgaXMgdGhpcyBiZWluZyBzdWJtaXR0ZWQgdG8g
c3RhZ2luZz8gIFdoYXQgaXMgd3Jvbmcgd2l0aCB0aGUgInJlYWwiCj4+IHBhcnQgb2YgdGhlIGtl
cm5lbCBmb3IgdGhpcz8KPj4KPj4gT3IgZXZlbiwgd2hhdCBpcyB3cm9uZyB3aXRoIHRoZSBjdXJy
ZW50IGRyaXZlcj8KPj4gZHJpdmVycy9uZXQvZHNhL2xhbnRpcV9nc3dpcC5jPwpHU1dJUCAoYSBu
ZXcgSFcgSVApIGlzIHBhcnQgb2YgSW50ZWwgRGF0YXBhdGggQXJjaGl0ZWN0dXJlIGRyaXZlcnMg
CmRlc2lnbiBmb3IgbmV3IEludGVsIG5ldHdvcmsvR1cgU29DIChMR00pLgpDdXJyZW50bHkgdGhl
cmUgYXJlIGZldyBvdGhlciBkcml2ZXJzIChmb3IgZGlmZmVyZW50IEhXIGJsb2NrcyBpbiB0aGUg
CmRhdGFwYXRoKSB3aGljaCBhcmUgc3RpbGwgdW5kZXIgaW50ZXJuYWwgY29kZSByZXZpZXcuCk9u
Y2UgaXQgaXMgZG9uZSB3ZSBhcmUgcGxhbm5pbmcgdG8gc3VibWl0wqAgc3RhZ2luZyBmb2xkZXIu
ClNpbmNlIHRoZSBkZXZlbG9wbWVudCBpcyBvbmdvaW5nLCB3ZSB0aG91Z2h0IGl0IGlzIGJlc3Qg
dG8gc3VibWl0IEdTV0lQIApmaXJzdCBpbiBkcml2ZXJzL3N0YWdpbmcvaW50ZWwtZHBhIGZvbGRl
ci4KSW4gdGhlIG1lYW50aW1lLCB3ZSB3aWxsIHByZXBhcmUgYSBtb3JlIGRldGFpbCBUT0RPIGxp
c3QgZm9yIGludGVsLWRwYSAKZm9sZGVyIGFuZCBhIFJFQURNRSB0byBpbnRyb2R1Y2UgdGhlIGRw
YS4KPj4gSmFjaywgeW91ciBwYXRjaCBkb2VzIG5vdCBzZWVtIHRvIG9mIG1hZGUgaXQgdG8gYW55
IG9mIHRoZSBsaXN0cy4gU28gaSBjYW5ub3QgY29tbWVudCBvbiBpdCBjb250ZW50cy4gSWYgdGhp
cyBpcyBhIHN3aXRjaCBkcml2ZXIsIHBsZWFzZSBlbnN1cmUgeW91IENjOiB0aGUgdXN1YWwgc3Vz
cGVjdHMgZm9yIHN3aXRjaCBkcml2ZXJzLgo+Pgo+PiAgICAgICAgIEFuZHJldwoKU3VyZSwgSSB3
aWxsIHJlc3VibWl0IG15IHBhdGNoLgoKQmVzdCByZWdhcmRzLApDaG5nIEphY2sgUGluZwoKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWls
aW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2Lmxp
bnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK

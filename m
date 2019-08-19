Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D2E5691BB5
	for <lists+driverdev-devel@lfdr.de>; Mon, 19 Aug 2019 06:09:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6897183445;
	Mon, 19 Aug 2019 04:09:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7wXjBwrmQXCE; Mon, 19 Aug 2019 04:09:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DDA068316D;
	Mon, 19 Aug 2019 04:09:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A235A1BF3BB
 for <devel@linuxdriverproject.org>; Mon, 19 Aug 2019 04:09:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 99ACD87877
 for <devel@linuxdriverproject.org>; Mon, 19 Aug 2019 04:09:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lJrvrOteGD6s for <devel@linuxdriverproject.org>;
 Mon, 19 Aug 2019 04:09:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D426E8786C
 for <devel@driverdev.osuosl.org>; Mon, 19 Aug 2019 04:09:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Aug 2019 21:09:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,403,1559545200"; d="scan'208";a="261713793"
Received: from genxtest-ykzhao.sh.intel.com (HELO [10.239.143.71])
 ([10.239.143.71])
 by orsmga001.jf.intel.com with ESMTP; 18 Aug 2019 21:09:32 -0700
Subject: Re: [RFC PATCH 04/15] drivers/acrn: add the basic framework of acrn
 char device driver
To: Greg KH <gregkh@linuxfoundation.org>
References: <1565922356-4488-1-git-send-email-yakui.zhao@intel.com>
 <1565922356-4488-5-git-send-email-yakui.zhao@intel.com>
 <20190816070559.GB1368@kroah.com>
From: "Zhao, Yakui" <yakui.zhao@intel.com>
Message-ID: <cedb90e7-da98-9075-e647-075fa3a3e7ae@intel.com>
Date: Mon, 19 Aug 2019 12:02:33 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <20190816070559.GB1368@kroah.com>
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
Cc: devel@driverdev.osuosl.org, x86@kernel.org, linux-kernel@vger.kernel.org,
 Jason Chen CJ <jason.cj.chen@intel.com>, Jack Ren <jack.ren@intel.com>,
 Liu Shuo <shuo.a.liu@intel.com>, Mingqiang Chi <mingqiang.chi@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

CgpPbiAyMDE55bm0MDjmnIgxNuaXpSAxNTowNSwgR3JlZyBLSCB3cm90ZToKPiBPbiBGcmksIEF1
ZyAxNiwgMjAxOSBhdCAxMDoyNTo0NUFNICswODAwLCBaaGFvIFlha3VpIHdyb3RlOgo+PiBBQ1JO
IGh5cGVydmlzb3Igc2VydmljZSBtb2R1bGUgaXMgdGhlIGltcG9ydGFudCBtaWRkbGUgbGF5ZXIg
dGhhdCBhbGxvd3MKPj4gdGhlIExpbnV4IGtlcm5lbCB0byBjb21tdW5pY2F0ZSB3aXRoIHRoZSBB
Q1JOIGh5cGVydmlzb3IuIEl0IGluY2x1ZGVzCj4+IHRoZSBtYW5hZ2VtZW50IG9mIHZpcnR1YWxp
emVkIENQVS9tZW1vcnkvZGV2aWNlL2ludGVycnVwdCBmb3Igb3RoZXIgQUNSTgo+PiBndWVzdC4g
VGhlIHVzZXItc3BhY2UgYXBwbGljYXRpb25zIGNhbiB1c2UgdGhlIHByb3ZpZGVkIEFDUk4gaW9j
dGxzIHRvCj4+IGludGVyYWN0IHdpdGggQUNSTiBoeXBlcnZpc29yIHRocm91Z2ggZGlmZmVyZW50
IGh5cGVyY2FsbHMuCj4+Cj4+IEFkZCBvbmUgYmFzaWMgZnJhbWV3b3JrIGZpcnN0bHkgYW5kIHRo
ZSBmb2xsb3dpbmcgcGF0Y2hlcyB3aWxsCj4+IGFkZCB0aGUgY29ycmVzcG9uZGluZyBpbXBsZW1l
bnRhdGlvbnMsIHdoaWNoIGluY2x1ZGVzIHRoZSBtYW5hZ2VtZW50IG9mCj4+IHZpcnR1YWxpemVk
IENQVS9tZW1vcnkvaW50ZXJydXB0IGFuZCB0aGUgZW11bGF0aW9uIG9mIE1NSU8vSU8vUENJIGFj
Y2Vzcy4KPj4gVGhlIGRldmljZSBmaWxlIG9mIC9kZXYvYWNybl9oc20gY2FuIGJlIGFjY2Vzc2Vk
IGluIHVzZXItc3BhY2UgdG8KPj4gY29tbXVuaWNhdGUgd2l0aCBBQ1JOIG1vZHVsZS4KPj4KPj4g
Q28tZGV2ZWxvcGVkLWJ5OiBKYXNvbiBDaGVuIENKIDxqYXNvbi5jai5jaGVuQGludGVsLmNvbT4K
Pj4gU2lnbmVkLW9mZi1ieTogSmFzb24gQ2hlbiBDSiA8amFzb24uY2ouY2hlbkBpbnRlbC5jb20+
Cj4+IENvLWRldmVsb3BlZC1ieTogSmFjayBSZW4gPGphY2sucmVuQGludGVsLmNvbT4KPj4gU2ln
bmVkLW9mZi1ieTogSmFjayBSZW4gPGphY2sucmVuQGludGVsLmNvbT4KPj4gQ28tZGV2ZWxvcGVk
LWJ5OiBNaW5ncWlhbmcgQ2hpIDxtaW5ncWlhbmcuY2hpQGludGVsLmNvbT4KPj4gU2lnbmVkLW9m
Zi1ieTogTWluZ3FpYW5nIENoaSA8bWluZ3FpYW5nLmNoaUBpbnRlbC5jb20+Cj4+IENvLWRldmVs
b3BlZC1ieTogTGl1IFNodW8gPHNodW8uYS5saXVAaW50ZWwuY29tPgo+PiBTaWduZWQtb2ZmLWJ5
OiBMaXUgU2h1byA8c2h1by5hLmxpdUBpbnRlbC5jb20+Cj4+IFNpZ25lZC1vZmYtYnk6IFpoYW8g
WWFrdWkgPHlha3VpLnpoYW9AaW50ZWwuY29tPgo+PiAtLS0KPj4gICBkcml2ZXJzL3N0YWdpbmcv
S2NvbmZpZyAgICAgICAgIHwgICAyICsKPiAKPiBBbHNvLCB5b3VyIHN1YmplY3QgbGluZSBmb3Ig
YWxsIG9mIHRoZXNlIHBhdGNoZXMgYXJlIHdyb25nLCBpdCBpcyBub3QKPiBkcml2ZXJzL2Fjcm4g
OigKClRoYW5rcyBmb3IgdGhlIHBvaW50aW5nIG91dCBpdC4KCkl0IHdpbGwgYmUgZml4ZWQuCgo+
IAo+IEFuZCB5b3UgZm9yZ290IHRvIGNjOiB0aGUgc3RhZ2luZyBtYWludGFpbmVyIDooCgpEbyB5
b3UgbWVhbiB0aGF0IHRoZSBtYWludGFpbmVyIG9mIHN0YWdpbmcgc3Vic3lzdGVtIGlzIGFsc28g
YWRkZWQgaW4gCnRoZSBwYXRjaCBjb21taXQgbG9nPwoKCj4gCj4gQXMgSSBoYXZlIHNhaWQgd2l0
aCBOVU1FUk9VUyBJbnRlbCBwYXRjaGVzIGluIHRoZSBwYXN0LCBJIG5vdyByZWZ1c2UgdG8KPiB0
YWtlIHBhdGNoZXMgZnJvbSB5b3UgYWxsIFdJVEhPVVQgaGF2aW5nIGl0IHNpZ25lZC1vZmYtYnkg
c29tZW9uZSBmcm9tCj4gdGhlIEludGVsICJPVEMiIGdyb3VwIChvciB3aGF0ZXZlciB0aGUgSW50
ZWwgTGludXggZ3JvdXAgaXMgY2FsbGVkIHRoZXNlCj4gZGF5cykuICBUaGV5IGFyZSBhIHJlc291
cmNlIHlvdSBjYW4gbm90IGlnbm9yZSwgYW5kIGlmIHlvdSBkbywgeW91IGp1c3QKPiBlbmQgdXAg
bWFraW5nIHRoZSByZXN0IG9mIHRoZSBrZXJuZWwgY29tbXVuaXR5IGdydW1weSBieSBoYXZpbmcg
dXMgZG8KPiB0aGVpciB3b3JrIGZvciB0aGVtIDooCj4gCj4gUGxlYXNlIHdvcmsgd2l0aCB0aGVt
LgoKT0suIEkgd2lsbCB3b3JrIHdpdGggc29tZSBwZW9wbGVzIGluIE9UQyBncm91cCB0byBwcmVw
YXJlIHRoZSBiZXR0ZXIgCkFDUk4gZHJpdmVyLgoKPiAKPiBncmVnIGstaAo+IApfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QK
ZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVy
cHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK

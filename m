Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1040991C79
	for <lists+driverdev-devel@lfdr.de>; Mon, 19 Aug 2019 07:26:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9F1CB20436;
	Mon, 19 Aug 2019 05:26:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WgEavqmP5FpS; Mon, 19 Aug 2019 05:26:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 87B502042C;
	Mon, 19 Aug 2019 05:26:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 114A21BF41B
 for <devel@linuxdriverproject.org>; Mon, 19 Aug 2019 05:26:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0E7312040A
 for <devel@linuxdriverproject.org>; Mon, 19 Aug 2019 05:26:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4hnvbPOL43-J for <devel@linuxdriverproject.org>;
 Mon, 19 Aug 2019 05:26:22 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 7877120338
 for <devel@driverdev.osuosl.org>; Mon, 19 Aug 2019 05:26:22 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D50BC2087E;
 Mon, 19 Aug 2019 05:26:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566192382;
 bh=8mqL7sJqdV6/4rHKJ1fvbrxryWKzfYZx2UQm6cr+Lx4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ron3YMkGmgUjS73C5r6xf1opxCK0Kg8aRrcqfOSFCPFjhqR+lSRPKkKxtxWuotyZ9
 cRtgbpGkjP8Ql46SBdHHIn2PMaXCC/8nNrjAvUcbckpVnniLEjf9hG/26UDt9sFrlv
 mol7mexXdm6LPwXLra4FZYgWTT6pmarJYUcDJ9do=
Date: Mon, 19 Aug 2019 07:26:19 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: "Zhao, Yakui" <yakui.zhao@intel.com>
Subject: Re: [RFC PATCH 04/15] drivers/acrn: add the basic framework of acrn
 char device driver
Message-ID: <20190819052619.GC915@kroah.com>
References: <1565922356-4488-1-git-send-email-yakui.zhao@intel.com>
 <1565922356-4488-5-git-send-email-yakui.zhao@intel.com>
 <20190816070559.GB1368@kroah.com>
 <cedb90e7-da98-9075-e647-075fa3a3e7ae@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cedb90e7-da98-9075-e647-075fa3a3e7ae@intel.com>
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
Cc: devel@driverdev.osuosl.org, x86@kernel.org, linux-kernel@vger.kernel.org,
 Jason Chen CJ <jason.cj.chen@intel.com>, Jack Ren <jack.ren@intel.com>,
 Liu Shuo <shuo.a.liu@intel.com>, Mingqiang Chi <mingqiang.chi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gTW9uLCBBdWcgMTksIDIwMTkgYXQgMTI6MDI6MzNQTSArMDgwMCwgWmhhbywgWWFrdWkgd3Jv
dGU6Cj4gCj4gCj4gT24gMjAxOeW5tDA45pyIMTbml6UgMTU6MDUsIEdyZWcgS0ggd3JvdGU6Cj4g
PiBPbiBGcmksIEF1ZyAxNiwgMjAxOSBhdCAxMDoyNTo0NUFNICswODAwLCBaaGFvIFlha3VpIHdy
b3RlOgo+ID4gPiBBQ1JOIGh5cGVydmlzb3Igc2VydmljZSBtb2R1bGUgaXMgdGhlIGltcG9ydGFu
dCBtaWRkbGUgbGF5ZXIgdGhhdCBhbGxvd3MKPiA+ID4gdGhlIExpbnV4IGtlcm5lbCB0byBjb21t
dW5pY2F0ZSB3aXRoIHRoZSBBQ1JOIGh5cGVydmlzb3IuIEl0IGluY2x1ZGVzCj4gPiA+IHRoZSBt
YW5hZ2VtZW50IG9mIHZpcnR1YWxpemVkIENQVS9tZW1vcnkvZGV2aWNlL2ludGVycnVwdCBmb3Ig
b3RoZXIgQUNSTgo+ID4gPiBndWVzdC4gVGhlIHVzZXItc3BhY2UgYXBwbGljYXRpb25zIGNhbiB1
c2UgdGhlIHByb3ZpZGVkIEFDUk4gaW9jdGxzIHRvCj4gPiA+IGludGVyYWN0IHdpdGggQUNSTiBo
eXBlcnZpc29yIHRocm91Z2ggZGlmZmVyZW50IGh5cGVyY2FsbHMuCj4gPiA+IAo+ID4gPiBBZGQg
b25lIGJhc2ljIGZyYW1ld29yayBmaXJzdGx5IGFuZCB0aGUgZm9sbG93aW5nIHBhdGNoZXMgd2ls
bAo+ID4gPiBhZGQgdGhlIGNvcnJlc3BvbmRpbmcgaW1wbGVtZW50YXRpb25zLCB3aGljaCBpbmNs
dWRlcyB0aGUgbWFuYWdlbWVudCBvZgo+ID4gPiB2aXJ0dWFsaXplZCBDUFUvbWVtb3J5L2ludGVy
cnVwdCBhbmQgdGhlIGVtdWxhdGlvbiBvZiBNTUlPL0lPL1BDSSBhY2Nlc3MuCj4gPiA+IFRoZSBk
ZXZpY2UgZmlsZSBvZiAvZGV2L2Fjcm5faHNtIGNhbiBiZSBhY2Nlc3NlZCBpbiB1c2VyLXNwYWNl
IHRvCj4gPiA+IGNvbW11bmljYXRlIHdpdGggQUNSTiBtb2R1bGUuCj4gPiA+IAo+ID4gPiBDby1k
ZXZlbG9wZWQtYnk6IEphc29uIENoZW4gQ0ogPGphc29uLmNqLmNoZW5AaW50ZWwuY29tPgo+ID4g
PiBTaWduZWQtb2ZmLWJ5OiBKYXNvbiBDaGVuIENKIDxqYXNvbi5jai5jaGVuQGludGVsLmNvbT4K
PiA+ID4gQ28tZGV2ZWxvcGVkLWJ5OiBKYWNrIFJlbiA8amFjay5yZW5AaW50ZWwuY29tPgo+ID4g
PiBTaWduZWQtb2ZmLWJ5OiBKYWNrIFJlbiA8amFjay5yZW5AaW50ZWwuY29tPgo+ID4gPiBDby1k
ZXZlbG9wZWQtYnk6IE1pbmdxaWFuZyBDaGkgPG1pbmdxaWFuZy5jaGlAaW50ZWwuY29tPgo+ID4g
PiBTaWduZWQtb2ZmLWJ5OiBNaW5ncWlhbmcgQ2hpIDxtaW5ncWlhbmcuY2hpQGludGVsLmNvbT4K
PiA+ID4gQ28tZGV2ZWxvcGVkLWJ5OiBMaXUgU2h1byA8c2h1by5hLmxpdUBpbnRlbC5jb20+Cj4g
PiA+IFNpZ25lZC1vZmYtYnk6IExpdSBTaHVvIDxzaHVvLmEubGl1QGludGVsLmNvbT4KPiA+ID4g
U2lnbmVkLW9mZi1ieTogWmhhbyBZYWt1aSA8eWFrdWkuemhhb0BpbnRlbC5jb20+Cj4gPiA+IC0t
LQo+ID4gPiAgIGRyaXZlcnMvc3RhZ2luZy9LY29uZmlnICAgICAgICAgfCAgIDIgKwo+ID4gCj4g
PiBBbHNvLCB5b3VyIHN1YmplY3QgbGluZSBmb3IgYWxsIG9mIHRoZXNlIHBhdGNoZXMgYXJlIHdy
b25nLCBpdCBpcyBub3QKPiA+IGRyaXZlcnMvYWNybiA6KAo+IAo+IFRoYW5rcyBmb3IgdGhlIHBv
aW50aW5nIG91dCBpdC4KPiAKPiBJdCB3aWxsIGJlIGZpeGVkLgo+IAo+ID4gCj4gPiBBbmQgeW91
IGZvcmdvdCB0byBjYzogdGhlIHN0YWdpbmcgbWFpbnRhaW5lciA6KAo+IAo+IERvIHlvdSBtZWFu
IHRoYXQgdGhlIG1haW50YWluZXIgb2Ygc3RhZ2luZyBzdWJzeXN0ZW0gaXMgYWxzbyBhZGRlZCBp
biB0aGUKPiBwYXRjaCBjb21taXQgbG9nPwoKRGlkIHlvdSBub3QgcnVuIHNjcmlwdHMvZ2V0X21h
aW50YWluZXIucGwgb24geW91ciBwYXRjaGVzIHRvIGRldGVybWluZQp3aG8gdG8gc2VuZCBwYXRj
aGVzIHRvPyAgQWx3YXlzIGRvIHRoYXQuCgo+ID4gQXMgSSBoYXZlIHNhaWQgd2l0aCBOVU1FUk9V
UyBJbnRlbCBwYXRjaGVzIGluIHRoZSBwYXN0LCBJIG5vdyByZWZ1c2UgdG8KPiA+IHRha2UgcGF0
Y2hlcyBmcm9tIHlvdSBhbGwgV0lUSE9VVCBoYXZpbmcgaXQgc2lnbmVkLW9mZi1ieSBzb21lb25l
IGZyb20KPiA+IHRoZSBJbnRlbCAiT1RDIiBncm91cCAob3Igd2hhdGV2ZXIgdGhlIEludGVsIExp
bnV4IGdyb3VwIGlzIGNhbGxlZCB0aGVzZQo+ID4gZGF5cykuICBUaGV5IGFyZSBhIHJlc291cmNl
IHlvdSBjYW4gbm90IGlnbm9yZSwgYW5kIGlmIHlvdSBkbywgeW91IGp1c3QKPiA+IGVuZCB1cCBt
YWtpbmcgdGhlIHJlc3Qgb2YgdGhlIGtlcm5lbCBjb21tdW5pdHkgZ3J1bXB5IGJ5IGhhdmluZyB1
cyBkbwo+ID4gdGhlaXIgd29yayBmb3IgdGhlbSA6KAo+ID4gCj4gPiBQbGVhc2Ugd29yayB3aXRo
IHRoZW0uCj4gCj4gT0suIEkgd2lsbCB3b3JrIHdpdGggc29tZSBwZW9wbGVzIGluIE9UQyBncm91
cCB0byBwcmVwYXJlIHRoZSBiZXR0ZXIgQUNSTgo+IGRyaXZlci4KClRoYW5rIHlvdS4KCmdyZWcg
ay1oCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVs
IG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJk
ZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZl
bAo=

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A76636C1A7
	for <lists+driverdev-devel@lfdr.de>; Tue, 27 Apr 2021 11:23:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C200883C5D;
	Tue, 27 Apr 2021 09:23:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id khnePdgk2v9D; Tue, 27 Apr 2021 09:23:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D97F983C2A;
	Tue, 27 Apr 2021 09:23:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 07C261BF2BE
 for <devel@linuxdriverproject.org>; Tue, 27 Apr 2021 09:22:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E80FA83BD5
 for <devel@linuxdriverproject.org>; Tue, 27 Apr 2021 09:22:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LHVtL3AmgNLI for <devel@linuxdriverproject.org>;
 Tue, 27 Apr 2021 09:22:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4A6AF83C2A
 for <devel@driverdev.osuosl.org>; Tue, 27 Apr 2021 09:22:57 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 64C6B6100B;
 Tue, 27 Apr 2021 09:22:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1619515377;
 bh=mETsHWHJFjweReeiHIdDntI2gC9ErHyRmi7GGdO1Me8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=cCzcG+yb+hGg8qBGDRs+1VUHDqPZWt84Wx3wIMLNN4e0Y/95F2zGyAdCJX4EBlwRU
 NjVBGuXtj41ZElmpkJpOtNVvnPehF73RRe0iGmVFmI6CXi29U7I3KraBMCWxNF+rJx
 gEeTwq+6ju13/7vdihq99/9UyzBpZCejElDhn5CiGCFTN13keERSMerkUIqETHMt3y
 wm8OlWzfcUM460bpVHHnSm2f4Zdtt83M6GfpMdlWa0SyuI+8LhVxSsxq1xW3Wt+JhI
 gFWtcWcFDgpseYiymNIOFHZZifrvbrmndQsOJkks7YTUszynMX90v+WeUV+D6AEDII
 baYjgQAH12f2A==
Date: Tue, 27 Apr 2021 11:22:50 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH 17/78] staging: media: vde: use pm_runtime_resume_and_get()
Message-ID: <20210427112250.5d40c4f4@coco.lan>
In-Reply-To: <2349831b-e7cd-d38d-fc19-5fabf06f773e@gmail.com>
References: <cover.1619191723.git.mchehab+huawei@kernel.org>
 <0eeb886803679cd908cb4576d35b2314993abd2c.1619191723.git.mchehab+huawei@kernel.org>
 <2349831b-e7cd-d38d-fc19-5fabf06f773e@gmail.com>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-redhat-linux-gnu)
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linuxarm@huawei.com, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-tegra@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 mauro.chehab@huawei.com, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGkgRG1pdHJ5LAoKRW0gU2F0LCAyNCBBcHIgMjAyMSAxMDozNToyMiArMDMwMApEbWl0cnkgT3Np
cGVua28gPGRpZ2V0eEBnbWFpbC5jb20+IGVzY3JldmV1OgoKPiAyNC4wNC4yMDIxIDA5OjQ0LCBN
YXVybyBDYXJ2YWxobyBDaGVoYWIg0L/QuNGI0LXRgjoKPiA+IENvbW1pdCBkZDgwODhkNWE4OTYg
KCJQTTogcnVudGltZTogQWRkIHBtX3J1bnRpbWVfcmVzdW1lX2FuZF9nZXQgdG8gZGVhbCB3aXRo
IHVzYWdlIGNvdW50ZXIiKQo+ID4gYWRkZWQgcG1fcnVudGltZV9yZXN1bWVfYW5kX2dldCgpIGlu
IG9yZGVyIHRvIGF1dG9tYXRpY2FsbHkgaGFuZGxlCj4gPiBkZXYtPnBvd2VyLnVzYWdlX2NvdW50
IGRlY3JlbWVudCBvbiBlcnJvcnMuCj4gPiAKPiA+IFVzZSB0aGUgbmV3IEFQSSwgaW4gb3JkZXIg
dG8gY2xlYW51cCB0aGUgZXJyb3IgY2hlY2sgbG9naWMuCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6
IE1hdXJvIENhcnZhbGhvIENoZWhhYiA8bWNoZWhhYitodWF3ZWlAa2VybmVsLm9yZz4KPiA+IC0t
LQo+ID4gIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS90ZWdyYS12ZGUvdmRlLmMgfCAxNiArKysrKysr
KysrLS0tLS0tCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDYgZGVsZXRp
b25zKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvdGVncmEt
dmRlL3ZkZS5jIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL3RlZ3JhLXZkZS92ZGUuYwo+ID4gaW5k
ZXggMjg4NDViNWJhZmFmLi44OTM2ZjE0MGEyNDYgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL3N0
YWdpbmcvbWVkaWEvdGVncmEtdmRlL3ZkZS5jCj4gPiArKysgYi9kcml2ZXJzL3N0YWdpbmcvbWVk
aWEvdGVncmEtdmRlL3ZkZS5jCj4gPiBAQCAtNzc1LDkgKzc3NSw5IEBAIHN0YXRpYyBpbnQgdGVn
cmFfdmRlX2lvY3RsX2RlY29kZV9oMjY0KHN0cnVjdCB0ZWdyYV92ZGUgKnZkZSwKPiA+ICAJaWYg
KHJldCkKPiA+ICAJCWdvdG8gcmVsZWFzZV9kcGJfZnJhbWVzOwo+ID4gIAo+ID4gLQlyZXQgPSBw
bV9ydW50aW1lX2dldF9zeW5jKGRldik7Cj4gPiArCXJldCA9IHBtX3J1bnRpbWVfcmVzdW1lX2Fu
ZF9nZXQoZGV2KTsKPiA+ICAJaWYgKHJldCA8IDApCj4gPiAtCQlnb3RvIHB1dF9ydW50aW1lX3Bt
Owo+ID4gKwkJZ290byB1bmxvY2s7Cj4gPiAgCj4gPiAgCS8qCj4gPiAgCSAqIFdlIHJlbHkgb24g
dGhlIFZERSByZWdpc3RlcnMgcmVzZXQgdmFsdWUsIG90aGVyd2lzZSBWREUKPiA+IEBAIC04NDMs
NiArODQzLDggQEAgc3RhdGljIGludCB0ZWdyYV92ZGVfaW9jdGxfZGVjb2RlX2gyNjQoc3RydWN0
IHRlZ3JhX3ZkZSAqdmRlLAo+ID4gIHB1dF9ydW50aW1lX3BtOgo+ID4gIAlwbV9ydW50aW1lX21h
cmtfbGFzdF9idXN5KGRldik7Cj4gPiAgCXBtX3J1bnRpbWVfcHV0X2F1dG9zdXNwZW5kKGRldik7
Cj4gPiArCj4gPiArdW5sb2NrOgo+ID4gIAltdXRleF91bmxvY2soJnZkZS0+bG9jayk7Cj4gPiAg
Cj4gPiAgcmVsZWFzZV9kcGJfZnJhbWVzOgo+ID4gQEAgLTEwNjksOCArMTA3MSw4IEBAIHN0YXRp
YyBpbnQgdGVncmFfdmRlX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gPiAg
CSAqIHBvd2VyLWN5Y2xlIGl0IGluIG9yZGVyIHRvIHB1dCBoYXJkd2FyZSBpbnRvIGEgcHJlZGlj
dGFibGUgbG93ZXIKPiA+ICAJICogcG93ZXIgc3RhdGUuCj4gPiAgCSAqLwo+ID4gLQlwbV9ydW50
aW1lX2dldF9zeW5jKGRldik7Cj4gPiAtCXBtX3J1bnRpbWVfcHV0KGRldik7Cj4gPiArCWlmIChw
bV9ydW50aW1lX3Jlc3VtZV9hbmRfZ2V0KGRldikgPj0gMCkKPiA+ICsJCXBtX3J1bnRpbWVfcHV0
KGRldik7Cj4gPiAgCj4gPiAgCXJldHVybiAwOwo+ID4gIAo+ID4gQEAgLTEwODgsOCArMTA5MCw5
IEBAIHN0YXRpYyBpbnQgdGVncmFfdmRlX3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpw
ZGV2KQo+ID4gIHsKPiA+ICAJc3RydWN0IHRlZ3JhX3ZkZSAqdmRlID0gcGxhdGZvcm1fZ2V0X2Ry
dmRhdGEocGRldik7Cj4gPiAgCXN0cnVjdCBkZXZpY2UgKmRldiA9ICZwZGV2LT5kZXY7Cj4gPiAr
CWludCByZXQ7Cj4gPiAgCj4gPiAtCXBtX3J1bnRpbWVfZ2V0X3N5bmMoZGV2KTsKPiA+ICsJcmV0
ID0gcG1fcnVudGltZV9yZXN1bWVfYW5kX2dldChkZXYpOwo+ID4gIAlwbV9ydW50aW1lX2RvbnRf
dXNlX2F1dG9zdXNwZW5kKGRldik7Cj4gPiAgCXBtX3J1bnRpbWVfZGlzYWJsZShkZXYpOwo+ID4g
IAo+ID4gQEAgLTEwOTcsNyArMTEwMCw4IEBAIHN0YXRpYyBpbnQgdGVncmFfdmRlX3JlbW92ZShz
dHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ID4gIAkgKiBCYWxhbmNlIFJQTSBzdGF0ZSwg
dGhlIFZERSBwb3dlciBkb21haW4gaXMgbGVmdCBPTiBhbmQgaGFyZHdhcmUKPiA+ICAJICogaXMg
Y2xvY2stZ2F0ZWQuIEl0J3Mgc2FmZSB0byByZWJvb3QgbWFjaGluZSBub3cuCj4gPiAgCSAqLwo+
ID4gLQlwbV9ydW50aW1lX3B1dF9ub2lkbGUoZGV2KTsKPiA+ICsJaWYgKHJldCA+PSAwKQo+ID4g
KwkJcG1fcnVudGltZV9wdXRfbm9pZGxlKGRldik7Cj4gPiAgCWNsa19kaXNhYmxlX3VucHJlcGFy
ZSh2ZGUtPmNsayk7Cj4gPiAgCj4gPiAgCW1pc2NfZGVyZWdpc3RlcigmdmRlLT5taXNjZGV2KTsK
PiA+ICAgCj4gCj4gSGVsbG8gTWF1cm8sCj4gCj4gVGhhbmsgeW91IHZlcnkgbXVjaCBmb3IgdGhl
IHBhdGNoLiBJdCBsb29rcyB0byBtZSB0aGF0IHRoZSBvcmlnaW5hbAo+IHZhcmlhbnQgd2FzIGEg
Yml0IHNpbXBsZXIsIHRoaXMgcGF0Y2ggYWRkcyBtb3JlIGNvZGUgbGluZXMgd2l0aG91dAo+IGNo
YW5naW5nIHRoZSBwcmV2aW91cyBiZWhhdmlvdXIuIE9yIGFtIEkgbWlzc2luZyBzb21ldGhpbmc/
CgpXaGlsZSBvbiBzZXZlcmFsIHBsYWNlcyB0aGUgbmV3ZXIgY29kZSBpcyBzaW1wbGVyLCB0aGUg
ZW5kIGdvYWwgaGVyZSBpcwp0byByZXBsYWNlIGFsbCBvY2N1cnJlbmNlcyBvZiBwbV9ydW50aW1l
X2dldF9zeW5jKCkgZnJvbSB0aGUgbWVkaWEgCnN1YnN5c3RlbSwgZHVlIHRvIHRoZSBudW1iZXIg
b2YgcHJvYmxlbXMgd2UncmUgaGF2aW5nIHdpdGggdGhpczoKCjEuIGRlc3BpdGUgaXRzIG5hbWUs
IHRoaXMgaXMgYWN0dWFsbHkgYSBQTSBydW50aW1lIHJlc3VtZSBjYWxsLAogICBidXQgc29tZSBk
ZXZlbG9wZXJzIGRpZG4ndCBzZWVtIHRvIHJlYWxpemUgdGhhdCwgYXMgSSBnb3QgdGhpcwogICBw
YXR0ZXJuIG9uIHNvbWUgZHJpdmVyczoKCiAgICAgICAgcG1fcnVudGltZV9nZXRfc3luYygmY2xp
ZW50LT5kZXYpOwogICAgICAgIHBtX3J1bnRpbWVfZGlzYWJsZSgmY2xpZW50LT5kZXYpOwogICAg
ICAgIHBtX3J1bnRpbWVfc2V0X3N1c3BlbmRlZCgmY2xpZW50LT5kZXYpOwogICAgICAgIHBtX3J1
bnRpbWVfcHV0X25vaWRsZSgmY2xpZW50LT5kZXYpOwoKICAgSXQgbWFrZXMgbm8gc2Vuc2UgdG8g
cmVzdW1lIFBNIGp1c3QgdG8gc3VzcGVuZCBpdCBhZ2FpbiA7LSkKCiAgIFRoZSBuYW1lIG9mIHRo
ZSBuZXcgdmFyaWFudCBpcyBhIGxvdCBjbGVhcmVyOgoJcG1fcnVudGltZV9yZXN1bWVfYW5kX2dl
dCgpCgoyLiBVc3VhbCAqX2dldCgpIG1ldGhvZHMgb25seSBpbmNyZW1lbnQgdGhlaXIgdXNlIGNv
dW50IG9uIHN1Y2Nlc3MsCiAgIGJ1dCBwbV9ydW50aW1lX2dldF9zeW5jKCkgaW5jcmVtZW50cyBp
dCB1bmNvbmRpdGlvbmFsbHkuIER1ZSB0bwogICB0aGF0LCBzZXZlcmFsIGRyaXZlcnMgd2VyZSBt
aXN0YWtlbmx5IG5vdCBjYWxsaW5nCiAgIHBtX3J1bnRpbWVfcHV0X25vaWRsZSgpIHdoZW4gaXQg
ZmFpbHM7CgozLiBDb25zaXN0ZW5jeTogd2UgZGlkIHNpbWlsYXIgY2hhbmdlcyBzdWJzeXN0ZW0g
d2lkZSB3aXRoCiAgIGZvciBpbnN0YW5jZSBzdHJsY3B5KCkgYW5kIHN0cmNweSgpIHRoYXQgZ290
IHJlcGxhY2VkIGJ5CiAgIHN0cnNjcHkoKS4gSGF2aW5nIGFsbCBkcml2ZXJzIHVzaW5nIHRoZSBz
YW1lIGtub3duLXRvLWJlLXNhZmUKICAgbWV0aG9kcyBpcyBhIGdvb2QgdGhpbmc7Cgo0LiBQcmV2
ZW50IG5ld2VyIGRyaXZlcnMgdG8gY29weS1hbmQtcGFzdGUgYSBjb2RlIHRoYXQgaXQgd291bGQK
ICAgYmUgZWFzaWVyIHRvIGJyZWFrIGlmIHRoZXkgZG9uJ3QgdHJ1bHkgdW5kZXJzdGFuZCB3aGF0
J3MgYmVoaW5kCiAgIHRoZSBzY2VuZXMuCgpUaGFua3MsCk1hdXJvCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBs
aW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=

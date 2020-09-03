Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 90E8525C288
	for <lists+driverdev-devel@lfdr.de>; Thu,  3 Sep 2020 16:28:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4439A86D26;
	Thu,  3 Sep 2020 14:28:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EwHwL4xWxBE9; Thu,  3 Sep 2020 14:27:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DBF6786CC1;
	Thu,  3 Sep 2020 14:27:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 71A711BF855
 for <devel@linuxdriverproject.org>; Thu,  3 Sep 2020 14:27:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6B934866AE
 for <devel@linuxdriverproject.org>; Thu,  3 Sep 2020 14:27:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vtnrS04Ut9va for <devel@linuxdriverproject.org>;
 Thu,  3 Sep 2020 14:27:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D5EC4864D4
 for <devel@driverdev.osuosl.org>; Thu,  3 Sep 2020 14:27:56 +0000 (UTC)
Received: from coco.lan (ip5f5ad5c3.dynamic.kabel-deutschland.de
 [95.90.213.195])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 521892072A;
 Thu,  3 Sep 2020 14:27:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1599143276;
 bh=RpJ/Acz/rkFmpeYcR0KIQTeH7ShlVwP3XrcWxrYHMBg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=YiD9KinC/bM6LRtBh7UMcfZV76qOTfP9S/SPTFurA4lfiNopWQVaOWwypGZhMtf6h
 xvM8EOYhHRnh0poIRllkIuhQFm/V6IByyWXAhdm0zpJqhR5bAsxa4xW9yAZX2NbxvX
 9aTQsVDku6BfHP3ww1QpHdVBkuo+5OXM9H5V/6RM=
Date: Thu, 3 Sep 2020 16:27:51 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Subject: Re: [PATCH 5/5] media: atomisp: get rid of
 -Wsuggest-attribute=format warnings
Message-ID: <20200903162751.1dd13300@coco.lan>
In-Reply-To: <20200903140724.GE1891694@smile.fi.intel.com>
References: <cover.1599141140.git.mchehab+huawei@kernel.org>
 <6c77d765707b1e6b2901fd23d85b4d032f1a1799.1599141140.git.mchehab+huawei@kernel.org>
 <20200903140724.GE1891694@smile.fi.intel.com>
X-Mailer: Claws Mail 3.17.6 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
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
 linux-kernel@vger.kernel.org, Sakari Ailus <sakari.ailus@linux.intel.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RW0gVGh1LCAzIFNlcCAyMDIwIDE3OjA3OjI0ICswMzAwCkFuZHkgU2hldmNoZW5rbyA8YW5kcml5
LnNoZXZjaGVua29AbGludXguaW50ZWwuY29tPiBlc2NyZXZldToKCj4gT24gVGh1LCBTZXAgMDMs
IDIwMjAgYXQgMDM6NTc6MzJQTSArMDIwMCwgTWF1cm8gQ2FydmFsaG8gQ2hlaGFiIHdyb3RlOgo+
ID4gVGhlcmUgYXJlIHNvbWUgd2FybmluZ3MgcmVwb3J0ZWQgYnkgZ2NjOgo+ID4gCWRyaXZlcnMv
c3RhZ2luZy9tZWRpYS9hdG9taXNwLy9wY2kvYXRvbWlzcF9jb21wYXRfY3NzMjAuYzoxNjQ6Mjog
d2FybmluZzogZnVuY3Rpb24g4oCYYXRvbWlzcF9jc3MyX2RiZ19wcmludOKAmSBtaWdodCBiZSBh
IGNhbmRpZGF0ZSBmb3Ig4oCYZ251X3ByaW50ZuKAmSBmb3JtYXQgYXR0cmlidXRlIFstV3N1Z2dl
c3QtYXR0cmlidXRlPWZvcm1hdF0KPiA+IAlkcml2ZXJzL3N0YWdpbmcvbWVkaWEvYXRvbWlzcC8v
cGNpL2F0b21pc3BfY29tcGF0X2NzczIwLmM6MTcwOjI6IHdhcm5pbmc6IGZ1bmN0aW9uIOKAmGF0
b21pc3BfY3NzMl9kYmdfZnRyYWNlX3ByaW504oCZIG1pZ2h0IGJlIGEgY2FuZGlkYXRlIGZvciDi
gJhnbnVfcHJpbnRm4oCZIGZvcm1hdCBhdHRyaWJ1dGUgWy1Xc3VnZ2VzdC1hdHRyaWJ1dGU9Zm9y
bWF0XQo+ID4gCWRyaXZlcnMvc3RhZ2luZy9tZWRpYS9hdG9taXNwLy9wY2kvYXRvbWlzcF9jb21w
YXRfY3NzMjAuYzoxNzA6Mjogd2FybmluZzogZnVuY3Rpb24g4oCYYXRvbWlzcF9jc3MyX2RiZ19m
dHJhY2VfcHJpbnTigJkgbWlnaHQgYmUgYSBjYW5kaWRhdGUgZm9yIOKAmGdudV9wcmludGbigJkg
Zm9ybWF0IGF0dHJpYnV0ZSBbLVdzdWdnZXN0LWF0dHJpYnV0ZT1mb3JtYXRdCj4gPiAJZHJpdmVy
cy9zdGFnaW5nL21lZGlhL2F0b21pc3AvL3BjaS9hdG9taXNwX2NvbXBhdF9jc3MyMC5jOjE3Njoy
OiB3YXJuaW5nOiBmdW5jdGlvbiDigJhhdG9taXNwX2NzczJfZXJyX3ByaW504oCZIG1pZ2h0IGJl
IGEgY2FuZGlkYXRlIGZvciDigJhnbnVfcHJpbnRm4oCZIGZvcm1hdCBhdHRyaWJ1dGUgWy1Xc3Vn
Z2VzdC1hdHRyaWJ1dGU9Zm9ybWF0XQo+ID4gCj4gPiBUaGF0IGFyZSBkdWUgdG8gdGhlIHVzYWdl
IG9mIHByaW50Zi1saWtlIG1lc3NhZ2VzIHdpdGhvdXQKPiA+IGVuYWJsaW5nIHRoZSBlcnJvciBj
aGVja2luZyBsb2dpYy4KPiA+IAo+ID4gQWRkIHRoZSBwcm9wZXIgYXR0cmlidXRlcyBpbiBvcmRl
ciB0byBzaHV0IHVwIHN1Y2ggd2FybmluZ3MuICAKPiAKPiA+ICtzdGF0aWMgaW50ICBfX2F0dHJp
YnV0ZV9fKChmb3JtYXQgKHByaW50ZiwgMSwgMCkpKQo+ID4gK2F0b21pc3BfY3NzMl9kYmdfZnRy
YWNlX3ByaW50KGNvbnN0IGNoYXIgKmZtdCwgdmFfbGlzdCBhcmdzKQo+ID4gIHsKPiA+ICAJZnRy
YWNlX3ZwcmludGsoZm10LCBhcmdzKTsKPiA+ICAJcmV0dXJuIDA7Cj4gPiAgfQo+ID4gICAgCj4g
Cj4gV2h5IG5vdCB0byBkcm9wIGl0IGNvbXBsZXRlbHkgYXMgd2VsbD8KCkJlY2F1c2Ugb2YgdGhp
czoKCgltYWtlIC1zIENDPSJnY2MgLWZuby1kaWFnbm9zdGljcy1zaG93LWNhcmV0IiBDRj0tRF9f
Q0hFQ0tfRU5ESUFOX18gQ09ORklHX0RFQlVHX1NFQ1RJT05fTUlTTUFUQ0g9eSAgVz0xIE09ZHJp
dmVycy9zdGFnaW5nL21lZGlhL2F0b21pc3AvIDI+JjF8Z3JlcCAtdiAiOiBJbiBmdW5jdGlvbiDi
gJgiCglkcml2ZXJzL3N0YWdpbmcvbWVkaWEvYXRvbWlzcC8vcGNpL2F0b21pc3BfY29tcGF0X2Nz
czIwLmM6ODU4OjUyOiBlcnJvcjog4oCYZnRyYWNlX3ZwcmludGvigJkgdW5kZWNsYXJlZCAoZmly
c3QgdXNlIGluIHRoaXMgZnVuY3Rpb24pOyBkaWQgeW91IG1lYW4g4oCYdHJhY2Vwb2ludOKAmT8K
CWRyaXZlcnMvc3RhZ2luZy9tZWRpYS9hdG9taXNwLy9wY2kvYXRvbWlzcF9jb21wYXRfY3NzMjAu
Yzo4NTg6NTI6IG5vdGU6IGVhY2ggdW5kZWNsYXJlZCBpZGVudGlmaWVyIGlzIHJlcG9ydGVkIG9u
bHkgb25jZSBmb3IgZWFjaCBmdW5jdGlvbiBpdCBhcHBlYXJzIGluCgpCYXNpY2FsbHksIGtlcm5l
bC5oIGRlZmluZXMgaXQgYXMgYSBtYWNybzoKCgkjZGVmaW5lIGZ0cmFjZV92cHJpbnRrKGZtdCwg
dmFyZ3MpCQkJCQlcCglkbyB7CQkJCQkJCQkJXAoJCWlmIChfX2J1aWx0aW5fY29uc3RhbnRfcChm
bXQpKSB7CQkJCVwKCQkJc3RhdGljIGNvbnN0IGNoYXIgKnRyYWNlX3ByaW50a19mbXQgX191c2Vk
CQlcCgkJCSAgX19hdHRyaWJ1dGVfXygoc2VjdGlvbigiX190cmFjZV9wcmludGtfZm10IikpKSA9
CVwKCQkJCV9fYnVpbHRpbl9jb25zdGFudF9wKGZtdCkgPyBmbXQgOiBOVUxMOwkJXAoJCQkJCQkJ
CQkJXAoJCQlfX2Z0cmFjZV92YnByaW50ayhfVEhJU19JUF8sIHRyYWNlX3ByaW50a19mbXQsIHZh
cmdzKTsJXAoJCX0gZWxzZQkJCQkJCQkJXAoJCQlfX2Z0cmFjZV92cHJpbnRrKF9USElTX0lQXywg
Zm10LCB2YXJncyk7CQlcCgl9IHdoaWxlICgwKQoKTm93LCBhIGRpZmZlcmVudCB0aGluZyB3b3Vs
ZCBiZSB0byBnZXQgcmlkIG9mIHVzaW5nIHRyYWNlIGFzIGEgZGVidWcKbWVjaGFuaXNtLiBSaWdo
dCBub3csIEkgZG9uJ3QgaGF2ZSBhbnkgc3Ryb25nIG9waW5pb24sIGJ1dCBJIGd1ZXNzCnRoYXQs
IHdoaWxlIHRoaXMgZHJpdmVyIGlzIHN0aWxsIGF0IHN0YWdpbmcsIGl0IHNvdW5kcyBnb29kIHRv
IGJlCmFibGUgb2YgdXNpbmcgdHJhY2VzIGluc3RlYWQgb2YgZG1lc2cgZm9yIGRlYnVnZ2luZyBw
dXJwb3NlcywgYnV0CnRvIGJlIGhvbmVzdCwgSSBkaWRuJ3QgdGVzdCB5ZXQgdG8gdXNlIGZ0cmFj
ZSBmb3Igc3VjaCBwdXJwb3NlLgoKVGhhbmtzLApNYXVybwpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhk
cml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcv
bWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK

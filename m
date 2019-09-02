Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C196A4CCE
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Sep 2019 02:26:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 53EE686B21;
	Mon,  2 Sep 2019 00:26:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dWqLM5BFUoAq; Mon,  2 Sep 2019 00:26:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id ED97886477;
	Mon,  2 Sep 2019 00:26:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C4E9B1BF2FF
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 00:26:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 99A4D86477
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 00:26:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Gbr6Osi6qHMk for <devel@linuxdriverproject.org>;
 Mon,  2 Sep 2019 00:26:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BDD718646F
 for <devel@driverdev.osuosl.org>; Mon,  2 Sep 2019 00:26:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Sep 2019 17:26:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,457,1559545200"; d="scan'208";a="381712188"
Received: from genxtest-ykzhao.sh.intel.com (HELO [10.239.143.71])
 ([10.239.143.71])
 by fmsmga005.fm.intel.com with ESMTP; 01 Sep 2019 17:26:06 -0700
Subject: Re: [RFC PATCH 09/15] drivers/acrn: add passthrough device support
To: Dan Carpenter <dan.carpenter@oracle.com>
References: <1565922356-4488-1-git-send-email-yakui.zhao@intel.com>
 <1565922356-4488-10-git-send-email-yakui.zhao@intel.com>
 <20190816130546.GA3632@kadam>
From: "Zhao, Yakui" <yakui.zhao@intel.com>
Message-ID: <32aef63c-725a-09ff-5419-179eb8bd534a@intel.com>
Date: Mon, 2 Sep 2019 08:18:35 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <20190816130546.GA3632@kadam>
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
Cc: devel@driverdev.osuosl.org, Gao@osuosl.org, Shiqing <shiqing.gao@intel.com>,
 Jason Chen CJ <jason.cj.chen@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

CgpPbiAyMDE55bm0MDjmnIgxNuaXpSAyMTowNSwgRGFuIENhcnBlbnRlciB3cm90ZToKPiBPbiBG
cmksIEF1ZyAxNiwgMjAxOSBhdCAxMDoyNTo1MEFNICswODAwLCBaaGFvIFlha3VpIHdyb3RlOgo+
PiArCWNhc2UgSUNfQVNTSUdOX1BUREVWOiB7Cj4+ICsJCXVuc2lnbmVkIHNob3J0IGJkZjsKPj4g
Kwo+PiArCQlpZiAoY29weV9mcm9tX3VzZXIoJmJkZiwgKHZvaWQgKilpb2N0bF9wYXJhbSwKPiAK
PiBUaGlzIGNhc3RpbmcgaXMgdWdseSBhbmQgeW91IGFsc28gbmVlZCBhIF9fdXNlciB0YWcgZm9y
IFNwYXJzZS4gIERvCj4gc29tZXRoaW5nIGxpa2UgInZvaWQgX191c2VyICpwID0gaW9jdGxfcGFy
YW07IgoKU3VyZS4gVGhlIF9fdXNlciB0YWcgd2lsbCBiZSBhZGRlZCBmb3IgdGhlIGlvY3RsX3Bh
cmFtIHBhcmFtZXRlciBvZiAKY29weV9mcm9tL3RvX3VzZXIuCgo+IAo+PiArCQkJCSAgIHNpemVv
Zih1bnNpZ25lZCBzaG9ydCkpKQo+PiArCQkJcmV0dXJuIC1FRkFVTFQ7Cj4+ICsKPj4gKwkJcmV0
ID0gaGNhbGxfYXNzaWduX3B0ZGV2KHZtLT52bWlkLCBiZGYpOwo+PiArCQlpZiAocmV0IDwgMCkg
ewo+PiArCQkJcHJfZXJyKCJhY3JuOiBmYWlsZWQgdG8gYXNzaWduIHB0ZGV2IVxuIik7Cj4+ICsJ
CQlyZXR1cm4gLUVGQVVMVDsKPiAKPiBQcmVzZXJ2ZSB0aGUgZXJyb3IgY29kZS4gICJyZXR1cm4g
cmV0OyIuCk9rLiBJdCB3aWxsIHByZXNlcnZlciB0aGUgZXJyIGNvZGUuCgo+IAo+PiArCQl9Cj4+
ICsJCWJyZWFrOwo+PiArCX0KPj4gKwljYXNlIElDX0RFQVNTSUdOX1BUREVWOiB7Cj4+ICsJCXVu
c2lnbmVkIHNob3J0IGJkZjsKPj4gKwo+PiArCQlpZiAoY29weV9mcm9tX3VzZXIoJmJkZiwgKHZv
aWQgKilpb2N0bF9wYXJhbSwKPj4gKwkJCQkgICBzaXplb2YodW5zaWduZWQgc2hvcnQpKSkKPj4g
KwkJCXJldHVybiAtRUZBVUxUOwo+PiArCj4+ICsJCXJldCA9IGhjYWxsX2RlYXNzaWduX3B0ZGV2
KHZtLT52bWlkLCBiZGYpOwo+PiArCQlpZiAocmV0IDwgMCkgewo+PiArCQkJcHJfZXJyKCJhY3Ju
OiBmYWlsZWQgdG8gZGVhc3NpZ24gcHRkZXYhXG4iKTsKPj4gKwkJCXJldHVybiAtRUZBVUxUOwo+
PiArCQl9Cj4+ICsJCWJyZWFrOwo+PiArCX0KPj4gKwo+PiArCWNhc2UgSUNfU0VUX1BUREVWX0lO
VFJfSU5GTzogewo+PiArCQlzdHJ1Y3QgaWNfcHRkZXZfaXJxIGljX3B0X2lycTsKPj4gKwkJc3Ry
dWN0IGhjX3B0ZGV2X2lycSAqaGNfcHRfaXJxOwo+PiArCj4+ICsJCWlmIChjb3B5X2Zyb21fdXNl
cigmaWNfcHRfaXJxLCAodm9pZCAqKWlvY3RsX3BhcmFtLAo+PiArCQkJCSAgIHNpemVvZihpY19w
dF9pcnEpKSkKPj4gKwkJCXJldHVybiAtRUZBVUxUOwo+PiArCj4+ICsJCWhjX3B0X2lycSA9IGtt
YWxsb2Moc2l6ZW9mKCpoY19wdF9pcnEpLCBHRlBfS0VSTkVMKTsKPj4gKwkJaWYgKCFoY19wdF9p
cnEpCj4+ICsJCQlyZXR1cm4gLUVOT01FTTsKPj4gKwo+PiArCQltZW1jcHkoaGNfcHRfaXJxLCAm
aWNfcHRfaXJxLCBzaXplb2YoKmhjX3B0X2lycSkpOwo+IAo+IFVzZSBtZW1kdXBfdXNlcigpLgoK
T0suIFRoZSBtZW1kdXBfdXNlciB3aWxsIGJlIHVzZWQuCgo+IAo+PiArCj4+ICsJCXJldCA9IGhj
YWxsX3NldF9wdGRldl9pbnRyX2luZm8odm0tPnZtaWQsCj4+ICsJCQkJCQl2aXJ0X3RvX3BoeXMo
aGNfcHRfaXJxKSk7Cj4+ICsJCWtmcmVlKGhjX3B0X2lycSk7Cj4+ICsJCWlmIChyZXQgPCAwKSB7
Cj4+ICsJCQlwcl9lcnIoImFjcm46IGZhaWxlZCB0byBzZXQgaW50ciBpbmZvIGZvciBwdGRldiFc
biIpOwo+PiArCQkJcmV0dXJuIC1FRkFVTFQ7Cj4+ICsJCX0KPj4gKwo+PiArCQlicmVhazsKPj4g
Kwl9Cj4gCj4gcmVnYXJkcywKPiBkYW4gY2FycGVudGVyCj4gCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51
eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=

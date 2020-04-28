Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 53C6E1BBD90
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Apr 2020 14:27:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 33168873C9;
	Tue, 28 Apr 2020 12:27:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SkHjxz+TQQSr; Tue, 28 Apr 2020 12:27:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0EFDF86F87;
	Tue, 28 Apr 2020 12:27:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0072B1BF32A
 for <devel@linuxdriverproject.org>; Tue, 28 Apr 2020 12:27:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DF33986F87
 for <devel@linuxdriverproject.org>; Tue, 28 Apr 2020 12:27:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GQcJ09lPBJKO for <devel@linuxdriverproject.org>;
 Tue, 28 Apr 2020 12:27:39 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3750F86EC9
 for <devel@driverdev.osuosl.org>; Tue, 28 Apr 2020 12:27:39 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 91611206A1;
 Tue, 28 Apr 2020 12:27:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588076859;
 bh=BeIUDCXaNXk1/Yn8iTjQgqj/5yEqrbdPmtej63GXm1U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pHRuYQheEnBePJ+i2yQhOYn6qiYFasj9ywN29ygmR8phOQrrEtSK97c+65r6dgsUc
 Jm63dEhk46Heqde1AxRHmuiePxa4PxRj293F2Wy1V0RSTuPLfUPiSYObnyewrGzoBP
 lJguJJ9QcgbvyHLoyGpcuNymJ9x5WfMHT6a4mavA=
Date: Tue, 28 Apr 2020 14:27:36 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Jason Yan <yanaijie@huawei.com>
Subject: Re: [PATCH 1/7] staging: rtl8723bs: os_dep: remove set but not used
 'uintRet'
Message-ID: <20200428122736.GA1253850@kroah.com>
References: <20200427032342.27211-1-yanaijie@huawei.com>
 <20200427032342.27211-2-yanaijie@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200427032342.27211-2-yanaijie@huawei.com>
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
Cc: devel@driverdev.osuosl.org, Hulk Robot <hulkci@huawei.com>,
 linux-kernel@vger.kernel.org, wambui.karugax@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gTW9uLCBBcHIgMjcsIDIwMjAgYXQgMTE6MjM6MzZBTSArMDgwMCwgSmFzb24gWWFuIHdyb3Rl
Ogo+IEZpeCB0aGUgZm9sbG93aW5nIGdjYyB3YXJuaW5nOgo+IAo+IGRyaXZlcnMvc3RhZ2luZy9y
dGw4NzIzYnMvb3NfZGVwL2lvY3RsX2xpbnV4LmM6MjU2NDoyMjogd2FybmluZzoKPiB2YXJpYWJs
ZSDigJh1aW50UmV04oCZIHNldCBidXQgbm90IHVzZWQgWy1XdW51c2VkLWJ1dC1zZXQtdmFyaWFi
bGVdCj4gICAgICAgICAgdW5zaWduZWQgaW50IHVpbnRSZXQgPSAwOwo+ICAgICAgICAgICAgICAg
ICAgICAgICBefn5+fn5+Cj4gCj4gUmVwb3J0ZWQtYnk6IEh1bGsgUm9ib3QgPGh1bGtjaUBodWF3
ZWkuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEphc29uIFlhbiA8eWFuYWlqaWVAaHVhd2VpLmNvbT4K
PiAtLS0KPiAgZHJpdmVycy9zdGFnaW5nL3J0bDg3MjNicy9vc19kZXAvaW9jdGxfbGludXguYyB8
IDYgKysrKy0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25z
KC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9ydGw4NzIzYnMvb3NfZGVwL2lv
Y3RsX2xpbnV4LmMgYi9kcml2ZXJzL3N0YWdpbmcvcnRsODcyM2JzL29zX2RlcC9pb2N0bF9saW51
eC5jCj4gaW5kZXggNTA1OWI4NzQwODBlLi45MDJhYzgxNjk5NDggMTAwNjQ0Cj4gLS0tIGEvZHJp
dmVycy9zdGFnaW5nL3J0bDg3MjNicy9vc19kZXAvaW9jdGxfbGludXguYwo+ICsrKyBiL2RyaXZl
cnMvc3RhZ2luZy9ydGw4NzIzYnMvb3NfZGVwL2lvY3RsX2xpbnV4LmMKPiBAQCAtMjU2MSwxNCAr
MjU2MSwxNiBAQCBzdGF0aWMgaW50IHJ0d193cHNfc3RhcnQoc3RydWN0IG5ldF9kZXZpY2UgKmRl
diwKPiAgCXN0cnVjdCBhZGFwdGVyICpwYWRhcHRlciA9IChzdHJ1Y3QgYWRhcHRlciAqKXJ0d19u
ZXRkZXZfcHJpdihkZXYpOwo+ICAJc3RydWN0IGl3X3BvaW50ICpwZGF0YSA9ICZ3cnF1LT5kYXRh
Owo+ICAJdTMyICAgdTMyd3BzX3N0YXJ0ID0gMDsKPiAtICAgICAgICB1bnNpZ25lZCBpbnQgdWlu
dFJldCA9IDA7Cj4gIAo+ICAJaWYgKCh0cnVlID09IHBhZGFwdGVyLT5iRHJpdmVyU3RvcHBlZCkg
fHwgKHRydWUgPT0gcGFkYXB0ZXItPmJTdXJwcmlzZVJlbW92ZWQpIHx8IChOVUxMID09IHBkYXRh
KSkgewo+ICAJCXJldCA9IC1FSU5WQUw7Cj4gIAkJZ290byBleGl0Owo+ICAJfQo+ICAKPiAtCXVp
bnRSZXQgPSBjb3B5X2Zyb21fdXNlcigodm9pZCAqKSZ1MzJ3cHNfc3RhcnQsIHBkYXRhLT5wb2lu
dGVyLCA0KTsKPiArCWlmIChjb3B5X2Zyb21fdXNlcigodm9pZCAqKSZ1MzJ3cHNfc3RhcnQsIHBk
YXRhLT5wb2ludGVyLCA0KSkgewo+ICsJCXJldCA9IC1FRkFVTFQ7Cj4gKwkJZ290byBleGl0Owo+
ICsJfQoKVGhpcyBhbHNvIGZpeGVzIHRoZSBpc3N1ZSBvZiBjb3B5X2Zyb21fdXNlciBub3QgYmVp
bmcgY2hlY2tlZCwgbmljZSEKCmdyZWcgay1oCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnBy
b2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=

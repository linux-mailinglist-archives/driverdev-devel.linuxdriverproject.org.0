Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1311513F4F
	for <lists+driverdev-devel@lfdr.de>; Sun,  5 May 2019 14:06:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7DEE78798D;
	Sun,  5 May 2019 12:06:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t-NpL6woRQBb; Sun,  5 May 2019 12:06:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id EE9628750A;
	Sun,  5 May 2019 12:06:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 69EDF1BF48B
 for <devel@linuxdriverproject.org>; Sun,  5 May 2019 12:06:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 663368744F
 for <devel@linuxdriverproject.org>; Sun,  5 May 2019 12:06:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L9KNxkULuchN for <devel@linuxdriverproject.org>;
 Sun,  5 May 2019 12:06:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CA36F8750A
 for <devel@driverdev.osuosl.org>; Sun,  5 May 2019 12:06:40 +0000 (UTC)
Received: from archlinux (cpc91196-cmbg18-2-0-cust659.5-4.cable.virginm.net
 [81.96.234.148])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 308212087F;
 Sun,  5 May 2019 12:06:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557058000;
 bh=i8IgdodhDZT8g5eCpvqZfSm1dEue2uSu7hzNSi3wo/g=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=cpZ1S1/AQ9rhuyjtEZDYnx4L2bY5l9lFvyP+OW+7a0LxVtFerBDlbkXXPdc8nm0pO
 0w1eRFNiSnFirzFkNkn7/dSeBJR7EOvvIqcJu8C2mFiBjGAFURigZcIhvu6MBT/OYb
 LCTDsoVGfOsfiXXlsWj4a8En2538tmbAQ72bj31M=
Date: Sun, 5 May 2019 13:06:34 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: =?UTF-8?B?Sm/Do28=?= Seckler <joaoseckler@gmail.com>
Subject: Re: [PATCH] staging: iio: adt7316: match parenthesis alignment
Message-ID: <20190505130634.4bd56579@archlinux>
In-Reply-To: <20190429175939.2jvt4qwrtbmpvhl6@smtp.gmail.com>
References: <20190429175939.2jvt4qwrtbmpvhl6@smtp.gmail.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
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
Cc: devel@driverdev.osuosl.org, lars@metafoo.de, stefan.popa@analog.com,
 Michael.Hennerich@analog.com, linux-iio@vger.kernel.org,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 kernel-usp@googlegroups.com, pmeerw@pmeerw.net, knaack.h@gmx.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gTW9uLCAyOSBBcHIgMjAxOSAxNDo1OTo0MCAtMDMwMApKb8OjbyBTZWNrbGVyIDxqb2Fvc2Vj
a2xlckBnbWFpbC5jb20+IHdyb3RlOgoKPiBUaGlzIHBhdGNoIHNvbHZlcyB0aGUgZm9sbG93aW5n
IGNoZWNrcGF0Y2gucGwgbWVzc2FnZToKPiBDSEVDSzogQWxpZ25tZW50IHNob3VsZCBtYXRjaCBv
cGVuIHBhcmVudGhlc2lzLgo+IFRoaXMgbWFrZXMgdGhlIGZpbGUgbW9yZSBjb21wbGlhbnQgd2l0
aCB0aGUgcHJlZmVycmVkIGNvZGluZyBzdHlsZSBmb3IKPiB0aGUgTGludXgga2VybmVsLgo+IAo+
IFNpZ25lZC1vZmYtYnk6IEpvw6NvIFNlY2tsZXIgPGpvYW9zZWNrbGVyQGdtYWlsLmNvbT4KQXBw
bGllZCB0byB0aGUgdG9ncmVnIGJyYW5jaCBvZiBpaW8uZ2l0IGFuZCBwdXNoZWQgb3V0IGFzIHRl
c3RpbmcgZm9yCnRoZSBhdXRvYnVpbGRlcnMgdG8gcGxheSB3aXRoIGl0LgoKVGhhbmtzLAoKSm9u
YXRoYW4KCj4gLS0tCj4gIGRyaXZlcnMvc3RhZ2luZy9paW8vYWRkYWMvYWR0NzMxNi5jIHwgMiAr
LQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiAKPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL2lpby9hZGRhYy9hZHQ3MzE2LmMgYi9kcml2ZXJz
L3N0YWdpbmcvaWlvL2FkZGFjL2FkdDczMTYuYwo+IGluZGV4IGI2YTY1ZWU4ZDU1OC4uMzdjZTU2
M2NiMGUxIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy9paW8vYWRkYWMvYWR0NzMxNi5j
Cj4gKysrIGIvZHJpdmVycy9zdGFnaW5nL2lpby9hZGRhYy9hZHQ3MzE2LmMKPiBAQCAtMjE1NCw3
ICsyMTU0LDcgQEAgaW50IGFkdDczMTZfcHJvYmUoc3RydWN0IGRldmljZSAqZGV2LCBzdHJ1Y3Qg
YWR0NzMxNl9idXMgKmJ1cywKPiAgCQljaGlwLT5kYWNfYml0cyA9IDg7Cj4gIAo+ICAJY2hpcC0+
bGRhY19waW4gPSBkZXZtX2dwaW9kX2dldF9vcHRpb25hbChkZXYsICJhZGksbGRhYyIsCj4gLQkJ
CQkJCUdQSU9EX09VVF9MT1cpOwo+ICsJCQkJCQkgR1BJT0RfT1VUX0xPVyk7Cj4gIAlpZiAoSVNf
RVJSKGNoaXAtPmxkYWNfcGluKSkgewo+ICAJCXJldCA9IFBUUl9FUlIoY2hpcC0+bGRhY19waW4p
Owo+ICAJCWRldl9lcnIoZGV2LCAiRmFpbGVkIHRvIHJlcXVlc3QgbGRhYyBHUElPOiAlZFxuIiwg
cmV0KTsKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRl
dmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2
ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1k
ZXZlbAo=

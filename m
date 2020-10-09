Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06BE228916C
	for <lists+driverdev-devel@lfdr.de>; Fri,  9 Oct 2020 20:51:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7D13A877CB;
	Fri,  9 Oct 2020 18:51:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RH2Q7cCdnwAB; Fri,  9 Oct 2020 18:51:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E3146877B1;
	Fri,  9 Oct 2020 18:51:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6A8651BF27C
 for <devel@linuxdriverproject.org>; Fri,  9 Oct 2020 18:51:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 608762044B
 for <devel@linuxdriverproject.org>; Fri,  9 Oct 2020 18:51:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rsj15s7COvA0 for <devel@linuxdriverproject.org>;
 Fri,  9 Oct 2020 18:51:07 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from z5.mailgun.us (z5.mailgun.us [104.130.96.5])
 by silver.osuosl.org (Postfix) with ESMTPS id 15E5E203CC
 for <devel@driverdev.osuosl.org>; Fri,  9 Oct 2020 18:51:07 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1602269467; h=Content-Transfer-Encoding: Content-Type:
 MIME-Version: Message-ID: In-Reply-To: Date: References: Subject: Cc:
 To: From: Sender; bh=eFkoSUOe1ldRGerTaytVJV+acS/JyrUEN1mPJ4njhYQ=;
 b=K2t3BhcJdQ3GNBSma+kAImZHFic9OzkOodabzDndykX97czszw1CvG/1YILTUDkY7T2e4Wzo
 9XTt8iLRIJWyAr7XqFrr9hRFXPrUAQ2LwnRWKSCrTUKDwFywrzJL2lpeYnbfW+LGor6DlPgZ
 mKvKWlAEqNzHeGWa37WrO4DMTXU=
X-Mailgun-Sending-Ip: 104.130.96.5
X-Mailgun-Sid: WyI2ZDRhNSIsICJkZXZlbEBkcml2ZXJkZXYub3N1b3NsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n01.prod.us-west-2.postgun.com with SMTP id
 5f80b11ad6d00c7a9e226195 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Fri, 09 Oct 2020 18:51:06
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 11EAAC433FE; Fri,  9 Oct 2020 18:51:06 +0000 (UTC)
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id B93F0C433C9;
 Fri,  9 Oct 2020 18:51:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org B93F0C433C9
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=fail smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH 2/8] staging: wfx: check memory allocation
References: <20201009171307.864608-1-Jerome.Pouiller@silabs.com>
 <20201009171307.864608-3-Jerome.Pouiller@silabs.com>
Date: Fri, 09 Oct 2020 21:51:01 +0300
In-Reply-To: <20201009171307.864608-3-Jerome.Pouiller@silabs.com> (Jerome
 Pouiller's message of "Fri, 9 Oct 2020 19:13:01 +0200")
Message-ID: <874kn31be2.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "David S . Miller" <davem@davemloft.net>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SmVyb21lIFBvdWlsbGVyIDxKZXJvbWUuUG91aWxsZXJAc2lsYWJzLmNvbT4gd3JpdGVzOgoKPiBG
cm9tOiBKw6lyw7RtZSBQb3VpbGxlciA8amVyb21lLnBvdWlsbGVyQHNpbGFicy5jb20+Cj4KPiBT
bWF0Y2ggY29tcGxhaW5zOgo+Cj4gICAgbWFpbi5jOjIyOCB3Znhfc2VuZF9wZGF0YV9wZHMoKSB3
YXJuOiBwb3RlbnRpYWwgTlVMTCBwYXJhbWV0ZXIgZGVyZWZlcmVuY2UgJ3RtcF9idWYnCj4gICAg
MjI3ICAgICAgICAgIHRtcF9idWYgPSBrbWVtZHVwKHBkcy0+ZGF0YSwgcGRzLT5zaXplLCBHRlBf
S0VSTkVMKTsKPiAgICAyMjggICAgICAgICAgcmV0ID0gd2Z4X3NlbmRfcGRzKHdkZXYsIHRtcF9i
dWYsIHBkcy0+c2l6ZSk7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBeXl5eXl5eCj4gICAgMjI5ICAgICAgICAgIGtmcmVlKHRtcF9idWYpOwo+Cj4gUmVwb3J0ZWQt
Ynk6IERhbiBDYXJwZW50ZXIgPGRhbi5jYXJwZW50ZXJAb3JhY2xlLmNvbT4KPiBTaWduZWQtb2Zm
LWJ5OiBKw6lyw7RtZSBQb3VpbGxlciA8amVyb21lLnBvdWlsbGVyQHNpbGFicy5jb20+Cj4gLS0t
Cj4gIGRyaXZlcnMvc3RhZ2luZy93ZngvbWFpbi5jIHwgOCArKysrKysrLQo+ICAxIGZpbGUgY2hh
bmdlZCwgNyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9zdGFnaW5nL3dmeC9tYWluLmMgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L21haW4uYwo+IGlu
ZGV4IGRmMTFjMDkxZTA5NC4uYThkYzJjMDMzNDEwIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvc3Rh
Z2luZy93ZngvbWFpbi5jCj4gKysrIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9tYWluLmMKPiBAQCAt
MjIyLDEyICsyMjIsMTggQEAgc3RhdGljIGludCB3Znhfc2VuZF9wZGF0YV9wZHMoc3RydWN0IHdm
eF9kZXYgKndkZXYpCj4gIAlpZiAocmV0KSB7Cj4gIAkJZGV2X2Vycih3ZGV2LT5kZXYsICJjYW4n
dCBsb2FkIFBEUyBmaWxlICVzXG4iLAo+ICAJCQl3ZGV2LT5wZGF0YS5maWxlX3Bkcyk7Cj4gLQkJ
cmV0dXJuIHJldDsKPiArCQlnb3RvIGVycjE7Cj4gIAl9Cj4gIAl0bXBfYnVmID0ga21lbWR1cChw
ZHMtPmRhdGEsIHBkcy0+c2l6ZSwgR0ZQX0tFUk5FTCk7Cj4gKwlpZiAoIXRtcF9idWYpIHsKPiAr
CQlyZXQgPSAtRU5PTUVNOwo+ICsJCWdvdG8gZXJyMjsKPiArCX0KPiAgCXJldCA9IHdmeF9zZW5k
X3Bkcyh3ZGV2LCB0bXBfYnVmLCBwZHMtPnNpemUpOwo+ICAJa2ZyZWUodG1wX2J1Zik7Cj4gK2Vy
cjI6Cj4gIAlyZWxlYXNlX2Zpcm13YXJlKHBkcyk7Cj4gK2VycjE6Cj4gIAlyZXR1cm4gcmV0Owo+
ICB9CgpBIG1pbm9yIHN0eWxlIGlzc3VlIGJ1dCB1c2luZyBtb3JlIGRlc2NyaXB0aXZlIGVycm9y
IGxhYmVscyBtYWtlIHRoZQpjb2RlIG1vcmUgcmVhZGFibGUgYW5kIG1haW50YWluYWJsZSwgZXNw
ZWNpYWxseSBpbiBhIGJpZ2dlciBmdW5jdGlvbi4KRm9yIGV4YW1wbGUsIGVycjIgY291bGQgYmUg
Y2FsbGVkIGVycl9yZWxlYXNlX2Zpcm13YXJlLgoKQW5kIGFjdHVhbGx5IGVycjEgY291bGQgYmUg
cmVtb3ZlZCBhbmQgdGhlIGdvdG8gcmVwbGFjZWQgd2l0aCBqdXN0CiJyZXR1cm4gcmV0OyIuIFRo
ZW4gZXJyMiBjb3VsZCBiZSByZW5hbWVkIHRvIGEgc2ltcGxlIGVyci4KCi0tIApodHRwczovL3Bh
dGNod29yay5rZXJuZWwub3JnL3Byb2plY3QvbGludXgtd2lyZWxlc3MvbGlzdC8KCmh0dHBzOi8v
d2lyZWxlc3Mud2lraS5rZXJuZWwub3JnL2VuL2RldmVsb3BlcnMvZG9jdW1lbnRhdGlvbi9zdWJt
aXR0aW5ncGF0Y2hlcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRw
Oi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2
ZXJkZXYtZGV2ZWwK

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E81041EA21
	for <lists+driverdev-devel@lfdr.de>; Fri,  1 Oct 2021 11:52:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CFB608444F;
	Fri,  1 Oct 2021 09:52:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pmA9zg7hYkne; Fri,  1 Oct 2021 09:52:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 25ACC843E3;
	Fri,  1 Oct 2021 09:52:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BBB481BF473
 for <devel@linuxdriverproject.org>; Fri,  1 Oct 2021 09:52:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with UTF8SMTP id B5679614AC
 for <devel@linuxdriverproject.org>; Fri,  1 Oct 2021 09:52:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=mg.codeaurora.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with UTF8SMTP id SjXcTNgn4B24 for <devel@linuxdriverproject.org>;
 Fri,  1 Oct 2021 09:52:44 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from m43-7.mailgun.net (m43-7.mailgun.net [69.72.43.7])
 by smtp3.osuosl.org (Postfix) with UTF8SMTPS id 7828E614A0
 for <devel@driverdev.osuosl.org>; Fri,  1 Oct 2021 09:52:43 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1633081964; h=Content-Transfer-Encoding: Content-Type:
 MIME-Version: Message-ID: In-Reply-To: Date: References: Subject: Cc:
 To: From: Sender; bh=2bttLv42HrO8OSNS4BdRIDDtX+8/+9g8pCv8FTqYHyI=;
 b=qbUJzNiTAdXb7WyX0ldevPGcosngS8lRtkqa5y76+cb8z1i8+35w4WkFaSMzLBGeo+n98V2p
 IlDpAv1xTiTeR7r1NJh6MIa7lIQWgMtXMMATnDcwXDz3yCklRXC+/3icpYTWm+IDknieqfJG
 zo3MFQy/0SP5fkb6CEc2sa4x89w=
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyI2ZDRhNSIsICJkZXZlbEBkcml2ZXJkZXYub3N1b3NsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n03.prod.us-east-1.postgun.com with SMTP id
 6156da5e713d5d6f96711c2a (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Fri, 01 Oct 2021 09:52:30
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 356EFC4360D; Fri,  1 Oct 2021 09:52:29 +0000 (UTC)
Received: from tykki (tynnyri.adurom.net [51.15.11.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id CDC00C4338F;
 Fri,  1 Oct 2021 09:52:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 smtp.codeaurora.org CDC00C4338F
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=fail smtp.mailfrom=codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH v7 09/24] wfx: add hwio.c/hwio.h
References: <20210920161136.2398632-1-Jerome.Pouiller@silabs.com>
 <20210920161136.2398632-10-Jerome.Pouiller@silabs.com>
Date: Fri, 01 Oct 2021 12:52:20 +0300
In-Reply-To: <20210920161136.2398632-10-Jerome.Pouiller@silabs.com> (Jerome
 Pouiller's message of "Mon, 20 Sep 2021 18:11:21 +0200")
Message-ID: <87k0ixkr6z.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Ulf Hansson <ulf.hansson@linaro.org>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mmc@vger.kernel.org,
 Pali =?utf-8?Q?Roh?= =?utf-8?Q?=C3=A1r?= <pali@kernel.org>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SmVyb21lIFBvdWlsbGVyIDxKZXJvbWUuUG91aWxsZXJAc2lsYWJzLmNvbT4gd3JpdGVzOgoKPiBG
cm9tOiBKw6lyw7RtZSBQb3VpbGxlciA8amVyb21lLnBvdWlsbGVyQHNpbGFicy5jb20+Cj4KPiBT
aWduZWQtb2ZmLWJ5OiBKw6lyw7RtZSBQb3VpbGxlciA8amVyb21lLnBvdWlsbGVyQHNpbGFicy5j
b20+Cj4gLS0tCj4gIGRyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy93ZngvaHdpby5jIHwgMzQw
ICsrKysrKysrKysrKysrKysrKysrKysrKysKPiAgZHJpdmVycy9uZXQvd2lyZWxlc3Mvc2lsYWJz
L3dmeC9od2lvLmggfCAgNzkgKysrKysrCgpbLi4uXQoKPiArc3RhdGljIGludCBpbmRpcmVjdF9y
ZWFkKHN0cnVjdCB3ZnhfZGV2ICp3ZGV2LCBpbnQgcmVnLCB1MzIgYWRkciwKPiArCQkJIHZvaWQg
KmJ1Ziwgc2l6ZV90IGxlbikKPiArewo+ICsJaW50IHJldDsKPiArCWludCBpOwo+ICsJdTMyIGNm
ZzsKPiArCXUzMiBwcmVmZXRjaDsKPiArCj4gKwlXQVJOX09OKGxlbiA+PSAweDIwMDApOwoKQSBk
ZWZpbmUgZm9yIHRoZSBtYWdpYyB2YWx1ZSwgcGxlYXNlLiBJIHNlZSB0aGlzIDB4MjAwMCBsaW1p
dCBtdWx0aXBsZQp0aW1lcy4KCj4gKwlXQVJOX09OKHJlZyAhPSBXRlhfUkVHX0FIQl9EUE9SVCAm
JiByZWcgIT0gV0ZYX1JFR19TUkFNX0RQT1JUKTsKCkkgc2VlIHF1aXRlIGEgbG90IG9mIFdBUk4o
KSBhbmQgV0FSTl9PTigpIGluIHRoZSBkcml2ZXIuIERvIG5vdGUgdGhhdApXQVJOKCkgYW5kIFdB
Uk5fT04oKSBhcmUgYSBiaXQgZGFuZ2Vyb3VzIHRvIHVzZSBpbiB0aGUgZGF0YSBwYXRoIGFzIGFu
CmF0dGFja2VyLCBvciBldmVuIGp1c3QgYSBidWcsIG1pZ2h0IGVhc2lseSBzcGFtIHRoZSBrZXJu
ZWwgbG9nIHdoaWNoCm1pZ2h0IHJlc3VsdCB0byBob3N0IHJlYm9vdHMgZHVlIHRvIHdhdGNoZG9n
IHRyaWdnZXJpbmcgb3Igb3RoZXIKcmVzb3VyY2Ugc3RhcnZhdGlvbi4gSSByZWNvbW1lbmQgdXNp
bmcgc29tZSByYXRlbGltaXRlZCB2ZXJzaW9ucyBvZgpwcmludGsoKSBtYWNyb3MsIGZvciBleGFt
cGxlIGRldl8qKCkgaWYgdGhleSBoYXZlIHJhdGVsaW1pdHMuIE5vdCBhCmJsb2NrZXIsIGJ1dCB3
YW50ZWQgdG8gcG9pbnQgb3V0IGFueXdheS4KCj4gK2ludCB3ZnhfZGF0YV9yZWFkKHN0cnVjdCB3
ZnhfZGV2ICp3ZGV2LCB2b2lkICpidWYsIHNpemVfdCBsZW4pCj4gK3sKPiArCWludCByZXQ7Cj4g
Kwo+ICsJV0FSTigobG9uZylidWYgJiAzLCAiJXM6IHVuYWxpZ25lZCBidWZmZXIiLCBfX2Z1bmNf
Xyk7CgpJU19BTElHTkVEKCk/Cgo+ICsJd2Rldi0+aHdidXNfb3BzLT5sb2NrKHdkZXYtPmh3YnVz
X3ByaXYpOwo+ICsJcmV0ID0gd2Rldi0+aHdidXNfb3BzLT5jb3B5X2Zyb21faW8od2Rldi0+aHdi
dXNfcHJpdiwKPiArCQkJCQkgICAgV0ZYX1JFR19JTl9PVVRfUVVFVUUsIGJ1ZiwgbGVuKTsKPiAr
CV90cmFjZV9pb19yZWFkKFdGWF9SRUdfSU5fT1VUX1FVRVVFLCBidWYsIGxlbik7Cj4gKwl3ZGV2
LT5od2J1c19vcHMtPnVubG9jayh3ZGV2LT5od2J1c19wcml2KTsKPiArCWlmIChyZXQpCj4gKwkJ
ZGV2X2Vycih3ZGV2LT5kZXYsICIlczogYnVzIGNvbW11bmljYXRpb24gZXJyb3I6ICVkXG4iLAo+
ICsJCQlfX2Z1bmNfXywgcmV0KTsKPiArCXJldHVybiByZXQ7Cj4gK30KPiArCj4gK2ludCB3Znhf
ZGF0YV93cml0ZShzdHJ1Y3Qgd2Z4X2RldiAqd2RldiwgY29uc3Qgdm9pZCAqYnVmLCBzaXplX3Qg
bGVuKQo+ICt7Cj4gKwlpbnQgcmV0Owo+ICsKPiArCVdBUk4oKGxvbmcpYnVmICYgMywgIiVzOiB1
bmFsaWduZWQgYnVmZmVyIiwgX19mdW5jX18pOwoKSVNfQUxJR05FRCgpPwoKPiAtLS0gL2Rldi9u
dWxsCj4gKysrIGIvZHJpdmVycy9uZXQvd2lyZWxlc3Mvc2lsYWJzL3dmeC9od2lvLmgKPiBAQCAt
MCwwICsxLDc5IEBACj4gKy8qIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9ubHkg
Ki8KPiArLyoKPiArICogTG93LWxldmVsIEkvTyBmdW5jdGlvbnMuCj4gKyAqCj4gKyAqIENvcHly
aWdodCAoYykgMjAxNy0yMDIwLCBTaWxpY29uIExhYm9yYXRvcmllcywgSW5jLgo+ICsgKiBDb3B5
cmlnaHQgKGMpIDIwMTAsIFNULUVyaWNzc29uCj4gKyAqLwo+ICsjaWZuZGVmIFdGWF9IV0lPX0gK
PiArI2RlZmluZSBXRlhfSFdJT19ICj4gKwo+ICsjaW5jbHVkZSA8bGludXgvdHlwZXMuaD4KPiAr
Cj4gK3N0cnVjdCB3ZnhfZGV2Owo+ICsKPiArLyogQ2F1dGlvbjogaW4gdGhlIGZ1bmN0aW9ucyBi
ZWxvdywgJ2J1Zicgd2lsbCB1c2VkIHdpdGggYSBETUEuIFNvLCBpdCBtdXN0IGJlCj4gKyAqIGtt
YWxsb2MnZCAoZG8gbm90IHVzZSBzdGFjayBhbGxvY2F0ZWQgYnVmZmVycykuIEluIGRvdWJ0LCBl
bmFibGUKPiArICogQ09ORklHX0RFQlVHX1NHIHRvIGRldGVjdCBiYWRseSBsb2NhdGVkIGJ1ZmZl
ci4KPiArICovCj4gK2ludCB3ZnhfZGF0YV9yZWFkKHN0cnVjdCB3ZnhfZGV2ICp3ZGV2LCB2b2lk
ICpidWYsIHNpemVfdCBidWZfbGVuKTsKPiAraW50IHdmeF9kYXRhX3dyaXRlKHN0cnVjdCB3Znhf
ZGV2ICp3ZGV2LCBjb25zdCB2b2lkICpidWYsIHNpemVfdCBidWZfbGVuKTsKPiArCj4gK2ludCBz
cmFtX2J1Zl9yZWFkKHN0cnVjdCB3ZnhfZGV2ICp3ZGV2LCB1MzIgYWRkciwgdm9pZCAqYnVmLCBz
aXplX3QgbGVuKTsKPiAraW50IHNyYW1fYnVmX3dyaXRlKHN0cnVjdCB3ZnhfZGV2ICp3ZGV2LCB1
MzIgYWRkciwgY29uc3Qgdm9pZCAqYnVmLCBzaXplX3QgbGVuKTsKPiArCj4gK2ludCBhaGJfYnVm
X3JlYWQoc3RydWN0IHdmeF9kZXYgKndkZXYsIHUzMiBhZGRyLCB2b2lkICpidWYsIHNpemVfdCBs
ZW4pOwo+ICtpbnQgYWhiX2J1Zl93cml0ZShzdHJ1Y3Qgd2Z4X2RldiAqd2RldiwgdTMyIGFkZHIs
IGNvbnN0IHZvaWQgKmJ1Ziwgc2l6ZV90IGxlbik7Cj4gKwo+ICtpbnQgc3JhbV9yZWdfcmVhZChz
dHJ1Y3Qgd2Z4X2RldiAqd2RldiwgdTMyIGFkZHIsIHUzMiAqdmFsKTsKPiAraW50IHNyYW1fcmVn
X3dyaXRlKHN0cnVjdCB3ZnhfZGV2ICp3ZGV2LCB1MzIgYWRkciwgdTMyIHZhbCk7Cj4gKwo+ICtp
bnQgYWhiX3JlZ19yZWFkKHN0cnVjdCB3ZnhfZGV2ICp3ZGV2LCB1MzIgYWRkciwgdTMyICp2YWwp
Owo+ICtpbnQgYWhiX3JlZ193cml0ZShzdHJ1Y3Qgd2Z4X2RldiAqd2RldiwgdTMyIGFkZHIsIHUz
MiB2YWwpOwoKIndmeF8iIHByZWZpeCBtaXNzaW5nIGZyb20gdGhlc2UgZnVuY3Rpb25zLgoKPiAr
aW50IGNvbmZpZ19yZWdfcmVhZChzdHJ1Y3Qgd2Z4X2RldiAqd2RldiwgdTMyICp2YWwpOwo+ICtp
bnQgY29uZmlnX3JlZ193cml0ZShzdHJ1Y3Qgd2Z4X2RldiAqd2RldiwgdTMyIHZhbCk7Cj4gK2lu
dCBjb25maWdfcmVnX3dyaXRlX2JpdHMoc3RydWN0IHdmeF9kZXYgKndkZXYsIHUzMiBtYXNrLCB1
MzIgdmFsKTsKPiArCj4gKyNkZWZpbmUgQ1RSTF9ORVhUX0xFTl9NQVNLICAgMHgwMDAwMEZGRgo+
ICsjZGVmaW5lIENUUkxfV0xBTl9XQUtFVVAgICAgIDB4MDAwMDEwMDAKPiArI2RlZmluZSBDVFJM
X1dMQU5fUkVBRFkgICAgICAweDAwMDAyMDAwCj4gK2ludCBjb250cm9sX3JlZ19yZWFkKHN0cnVj
dCB3ZnhfZGV2ICp3ZGV2LCB1MzIgKnZhbCk7Cj4gK2ludCBjb250cm9sX3JlZ193cml0ZShzdHJ1
Y3Qgd2Z4X2RldiAqd2RldiwgdTMyIHZhbCk7Cj4gK2ludCBjb250cm9sX3JlZ193cml0ZV9iaXRz
KHN0cnVjdCB3ZnhfZGV2ICp3ZGV2LCB1MzIgbWFzaywgdTMyIHZhbCk7Cj4gKwo+ICsjZGVmaW5l
IElHUFJfUlcgICAgICAgICAgMHg4MDAwMDAwMAo+ICsjZGVmaW5lIElHUFJfSU5ERVggICAgICAg
MHg3RjAwMDAwMAo+ICsjZGVmaW5lIElHUFJfVkFMVUUgICAgICAgMHgwMEZGRkZGRgo+ICtpbnQg
aWdwcl9yZWdfcmVhZChzdHJ1Y3Qgd2Z4X2RldiAqd2RldiwgaW50IGluZGV4LCB1MzIgKnZhbCk7
Cj4gK2ludCBpZ3ByX3JlZ193cml0ZShzdHJ1Y3Qgd2Z4X2RldiAqd2RldiwgaW50IGluZGV4LCB1
MzIgdmFsKTsKCkFuZCB0aGVzZSB0b28uCgotLSAKaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9y
Zy9wcm9qZWN0L2xpbnV4LXdpcmVsZXNzL2xpc3QvCgpodHRwczovL3dpcmVsZXNzLndpa2kua2Vy
bmVsLm9yZy9lbi9kZXZlbG9wZXJzL2RvY3VtZW50YXRpb24vc3VibWl0dGluZ3BhdGNoZXMKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGlu
ZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51
eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==

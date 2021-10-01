Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B150F41E9AD
	for <lists+driverdev-devel@lfdr.de>; Fri,  1 Oct 2021 11:36:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 23995614BC;
	Fri,  1 Oct 2021 09:36:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vdOcskrGMuH6; Fri,  1 Oct 2021 09:36:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 55663614B1;
	Fri,  1 Oct 2021 09:36:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8DCE91BF473
 for <devel@linuxdriverproject.org>; Fri,  1 Oct 2021 09:36:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with UTF8SMTP id 7B627614A0
 for <devel@linuxdriverproject.org>; Fri,  1 Oct 2021 09:36:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with UTF8SMTP id S4-_LIEZdWG1 for <devel@linuxdriverproject.org>;
 Fri,  1 Oct 2021 09:36:21 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from m43-7.mailgun.net (m43-7.mailgun.net [69.72.43.7])
 by smtp3.osuosl.org (Postfix) with UTF8SMTPS id E8CC1614B1
 for <devel@driverdev.osuosl.org>; Fri,  1 Oct 2021 09:36:14 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1633080981; h=Content-Transfer-Encoding: Content-Type:
 MIME-Version: Message-ID: In-Reply-To: Date: References: Subject: Cc:
 To: From: Sender; bh=BeCtPj+gAx1yb+qr7Piiqq97L5UNvZlh+6GnVLGIR9Q=;
 b=J/DpWXkMz7/iiQXqlFdXAiIQqhu1iIevgFAVwM+zpPxX4s2rmU6r2gh0C2Z7kIA4bIhWDNoV
 jiUL3cEaysoYEfIRM40q3dIJ1z8BDfJQ2AgpL0WqSCpAm97RK3ThygznmFaHpOQiRhiUZ/ne
 Xps0hVwkD+8bUr2Ts8tsJK2hDDM=
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyI2ZDRhNSIsICJkZXZlbEBkcml2ZXJkZXYub3N1b3NsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n04.prod.us-east-1.postgun.com with SMTP id
 6156d66a63b1f18658be94fe (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Fri, 01 Oct 2021 09:35:38
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 4653AC4361A; Fri,  1 Oct 2021 09:35:37 +0000 (UTC)
Received: from tykki (tynnyri.adurom.net [51.15.11.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id B05F2C4338F;
 Fri,  1 Oct 2021 09:35:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 smtp.codeaurora.org B05F2C4338F
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=fail smtp.mailfrom=codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH v7 20/24] wfx: add scan.c/scan.h
References: <20210920161136.2398632-1-Jerome.Pouiller@silabs.com>
 <20210920161136.2398632-21-Jerome.Pouiller@silabs.com>
Date: Fri, 01 Oct 2021 12:35:28 +0300
In-Reply-To: <20210920161136.2398632-21-Jerome.Pouiller@silabs.com> (Jerome
 Pouiller's message of "Mon, 20 Sep 2021 18:11:32 +0200")
Message-ID: <87r1d5krz3.fsf@codeaurora.org>
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
b20+CgpbLi4uXQoKPiArLyogSXQgaXMgbm90IHJlYWxseSBuZWNlc3NhcnkgdG8gcnVuIHNjYW4g
cmVxdWVzdCBhc3luY2hyb25vdXNseS4gSG93ZXZlciwKPiArICogdGhlcmUgaXMgYSBidWcgaW4g
Iml3IHNjYW4iIHdoZW4gaWVlZTgwMjExX3NjYW5fY29tcGxldGVkKCkgaXMgY2FsbGVkIGJlZm9y
ZQo+ICsgKiB3ZnhfaHdfc2NhbigpIHJldHVybgo+ICsgKi8KPiArdm9pZCB3ZnhfaHdfc2Nhbl93
b3JrKHN0cnVjdCB3b3JrX3N0cnVjdCAqd29yaykKPiArewo+ICsJc3RydWN0IHdmeF92aWYgKnd2
aWYgPSBjb250YWluZXJfb2Yod29yaywgc3RydWN0IHdmeF92aWYsIHNjYW5fd29yayk7Cj4gKwlz
dHJ1Y3QgaWVlZTgwMjExX3NjYW5fcmVxdWVzdCAqaHdfcmVxID0gd3ZpZi0+c2Nhbl9yZXE7Cj4g
KwlpbnQgY2hhbl9jdXIsIHJldCwgZXJyOwo+ICsKPiArCW11dGV4X2xvY2soJnd2aWYtPndkZXYt
PmNvbmZfbXV0ZXgpOwo+ICsJbXV0ZXhfbG9jaygmd3ZpZi0+c2Nhbl9sb2NrKTsKPiArCWlmICh3
dmlmLT5qb2luX2luX3Byb2dyZXNzKSB7Cj4gKwkJZGV2X2luZm8od3ZpZi0+d2Rldi0+ZGV2LCAi
YWJvcnQgaW4tcHJvZ3Jlc3MgUkVRX0pPSU4iKTsKPiArCQl3ZnhfcmVzZXQod3ZpZik7Cj4gKwl9
Cj4gKwl1cGRhdGVfcHJvYmVfdG1wbCh3dmlmLCAmaHdfcmVxLT5yZXEpOwo+ICsJY2hhbl9jdXIg
PSAwOwo+ICsJZXJyID0gMDsKPiArCWRvIHsKPiArCQlyZXQgPSBzZW5kX3NjYW5fcmVxKHd2aWYs
ICZod19yZXEtPnJlcSwgY2hhbl9jdXIpOwo+ICsJCWlmIChyZXQgPiAwKSB7Cj4gKwkJCWNoYW5f
Y3VyICs9IHJldDsKPiArCQkJZXJyID0gMDsKPiArCQl9Cj4gKwkJaWYgKCFyZXQpCj4gKwkJCWVy
cisrOwo+ICsJCWlmIChlcnIgPiAyKSB7Cj4gKwkJCWRldl9lcnIod3ZpZi0+d2Rldi0+ZGV2LCAi
c2NhbiBoYXMgbm90IGJlZW4gYWJsZSB0byBzdGFydFxuIik7Cj4gKwkJCXJldCA9IC1FVElNRURP
VVQ7Cj4gKwkJfQo+ICsJfSB3aGlsZSAocmV0ID49IDAgJiYgY2hhbl9jdXIgPCBod19yZXEtPnJl
cS5uX2NoYW5uZWxzKTsKPiArCW11dGV4X3VubG9jaygmd3ZpZi0+c2Nhbl9sb2NrKTsKPiArCW11
dGV4X3VubG9jaygmd3ZpZi0+d2Rldi0+Y29uZl9tdXRleCk7Cj4gKwlfX2llZWU4MDIxMV9zY2Fu
X2NvbXBsZXRlZF9jb21wYXQod3ZpZi0+d2Rldi0+aHcsIHJldCA8IDApOwo+ICt9Cj4gKwo+ICtp
bnQgd2Z4X2h3X3NjYW4oc3RydWN0IGllZWU4MDIxMV9odyAqaHcsIHN0cnVjdCBpZWVlODAyMTFf
dmlmICp2aWYsCj4gKwkJc3RydWN0IGllZWU4MDIxMV9zY2FuX3JlcXVlc3QgKmh3X3JlcSkKPiAr
ewo+ICsJc3RydWN0IHdmeF92aWYgKnd2aWYgPSAoc3RydWN0IHdmeF92aWYgKil2aWYtPmRydl9w
cml2Owo+ICsKPiArCVdBUk5fT04oaHdfcmVxLT5yZXEubl9jaGFubmVscyA+IEhJRl9BUElfTUFY
X05CX0NIQU5ORUxTKTsKPiArCXd2aWYtPnNjYW5fcmVxID0gaHdfcmVxOwo+ICsJc2NoZWR1bGVf
d29yaygmd3ZpZi0+c2Nhbl93b3JrKTsKPiArCXJldHVybiAwOwo+ICt9CgpUaGlzIHNjYW4gbG9n
aWMgbG9va3MgZmlzaHkgdG8gbWUsIGJ1dCBubyB0aW1lIHRvIGludmVzdGlnYXRlIGluIGRldGFp
bC4KVGhvdWdoIG5vdCBhIGJsb2NrZXIuCgotLSAKaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9y
Zy9wcm9qZWN0L2xpbnV4LXdpcmVsZXNzL2xpc3QvCgpodHRwczovL3dpcmVsZXNzLndpa2kua2Vy
bmVsLm9yZy9lbi9kZXZlbG9wZXJzL2RvY3VtZW50YXRpb24vc3VibWl0dGluZ3BhdGNoZXMKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGlu
ZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51
eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==

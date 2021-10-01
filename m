Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 586C541EAB7
	for <lists+driverdev-devel@lfdr.de>; Fri,  1 Oct 2021 12:10:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F0F4B84369;
	Fri,  1 Oct 2021 10:10:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0SBtNtFl8T5q; Fri,  1 Oct 2021 10:10:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3E19484135;
	Fri,  1 Oct 2021 10:10:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B587F1BF909
 for <devel@linuxdriverproject.org>; Fri,  1 Oct 2021 10:10:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with UTF8SMTP id A482C6071C
 for <devel@linuxdriverproject.org>; Fri,  1 Oct 2021 10:10:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=mg.codeaurora.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with UTF8SMTP id UtKpxbtxpDkd for <devel@linuxdriverproject.org>;
 Fri,  1 Oct 2021 10:10:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from m43-7.mailgun.net (m43-7.mailgun.net [69.72.43.7])
 by smtp3.osuosl.org (Postfix) with UTF8SMTPS id D1A1160685
 for <devel@driverdev.osuosl.org>; Fri,  1 Oct 2021 10:10:08 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1633083010; h=Content-Transfer-Encoding: Content-Type:
 MIME-Version: Message-ID: In-Reply-To: Date: References: Subject: Cc:
 To: From: Sender; bh=ZetgfVAwbJoN4AAZzEvqpEj2r1iuIB1GedGi9+QD1zc=;
 b=NRaITv9HmowKu1a2+3Hrx/tjMl1bPFU/rncQCGOAEtRWWhiXiaEyb1AslOdks6UA+/mEqWaZ
 AS1uKck22PFdBQE4NKgVBLQ++hadq8CPV+sQawnl3hKO7u8xHNAsSi+c307fM5QAkSZo6N6n
 HVkRF9a4vxXBUY9/uWYMdrR7+1I=
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyI2ZDRhNSIsICJkZXZlbEBkcml2ZXJkZXYub3N1b3NsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n02.prod.us-west-2.postgun.com with SMTP id
 6156de7247d64efb6dead9a1 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Fri, 01 Oct 2021 10:09:54
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 8A3CEC4338F; Fri,  1 Oct 2021 10:09:54 +0000 (UTC)
Received: from tykki (tynnyri.adurom.net [51.15.11.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 0E305C43460;
 Fri,  1 Oct 2021 10:09:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 smtp.codeaurora.org 0E305C43460
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=fail smtp.mailfrom=codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH v7 15/24] wfx: add hif_rx.c/hif_rx.h
References: <20210920161136.2398632-1-Jerome.Pouiller@silabs.com>
 <20210920161136.2398632-16-Jerome.Pouiller@silabs.com>
Date: Fri, 01 Oct 2021 13:09:48 +0300
In-Reply-To: <20210920161136.2398632-16-Jerome.Pouiller@silabs.com> (Jerome
 Pouiller's message of "Mon, 20 Sep 2021 18:11:27 +0200")
Message-ID: <87a6jtkqdv.fsf@codeaurora.org>
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
b20+CgpbLi4uXQoKPiArc3RhdGljIGludCBoaWZfc3RhcnR1cF9pbmRpY2F0aW9uKHN0cnVjdCB3
ZnhfZGV2ICp3ZGV2LAo+ICsJCQkJICBjb25zdCBzdHJ1Y3QgaGlmX21zZyAqaGlmLCBjb25zdCB2
b2lkICpidWYpCj4gK3sKPiArCWNvbnN0IHN0cnVjdCBoaWZfaW5kX3N0YXJ0dXAgKmJvZHkgPSBi
dWY7Cj4gKwo+ICsJaWYgKGJvZHktPnN0YXR1cyB8fCBib2R5LT5maXJtd2FyZV90eXBlID4gNCkg
ewo+ICsJCWRldl9lcnIod2Rldi0+ZGV2LCAicmVjZWl2ZWQgaW52YWxpZCBzdGFydHVwIGluZGlj
YXRpb24iKTsKPiArCQlyZXR1cm4gLUVJTlZBTDsKPiArCX0KPiArCW1lbWNweSgmd2Rldi0+aHdf
Y2FwcywgYm9keSwgc2l6ZW9mKHN0cnVjdCBoaWZfaW5kX3N0YXJ0dXApKTsKPiArCWxlMTZfdG9f
Y3B1cygoX19sZTE2ICopJndkZXYtPmh3X2NhcHMuaGFyZHdhcmVfaWQpOwo+ICsJbGUxNl90b19j
cHVzKChfX2xlMTYgKikmd2Rldi0+aHdfY2Fwcy5udW1faW5wX2NoX2J1ZnMpOwo+ICsJbGUxNl90
b19jcHVzKChfX2xlMTYgKikmd2Rldi0+aHdfY2Fwcy5zaXplX2lucF9jaF9idWYpOwo+ICsJbGUz
Ml90b19jcHVzKChfX2xlMzIgKikmd2Rldi0+aHdfY2Fwcy5zdXBwb3J0ZWRfcmF0ZV9tYXNrKTsK
CkkgZG9uJ3QgcmVhbGx5IGxpa2UgdGhlIGNhc3RzIGhlcmUsIGFuZCBub3QgcmVhbGx5IHJlbGlh
YmxlIGVpdGhlciBpZgp0aGVyZSdzIGV2ZXIgbW9yZSBmaWVsZHMuIEkgd291bGQganVzdCBzdG9y
ZSB2YWx1ZXMgYXMgbGl0dGxlIGVuZGlhbiBpbgpod19jYXBzLCBJIGRvdWJ0IGl0J3MgcGVyZm9y
bWFuY2UgY3JpdGljYWwuCgpBbmQgd2h5IGRvZXMgc3RydWN0IGhpZl9pbmRfc3RhcnR1cCB1c2Ug
Ym90aCB1MzIgYW5kIF9fbGUzMj8gSWYgaXQncyBpbgpsaXR0bGUgZW5kaWFuIGl0IHNob3VsZCBh
bHdheXMgdXNlIF9fbGUgdHlwZXMuCgpbLi4uXQoKPiArCWlmIChoaWZfaWQgJiAweDgwKQo+ICsJ
CWRldl9lcnIod2Rldi0+ZGV2LCAidW5zdXBwb3J0ZWQgSElGIGluZGljYXRpb246IElEICUwMnhc
biIsCj4gKwkJCWhpZl9pZCk7Cj4gKwllbHNlCj4gKwkJZGV2X2Vycih3ZGV2LT5kZXYsICJ1bmV4
cGVjdGVkIEhJRiBjb25maXJtYXRpb246IElEICUwMnhcbiIsCj4gKwkJCWhpZl9pZCk7CgpObyBt
YWdpYyB2YWx1ZXMsIHBsZWFzZS4gQSBwcm9wZXIgZGVmaW5lIGZvciBiaXQgMHg4MCB3b3VsZCBi
ZSBuaWNlLgoKLS0gCmh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcHJvamVjdC9saW51eC13
aXJlbGVzcy9saXN0LwoKaHR0cHM6Ly93aXJlbGVzcy53aWtpLmtlcm5lbC5vcmcvZW4vZGV2ZWxv
cGVycy9kb2N1bWVudGF0aW9uL3N1Ym1pdHRpbmdwYXRjaGVzCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51
eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=

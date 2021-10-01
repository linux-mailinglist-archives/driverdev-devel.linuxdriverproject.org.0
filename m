Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C030441E98B
	for <lists+driverdev-devel@lfdr.de>; Fri,  1 Oct 2021 11:22:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E9AAC8442D;
	Fri,  1 Oct 2021 09:22:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K0y5Ssx5Qh8j; Fri,  1 Oct 2021 09:22:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DD1FA84428;
	Fri,  1 Oct 2021 09:22:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 778AF1BF473
 for <devel@linuxdriverproject.org>; Fri,  1 Oct 2021 09:22:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with UTF8SMTP id 6670884428
 for <devel@linuxdriverproject.org>; Fri,  1 Oct 2021 09:22:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with UTF8SMTP id OTFqbTQYPzgv for <devel@linuxdriverproject.org>;
 Fri,  1 Oct 2021 09:22:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from so254-9.mailgun.net (so254-9.mailgun.net [198.61.254.9])
 by smtp1.osuosl.org (Postfix) with UTF8SMTPS id 82ACF84422
 for <devel@driverdev.osuosl.org>; Fri,  1 Oct 2021 09:22:17 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1633080137; h=Content-Transfer-Encoding: Content-Type:
 MIME-Version: Message-ID: In-Reply-To: Date: References: Subject: Cc:
 To: From: Sender; bh=iYvrZUrKg77KiOcHuyT/fMvLDJyxg91TZsc59MuYT9s=;
 b=eFZhUWb1imS8B4poaY4GjOdKYtMJ9lcZryccX4korfgGXKsvDM2WbN6AB+v7aLsa2qArfpIt
 2lotGa0n1Vh6Wz6MDhHKRZ5xkXBqw1j8lGGaEZtl52u90okFSdui58uKQkdRPOxFIkTJlZUQ
 CCcTygfd62BExmjpqrbLoJp90Qk=
X-Mailgun-Sending-Ip: 198.61.254.9
X-Mailgun-Sid: WyI2ZDRhNSIsICJkZXZlbEBkcml2ZXJkZXYub3N1b3NsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n06.prod.us-east-1.postgun.com with SMTP id
 6156d3489ffb413149e581f6 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Fri, 01 Oct 2021 09:22:16
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 91379C4360C; Fri,  1 Oct 2021 09:22:15 +0000 (UTC)
Received: from tykki (tynnyri.adurom.net [51.15.11.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 4765DC4338F;
 Fri,  1 Oct 2021 09:22:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 smtp.codeaurora.org 4765DC4338F
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=fail smtp.mailfrom=codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH v7 05/24] wfx: add main.c/main.h
References: <20210920161136.2398632-1-Jerome.Pouiller@silabs.com>
 <20210920161136.2398632-6-Jerome.Pouiller@silabs.com>
Date: Fri, 01 Oct 2021 12:22:08 +0300
In-Reply-To: <20210920161136.2398632-6-Jerome.Pouiller@silabs.com> (Jerome
 Pouiller's message of "Mon, 20 Sep 2021 18:11:17 +0200")
Message-ID: <87y27dkslb.fsf@codeaurora.org>
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
b20+CgpbLi4uXQoKPiArLyogVGhlIGRldmljZSBuZWVkcyBkYXRhIGFib3V0IHRoZSBhbnRlbm5h
IGNvbmZpZ3VyYXRpb24uIFRoaXMgaW5mb3JtYXRpb24gaW4KPiArICogcHJvdmlkZWQgYnkgUERT
IChQbGF0Zm9ybSBEYXRhIFNldCwgdGhpcyBpcyB0aGUgd29yZGluZyB1c2VkIGluIFdGMjAwCj4g
KyAqIGRvY3VtZW50YXRpb24pIGZpbGVzLiBGb3IgaGFyZHdhcmUgaW50ZWdyYXRvcnMsIHRoZSBm
dWxsIHByb2Nlc3MgdG8gY3JlYXRlCj4gKyAqIFBEUyBmaWxlcyBpcyBkZXNjcmliZWQgaGVyZToK
PiArICogICBodHRwczpnaXRodWIuY29tL1NpbGljb25MYWJzL3dmeC1maXJtd2FyZS9ibG9iL21h
c3Rlci9QRFMvUkVBRE1FLm1kCj4gKyAqCj4gKyAqIFNvIHRoaXMgZnVuY3Rpb24gYWltcyB0byBz
ZW5kIFBEUyB0byB0aGUgZGV2aWNlLiBIb3dldmVyLCB0aGUgUERTIGZpbGUgaXMKPiArICogb2Z0
ZW4gYmlnZ2VyIHRoYW4gUnggYnVmZmVycyBvZiB0aGUgY2hpcCwgc28gaXQgaGFzIHRvIGJlIHNl
bnQgaW4gbXVsdGlwbGUKPiArICogcGFydHMuCj4gKyAqCj4gKyAqIEluIGFkZCwgdGhlIFBEUyBk
YXRhIGNhbm5vdCBiZSBzcGxpdCBhbnl3aGVyZS4gVGhlIFBEUyBmaWxlcyBjb250YWlucyB0cmVl
Cj4gKyAqIHN0cnVjdHVyZXMuIEJyYWNlcyBhcmUgdXNlZCB0byBlbnRlci9sZWF2ZSBhIGxldmVs
IG9mIHRoZSB0cmVlIChpbiBhIEpTT04KPiArICogZmFzaGlvbikuIFBEUyBmaWxlcyBjYW4gb25s
eSBiZWVuIHNwbGl0IGJldHdlZW4gcm9vdCBub2Rlcy4KPiArICovCj4gK2ludCB3Znhfc2VuZF9w
ZHMoc3RydWN0IHdmeF9kZXYgKndkZXYsIHU4ICpidWYsIHNpemVfdCBsZW4pCj4gK3sKPiArCWlu
dCByZXQ7Cj4gKwlpbnQgc3RhcnQsIGJyYWNlX2xldmVsLCBpOwo+ICsKPiArCXN0YXJ0ID0gMDsK
PiArCWJyYWNlX2xldmVsID0gMDsKPiArCWlmIChidWZbMF0gIT0gJ3snKSB7Cj4gKyBkZXZfZXJy
KHdkZXYtPmRldiwgInZhbGlkIFBEUyBzdGFydCB3aXRoICd7Jy4gRGlkIHlvdSBmb3JnZXQgdG8K
PiBjb21wcmVzcyBpdD9cbiIpOwo+ICsJCXJldHVybiAtRUlOVkFMOwo+ICsJfQo+ICsJZm9yIChp
ID0gMTsgaSA8IGxlbiAtIDE7IGkrKykgewo+ICsJCWlmIChidWZbaV0gPT0gJ3snKQo+ICsJCQli
cmFjZV9sZXZlbCsrOwo+ICsJCWlmIChidWZbaV0gPT0gJ30nKQo+ICsJCQlicmFjZV9sZXZlbC0t
Owo+ICsJCWlmIChidWZbaV0gPT0gJ30nICYmICFicmFjZV9sZXZlbCkgewo+ICsJCQlpKys7Cj4g
KwkJCWlmIChpIC0gc3RhcnQgKyAxID4gV0ZYX1BEU19NQVhfU0laRSkKPiArCQkJCXJldHVybiAt
RUZCSUc7Cj4gKwkJCWJ1ZltzdGFydF0gPSAneyc7Cj4gKwkJCWJ1ZltpXSA9IDA7Cj4gKwkJCWRl
dl9kYmcod2Rldi0+ZGV2LCAic2VuZCBQRFMgJyVzfSdcbiIsIGJ1ZiArIHN0YXJ0KTsKPiArCQkJ
YnVmW2ldID0gJ30nOwo+ICsJCQlyZXQgPSBoaWZfY29uZmlndXJhdGlvbih3ZGV2LCBidWYgKyBz
dGFydCwKPiArCQkJCQkJaSAtIHN0YXJ0ICsgMSk7Cj4gKwkJCWlmIChyZXQgPiAwKSB7Cj4gKyBk
ZXZfZXJyKHdkZXYtPmRldiwgIlBEUyBieXRlcyAlZCB0byAlZDogaW52YWxpZCBkYXRhICh1bnN1
cHBvcnRlZAo+IG9wdGlvbnM/KVxuIiwKPiArCQkJCQlzdGFydCwgaSk7Cj4gKwkJCQlyZXR1cm4g
LUVJTlZBTDsKPiArCQkJfQo+ICsJCQlpZiAocmV0ID09IC1FVElNRURPVVQpIHsKPiArIGRldl9l
cnIod2Rldi0+ZGV2LCAiUERTIGJ5dGVzICVkIHRvICVkOiBjaGlwIGRpZG4ndCByZXBseSAoY29y
cnVwdGVkCj4gZmlsZT8pXG4iLAo+ICsJCQkJCXN0YXJ0LCBpKTsKPiArCQkJCXJldHVybiByZXQ7
Cj4gKwkJCX0KPiArCQkJaWYgKHJldCkgewo+ICsgZGV2X2Vycih3ZGV2LT5kZXYsICJQRFMgYnl0
ZXMgJWQgdG8gJWQ6IGNoaXAgcmV0dXJuZWQgYW4gdW5rbm93bgo+IGVycm9yXG4iLAo+ICsJCQkJ
CXN0YXJ0LCBpKTsKPiArCQkJCXJldHVybiAtRUlPOwo+ICsJCQl9Cj4gKwkJCWJ1ZltpXSA9ICcs
JzsKPiArCQkJc3RhcnQgPSBpOwo+ICsJCX0KPiArCX0KPiArCXJldHVybiAwOwo+ICt9CgpJJ20g
bm90IHJlYWxseSBmb25kIG9mIGhhdmluZyB0aGlzIGtpbmQgb2YgQVNDSUkgYmFzZWQgcGFyc2Vy
IGluIHRoZQprZXJuZWwuIERvIHlvdSBoYXZlIGFuIGV4YW1wbGUgY29tcHJlc3NlZCBmaWxlIHNv
bWV3aGVyZT8KCkRvZXMgdGhlIGRldmljZSBzdGlsbCB3b3JrIHdpdGhvdXQgdGhlc2UgUERTIGZp
bGVzPyBJIGFzayBiZWNhdXNlIG15CnN1Z2dlc3Rpb24gaXMgdG8gcmVtb3ZlIHRoaXMgcGFydCBh
bHRvZ2V0aGVyIGFuZCByZXZpc2l0IGFmdGVyIHRoZQppbml0aWFsIGRyaXZlciBpcyBtb3ZlZCB0
byBkcml2ZXJzL25ldC93aXJlbGVzcy4gQSBsb3Qgc2ltcGxlciB0byByZXZpZXcKY29tcGxleCBm
ZWF0dXJlcyBzZXBhcmF0ZWx5LgoKLS0gCmh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcHJv
amVjdC9saW51eC13aXJlbGVzcy9saXN0LwoKaHR0cHM6Ly93aXJlbGVzcy53aWtpLmtlcm5lbC5v
cmcvZW4vZGV2ZWxvcGVycy9kb2N1bWVudGF0aW9uL3N1Ym1pdHRpbmdwYXRjaGVzCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlz
dApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2
ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=

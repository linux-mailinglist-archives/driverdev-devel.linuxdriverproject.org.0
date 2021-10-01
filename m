Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A44041ECB2
	for <lists+driverdev-devel@lfdr.de>; Fri,  1 Oct 2021 13:59:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B4284614CF;
	Fri,  1 Oct 2021 11:59:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h8u7QsMVgB0Y; Fri,  1 Oct 2021 11:59:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 03A01605F7;
	Fri,  1 Oct 2021 11:59:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 13A0D1BF2C0
 for <devel@linuxdriverproject.org>; Fri,  1 Oct 2021 11:59:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with UTF8SMTP id 0A4E684467
 for <devel@linuxdriverproject.org>; Fri,  1 Oct 2021 11:59:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=mg.codeaurora.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with UTF8SMTP id 4yzprAK13qzq for <devel@linuxdriverproject.org>;
 Fri,  1 Oct 2021 11:59:01 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from so254-9.mailgun.net (so254-9.mailgun.net [198.61.254.9])
 by smtp1.osuosl.org (Postfix) with UTF8SMTPS id 531C884466
 for <devel@driverdev.osuosl.org>; Fri,  1 Oct 2021 11:58:59 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1633089541; h=Content-Transfer-Encoding: Content-Type:
 MIME-Version: Message-ID: In-Reply-To: Date: References: Subject: Cc:
 To: From: Sender; bh=gh+rxO6W9CGfXjbfCmIpOQMXtVKYgt25V055BZp/pL8=;
 b=F3B4z/TpJ62yuIiy5Hgd1Hdv0Mt9cIfXTy7TlLMwi2wKJk+T/EUpVY6d4jTO+0I3yJgvoBPO
 kWD6SDJ+m0L35rnSn10lwKesgtHbEwxAdp0orv5dd9dLxTi/ihcG6B1flGwW/JI+EY7d7Dkz
 D5WJ7NXUPxBHEiiFFWvDuKehqEE=
X-Mailgun-Sending-Ip: 198.61.254.9
X-Mailgun-Sid: WyI2ZDRhNSIsICJkZXZlbEBkcml2ZXJkZXYub3N1b3NsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n02.prod.us-east-1.postgun.com with SMTP id
 6156f7f48578ef11ed5ab77c (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Fri, 01 Oct 2021 11:58:44
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id A5B64C43618; Fri,  1 Oct 2021 11:58:43 +0000 (UTC)
Received: from tykki (tynnyri.adurom.net [51.15.11.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 32663C4338F;
 Fri,  1 Oct 2021 11:58:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 smtp.codeaurora.org 32663C4338F
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=fail smtp.mailfrom=codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH v7 10/24] wfx: add fwio.c/fwio.h
References: <20210920161136.2398632-1-Jerome.Pouiller@silabs.com>
 <20210920161136.2398632-11-Jerome.Pouiller@silabs.com>
Date: Fri, 01 Oct 2021 14:58:38 +0300
In-Reply-To: <20210920161136.2398632-11-Jerome.Pouiller@silabs.com> (Jerome
 Pouiller's message of "Mon, 20 Sep 2021 18:11:22 +0200")
Message-ID: <87sfxlj6s1.fsf@codeaurora.org>
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
b20+CgpbLi4uXQoKPiArc3RhdGljIGludCBnZXRfZmlybXdhcmUoc3RydWN0IHdmeF9kZXYgKndk
ZXYsIHUzMiBrZXlzZXRfY2hpcCwKPiArCQkJY29uc3Qgc3RydWN0IGZpcm13YXJlICoqZncsIGlu
dCAqZmlsZV9vZmZzZXQpCj4gK3sKPiArCWludCBrZXlzZXRfZmlsZTsKPiArCWNoYXIgZmlsZW5h
bWVbMjU2XTsKPiArCWNvbnN0IGNoYXIgKmRhdGE7Cj4gKwlpbnQgcmV0Owo+ICsKPiArCXNucHJp
bnRmKGZpbGVuYW1lLCBzaXplb2YoZmlsZW5hbWUpLCAiJXNfJTAyWC5zZWMiLAo+ICsJCSB3ZGV2
LT5wZGF0YS5maWxlX2Z3LCBrZXlzZXRfY2hpcCk7Cj4gKwlyZXQgPSBmaXJtd2FyZV9yZXF1ZXN0
X25vd2FybihmdywgZmlsZW5hbWUsIHdkZXYtPmRldik7Cj4gKwlpZiAocmV0KSB7Cj4gKwkJZGV2
X2luZm8od2Rldi0+ZGV2LCAiY2FuJ3QgbG9hZCAlcywgZmFsbGluZyBiYWNrIHRvICVzLnNlY1xu
IiwKPiArCQkJIGZpbGVuYW1lLCB3ZGV2LT5wZGF0YS5maWxlX2Z3KTsKPiArCQlzbnByaW50Zihm
aWxlbmFtZSwgc2l6ZW9mKGZpbGVuYW1lKSwgIiVzLnNlYyIsCj4gKwkJCSB3ZGV2LT5wZGF0YS5m
aWxlX2Z3KTsKPiArCQlyZXQgPSByZXF1ZXN0X2Zpcm13YXJlKGZ3LCBmaWxlbmFtZSwgd2Rldi0+
ZGV2KTsKPiArCQlpZiAocmV0KSB7Cj4gKwkJCWRldl9lcnIod2Rldi0+ZGV2LCAiY2FuJ3QgbG9h
ZCAlc1xuIiwgZmlsZW5hbWUpOwo+ICsJCQkqZncgPSBOVUxMOwo+ICsJCQlyZXR1cm4gcmV0Owo+
ICsJCX0KPiArCX0KCkhvdyBpcyB0aGlzIGZpcm13YXJlIGZpbGUgbG9hZGluZyBzdXBwb3NlZCB0
byB3b3JrPyBJZiBJJ20gcmVhZGluZyB0aGUKY29kZSByaWdodCwgdGhlIGRyaXZlciB0cmllcyB0
byBsb2FkIGZpbGUgIndmbV93ZjIwMF8/Py5zZWMiIGJ1dCBpbgpsaW51eC1maXJtd2FyZSB0aGUg
ZmlsZSBpcyBzaWxhYnMvd2ZtX3dmMjAwX0MwLnNlYzoKCmh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcv
cHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L2Zpcm13YXJlL2xpbnV4LWZpcm13YXJlLmdpdC90cmVl
L3NpbGFicwoKVGhhdCBjYW4ndCB3b3JrIGF1dG9tYXRpY2FsbHksIHVubGVzcyBJJ20gbWlzc2lu
ZyBzb21ldGhpbmcgb2YgY291cnNlLgoKQWxzbyBJIHdvdWxkIHByZWZlciB0byB1c2UgZGlyZWN0
b3J5IG5hbWUgYXMgdGhlIGRyaXZlciBuYW1lIHdmeCwgYnV0IEkKZ3Vlc3Mgc2lsYWJzIGlzIGFs
c28gZG9hYmxlLgoKQWxzbyBJJ20gbm90IHNlZWluZyB0aGUgUERTIGZpbGVzIGluIGxpbnV4LWZp
cm13YXJlLiBUaGUgaWRlYSBpcyB0aGF0CndoZW4gdXNlciBpbnN0YWxscyBhbiB1cHN0cmVhbSBr
ZXJuZWwgYW5kIHRoZSBsaW51eC1maXJtd2FyZSBldmVyeXRoaW5nCndpbGwgd29yayBhdXRvbWF0
aWNhbGx5LCB3aXRob3V0IGFueSBtYW51YWwgZmlsZSBpbnN0YWxsYXRpb25zLgoKLS0gCmh0dHBz
Oi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcHJvamVjdC9saW51eC13aXJlbGVzcy9saXN0LwoKaHR0
cHM6Ly93aXJlbGVzcy53aWtpLmtlcm5lbC5vcmcvZW4vZGV2ZWxvcGVycy9kb2N1bWVudGF0aW9u
L3N1Ym1pdHRpbmdwYXRjaGVzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3Jn
Cmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2RyaXZlcmRldi1kZXZlbAo=

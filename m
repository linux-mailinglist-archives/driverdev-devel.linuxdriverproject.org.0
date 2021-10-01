Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 927EC41ECD4
	for <lists+driverdev-devel@lfdr.de>; Fri,  1 Oct 2021 14:01:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 13E8384479;
	Fri,  1 Oct 2021 12:01:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r_D0-eqMhhfL; Fri,  1 Oct 2021 12:01:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 48CA78446B;
	Fri,  1 Oct 2021 12:01:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5CAD21BF29D
 for <devel@linuxdriverproject.org>; Fri,  1 Oct 2021 12:01:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with UTF8SMTP id 4C34684458
 for <devel@linuxdriverproject.org>; Fri,  1 Oct 2021 12:01:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with UTF8SMTP id 411qRAJn6dY4 for <devel@linuxdriverproject.org>;
 Fri,  1 Oct 2021 12:01:37 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from so254-9.mailgun.net (so254-9.mailgun.net [198.61.254.9])
 by smtp1.osuosl.org (Postfix) with UTF8SMTPS id E87B08446B
 for <devel@driverdev.osuosl.org>; Fri,  1 Oct 2021 12:01:33 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1633089697; h=Content-Transfer-Encoding: Content-Type:
 MIME-Version: Message-ID: In-Reply-To: Date: References: Subject: Cc:
 To: From: Sender; bh=p2Ore5ulMIaePgcqUBJyw2WiETcga1BN2OxeVaOjVH4=;
 b=mVayLSHaRadAvuZcUHQ4MOLQB4epW7WJrja1kOl9bN7hz0BzldRm9fPZzyDL3duhUnA52WU6
 5ON5k63ltRU35rzmj3bohq8095UUBuJaCl4Um7anlZO0OL730i00sycPap3nt8hbxEapDeSc
 TEBlQmrfGiP6GVugI7aNtfazdfA=
X-Mailgun-Sending-Ip: 198.61.254.9
X-Mailgun-Sid: WyI2ZDRhNSIsICJkZXZlbEBkcml2ZXJkZXYub3N1b3NsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n04.prod.us-west-2.postgun.com with SMTP id
 6156f89647d64efb6d41cbb5 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Fri, 01 Oct 2021 12:01:26
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 82423C4338F; Fri,  1 Oct 2021 12:01:26 +0000 (UTC)
Received: from tykki (tynnyri.adurom.net [51.15.11.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 08EC7C4338F;
 Fri,  1 Oct 2021 12:01:22 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 smtp.codeaurora.org 08EC7C4338F
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=fail smtp.mailfrom=codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH v7 21/24] wfx: add debug.c/debug.h
References: <20210920161136.2398632-1-Jerome.Pouiller@silabs.com>
 <20210920161136.2398632-22-Jerome.Pouiller@silabs.com>
Date: Fri, 01 Oct 2021 15:01:20 +0300
In-Reply-To: <20210920161136.2398632-22-Jerome.Pouiller@silabs.com> (Jerome
 Pouiller's message of "Mon, 20 Sep 2021 18:11:33 +0200")
Message-ID: <87o889j6nj.fsf@codeaurora.org>
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
b20+CgpbLi4uXQoKPiArc3RhdGljIGludCB3ZnhfcHNfdGltZW91dF9zZXQodm9pZCAqZGF0YSwg
dTY0IHZhbCkKPiArewo+ICsJc3RydWN0IHdmeF9kZXYgKndkZXYgPSAoc3RydWN0IHdmeF9kZXYg
KilkYXRhOwo+ICsJc3RydWN0IHdmeF92aWYgKnd2aWY7Cj4gKwo+ICsJd2Rldi0+Zm9yY2VfcHNf
dGltZW91dCA9IHZhbDsKPiArCXd2aWYgPSBOVUxMOwo+ICsJd2hpbGUgKCh3dmlmID0gd3ZpZl9p
dGVyYXRlKHdkZXYsIHd2aWYpKSAhPSBOVUxMKQo+ICsJCXdmeF91cGRhdGVfcG0od3ZpZik7Cj4g
KwlyZXR1cm4gMDsKPiArfQo+ICsKPiArc3RhdGljIGludCB3ZnhfcHNfdGltZW91dF9nZXQodm9p
ZCAqZGF0YSwgdTY0ICp2YWwpCj4gK3sKPiArCXN0cnVjdCB3ZnhfZGV2ICp3ZGV2ID0gKHN0cnVj
dCB3ZnhfZGV2ICopZGF0YTsKPiArCj4gKwkqdmFsID0gd2Rldi0+Zm9yY2VfcHNfdGltZW91dDsK
PiArCXJldHVybiAwOwo+ICt9Cj4gKwo+ICtERUZJTkVfREVCVUdGU19BVFRSSUJVVEUod2Z4X3Bz
X3RpbWVvdXRfZm9wcywgd2Z4X3BzX3RpbWVvdXRfZ2V0LAo+IHdmeF9wc190aW1lb3V0X3NldCwg
IiVsbGRcbiIpOwo+ICsKPiAraW50IHdmeF9kZWJ1Z19pbml0KHN0cnVjdCB3ZnhfZGV2ICp3ZGV2
KQo+ICt7Cj4gKwlzdHJ1Y3QgZGVudHJ5ICpkOwo+ICsKPiArCWQgPSBkZWJ1Z2ZzX2NyZWF0ZV9k
aXIoIndmeCIsIHdkZXYtPmh3LT53aXBoeS0+ZGVidWdmc2Rpcik7Cj4gKwlkZWJ1Z2ZzX2NyZWF0
ZV9maWxlKCJjb3VudGVycyIsIDA0NDQsIGQsIHdkZXYsICZ3ZnhfY291bnRlcnNfZm9wcyk7Cj4g
KwlkZWJ1Z2ZzX2NyZWF0ZV9maWxlKCJyeF9zdGF0cyIsIDA0NDQsIGQsIHdkZXYsICZ3Znhfcnhf
c3RhdHNfZm9wcyk7Cj4gKwlkZWJ1Z2ZzX2NyZWF0ZV9maWxlKCJ0eF9wb3dlcl9sb29wIiwgMDQ0
NCwgZCwgd2RldiwKPiArCQkJICAgICZ3ZnhfdHhfcG93ZXJfbG9vcF9mb3BzKTsKPiArCWRlYnVn
ZnNfY3JlYXRlX2ZpbGUoInNlbmRfcGRzIiwgMDIwMCwgZCwgd2RldiwgJndmeF9zZW5kX3Bkc19m
b3BzKTsKPiArCWRlYnVnZnNfY3JlYXRlX2ZpbGUoInNlbmRfaGlmX21zZyIsIDA2MDAsIGQsIHdk
ZXYsCj4gKwkJCSAgICAmd2Z4X3NlbmRfaGlmX21zZ19mb3BzKTsKPiArCWRlYnVnZnNfY3JlYXRl
X2ZpbGUoInBzX3RpbWVvdXQiLCAwNjAwLCBkLCB3ZGV2LCAmd2Z4X3BzX3RpbWVvdXRfZm9wcyk7
Cgpwc190aW1lb3V0IHNvdW5kcyBsaWtlIHNvbWV0aGluZyB3aGljaCBzaG91bGQgYmUgaW4gbmw4
MDIxMSwgbm90IGluCmRlYnVnZnMuIFBsZWFzZSByZW1vdmUgaXQgdW50aWwgdGhlIGRyaXZlciBp
cyBhY2NlcHRlZC4KCi0tIApodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL3Byb2plY3QvbGlu
dXgtd2lyZWxlc3MvbGlzdC8KCmh0dHBzOi8vd2lyZWxlc3Mud2lraS5rZXJuZWwub3JnL2VuL2Rl
dmVsb3BlcnMvZG9jdW1lbnRhdGlvbi9zdWJtaXR0aW5ncGF0Y2hlcwpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxA
bGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVj
dC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C75595464
	for <lists+driverdev-devel@lfdr.de>; Tue, 20 Aug 2019 04:30:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 58B3F22721;
	Tue, 20 Aug 2019 02:30:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aK484BPxZpsM; Tue, 20 Aug 2019 02:30:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id DB6502271F;
	Tue, 20 Aug 2019 02:30:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D1AD21BF315
 for <devel@linuxdriverproject.org>; Tue, 20 Aug 2019 02:30:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C49B686E82
 for <devel@linuxdriverproject.org>; Tue, 20 Aug 2019 02:30:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yDT9MCZehCrs for <devel@linuxdriverproject.org>;
 Tue, 20 Aug 2019 02:30:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2514486E4F
 for <devel@driverdev.osuosl.org>; Tue, 20 Aug 2019 02:30:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Aug 2019 19:30:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,407,1559545200"; d="scan'208";a="178050474"
Received: from genxtest-ykzhao.sh.intel.com (HELO [10.239.143.71])
 ([10.239.143.71])
 by fmsmga008.fm.intel.com with ESMTP; 19 Aug 2019 19:30:14 -0700
Subject: Re: [RFC PATCH 15/15] drivers/acrn: add the support of offline SOS cpu
To: Dan Carpenter <dan.carpenter@oracle.com>
References: <1565922356-4488-1-git-send-email-yakui.zhao@intel.com>
 <1565922356-4488-16-git-send-email-yakui.zhao@intel.com>
 <20190819103417.GD4451@kadam>
From: "Zhao, Yakui" <yakui.zhao@intel.com>
Message-ID: <18360e11-22af-8f14-21ad-3fa0e8d23210@intel.com>
Date: Tue, 20 Aug 2019 10:23:14 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <20190819103417.GD4451@kadam>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Jason Chen CJ <jason.cj.chen@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

CgpPbiAyMDE55bm0MDjmnIgxOeaXpSAxODozNCwgRGFuIENhcnBlbnRlciB3cm90ZToKPiBPbiBG
cmksIEF1ZyAxNiwgMjAxOSBhdCAxMDoyNTo1NkFNICswODAwLCBaaGFvIFlha3VpIHdyb3RlOgo+
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL2Fjcm4vYWNybl9kZXYuYyBiL2RyaXZlcnMv
c3RhZ2luZy9hY3JuL2Fjcm5fZGV2LmMKPj4gaW5kZXggMDYwMjEyNS4uNjg2ODAwMyAxMDA2NDQK
Pj4gLS0tIGEvZHJpdmVycy9zdGFnaW5nL2Fjcm4vYWNybl9kZXYuYwo+PiArKysgYi9kcml2ZXJz
L3N0YWdpbmcvYWNybi9hY3JuX2Rldi5jCj4+IEBAIC01ODgsNiArNTg4LDQxIEBAIHN0YXRpYyBj
b25zdCBzdHJ1Y3QgZmlsZV9vcGVyYXRpb25zIGZvcHMgPSB7Cj4+ICAgI2RlZmluZSBTVVBQT1JU
X0hWX0FQSV9WRVJTSU9OX01BSk9SCTEKPj4gICAjZGVmaW5lIFNVUFBPUlRfSFZfQVBJX1ZFUlNJ
T05fTUlOT1IJMAo+PiAgIAo+PiArc3RhdGljIHNzaXplX3QKPj4gK29mZmxpbmVfY3B1X3N0b3Jl
KHN0cnVjdCBkZXZpY2UgKmRldiwKPj4gKwkJCXN0cnVjdCBkZXZpY2VfYXR0cmlidXRlICphdHRy
LAo+PiArCQkJY29uc3QgY2hhciAqYnVmLCBzaXplX3QgY291bnQpCj4+ICt7Cj4+ICsjaWZkZWYg
Q09ORklHX1g4Ngo+PiArCXU2NCBjcHUsIGxhcGljaWQ7Cj4+ICsKPj4gKwlpZiAoa3N0cnRvdWxs
KGJ1ZiwgMCwgJmNwdSkgPCAwKQo+PiArCQlyZXR1cm4gLUVJTlZBTDsKPiAKClRoYW5rcyBmb3Ig
dGhlIHJldmlldy4KCk1ha2Ugc2Vuc2UuClRoZSBlcnJvciBjb2RlIHdpbGwgYmUgcHJlc2VydmVk
LgoKPiBQcmVzZXJ2ZSB0aGUgZXJyb3IgY29kZS4KPiAKPiAJcmV0ID0ga3N0cnRvdWxsKGJ1Ziwg
MCwgJmNwdSk7Cj4gCWlmIChyZXQpCj4gCQlyZXR1cm4gcmV0OwoKCj4gCj4+ICsKPj4gKwlpZiAo
Y3B1X3Bvc3NpYmxlKGNwdSkpIHsKPiAKPiBZb3UgY2FuJ3QgcGFzcyB1bmNoZWNrZWQgY3B1IHZh
bHVlcyB0byBjcHVfcG9zc2libGUoKSBvciBpdCByZXN1bHRzIGluCj4gYW4gb3V0IG9mIGJvdW5k
cyByZWFkIGlmIGNwdSBpcyA+PSB0aGFuIG5yX2NwdV9pZHMuCj4gCgpPSy4gSXQgd2lsbCBhZGQg
dGhlIGNoZWNrIG9mICJjcHUgPCBudW1fcG9zc2libGVzX2NwdSgpIiB0byBhdm9pZCB0aGUgCm91
dCBvZiBib3VuZHMuCgo+IHJlZ2FyZHMsCj4gZGFuIGNhcnBlbnRlcgo+IApfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2
ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJv
amVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK

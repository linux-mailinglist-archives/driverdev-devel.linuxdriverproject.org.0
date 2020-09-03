Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4398A25C23A
	for <lists+driverdev-devel@lfdr.de>; Thu,  3 Sep 2020 16:09:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EBBE486D2F;
	Thu,  3 Sep 2020 14:09:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yOTuNQ_QpW5E; Thu,  3 Sep 2020 14:09:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EA40886BBB;
	Thu,  3 Sep 2020 14:09:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 206331BF855
 for <devel@linuxdriverproject.org>; Thu,  3 Sep 2020 14:09:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1AAFD84EB9
 for <devel@linuxdriverproject.org>; Thu,  3 Sep 2020 14:09:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ud+KRH9OtSls for <devel@linuxdriverproject.org>;
 Thu,  3 Sep 2020 14:09:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 429C884D9F
 for <devel@driverdev.osuosl.org>; Thu,  3 Sep 2020 14:09:53 +0000 (UTC)
IronPort-SDR: ImG70L/PmOvUJPkzzhDW8kBW1aiE7Gztu4Pjm1BPLtTjwl4VqBSIscmKB6kUaszRpIkt+vEgBF
 mgLPG2PtFoAw==
X-IronPort-AV: E=McAfee;i="6000,8403,9733"; a="219129983"
X-IronPort-AV: E=Sophos;i="5.76,387,1592895600"; d="scan'208";a="219129983"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2020 07:09:39 -0700
IronPort-SDR: rkZ0Olar/QMGUYe0mhdZgEL72iAnn+i/sGoky55dDU7fVd4VgjWgmNUES9gyd25QUNbpwm4FXb
 Cij5BElBsaRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,387,1592895600"; d="scan'208";a="331797666"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by orsmga008.jf.intel.com with ESMTP; 03 Sep 2020 07:09:37 -0700
Received: from andy by smile with local (Exim 4.94)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1kDptc-00E2xB-51; Thu, 03 Sep 2020 17:07:24 +0300
Date: Thu, 3 Sep 2020 17:07:24 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH 5/5] media: atomisp: get rid of
 -Wsuggest-attribute=format warnings
Message-ID: <20200903140724.GE1891694@smile.fi.intel.com>
References: <cover.1599141140.git.mchehab+huawei@kernel.org>
 <6c77d765707b1e6b2901fd23d85b4d032f1a1799.1599141140.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6c77d765707b1e6b2901fd23d85b4d032f1a1799.1599141140.git.mchehab+huawei@kernel.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Sakari Ailus <sakari.ailus@linux.intel.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gVGh1LCBTZXAgMDMsIDIwMjAgYXQgMDM6NTc6MzJQTSArMDIwMCwgTWF1cm8gQ2FydmFsaG8g
Q2hlaGFiIHdyb3RlOgo+IFRoZXJlIGFyZSBzb21lIHdhcm5pbmdzIHJlcG9ydGVkIGJ5IGdjYzoK
PiAJZHJpdmVycy9zdGFnaW5nL21lZGlhL2F0b21pc3AvL3BjaS9hdG9taXNwX2NvbXBhdF9jc3My
MC5jOjE2NDoyOiB3YXJuaW5nOiBmdW5jdGlvbiDigJhhdG9taXNwX2NzczJfZGJnX3ByaW504oCZ
IG1pZ2h0IGJlIGEgY2FuZGlkYXRlIGZvciDigJhnbnVfcHJpbnRm4oCZIGZvcm1hdCBhdHRyaWJ1
dGUgWy1Xc3VnZ2VzdC1hdHRyaWJ1dGU9Zm9ybWF0XQo+IAlkcml2ZXJzL3N0YWdpbmcvbWVkaWEv
YXRvbWlzcC8vcGNpL2F0b21pc3BfY29tcGF0X2NzczIwLmM6MTcwOjI6IHdhcm5pbmc6IGZ1bmN0
aW9uIOKAmGF0b21pc3BfY3NzMl9kYmdfZnRyYWNlX3ByaW504oCZIG1pZ2h0IGJlIGEgY2FuZGlk
YXRlIGZvciDigJhnbnVfcHJpbnRm4oCZIGZvcm1hdCBhdHRyaWJ1dGUgWy1Xc3VnZ2VzdC1hdHRy
aWJ1dGU9Zm9ybWF0XQo+IAlkcml2ZXJzL3N0YWdpbmcvbWVkaWEvYXRvbWlzcC8vcGNpL2F0b21p
c3BfY29tcGF0X2NzczIwLmM6MTcwOjI6IHdhcm5pbmc6IGZ1bmN0aW9uIOKAmGF0b21pc3BfY3Nz
Ml9kYmdfZnRyYWNlX3ByaW504oCZIG1pZ2h0IGJlIGEgY2FuZGlkYXRlIGZvciDigJhnbnVfcHJp
bnRm4oCZIGZvcm1hdCBhdHRyaWJ1dGUgWy1Xc3VnZ2VzdC1hdHRyaWJ1dGU9Zm9ybWF0XQo+IAlk
cml2ZXJzL3N0YWdpbmcvbWVkaWEvYXRvbWlzcC8vcGNpL2F0b21pc3BfY29tcGF0X2NzczIwLmM6
MTc2OjI6IHdhcm5pbmc6IGZ1bmN0aW9uIOKAmGF0b21pc3BfY3NzMl9lcnJfcHJpbnTigJkgbWln
aHQgYmUgYSBjYW5kaWRhdGUgZm9yIOKAmGdudV9wcmludGbigJkgZm9ybWF0IGF0dHJpYnV0ZSBb
LVdzdWdnZXN0LWF0dHJpYnV0ZT1mb3JtYXRdCj4gCj4gVGhhdCBhcmUgZHVlIHRvIHRoZSB1c2Fn
ZSBvZiBwcmludGYtbGlrZSBtZXNzYWdlcyB3aXRob3V0Cj4gZW5hYmxpbmcgdGhlIGVycm9yIGNo
ZWNraW5nIGxvZ2ljLgo+IAo+IEFkZCB0aGUgcHJvcGVyIGF0dHJpYnV0ZXMgaW4gb3JkZXIgdG8g
c2h1dCB1cCBzdWNoIHdhcm5pbmdzLgoKPiArc3RhdGljIGludCAgX19hdHRyaWJ1dGVfXygoZm9y
bWF0IChwcmludGYsIDEsIDApKSkKPiArYXRvbWlzcF9jc3MyX2RiZ19mdHJhY2VfcHJpbnQoY29u
c3QgY2hhciAqZm10LCB2YV9saXN0IGFyZ3MpCj4gIHsKPiAgCWZ0cmFjZV92cHJpbnRrKGZtdCwg
YXJncyk7Cj4gIAlyZXR1cm4gMDsKPiAgfQo+ICAKCldoeSBub3QgdG8gZHJvcCBpdCBjb21wbGV0
ZWx5IGFzIHdlbGw/Cgo+IC1zdGF0aWMgaW50IGF0b21pc3BfY3NzMl9lcnJfcHJpbnQoY29uc3Qg
Y2hhciAqZm10LCB2YV9saXN0IGFyZ3MpCj4gLXsKPiAtCXZwcmludGsoZm10LCBhcmdzKTsKPiAt
CXJldHVybiAwOwo+IC19CgoKLS0gCldpdGggQmVzdCBSZWdhcmRzLApBbmR5IFNoZXZjaGVua28K
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBt
YWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2
LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK

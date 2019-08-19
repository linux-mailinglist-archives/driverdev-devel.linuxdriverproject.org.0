Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B52A91C3B
	for <lists+driverdev-devel@lfdr.de>; Mon, 19 Aug 2019 07:06:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0EE7F84E34;
	Mon, 19 Aug 2019 05:06:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sb_dvXikS9VU; Mon, 19 Aug 2019 05:06:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 995508564D;
	Mon, 19 Aug 2019 05:06:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 792361BF41B
 for <devel@linuxdriverproject.org>; Mon, 19 Aug 2019 05:06:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 70CBC85456
 for <devel@linuxdriverproject.org>; Mon, 19 Aug 2019 05:06:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yztPdg7BDLtc for <devel@linuxdriverproject.org>;
 Mon, 19 Aug 2019 05:06:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BC07685455
 for <devel@driverdev.osuosl.org>; Mon, 19 Aug 2019 05:06:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Aug 2019 22:06:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,403,1559545200"; d="scan'208";a="378076155"
Received: from genxtest-ykzhao.sh.intel.com (HELO [10.239.143.71])
 ([10.239.143.71])
 by fmsmga006.fm.intel.com with ESMTP; 18 Aug 2019 22:06:29 -0700
Subject: Re: [RFC PATCH 10/15] drivers/acrn: add interrupt injection support
To: Dan Carpenter <dan.carpenter@oracle.com>
References: <1565922356-4488-1-git-send-email-yakui.zhao@intel.com>
 <1565922356-4488-11-git-send-email-yakui.zhao@intel.com>
 <20190816131203.GB3632@kadam>
From: "Zhao, Yakui" <yakui.zhao@intel.com>
Message-ID: <5347e652-9bc1-c465-bc20-488cf0159249@intel.com>
Date: Mon, 19 Aug 2019 12:59:31 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <20190816131203.GB3632@kadam>
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
Cc: devel@driverdev.osuosl.org, Mingqiang Chi <mingqiang.chi@intel.com>,
 linux-kernel@vger.kernel.org, Jason Chen CJ <jason.cj.chen@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

CgpPbiAyMDE55bm0MDjmnIgxNuaXpSAyMToxMiwgRGFuIENhcnBlbnRlciB3cm90ZToKPiBPbiBG
cmksIEF1ZyAxNiwgMjAxOSBhdCAxMDoyNTo1MUFNICswODAwLCBaaGFvIFlha3VpIHdyb3RlOgo+
PiArCWNhc2UgSUNfVk1fSU5UUl9NT05JVE9SOiB7Cj4+ICsJCXN0cnVjdCBwYWdlICpwYWdlOwo+
PiArCj4+ICsJCXJldCA9IGdldF91c2VyX3BhZ2VzX2Zhc3QoaW9jdGxfcGFyYW0sIDEsIDEsICZw
YWdlKTsKPj4gKwkJaWYgKHVubGlrZWx5KHJldCAhPSAxKSB8fCAhcGFnZSkgewo+ICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBeXl5eXl5eXgo+IE5vdCByZXF1aXJlZC4K
CkRvIHlvdSBtZWFuIHRoYXQgaXQgaXMgZW5vdWdoIHRvIGNoZWNrIHRoZSBjb25kaXRpb24gb2Yg
InJldCAhPSAxIj8KT0suIEl0IHdpbGwgYmUgcmVtb3ZlZC4KCgo+IAo+PiArCQkJcHJfZXJyKCJh
Y3JuLWRldjogZmFpbGVkIHRvIHBpbiBpbnRyIGhkciBidWZmZXIhXG4iKTsKPj4gKwkJCXJldHVy
biAtRU5PTUVNOwo+PiArCQl9Cj4+ICsKPj4gKwkJcmV0ID0gaGNhbGxfdm1faW50cl9tb25pdG9y
KHZtLT52bWlkLCBwYWdlX3RvX3BoeXMocGFnZSkpOwo+PiArCQlpZiAocmV0IDwgMCkgewo+PiAr
CQkJcHJfZXJyKCJhY3JuLWRldjogbW9uaXRvciBpbnRyIGRhdGEgZXJyPSVsZFxuIiwgcmV0KTsK
Pj4gKwkJCXJldHVybiAtRUZBVUxUOwo+PiArCQl9Cj4+ICsJCWJyZWFrOwo+PiArCX0KPj4gKwo+
IAo+IHJlZ2FyZHMsCj4gZGFuIGNhcnBlbnRlcgo+IApfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2
ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFp
bG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK

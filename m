Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C2B2395472
	for <lists+driverdev-devel@lfdr.de>; Tue, 20 Aug 2019 04:33:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9A3D422744;
	Tue, 20 Aug 2019 02:32:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QZ--Y57u28Fw; Tue, 20 Aug 2019 02:32:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 292AE22721;
	Tue, 20 Aug 2019 02:32:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 00D0A1BF315
 for <devel@linuxdriverproject.org>; Tue, 20 Aug 2019 02:32:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id EE4CC86329
 for <devel@linuxdriverproject.org>; Tue, 20 Aug 2019 02:32:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eTMl2VpH7r7K for <devel@linuxdriverproject.org>;
 Tue, 20 Aug 2019 02:32:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4578884F2B
 for <devel@driverdev.osuosl.org>; Tue, 20 Aug 2019 02:32:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Aug 2019 19:32:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,407,1559545200"; d="scan'208";a="178050985"
Received: from genxtest-ykzhao.sh.intel.com (HELO [10.239.143.71])
 ([10.239.143.71])
 by fmsmga008.fm.intel.com with ESMTP; 19 Aug 2019 19:32:51 -0700
Subject: Re: [RFC PATCH 08/15] drivers/acrn: add VM memory management for ACRN
 char device
To: Dan Carpenter <dan.carpenter@oracle.com>
References: <1565922356-4488-1-git-send-email-yakui.zhao@intel.com>
 <1565922356-4488-9-git-send-email-yakui.zhao@intel.com>
 <20190816124757.GW1974@kadam>
 <8b909c22-3873-2b5d-4845-1fee1a5d81ce@intel.com>
 <20190819073958.GC4451@kadam>
From: "Zhao, Yakui" <yakui.zhao@intel.com>
Message-ID: <1896e9f8-7947-3c7a-4328-ddbdeee892e3@intel.com>
Date: Tue, 20 Aug 2019 10:25:51 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <20190819073958.GC4451@kadam>
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

CgpPbiAyMDE55bm0MDjmnIgxOeaXpSAxNTozOSwgRGFuIENhcnBlbnRlciB3cm90ZToKPiBPbiBN
b24sIEF1ZyAxOSwgMjAxOSBhdCAwMTozMjo1NFBNICswODAwLCBaaGFvLCBZYWt1aSB3cm90ZToK
Pj4gSW4gZmFjdCBhcyB0aGlzIGRyaXZlciBpcyBtYWlubHkgdXNlZCBmb3IgZW1iZWRkZWQgSU9U
IHVzYWdlLCBpdCBkb2Vzbid0Cj4+IGhhbmRsZSB0aGUgY29tcGxleCBjbGVhbnVwIHdoZW4gc3Vj
aCBlcnJvciBpcyBlbmNvdW50ZXJlZC4gSW5zdGVhZCB0aGUgY2xlYW4KPj4gdXAgaXMgaGFuZGxl
ZCBpbiBmcmVlX2d1ZXN0X3ZtLgo+IAo+IEEgdXNlIGFmdGVyIGZyZWUgaGVyZSBzZWVtcyBsaWtl
IGEgcG90ZW50aWFsIHNlY3VyaXR5IHByb2JsZW0uICBTZWN1cml0eQo+IG1hdHRlcnMgZm9yIElv
VC4uLiAgOigKClRoYW5rcyBmb3IgcG9pbnRpbmcgb3V0IHRoZSBpc3N1ZS4KVGhlIGNsZWFudXAg
d2lsbCBiZSBjb25zaWRlcmVkIGNhcmVmdWxseS4KCj4gCj4gcmVnYXJkcywKPiBkYW4gY2FycGVu
dGVyCj4gCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRl
dmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2
ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1k
ZXZlbAo=

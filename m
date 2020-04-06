Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 015C919F79A
	for <lists+driverdev-devel@lfdr.de>; Mon,  6 Apr 2020 16:08:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8C87787EB0;
	Mon,  6 Apr 2020 14:08:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UNqnCYD2gwVu; Mon,  6 Apr 2020 14:08:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 925A287E6A;
	Mon,  6 Apr 2020 14:08:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9E9951BF97F
 for <devel@linuxdriverproject.org>; Mon,  6 Apr 2020 14:08:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9BFF987E6A
 for <devel@linuxdriverproject.org>; Mon,  6 Apr 2020 14:08:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 01Y9imAgGSjF for <devel@linuxdriverproject.org>;
 Mon,  6 Apr 2020 14:08:06 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1604B87E8E
 for <devel@driverdev.osuosl.org>; Mon,  6 Apr 2020 14:08:06 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 65414238E1;
 Mon,  6 Apr 2020 14:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586182085;
 bh=vhgy+ynRxUHpgkk7e+S8dG76pMVg1GKWZpZgWdztIoQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=IYLzb8Nm+sRiuji67P8mULB1l3aELwXC6jX+mkA4tZKJUI33MBO8HYv729g4sdVBA
 oS5g0++iCERktqPGvNmlezEGY16tvAEQK0ejAt7ewaua1+cpQ2FB1ps3+Z6TAbYuJq
 keh2EWYEPHa/pO4Mln43DeJnnPNDxCZ80IlK/c6s=
Date: Mon, 6 Apr 2020 16:08:03 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Wang Hai <wanghai38@huawei.com>
Subject: Re: [PATCH] Staging: rtl8192e: remove set but not used variable
 'tmpRegC'
Message-ID: <20200406140803.GB26701@kroah.com>
References: <1586262964-4582-1-git-send-email-wanghai38@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1586262964-4582-1-git-send-email-wanghai38@huawei.com>
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
Cc: zhengbin13@huawei.com, devel@driverdev.osuosl.org, robsonde@gmail.com,
 linux-kernel@vger.kernel.org, puranjay12@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gVHVlLCBBcHIgMDcsIDIwMjAgYXQgMDg6MzY6MDRBTSAtMDQwMCwgV2FuZyBIYWkgd3JvdGU6
Cj4gRml4ZXMgZ2NjICctV3VudXNlZC1idXQtc2V0LXZhcmlhYmxlJyB3YXJuaW5nOgo+IAo+IGRy
aXZlcnMvc3RhZ2luZy9ydGw4MTkyZS9ydGw4MTkyZS9yODE5MkVfZGV2LmM6IEluIGZ1bmN0aW9u
IHJ0bDkyZV9zdGFydF9hZGFwdGVyOgo+IGRyaXZlcnMvc3RhZ2luZy9ydGw4MTkyZS9ydGw4MTky
ZS9yODE5MkVfZGV2LmM6NjkzOjE1OiB3YXJuaW5nOiB2YXJpYWJsZSDigJh0bXBSZWdD4oCZIHNl
dCBidXQgbm90IHVzZWQgWy1XdW51c2VkLWJ1dC1zZXQtdmFyaWFibGVdCj4gCj4gY29tbWl0IDk0
YTc5OTQyNWVlZSAoInJ0bDgxOTJlOiBTcGxpdCBpbnRvIHR3byBkaXJlY3RvcmllcyIpCj4gaW52
b2x2ZWQgdGhpcywgcmVtb3ZlIGl0Lgo+IAo+IFJlcG9ydGVkLWJ5OiBIdWxrIFJvYm90IDxodWxr
Y2lAaHVhd2VpLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBXYW5nIEhhaSA8d2FuZ2hhaTM4QGh1YXdl
aS5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvc3RhZ2luZy9ydGw4MTkyZS9ydGw4MTkyZS9yODE5MkVf
ZGV2LmMgfCA2ICsrKy0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRl
bGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvcnRsODE5MmUvcnRs
ODE5MmUvcjgxOTJFX2Rldi5jIGIvZHJpdmVycy9zdGFnaW5nL3J0bDgxOTJlL3J0bDgxOTJlL3I4
MTkyRV9kZXYuYwo+IGluZGV4IGRkY2Q3ODguLmZmOTM0YWUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9zdGFnaW5nL3J0bDgxOTJlL3J0bDgxOTJlL3I4MTkyRV9kZXYuYwo+ICsrKyBiL2RyaXZlcnMv
c3RhZ2luZy9ydGw4MTkyZS9ydGw4MTkyZS9yODE5MkVfZGV2LmMKPiBAQCAtNjkwLDcgKzY5MCw3
IEBAIGJvb2wgcnRsOTJlX3N0YXJ0X2FkYXB0ZXIoc3RydWN0IG5ldF9kZXZpY2UgKmRldikKPiAg
CXU4IHRtcHZhbHVlOwo+ICAJdTggSUNWZXJzaW9uLCBTd2l0Y2hpbmdSZWd1bGF0b3JPdXRwdXQ7
Cj4gIAlib29sIGJmaXJtd2FyZW9rID0gdHJ1ZTsKPiAtCXUzMiB0bXBSZWdBLCB0bXBSZWdDLCBU
ZW1wQ0NrOwo+ICsJdTMyIHRtcFJlZ0EsIFRlbXBDQ2s7Cj4gIAlpbnQgaSA9IDA7Cj4gIAl1MzIg
cmV0cnlfdGltZXMgPSAwOwo+ICAKPiBAQCAtODg5LDggKzg4OSw4IEBAIGJvb2wgcnRsOTJlX3N0
YXJ0X2FkYXB0ZXIoc3RydWN0IG5ldF9kZXZpY2UgKmRldikKPiAgCQlpZiAocHJpdi0+SUNfQ3V0
ID49IElDX1ZlcnNpb25DdXRfRCkgewo+ICAJCQl0bXBSZWdBID0gcnRsOTJlX2dldF9iYl9yZWco
ZGV2LCByT0ZETTBfWEFUeElRSW1iYWxhbmNlLAo+ICAJCQkJCQkgICAgYk1hc2tEV29yZCk7Cj4g
LQkJCXRtcFJlZ0MgPSBydGw5MmVfZ2V0X2JiX3JlZyhkZXYsIHJPRkRNMF9YQ1R4SVFJbWJhbGFu
Y2UsCj4gLQkJCQkJCSAgICBiTWFza0RXb3JkKTsKPiArCQkJcnRsOTJlX2dldF9iYl9yZWcoZGV2
LCByT0ZETTBfWENUeElRSW1iYWxhbmNlLAo+ICsJCQkJCSAgYk1hc2tEV29yZCk7CgpUaGF0IGlz
IG9kZCwgYXJlIHlvdSBzdXJlIHlvdSBhcmVuJ3Qgc3VwcG9zZWQgdG8gZG8gc29tZXRoaW5nIHdp
dGggdGhhdAp2YWx1ZSB5b3UgcmVhZD8KCnRoYW5rcywKCmdyZWcgay1oCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZl
bEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9q
ZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=

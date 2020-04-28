Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FA4C1BBD97
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Apr 2020 14:29:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0D62422786;
	Tue, 28 Apr 2020 12:29:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zmysYSdUmvcl; Tue, 28 Apr 2020 12:29:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B1C612034B;
	Tue, 28 Apr 2020 12:28:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BF8D31BF32A
 for <devel@linuxdriverproject.org>; Tue, 28 Apr 2020 12:28:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B8F3E863C5
 for <devel@linuxdriverproject.org>; Tue, 28 Apr 2020 12:28:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kmmkLZHUflqI for <devel@linuxdriverproject.org>;
 Tue, 28 Apr 2020 12:28:56 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4568A863BB
 for <devel@driverdev.osuosl.org>; Tue, 28 Apr 2020 12:28:56 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9BD3D206A1;
 Tue, 28 Apr 2020 12:28:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588076936;
 bh=ZXNK0iV3SL2UYWy+2MfsrEnp9gwd1IqQaWS1HZpPznA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=1h8LLhNXlZuB5hYGz0JVRVr/PZMxohUt1v+1JBYBhVvTkii5mztRXmQ7kCsCO7/IA
 kPQeZNHbpEOXWXhM5ZhWtqoQBLoXOnTxhUjcLrV6IwD6Itv0BdfNDgk7cjtLuyjDMW
 wyCEuAbt6h476GM0Z5BogWcRTl6ggKiypXTFB8VY=
Date: Tue, 28 Apr 2020 14:28:53 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Jason Yan <yanaijie@huawei.com>
Subject: Re: [PATCH 2/7] staging: rtl8723bs: os_dep: remove set but not used
 'size'
Message-ID: <20200428122853.GB1253850@kroah.com>
References: <20200427032342.27211-1-yanaijie@huawei.com>
 <20200427032342.27211-3-yanaijie@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200427032342.27211-3-yanaijie@huawei.com>
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
Cc: devel@driverdev.osuosl.org, Hulk Robot <hulkci@huawei.com>,
 linux-kernel@vger.kernel.org, wambui.karugax@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gTW9uLCBBcHIgMjcsIDIwMjAgYXQgMTE6MjM6MzdBTSArMDgwMCwgSmFzb24gWWFuIHdyb3Rl
Ogo+IEFuZCBhbHNvIHJlbW92ZSB0aGUgTlVMTCBjaGVjayBiZWZvcmUga2ZyZWUoKSBiZWNhdXNl
IGtmcmVlKCkgY2FuIGhhbmRsZQo+IE5VTEwgcG9pbnRlcnMgY29ycmVjdGx5Lgo+IAo+IEZpeCB0
aGUgZm9sbG93aW5nIGdjYyB3YXJuaW5nOgo+IAo+IGRyaXZlcnMvc3RhZ2luZy9ydGw4NzIzYnMv
b3NfZGVwL2lvY3RsX2NmZzgwMjExLmM6MTU3OjY6IHdhcm5pbmc6Cj4gdmFyaWFibGUg4oCYc2l6
ZeKAmSBzZXQgYnV0IG5vdCB1c2VkIFstV3VudXNlZC1idXQtc2V0LXZhcmlhYmxlXQo+ICAgdTMy
IHNpemUgPSAwOwo+ICAgICAgIF5+fn4KPiAKPiBSZXBvcnRlZC1ieTogSHVsayBSb2JvdCA8aHVs
a2NpQGh1YXdlaS5jb20+Cj4gU2lnbmVkLW9mZi1ieTogSmFzb24gWWFuIDx5YW5haWppZUBodWF3
ZWkuY29tPgo+IC0tLQo+ICBkcml2ZXJzL3N0YWdpbmcvcnRsODcyM2JzL29zX2RlcC9pb2N0bF9j
Zmc4MDIxMS5jIHwgMTEgLS0tLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDExIGRlbGV0aW9u
cygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvcnRsODcyM2JzL29zX2RlcC9p
b2N0bF9jZmc4MDIxMS5jIGIvZHJpdmVycy9zdGFnaW5nL3J0bDg3MjNicy9vc19kZXAvaW9jdGxf
Y2ZnODAyMTEuYwo+IGluZGV4IDFiYTg1YTQzZjA1YS4uYjAzNzg2OGZiZjIyIDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvc3RhZ2luZy9ydGw4NzIzYnMvb3NfZGVwL2lvY3RsX2NmZzgwMjExLmMKPiAr
KysgYi9kcml2ZXJzL3N0YWdpbmcvcnRsODcyM2JzL29zX2RlcC9pb2N0bF9jZmc4MDIxMS5jCj4g
QEAgLTE1NCwxNyArMTU0LDYgQEAgc3RhdGljIHN0cnVjdCBpZWVlODAyMTFfc3VwcG9ydGVkX2Jh
bmQgKnJ0d19zcHRfYmFuZF9hbGxvYygKPiAgCj4gIHN0YXRpYyB2b2lkIHJ0d19zcHRfYmFuZF9m
cmVlKHN0cnVjdCBpZWVlODAyMTFfc3VwcG9ydGVkX2JhbmQgKnNwdF9iYW5kKQo+ICB7Cj4gLQl1
MzIgc2l6ZSA9IDA7Cj4gLQo+IC0JaWYgKCFzcHRfYmFuZCkKPiAtCQlyZXR1cm47Cj4gLQo+IC0J
aWYgKHNwdF9iYW5kLT5iYW5kID09IE5MODAyMTFfQkFORF8yR0haKQo+IC0Jewo+IC0JCXNpemUg
PSBzaXplb2Yoc3RydWN0IGllZWU4MDIxMV9zdXBwb3J0ZWRfYmFuZCkKPiAtCQkJKyBzaXplb2Yo
c3RydWN0IGllZWU4MDIxMV9jaGFubmVsKSpSVFdfMkdfQ0hBTk5FTFNfTlVNCj4gLQkJCSsgc2l6
ZW9mKHN0cnVjdCBpZWVlODAyMTFfcmF0ZSkqUlRXX0dfUkFURVNfTlVNOwo+IC0JfQo+ICAJa2Zy
ZWUoc3B0X2JhbmQpOwo+ICB9CgpUaGlzIGZ1bmN0aW9uIGNhbiBub3cgYmUgcmVtb3ZlZCBhbmQg
cmVwbGFjZWQgd2l0aCB0aGUgY2FsbCB0byBrZnJlZSgpLApyaWdodD8gIENhbiB5b3Ugc2VuZCBh
IGZvbGxvdy1vbiBwYXRjaCB0byBkbyB0aGF0PwoKdGhhbmtzLAoKZ3JlZyBrLWgKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0
CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZl
cnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==

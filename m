Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A01E0105059
	for <lists+driverdev-devel@lfdr.de>; Thu, 21 Nov 2019 11:19:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8658C87ED5;
	Thu, 21 Nov 2019 10:19:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UjWHSJmm2qAS; Thu, 21 Nov 2019 10:19:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0581E86BAF;
	Thu, 21 Nov 2019 10:19:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7FF0B1BF372
 for <devel@linuxdriverproject.org>; Thu, 21 Nov 2019 10:19:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7A5FA204BC
 for <devel@linuxdriverproject.org>; Thu, 21 Nov 2019 10:19:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GRxJQey9yCCT for <devel@linuxdriverproject.org>;
 Thu, 21 Nov 2019 10:19:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by silver.osuosl.org (Postfix) with ESMTP id 7D70120420
 for <devel@driverdev.osuosl.org>; Thu, 21 Nov 2019 10:19:01 +0000 (UTC)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A89F6DA7;
 Thu, 21 Nov 2019 02:19:00 -0800 (PST)
Received: from [10.1.194.43] (e112269-lin.cambridge.arm.com [10.1.194.43])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BF6833F52E;
 Thu, 21 Nov 2019 02:18:59 -0800 (PST)
Subject: Re: [PATCH v1 1/5] fbtft: Make sure string is NULL terminated
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 dri-devel@lists.freedesktop.org, =?UTF-8?Q?Noralf_Tr=c3=b8nnes?=
 <noralf@tronnes.org>, linux-fbdev@vger.kernel.org,
 Nishad Kamdar <nishadkamdar@gmail.com>, devel@driverdev.osuosl.org
References: <20191120095716.26628-1-andriy.shevchenko@linux.intel.com>
From: Steven Price <steven.price@arm.com>
Message-ID: <da3a18a1-a5a1-52b5-20d6-c4ef2bf6a5fe@arm.com>
Date: Thu, 21 Nov 2019 10:18:58 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191120095716.26628-1-andriy.shevchenko@linux.intel.com>
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gMjAvMTEvMjAxOSAwOTo1NywgQW5keSBTaGV2Y2hlbmtvIHdyb3RlOgo+IE5ldyBHQ0Mgd2Fy
bnMgYWJvdXQgaW5hcHByb3ByaWF0ZSB1c2Ugb2Ygc3RybmNweSgpOgo+IAo+IGRyaXZlcnMvc3Rh
Z2luZy9mYnRmdC9mYnRmdC1jb3JlLmM6IEluIGZ1bmN0aW9uIOKAmGZidGZ0X2ZyYW1lYnVmZmVy
X2FsbG9j4oCZOgo+IGRyaXZlcnMvc3RhZ2luZy9mYnRmdC9mYnRmdC1jb3JlLmM6NjY1OjI6IHdh
cm5pbmc6IOKAmHN0cm5jcHnigJkgc3BlY2lmaWVkIGJvdW5kIDE2IGVxdWFscyBkZXN0aW5hdGlv
biBzaXplIFstV3N0cmluZ29wLXRydW5jYXRpb25dCj4gICA2NjUgfCAgc3RybmNweShpbmZvLT5m
aXguaWQsIGRldi0+ZHJpdmVyLT5uYW1lLCAxNik7Cj4gICAgICAgfCAgXn5+fn5+fn5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn4KPiAKPiBMYXRlciBvbiB0aGUgY29weSBpcyBi
ZWluZyB1c2VkIHdpdGggdGhlIGFzc3VtcHRpb24gdG8gYmUgTlVMTCB0ZXJtaW5hdGVkLgo+IE1h
a2Ugc3VyZSBzdHJpbmcgaXMgTlVMTCB0ZXJtaW5hdGVkIGJ5IHN3aXRjaGluZyB0byBzbnByaW50
ZigpLgoKRXZlbiBiZXR0ZXIgd291bGQgYmUgc3Ryc2NweSgpOgoKCXN0cnNjcHkoaW5mby0+Zml4
LmlkLCBkZXYtPmRyaXZlci0+bmFtZSwgc2l6ZW9mKGluZm8tPmZpeC5pZCkpOwoKU3RldmUKCj4g
Cj4gU2lnbmVkLW9mZi1ieTogQW5keSBTaGV2Y2hlbmtvIDxhbmRyaXkuc2hldmNoZW5rb0BsaW51
eC5pbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvc3RhZ2luZy9mYnRmdC9mYnRmdC1jb3JlLmMg
fCAyICstCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+
IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvZmJ0ZnQvZmJ0ZnQtY29yZS5jIGIvZHJp
dmVycy9zdGFnaW5nL2ZidGZ0L2ZidGZ0LWNvcmUuYwo+IGluZGV4IGEwYTY3YWE1MTdmMC4uNjFm
MDI4NmZiMTU3IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy9mYnRmdC9mYnRmdC1jb3Jl
LmMKPiArKysgYi9kcml2ZXJzL3N0YWdpbmcvZmJ0ZnQvZmJ0ZnQtY29yZS5jCj4gQEAgLTY2Niw3
ICs2NjYsNyBAQCBzdHJ1Y3QgZmJfaW5mbyAqZmJ0ZnRfZnJhbWVidWZmZXJfYWxsb2Moc3RydWN0
IGZidGZ0X2Rpc3BsYXkgKmRpc3BsYXksCj4gIAlmYmRlZmlvLT5kZWZlcnJlZF9pbyA9ICAgICBm
YnRmdF9kZWZlcnJlZF9pbzsKPiAgCWZiX2RlZmVycmVkX2lvX2luaXQoaW5mbyk7Cj4gIAo+IC0J
c3RybmNweShpbmZvLT5maXguaWQsIGRldi0+ZHJpdmVyLT5uYW1lLCAxNik7Cj4gKwlzbnByaW50
ZihpbmZvLT5maXguaWQsIHNpemVvZihpbmZvLT5maXguaWQpLCAiJXMiLCBkZXYtPmRyaXZlci0+
bmFtZSk7Cj4gIAlpbmZvLT5maXgudHlwZSA9ICAgICAgICAgICBGQl9UWVBFX1BBQ0tFRF9QSVhF
TFM7Cj4gIAlpbmZvLT5maXgudmlzdWFsID0gICAgICAgICBGQl9WSVNVQUxfVFJVRUNPTE9SOwo+
ICAJaW5mby0+Zml4LnhwYW5zdGVwID0JICAgMDsKPiAKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRy
aXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=

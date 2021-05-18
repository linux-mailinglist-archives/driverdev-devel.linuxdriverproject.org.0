Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE7B0387512
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 May 2021 11:27:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3A02D40406;
	Tue, 18 May 2021 09:27:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PV_gfCIpzXS6; Tue, 18 May 2021 09:27:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9625140390;
	Tue, 18 May 2021 09:27:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A6E631BF287
 for <devel@linuxdriverproject.org>; Tue, 18 May 2021 09:27:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 95AC2405E6
 for <devel@linuxdriverproject.org>; Tue, 18 May 2021 09:27:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GsNfpoc9QXOt for <devel@linuxdriverproject.org>;
 Tue, 18 May 2021 09:27:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from cmccmta1.chinamobile.com (cmccmta1.chinamobile.com
 [221.176.66.79])
 by smtp4.osuosl.org (Postfix) with ESMTP id 51423405EB
 for <devel@driverdev.osuosl.org>; Tue, 18 May 2021 09:27:23 +0000 (UTC)
Received: from spf.mail.chinamobile.com (unknown[172.16.121.15]) by
 rmmx-syy-dmz-app04-12004 (RichMail) with SMTP id 2ee460a3885f4ba-8c524;
 Tue, 18 May 2021 17:26:56 +0800 (CST)
X-RM-TRANSID: 2ee460a3885f4ba-8c524
X-RM-TagInfo: emlType=0                                       
X-RM-SPAM-FLAG: 00000000
Received: from [192.168.21.77] (unknown[10.42.68.12])
 by rmsmtp-syy-appsvr08-12008 (RichMail) with SMTP id 2ee860a3885e647-b4121;
 Tue, 18 May 2021 17:26:55 +0800 (CST)
X-RM-TRANSID: 2ee860a3885e647-b4121
Subject: Re: [PATCH] staging: iio: cdc: ad7746: Fix unnecessary check
 andassignment in ad7746_probe()
To: Dan Carpenter <dan.carpenter@oracle.com>
References: <20210517150006.8436-1-tangbin@cmss.chinamobile.com>
 <20210518075254.GN1955@kadam>
From: tangbin <tangbin@cmss.chinamobile.com>
Message-ID: <dfb7d829-94e6-2051-8795-79402160afdb@cmss.chinamobile.com>
Date: Tue, 18 May 2021 17:27:07 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20210518075254.GN1955@kadam>
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
Cc: devel@driverdev.osuosl.org, lars@metafoo.de, Michael.Hennerich@analog.com,
 linux-iio@vger.kernel.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, pmeerw@pmeerw.net, knaack.h@gmx.de,
 jic23@kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGkgRGFu77yaCgpPbiAyMDIxLzUvMTggMTU6NTIsIERhbiBDYXJwZW50ZXIgd3JvdGU6Cj4gT24g
TW9uLCBNYXkgMTcsIDIwMjEgYXQgMTE6MDA6MDZQTSArMDgwMCwgVGFuZyBCaW4gd3JvdGU6Cj4+
IEBAIC03MzAsMTEgKzczMCw3IEBAIHN0YXRpYyBpbnQgYWQ3NzQ2X3Byb2JlKHN0cnVjdCBpMmNf
Y2xpZW50ICpjbGllbnQsCj4+ICAgCWlmIChyZXQgPCAwKQo+PiAgIAkJcmV0dXJuIHJldDsKPj4g
ICAKPj4gLQlyZXQgPSBkZXZtX2lpb19kZXZpY2VfcmVnaXN0ZXIoaW5kaW9fZGV2LT5kZXYucGFy
ZW50LCBpbmRpb19kZXYpOwo+PiAtCWlmIChyZXQpCj4+IC0JCXJldHVybiByZXQ7Cj4+IC0KPj4g
LQlyZXR1cm4gMDsKPj4gKwlyZXR1cm4gZGV2bV9paW9fZGV2aWNlX3JlZ2lzdGVyKGluZGlvX2Rl
di0+ZGV2LnBhcmVudCwgaW5kaW9fZGV2KTsKPj4gICB9Cj4gVGhpcyBzb3J0IG9mIHRoaW5nIGlz
IGRvbmUgZGVsaWJlcmF0ZWx5IGFzIGEgc3R5bGUgY2hvaWNlLi4uICBJIHByb2JhYmx5Cj4gd291
bGRuJ3QgaGF2ZSB3cml0dGVuIGl0IHRoYXQgd2F5IG15c2VsZiwgYnV0IHRoZXJlIHJlYWxseSBp
c24ndCBhCj4gZG93bnNpZGUgdG8gbGVhdmluZyBpdCBhcy1pcy4KPgo+IFRoZSB1bnVzZWQgImlu
dCByZXQgPSAwOyIganVzdCBpbnRyb2R1Y2VzIGEgc3RhdGljIGNoZWNrZXIgd2FybmluZyBhYm91
dAo+IHVudXNlZCBhc3NpZ25tZW50cyBhbmQgZGlzYWJsZXMgdGhlIHN0YXRpYyBjaGVja2VyIHdh
cm5pbmcgZm9yCj4gdW5pbml0aWFsaXplZCB2YXJpYWJsZXMgc28gd2Ugd2FudCB0byByZW1vdmUg
dGhhdC4KPgpHb3QgaXQsIEkgd2lsbCBzZW5kIHRoaXMgcGF0Y2ggZm9yIHlvdS4KClRoYW5rcwoK
VGFuZyBCaW4KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDov
L2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVy
ZGV2LWRldmVsCg==

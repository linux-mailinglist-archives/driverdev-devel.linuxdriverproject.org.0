Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 845C5387F1D
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 May 2021 19:58:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A0B6940670;
	Tue, 18 May 2021 17:58:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eulqlbW5uCuS; Tue, 18 May 2021 17:58:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2C6CA405B7;
	Tue, 18 May 2021 17:58:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4BD931BF2AF
 for <devel@linuxdriverproject.org>; Tue, 18 May 2021 17:58:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 46C2140003
 for <devel@linuxdriverproject.org>; Tue, 18 May 2021 17:58:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q924JCw5-zpV for <devel@linuxdriverproject.org>;
 Tue, 18 May 2021 17:58:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A9F3240149
 for <devel@driverdev.osuosl.org>; Tue, 18 May 2021 17:58:19 +0000 (UTC)
Received: from jic23-huawei (cpc108967-cmbg20-2-0-cust86.5-4.cable.virginm.net
 [81.101.6.87])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7C931611B0;
 Tue, 18 May 2021 17:58:16 +0000 (UTC)
Date: Tue, 18 May 2021 18:59:33 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: tangbin <tangbin@cmss.chinamobile.com>
Subject: Re: [PATCH] staging: iio: cdc: ad7746: Fix unnecessary check
 andassignment in ad7746_probe()
Message-ID: <20210518185933.7839f848@jic23-huawei>
In-Reply-To: <dfb7d829-94e6-2051-8795-79402160afdb@cmss.chinamobile.com>
References: <20210517150006.8436-1-tangbin@cmss.chinamobile.com>
 <20210518075254.GN1955@kadam>
 <dfb7d829-94e6-2051-8795-79402160afdb@cmss.chinamobile.com>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
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
Cc: devel@driverdev.osuosl.org, lars@metafoo.de, Michael.Hennerich@analog.com,
 linux-iio@vger.kernel.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, pmeerw@pmeerw.net, knaack.h@gmx.de,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gVHVlLCAxOCBNYXkgMjAyMSAxNzoyNzowNyArMDgwMAp0YW5nYmluIDx0YW5nYmluQGNtc3Mu
Y2hpbmFtb2JpbGUuY29tPiB3cm90ZToKCj4gSGkgRGFu77yaCj4gCj4gT24gMjAyMS81LzE4IDE1
OjUyLCBEYW4gQ2FycGVudGVyIHdyb3RlOgo+ID4gT24gTW9uLCBNYXkgMTcsIDIwMjEgYXQgMTE6
MDA6MDZQTSArMDgwMCwgVGFuZyBCaW4gd3JvdGU6ICAKPiA+PiBAQCAtNzMwLDExICs3MzAsNyBA
QCBzdGF0aWMgaW50IGFkNzc0Nl9wcm9iZShzdHJ1Y3QgaTJjX2NsaWVudCAqY2xpZW50LAo+ID4+
ICAgCWlmIChyZXQgPCAwKQo+ID4+ICAgCQlyZXR1cm4gcmV0Owo+ID4+ICAgCj4gPj4gLQlyZXQg
PSBkZXZtX2lpb19kZXZpY2VfcmVnaXN0ZXIoaW5kaW9fZGV2LT5kZXYucGFyZW50LCBpbmRpb19k
ZXYpOwo+ID4+IC0JaWYgKHJldCkKPiA+PiAtCQlyZXR1cm4gcmV0Owo+ID4+IC0KPiA+PiAtCXJl
dHVybiAwOwo+ID4+ICsJcmV0dXJuIGRldm1faWlvX2RldmljZV9yZWdpc3RlcihpbmRpb19kZXYt
PmRldi5wYXJlbnQsIGluZGlvX2Rldik7Cj4gPj4gICB9ICAKPiA+IFRoaXMgc29ydCBvZiB0aGlu
ZyBpcyBkb25lIGRlbGliZXJhdGVseSBhcyBhIHN0eWxlIGNob2ljZS4uLiAgSSBwcm9iYWJseQo+
ID4gd291bGRuJ3QgaGF2ZSB3cml0dGVuIGl0IHRoYXQgd2F5IG15c2VsZiwgYnV0IHRoZXJlIHJl
YWxseSBpc24ndCBhCj4gPiBkb3duc2lkZSB0byBsZWF2aW5nIGl0IGFzLWlzLgo+ID4KPiA+IFRo
ZSB1bnVzZWQgImludCByZXQgPSAwOyIganVzdCBpbnRyb2R1Y2VzIGEgc3RhdGljIGNoZWNrZXIg
d2FybmluZyBhYm91dAo+ID4gdW51c2VkIGFzc2lnbm1lbnRzIGFuZCBkaXNhYmxlcyB0aGUgc3Rh
dGljIGNoZWNrZXIgd2FybmluZyBmb3IKPiA+IHVuaW5pdGlhbGl6ZWQgdmFyaWFibGVzIHNvIHdl
IHdhbnQgdG8gcmVtb3ZlIHRoYXQuCj4gPiAgCj4gR290IGl0LCBJIHdpbGwgc2VuZCB0aGlzIHBh
dGNoIGZvciB5b3UuCgpJIGZhbGwgYSBiaXQgZGlmZmVyZW50IG9uIHRoaXMgYW5kIHdvdWxkIGNv
bnNpZGVyIHRoZSBhYm92ZSBhIGNsZWFudXAKdGhvdWdoIG9uZSBJJ2QgcHJlZmVyIHRvIGdldCB3
aXRoIG1vcmUgc2lnbmlmaWNhbnQgc3R1ZmYgcmF0aGVyCnRoYW4gb24gaXQncyBvd24uICBIb3dl
dmVyLCB0aGVyZSBpcyBhbHJlYWR5IGEgcGF0Y2ggaW4gcmV2aXNpb24KdGhhdCBpbmNsdWRlcyB0
aGUgc2FtZSBjaGFuZ2UgZnJvbSBMdWNhcyBTdGFua3VzLgoKPiAKPiBUaGFua3MKPiAKPiBUYW5n
IEJpbgo+IAo+IAo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0
cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJp
dmVyZGV2LWRldmVsCg==

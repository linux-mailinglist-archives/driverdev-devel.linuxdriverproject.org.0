Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81E0C38245A
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 May 2021 08:30:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 89BEB403F2;
	Mon, 17 May 2021 06:30:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MtBsjZGc7_4M; Mon, 17 May 2021 06:30:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 74C1A400E0;
	Mon, 17 May 2021 06:30:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 928A91BF365
 for <devel@linuxdriverproject.org>; Mon, 17 May 2021 06:30:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8F3D560724
 for <devel@linuxdriverproject.org>; Mon, 17 May 2021 06:30:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mc3BV0PfEnN6 for <devel@linuxdriverproject.org>;
 Mon, 17 May 2021 06:30:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BA8A7606CF
 for <devel@driverdev.osuosl.org>; Mon, 17 May 2021 06:30:07 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id E55EB61209;
 Mon, 17 May 2021 06:30:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1621233007;
 bh=5URBXUpemCQKQLKzWyeSByFQr9lp5HFfnasDIKcXx2I=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Ag8tid0+KcykMTy8sAm3uL7zsApsOuEuWfw63QF6ZSNqDik5k71msJ5BRCgF65k2K
 9q1xebrMbw+h7gdT72TtOiUsS8xadlc447n2Cl4+BdPL1s3mY7YtceekACOTGutaVA
 D0jjvsQA9TM0IdAyXG0CyTCUSJOH5ibGQFcmbGFfJyVw+0vryqieSO1zL1MTsZlwM0
 0UDrD1Kw/uWpiWaeOk98KYKUAyVZ5VwZheRfRGjbgtoN06XNJikUAIOXBZnarKXZJl
 V2LmJ+9ohUDATD86s8+T2edQuMqVRJSDHwU75yOZx7ddei4lNBUb+dS8zK3EE21DrB
 f9GqkkYzmWBTQ==
Date: Mon, 17 May 2021 08:30:01 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Pavel Machek <pavel@ucw.cz>
Subject: Re: [PATCH 17/17] staging: nuc-led: update the TODOs
Message-ID: <20210517083001.7688acd7@coco.lan>
In-Reply-To: <20210516182149.GA3666@localhost>
References: <cover.1621161037.git.mchehab+huawei@kernel.org>
 <f23fed6a89f66564f5af52f241016a4b9823ce04.1621161037.git.mchehab+huawei@kernel.org>
 <20210516182149.GA3666@localhost>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-redhat-linux-gnu)
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-staging@lists.linux.dev, linuxarm@huawei.com,
 linux-kernel@vger.kernel.org, mauro.chehab@huawei.com,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-leds@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGkgUGF2ZWwsCgpFbSBTdW4sIDE2IE1heSAyMDIxIDIwOjIxOjUwICswMjAwClBhdmVsIE1hY2hl
ayA8cGF2ZWxAdWN3LmN6PiBlc2NyZXZldToKCj4gSGkhCj4gCj4gPiAtICBOZWVkIHRvIHZhbGlk
YXRlIHRoZSB1QVBJIGFuZCBkb2N1bWVudCBpdCBiZWZvcmUgbW92aW5nCj4gPiAgICB0aGlzIGRy
aXZlciBvdXQgb2Ygc3RhZ2luZy4gIAo+IAo+ID4gIC0gU3RhYmlsaXplIGFuZCBkb2N1bWVudCBp
dHMgc3lzZnMgaW50ZXJmYWNlLiAgCj4gICAgCj4gV291bGQgeW91IG1pbmQgc3RhcnRpbmcgd2l0
aCB0aGlzIG9uZT8KCkRvIHlvdSBtZWFuIHdyaXRpbmcgdGhlIEFCSSBkb2N1bWVudCBmb3IgaXQ/
IFN1cmVseSBJIGNhbiBkbyB0aGF0LApidXQgSSdtIG5vdCBzdXJlIHdoZXJlIHRvIHB1dCBzdWNo
IGRvY3VtZW50IHdoaWxlIGl0IGlzIG9uIHN0YWdpbmcuCgo+IFdlIHNob3VsZCBoYXZlIGV4aXN0
aW5nIEFQSXMKPiBmb3IgbW9zdCBvZiBmdW5jdGlvbmFsaXR5IGRlc2NyaWJlZC4uLgoKSSB0cmll
ZCB0byBzdGF5IGFzIGNsb3NlIGFzIHBvc3NpYmxlIHRvIHRoZSBleGlzdGluZyBBUEksIGJ1dAp0
aGVyZSBhcmUgc29tZSB0aGluZ3MgdGhhdCByZXF1aXJlZCBhIGRpZmZlcmVudCBvbmUuCgpGb3Ig
aW5zdGFuY2UsIHdpdGggV01JIHJldiAwLjY0IGFuZCAxLjAsIGFueSBMRUQgb2YgdGhlIGRldmlj
ZQpjYW4gYmUgcHJvZ3JhbW1lZCB0byBiZSBhIHBvd2VyIGluZGljYXRvci4KCldoZW4gYSBMRUQg
aXMgcHJvZ3JhbW1lZCB0aGlzIHdheSwgdGhlcmUgYXJlIHVwIHRvIDMgKG9uIHJldiAxLjApIG9y
IHVwCnRvIDQgKG9uIHJldiAwLjY0KSBkaWZmZXJlbnQgYnJpZ2h0bmVzcyBsZXZlbCBvZiB0aGUg
TEVELCBhbmQgdGhvc2UKYXJlIGFzc29jaWF0ZWQgd2l0aCBhIHBvd2VyIHN0YXR1cyAobGlrZSBT
MCwgUzMsIFM1LCAicmVhZHkgbW9kZSIpLgoKU28sIHRoZSBMRUQgQVBJIHN0YW5kYXJkICJicmln
aHRuZXNzIiBpcyBtZWFuaW5nbGVzcy4gT24gdGhlIG90aGVyCmhhbmQsIHdoZW4gdGhlIHNhbWUg
TEVEIGlzIHByb2dyYW1tZWQgdG8gbW9uaXRvciwgbGV0J3Mgc2F5LCB0aGUKV2lGaSBvciBvbmUg
b2YgdGhlIHR3byBFdGhlcm5ldHMgKG9yIGJvdGggYXQgdGhlIHNhbWUgdGltZSksIHRoZQpzdGFu
ZGFyZCAiYnJpZ2h0bmVzcyIgbGV2ZWwgbWFrZXMgc2Vuc2UuCgo+IAo+IFdlIHJlYWxseSBkb24n
dCB3YW50IHRvIG1lcmdlIGNvZGUgd2l0aCBiYWQgQVBJLCBub3QgZXZlbiB0byBzdGFnaW5nLgoK
U2VlLCB0aGlzIGlzIHRoZSBBUEkgdGhhdCBpdCBpcyBleHBvc2VkIG9uIHdpdGggYSBOVUM4OgoK
CSQgdHJlZSAvc3lzL2NsYXNzL2xlZHMvbnVjXDpcOmZyb250MS8KCS9zeXMvY2xhc3MvbGVkcy9u
dWM6OmZyb250MS8KCeKUnOKUgOKUgCBibGlua19iZWhhdmlvcgoJ4pSc4pSA4pSAIGJsaW5rX2Zy
ZXF1ZW5jeQoJ4pSc4pSA4pSAIGJyaWdodG5lc3MKCeKUnOKUgOKUgCBjb2xvcgoJ4pSc4pSA4pSA
IGRldmljZSAtPiAuLi8uLi8uLi84QzVEQTQ0Qy1DREMzLTQ2QjMtODYxOS00RTI2RDM0MzkwQjcK
CeKUnOKUgOKUgCBldGhlcm5ldF90eXBlCgnilJzilIDilIAgaGRkX2RlZmF1bHQKCeKUnOKUgOKU
gCBpbmRpY2F0b3IKCeKUnOKUgOKUgCBtYXhfYnJpZ2h0bmVzcwoJ4pSc4pSA4pSAIHBvd2VyCgni
lILCoMKgIOKUnOKUgOKUgCBhdXRvc3VzcGVuZF9kZWxheV9tcwoJ4pSCwqDCoCDilJzilIDilIAg
Y29udHJvbAoJ4pSCwqDCoCDilJzilIDilIAgcnVudGltZV9hY3RpdmVfdGltZQoJ4pSCwqDCoCDi
lJzilIDilIAgcnVudGltZV9zdGF0dXMKCeKUgsKgwqAg4pSU4pSA4pSAIHJ1bnRpbWVfc3VzcGVu
ZGVkX3RpbWUKCeKUnOKUgOKUgCBwb3dlcl9saW1pdF9zY2hlbWUKCeKUnOKUgOKUgCByZWFkeV9t
b2RlX2JsaW5rX2JlaGF2aW9yCgnilJzilIDilIAgcmVhZHlfbW9kZV9ibGlua19mcmVxdWVuY3kK
CeKUnOKUgOKUgCByZWFkeV9tb2RlX2JyaWdodG5lc3MKCeKUnOKUgOKUgCBzMF9ibGlua19iZWhh
dmlvcgoJ4pSc4pSA4pSAIHMwX2JsaW5rX2ZyZXF1ZW5jeQoJ4pSc4pSA4pSAIHMwX2JyaWdodG5l
c3MKCeKUnOKUgOKUgCBzM19ibGlua19iZWhhdmlvcgoJ4pSc4pSA4pSAIHMzX2JsaW5rX2ZyZXF1
ZW5jeQoJ4pSc4pSA4pSAIHMzX2JyaWdodG5lc3MKCeKUnOKUgOKUgCBzNV9ibGlua19iZWhhdmlv
cgoJ4pSc4pSA4pSAIHM1X2JsaW5rX2ZyZXF1ZW5jeQoJ4pSc4pSA4pSAIHM1X2JyaWdodG5lc3MK
CeKUnOKUgOKUgCBzdWJzeXN0ZW0gLT4gLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vY2xhc3MvbGVk
cwoJ4pSc4pSA4pSAIHRyaWdnZXIKCeKUlOKUgOKUgCB1ZXZlbnQKCkFzIHRoZSBiZWhhdmlvciBv
ZiB0aGUgTEVEcyBjYW4gYmUgZHluYW1pY2FsbHkgY2hhbmdlZCwgZWFjaApMRUQgZXhwb3NlIHBh
cmFtZXRlcnMgZm9yIGFsbCB0eXBlcyBvZiBoYXJkd2FyZSBldmVudCBpdCBjYW4KZGVhbCwgYnV0
IG9ubHkgdGhlIG9uZXMgdGhhdCBhcmUgYXBwbGllZCB0byBpdHMgY3VycmVudCBpbmRpY2F0b3IK
dHlwZSBjYW4gYmUgc2Vlbi9jaGFuZ2VkLgoKT24gb3RoZXIgd29yZHMsIHRoZSAiaW5kaWNhdG9y
IiB0ZWxscyB3aGF0IHR5cGUgb2YgaGFyZHdhcmUgZXZlbnQKdGhlIExFRCBpcyBjdXJyZW50bHkg
bWVhc3VyaW5nOgoKCSQgY2F0IC9zeXMvY2xhc3MvbGVkcy9udWNcOlw6ZnJvbnQxL2luZGljYXRv
ciAKCVBvd2VyIFN0YXRlICBbSEREIEFjdGl2aXR5XSAgRXRoZXJuZXQgIFdpRmkgIFNvZnR3YXJl
ICBQb3dlciBMaW1pdCAgRGlzYWJsZSAgCgpJbiB0aGlzIGNhc2UsIGFzIGl0IGlzIG1lYXN1cmlu
ZyB0aGUgSEREIGFjdGl2aXR5LiBJZiBvbmUgdHJpZXMgdG8KcmVhZC93cml0ZSBzb21ldGhpbmcg
dG8sIGxldCdzIHNheSwgdGhlIEV0aGVybmV0IHR5cGUsIGEgLUVJTlZBTAppcyByZXR1cm5lZDoK
CgkkIGNhdCAvc3lzL2NsYXNzL2xlZHMvbnVjXDpcOmZyb250MS9ldGhlcm5ldF90eXBlIAoJY2F0
OiAnL3N5cy9jbGFzcy9sZWRzL251Yzo6ZnJvbnQxL2V0aGVybmV0X3R5cGUnOiBJbnZhbGlkIGFy
Z3VtZW50CgpTbywgYmVmb3JlIGJlaW5nIGFibGUgdG8gdXNlIHRoZSBldGhlcm5ldF90eXBlLCB0
aGUgaW5kaWNhdG9yIG5lZWRzCnRvIGJlIGNoYW5nZWQ6CgoJJCBlY2hvIEV0aGVybmV0ID4gL3N5
cy9jbGFzcy9sZWRzL251Y1w6XDpmcm9udDEvaW5kaWNhdG9yIAoJJCBjYXQgL3N5cy9jbGFzcy9s
ZWRzL251Y1w6XDpmcm9udDEvZXRoZXJuZXRfdHlwZQoJTEFOMSAgTEFOMiAgW0xBTjErTEFOMl0g
IAoKQW55d2F5LCBJIHN1c3BlY3QgdGhhdCBiZXNpZGVzIGEgZG9jdW1lbnQgdW5kZXIgQUJJLCBp
dCB3b3VsZAptYWtlIHNlbnNlIHRvIGFkZCBhIC5yc3QgZmlsZSBkZXNjcmliaW5nIGl0IHVuZGVy
IGFkbWluLWd1aWRlLApleHBsYWluaW5nIGhvdyB0byB1c2UgdGhlIEFCSS4KClRoYXQgc2hvdWxk
IGxpa2VseSBiZSBlYXNpZXIgdG8gZGlzY3VzcyBpZiBhbnkgY2hhbmdlcyBhdCB0aGUKQUJJIHdv
dWxkIGJlIG5lZWRlZC4gQmVmb3JlIG1vdmluZyBpdCBvdXQgb2Ygc3RhZ2luZywgSSB3b3VsZAph
ZGQgYW5vdGhlciBvbmUgdW5kZXIgRG9jdW1lbnRhdGlvbi9BQkkgZGVzY3JpYmluZyB0aGUgbWVh
bmluZwpvZiBlYWNoIHN5c2ZzIG5vZGUuCgpXb3VsZCB0aGF0IHdvcmsgZm9yIHlvdT8KClRoYW5r
cywKTWF1cm8KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
ZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2Ry
aXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2
LWRldmVsCg==

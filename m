Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E04345DAC2
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Nov 2021 14:11:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 287FD61BDB;
	Thu, 25 Nov 2021 13:11:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9kgmSp8uzJz9; Thu, 25 Nov 2021 13:11:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3C4D060684;
	Thu, 25 Nov 2021 13:11:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2172C1BF300
 for <devel@linuxdriverproject.org>; Thu, 25 Nov 2021 13:11:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1058940458
 for <devel@linuxdriverproject.org>; Thu, 25 Nov 2021 13:11:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=linaro.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Sv0vx9Wbsmz5 for <devel@linuxdriverproject.org>;
 Thu, 25 Nov 2021 13:11:39 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com
 [IPv6:2a00:1450:4864:20::42c])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7606C40494
 for <devel@driverdev.osuosl.org>; Thu, 25 Nov 2021 13:11:39 +0000 (UTC)
Received: by mail-wr1-x42c.google.com with SMTP id r8so11514841wra.7
 for <devel@driverdev.osuosl.org>; Thu, 25 Nov 2021 05:11:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=CM02k8qgy8XwGEXwazxWflMqeYneK7YgPygQe224NhM=;
 b=OSPFnsRr1Jk3IiyXonNjDhS0on7XP1oLzT/pgduRTu7qw3hVk7oMTq2hSftImrMr9R
 l7/bPwtrpfzS/ksV+BsV3KTTI2GkErop3unaSGHUm0SiTsDsu6FrLvM1DThMvE4yxk5N
 eKXaIzVl11MWzfIXu1Zk9ON4lN+vMvf1WE62DloB1hUJWOtU9ErFCIRB46w5Sy+XqKmz
 aGJsXpPKR8w5F1NI93h3oyyTEvsl+Oi9ePXx2Hi5afwwWmbT/p2jmywzGkQct2ex3s3O
 cDwwaQR52ixMldXiEpbTn1AhQiXbRPJ15lWRMe1j1IoXZLoY/5G3grOwUrkMA2DYu0Nf
 LrHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=CM02k8qgy8XwGEXwazxWflMqeYneK7YgPygQe224NhM=;
 b=gSOrGGNbaZHg8QNed7pGawZsUVOX4lK011Qwy467brIPRLSCjaF7uwtjEJ8HLsq3fN
 wwB6CxILIMAxj7wGc66U4HXiDeDZC/joty4XjLGiuohH5L44YLeATA/31gDRr5f8SxGU
 rmNo0A5DxgUPM59BcQ7i9RhHfLLpr75lwm6VTXJhRUmCfy9i+uA4szPmS40Kfc85qI9Y
 gHJNJTqsDlfkySEw08dLI05NzRdJUqu76cJves5USTrYuAg1jhcir3UEMHOM4pb9/pH3
 maqxX9htxAzfFuMfOsWFZXWkgrjU7aVT2jggdCRkKA5+Qwb1lqEqifZL73e0GlX+Iqmp
 qezA==
X-Gm-Message-State: AOAM533BEqJq69Baa1UYtqOhXrFDOd5QGsTxz2e0ELv0nKXjqcUUTvDR
 DcbhBAQSDCE0zQUcrSFjxPAaSA==
X-Google-Smtp-Source: ABdhPJxZXDRFuGPJhEdUP3o9Tn+GqhTyva9sgO+SLTXtOJ69qvN5naWbLq26c7vuwIhqMS8SvcqTcg==
X-Received: by 2002:a5d:63ca:: with SMTP id c10mr6455262wrw.124.1637845897569; 
 Thu, 25 Nov 2021 05:11:37 -0800 (PST)
Received: from google.com ([2.31.167.18])
 by smtp.gmail.com with ESMTPSA id h204sm3204233wmh.33.2021.11.25.05.11.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Nov 2021 05:11:37 -0800 (PST)
Date: Thu, 25 Nov 2021 13:11:35 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 1/1] staging: ion: Prevent incorrect reference counting
 behavour
Message-ID: <YZ+LhzpwQ7RJtDSs@google.com>
References: <20211125120234.67987-1-lee.jones@linaro.org>
 <YZ9+YPc7w9Z4xotR@kroah.com> <YZ+Fn0S1j4JzotGO@google.com>
 <YZ+HiBRUqLhSPwY0@kroah.com> <YZ+JsjZicl8jsRHM@google.com>
 <YZ+Kc/M1qSaWfXPW@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YZ+Kc/M1qSaWfXPW@kroah.com>
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
Cc: devel@driverdev.osuosl.org, riandrews@android.com, stable@vger.kernel.org,
 arve@android.com, labbott@redhat.com, sumit.semwal@linaro.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gVGh1LCAyNSBOb3YgMjAyMSwgR3JlZyBLSCB3cm90ZToKCj4gT24gVGh1LCBOb3YgMjUsIDIw
MjEgYXQgMDE6MDM6NDZQTSArMDAwMCwgTGVlIEpvbmVzIHdyb3RlOgo+ID4gT24gVGh1LCAyNSBO
b3YgMjAyMSwgR3JlZyBLSCB3cm90ZToKPiA+IAo+ID4gPiBPbiBUaHUsIE5vdiAyNSwgMjAyMSBh
dCAxMjo0NjoyM1BNICswMDAwLCBMZWUgSm9uZXMgd3JvdGU6Cj4gPiA+ID4gT24gVGh1LCAyNSBO
b3YgMjAyMSwgR3JlZyBLSCB3cm90ZToKPiA+ID4gPiAKPiA+ID4gPiA+IE9uIFRodSwgTm92IDI1
LCAyMDIxIGF0IDEyOjAyOjM0UE0gKzAwMDAsIExlZSBKb25lcyB3cm90ZToKPiA+ID4gPiA+ID4g
U3VwcGx5IGFkZGl0aW9uYWwgY2hlY2tzIGluIG9yZGVyIHRvIHByZXZlbnQgdW5leHBlY3RlZCBy
ZXN1bHRzLgo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gRml4ZXM6IGI4OTJiZjc1YjIwMzQgKCJp
b246IFN3aXRjaCBpb24gdG8gdXNlIGRtYS1idWYiKQo+ID4gPiA+ID4gPiBTaWduZWQtb2ZmLWJ5
OiBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5hcm8ub3JnPgo+ID4gPiA+ID4gPiAtLS0KPiA+ID4g
PiA+ID4gIGRyaXZlcnMvc3RhZ2luZy9hbmRyb2lkL2lvbi9pb24uYyB8IDMgKysrCj4gPiA+ID4g
PiA+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspCj4gPiA+ID4gPiA+IAo+ID4gPiA+
ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL2FuZHJvaWQvaW9uL2lvbi5jIGIvZHJp
dmVycy9zdGFnaW5nL2FuZHJvaWQvaW9uL2lvbi5jCj4gPiA+ID4gPiA+IGluZGV4IDgwNmU5YjMw
YjlkYzguLjMwZjM1OWZhYmE1NzUgMTAwNjQ0Cj4gPiA+ID4gPiA+IC0tLSBhL2RyaXZlcnMvc3Rh
Z2luZy9hbmRyb2lkL2lvbi9pb24uYwo+ID4gPiA+ID4gPiArKysgYi9kcml2ZXJzL3N0YWdpbmcv
YW5kcm9pZC9pb24vaW9uLmMKPiA+ID4gPiA+ID4gQEAgLTUwOSw2ICs1MDksOSBAQCBzdGF0aWMg
dm9pZCAqaW9uX2hhbmRsZV9rbWFwX2dldChzdHJ1Y3QgaW9uX2hhbmRsZSAqaGFuZGxlKQo+ID4g
PiA+ID4gPiAgCXZvaWQgKnZhZGRyOwo+ID4gPiA+ID4gPiAgCj4gPiA+ID4gPiA+ICAJaWYgKGhh
bmRsZS0+a21hcF9jbnQpIHsKPiA+ID4gPiA+ID4gKwkJaWYgKGhhbmRsZS0+a21hcF9jbnQgKyAx
IDwgaGFuZGxlLT5rbWFwX2NudCkKPiA+ID4gPiA+IAo+ID4gPiA+ID4gV2hhdCBhYm91dCB1c2lu
ZyB0aGUgbmljZSBoZWxwZXJzIGluIG92ZXJmbG93LmggZm9yIHRoaXM/Cj4gPiA+ID4gCj4gPiA+
ID4gSSBoYXZlbid0IGhlYXJkIG9mIHRoZXNlIGJlZm9yZS4KPiA+ID4gPiAKPiA+ID4gPiBMb29r
cyBsaWtlIHRoZXkncmUgbm90IHdpZGVseSB1c2VkLgo+ID4gPiA+IAo+ID4gPiA+IEknbGwgdHJ5
IHRoZW0gb3V0IGFuZCBzZWUgaG93IHRoZXkgZ28uCj4gPiA+ID4gCj4gPiA+ID4gPiA+ICsJCQly
ZXR1cm4gRVJSX1BUUigtRU9WRVJGTE9XKTsKPiA+ID4gPiA+ID4gKwo+ID4gPiA+ID4gPiAgCQlo
YW5kbGUtPmttYXBfY250Kys7Cj4gPiA+ID4gPiA+ICAJCXJldHVybiBidWZmZXItPnZhZGRyOwo+
ID4gPiA+ID4gPiAgCX0KPiA+ID4gPiA+IAo+ID4gPiA+ID4gV2hhdCBzdGFibGUga2VybmVsIGJy
YW5jaChlcykgaXMgdGhpcyBmb3I/Cj4gPiA+ID4gCj4gPiA+ID4gSSBhc3N1bWVkIHlvdXIgbWFn
aWMgc2NyaXB0cyBjb3VsZCBkZXRlcm1pbmUgdGhpcyBmcm9tIHRoZSBGaXhlczoKPiA+ID4gPiB0
YWcuICBJJ2xsIGJlIG1vcmUgZXhwbGljaXQgaW4gdjIuCj4gPiA+IAo+ID4gPiBUaGUgZml4ZXMg
dGFnIHNheXMgaG93IGZhciBiYWNrIGZvciBpdCB0byBnbywgYnV0IG5vdCB3aGVyZSB0byBzdGFy
dAo+ID4gPiB0aGF0IHByb2Nlc3MgZnJvbSA6KQo+ID4gCj4gPiBXaGF0J3MgeW91ciBwcmVmZXJy
ZWQgbWV0aG9kIGZvciBpZGVudGlmeWluZyBhIHN0YXJ0LXBvaW50Pwo+ID4gCj4gPiBJbiB0aGUg
W1BBVENIXSB0YWcgb3IgYXBwZW5kZWQgb24gdG8gQ2M6IHN0YWJsZSAuLi4gIyA8aGVyZT4/Cj4g
PiAKPiA+IEkga25vdyBib3RoIHdvcmssIGJ1dCB3aGF0IG1ha2VzIHlvdXIgbGlmZSBlYXNpZXI/
Cj4gCj4gRWFzaWVzdCBpcyBiZWxvdyB0aGUgLS0tIGxpbmUgc2F5Ogo+IC0tLQo+ICBUaGlzIGlz
IGZvciBrZXJuZWwgdmVyc2lvbnMgWC5YIGFuZCBvbGRlci4KClVuZGVyc3Rvb2QsIHRoYW5rcy4K
Ci0tIApMZWUgSm9uZXMgW+adjueQvOaWr10KU2VuaW9yIFRlY2huaWNhbCBMZWFkIC0gRGV2ZWxv
cGVyIFNlcnZpY2VzCkxpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBcm0g
U29DcwpGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9nCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApk
ZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJw
cm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=

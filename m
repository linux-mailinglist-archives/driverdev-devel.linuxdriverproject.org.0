Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7685F45DAB2
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Nov 2021 14:04:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 68B8681777;
	Thu, 25 Nov 2021 13:04:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SpygrdzucX21; Thu, 25 Nov 2021 13:04:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B71F480DF8;
	Thu, 25 Nov 2021 13:04:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 766531BF30B
 for <devel@linuxdriverproject.org>; Thu, 25 Nov 2021 13:03:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 657C160073
 for <devel@linuxdriverproject.org>; Thu, 25 Nov 2021 13:03:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=linaro.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HuMcnU_XKEQb for <devel@linuxdriverproject.org>;
 Thu, 25 Nov 2021 13:03:50 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com
 [IPv6:2a00:1450:4864:20::42a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8F25D60035
 for <devel@driverdev.osuosl.org>; Thu, 25 Nov 2021 13:03:50 +0000 (UTC)
Received: by mail-wr1-x42a.google.com with SMTP id b12so11511861wrh.4
 for <devel@driverdev.osuosl.org>; Thu, 25 Nov 2021 05:03:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=m73u2cjHd9EZWp0ZIr01RX/646HzY7RWPJjiwPZVB4U=;
 b=zJM4y0JT59cLU5umDl+Tg1f7auAJyqF0fRKA/nZrOqKwfIrPbxNAugd1ptwE80Bqwe
 LzuxPHnQZlEfceqghM74zfEKJmmlmizQSecUFXddlC1HiHQtTV7/9WMpk+9vNYGTFg6j
 /zgMexKumvdtwKWx+8Md3T3hPdqbr4rjFXPOOcMSyt5MJizJFZvCcWnTUqS6X9mizVOu
 9CZEKy9zvsFUxIHyojMOT1gLsp83Ec8Fct8HMVwu/kYzW2rYqNATlnL3nain8p7OyyAq
 yzaWcJxkk2hIyddFnalvVHQxMD2Slv/Qeu4i9IOjvWpWl9fWtotpnzKBGTxlZwnsOXwb
 VewA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=m73u2cjHd9EZWp0ZIr01RX/646HzY7RWPJjiwPZVB4U=;
 b=Em0NrTZdRZ/OAMa2/qSjrRVqaf0SEHjltrtw2oxXMjDyd/2nkvRlaKCsz6Bf2+YV2k
 HDCZa4EtCV8xIwhq58i0qEIQRNUdmKxhmgA8BIbj7xAXPtD+vv8xknch5nN512BTAqUm
 DqDaGt1XWlTwdrqcOl8KJGcM8LdohO4HO7xZ6NVcRrkRTk0KPQhnUI3HJDEYIo+Uhuzz
 afz4MSG8w6HQKI+VZr7SgT11X9tHG26iUJKT5AhveJFTgjIQzxdFEWJFTuBH5pC1JLH1
 pSyac1XBh4D0p4tilNrX38/LGpS+WCgWla0568hb8kZr9w6o4BMuZCBaUib+U/pJeyLm
 fZWQ==
X-Gm-Message-State: AOAM5305EyWNQ1cZPNEO1NditiJzof97El73EutkYeTFwAlRRLm8xVUl
 4pizKSjzVZivh8iorZC/cr8q6w==
X-Google-Smtp-Source: ABdhPJzaZYRUyWv/s7+lXxzFVMWjcK6Yt/LurrsBLbYzzEOBjwWxqZBkjL+HdnJDGUixN/kTec1MAQ==
X-Received: by 2002:adf:f10f:: with SMTP id r15mr5812006wro.553.1637845428750; 
 Thu, 25 Nov 2021 05:03:48 -0800 (PST)
Received: from google.com ([2.31.167.18])
 by smtp.gmail.com with ESMTPSA id b197sm2924197wmb.24.2021.11.25.05.03.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Nov 2021 05:03:48 -0800 (PST)
Date: Thu, 25 Nov 2021 13:03:46 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 1/1] staging: ion: Prevent incorrect reference counting
 behavour
Message-ID: <YZ+JsjZicl8jsRHM@google.com>
References: <20211125120234.67987-1-lee.jones@linaro.org>
 <YZ9+YPc7w9Z4xotR@kroah.com> <YZ+Fn0S1j4JzotGO@google.com>
 <YZ+HiBRUqLhSPwY0@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YZ+HiBRUqLhSPwY0@kroah.com>
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
Cc: devel@driverdev.osuosl.org, arve@android.com, stable@vger.kernel.org,
 riandrews@android.com, labbott@redhat.com, sumit.semwal@linaro.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gVGh1LCAyNSBOb3YgMjAyMSwgR3JlZyBLSCB3cm90ZToKCj4gT24gVGh1LCBOb3YgMjUsIDIw
MjEgYXQgMTI6NDY6MjNQTSArMDAwMCwgTGVlIEpvbmVzIHdyb3RlOgo+ID4gT24gVGh1LCAyNSBO
b3YgMjAyMSwgR3JlZyBLSCB3cm90ZToKPiA+IAo+ID4gPiBPbiBUaHUsIE5vdiAyNSwgMjAyMSBh
dCAxMjowMjozNFBNICswMDAwLCBMZWUgSm9uZXMgd3JvdGU6Cj4gPiA+ID4gU3VwcGx5IGFkZGl0
aW9uYWwgY2hlY2tzIGluIG9yZGVyIHRvIHByZXZlbnQgdW5leHBlY3RlZCByZXN1bHRzLgo+ID4g
PiA+IAo+ID4gPiA+IEZpeGVzOiBiODkyYmY3NWIyMDM0ICgiaW9uOiBTd2l0Y2ggaW9uIHRvIHVz
ZSBkbWEtYnVmIikKPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBMZWUgSm9uZXMgPGxlZS5qb25lc0Bs
aW5hcm8ub3JnPgo+ID4gPiA+IC0tLQo+ID4gPiA+ICBkcml2ZXJzL3N0YWdpbmcvYW5kcm9pZC9p
b24vaW9uLmMgfCAzICsrKwo+ID4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCsp
Cj4gPiA+ID4gCj4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9hbmRyb2lkL2lv
bi9pb24uYyBiL2RyaXZlcnMvc3RhZ2luZy9hbmRyb2lkL2lvbi9pb24uYwo+ID4gPiA+IGluZGV4
IDgwNmU5YjMwYjlkYzguLjMwZjM1OWZhYmE1NzUgMTAwNjQ0Cj4gPiA+ID4gLS0tIGEvZHJpdmVy
cy9zdGFnaW5nL2FuZHJvaWQvaW9uL2lvbi5jCj4gPiA+ID4gKysrIGIvZHJpdmVycy9zdGFnaW5n
L2FuZHJvaWQvaW9uL2lvbi5jCj4gPiA+ID4gQEAgLTUwOSw2ICs1MDksOSBAQCBzdGF0aWMgdm9p
ZCAqaW9uX2hhbmRsZV9rbWFwX2dldChzdHJ1Y3QgaW9uX2hhbmRsZSAqaGFuZGxlKQo+ID4gPiA+
ICAJdm9pZCAqdmFkZHI7Cj4gPiA+ID4gIAo+ID4gPiA+ICAJaWYgKGhhbmRsZS0+a21hcF9jbnQp
IHsKPiA+ID4gPiArCQlpZiAoaGFuZGxlLT5rbWFwX2NudCArIDEgPCBoYW5kbGUtPmttYXBfY250
KQo+ID4gPiAKPiA+ID4gV2hhdCBhYm91dCB1c2luZyB0aGUgbmljZSBoZWxwZXJzIGluIG92ZXJm
bG93LmggZm9yIHRoaXM/Cj4gPiAKPiA+IEkgaGF2ZW4ndCBoZWFyZCBvZiB0aGVzZSBiZWZvcmUu
Cj4gPiAKPiA+IExvb2tzIGxpa2UgdGhleSdyZSBub3Qgd2lkZWx5IHVzZWQuCj4gPiAKPiA+IEkn
bGwgdHJ5IHRoZW0gb3V0IGFuZCBzZWUgaG93IHRoZXkgZ28uCj4gPiAKPiA+ID4gPiArCQkJcmV0
dXJuIEVSUl9QVFIoLUVPVkVSRkxPVyk7Cj4gPiA+ID4gKwo+ID4gPiA+ICAJCWhhbmRsZS0+a21h
cF9jbnQrKzsKPiA+ID4gPiAgCQlyZXR1cm4gYnVmZmVyLT52YWRkcjsKPiA+ID4gPiAgCX0KPiA+
ID4gCj4gPiA+IFdoYXQgc3RhYmxlIGtlcm5lbCBicmFuY2goZXMpIGlzIHRoaXMgZm9yPwo+ID4g
Cj4gPiBJIGFzc3VtZWQgeW91ciBtYWdpYyBzY3JpcHRzIGNvdWxkIGRldGVybWluZSB0aGlzIGZy
b20gdGhlIEZpeGVzOgo+ID4gdGFnLiAgSSdsbCBiZSBtb3JlIGV4cGxpY2l0IGluIHYyLgo+IAo+
IFRoZSBmaXhlcyB0YWcgc2F5cyBob3cgZmFyIGJhY2sgZm9yIGl0IHRvIGdvLCBidXQgbm90IHdo
ZXJlIHRvIHN0YXJ0Cj4gdGhhdCBwcm9jZXNzIGZyb20gOikKCldoYXQncyB5b3VyIHByZWZlcnJl
ZCBtZXRob2QgZm9yIGlkZW50aWZ5aW5nIGEgc3RhcnQtcG9pbnQ/CgpJbiB0aGUgW1BBVENIXSB0
YWcgb3IgYXBwZW5kZWQgb24gdG8gQ2M6IHN0YWJsZSAuLi4gIyA8aGVyZT4/CgpJIGtub3cgYm90
aCB3b3JrLCBidXQgd2hhdCBtYWtlcyB5b3VyIGxpZmUgZWFzaWVyPwoKLS0gCkxlZSBKb25lcyBb
5p2O55C85pavXQpTZW5pb3IgVGVjaG5pY2FsIExlYWQgLSBEZXZlbG9wZXIgU2VydmljZXMKTGlu
YXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFybSBTb0NzCkZvbGxvdyBMaW5h
cm86IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVy
cHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxt
YW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==

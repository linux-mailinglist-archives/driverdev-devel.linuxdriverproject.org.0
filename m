Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 63B6845DA47
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Nov 2021 13:46:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A8FD5827DD;
	Thu, 25 Nov 2021 12:46:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5vD_PwSKENCb; Thu, 25 Nov 2021 12:46:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 12999827A1;
	Thu, 25 Nov 2021 12:46:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D267D1BF30B
 for <devel@linuxdriverproject.org>; Thu, 25 Nov 2021 12:46:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C1B5760760
 for <devel@linuxdriverproject.org>; Thu, 25 Nov 2021 12:46:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=linaro.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2r6c5GoGz1Mb for <devel@linuxdriverproject.org>;
 Thu, 25 Nov 2021 12:46:28 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com
 [IPv6:2a00:1450:4864:20::42d])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 06BB560706
 for <devel@driverdev.osuosl.org>; Thu, 25 Nov 2021 12:46:27 +0000 (UTC)
Received: by mail-wr1-x42d.google.com with SMTP id b12so11399360wrh.4
 for <devel@driverdev.osuosl.org>; Thu, 25 Nov 2021 04:46:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=+gncLq6zW+uaJXb12G46JXw6L/TdgNucdLmqfgrp0+o=;
 b=rVodE+/WNoi3Sfxs2jcd7569XzqUkSwJRQSvzGdzNymel1x2JaHWRq1fgKr7eF3A9Q
 RQfG/xGxSAKWtN4jiaZIsLePPV7uZo0m5qWSrRyDEbgATRYH0/dMZ1Aj7qqRpXfdPnFx
 1dWEDX8Jbq9RMkIXAb32vTtdUCkIQxS28TCzIMzmz1jxuXWxbCBE13Hz1YNUHsfAPa88
 6izLyPZ6u6oy4uaDAtR7DCfAQcJpX24x7aFIc8oRtd2c5h2Rb6QNMR4QBaK9DMJoCeag
 pPdaKnPHZ6oItc6bls2fxY/RbX1bGO239f3i7+X2ddbeEEUtJEbBE95ZIH0U0GICy2l2
 Yipg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=+gncLq6zW+uaJXb12G46JXw6L/TdgNucdLmqfgrp0+o=;
 b=FSXSKVppDx9TrsQFnnOSwY88sPbsUwMr8824LdvCdGw03UcSfBkT+uP9OHCouebxLo
 NaT6PIXLQsYM6R1kSRyU/5pSfZ+Jxi4x0el5iJ6b623jAR3Gpaz1AhdYS0gvZU7xVVv9
 BMYFM+UWAFChKf0qLY7CkMncmbX5c+PauXIg1tCMExAxiQ6VJ5lgk1sNOZERBHM2Bh6U
 x7eu4L87knwFAoPI74y4Qe0h3Y3FEbbO23lJp+edh3oCZLeyF+H4hZ3vsTIGPKnYdlbj
 NFkgGVv887HWOWF5l2IbOi4f8kL91XL7wRJIHjqYTnvwMYja7aYzgq32gL7LdeC5lN2l
 tnQg==
X-Gm-Message-State: AOAM531XBGg12id74QJChN93UfwErC4anqhYeZTMuBsbQcWytNaxOm5f
 YBcBh5PQy7mO4851otAjeZW0uA==
X-Google-Smtp-Source: ABdhPJywL2FUFo74HYcfnZb781d5v7oT4P61QKWt5azK2yVdzqQXHeY2CdmiviPFB2uADOpu1K57ow==
X-Received: by 2002:adf:8b1e:: with SMTP id n30mr6166068wra.75.1637844386075; 
 Thu, 25 Nov 2021 04:46:26 -0800 (PST)
Received: from google.com ([2.31.167.18])
 by smtp.gmail.com with ESMTPSA id x21sm7408221wmc.14.2021.11.25.04.46.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Nov 2021 04:46:25 -0800 (PST)
Date: Thu, 25 Nov 2021 12:46:23 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 1/1] staging: ion: Prevent incorrect reference counting
 behavour
Message-ID: <YZ+Fn0S1j4JzotGO@google.com>
References: <20211125120234.67987-1-lee.jones@linaro.org>
 <YZ9+YPc7w9Z4xotR@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YZ9+YPc7w9Z4xotR@kroah.com>
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
MjEgYXQgMTI6MDI6MzRQTSArMDAwMCwgTGVlIEpvbmVzIHdyb3RlOgo+ID4gU3VwcGx5IGFkZGl0
aW9uYWwgY2hlY2tzIGluIG9yZGVyIHRvIHByZXZlbnQgdW5leHBlY3RlZCByZXN1bHRzLgo+ID4g
Cj4gPiBGaXhlczogYjg5MmJmNzViMjAzNCAoImlvbjogU3dpdGNoIGlvbiB0byB1c2UgZG1hLWJ1
ZiIpCj4gPiBTaWduZWQtb2ZmLWJ5OiBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5hcm8ub3JnPgo+
ID4gLS0tCj4gPiAgZHJpdmVycy9zdGFnaW5nL2FuZHJvaWQvaW9uL2lvbi5jIHwgMyArKysKPiA+
ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL3N0YWdpbmcvYW5kcm9pZC9pb24vaW9uLmMgYi9kcml2ZXJzL3N0YWdpbmcvYW5kcm9p
ZC9pb24vaW9uLmMKPiA+IGluZGV4IDgwNmU5YjMwYjlkYzguLjMwZjM1OWZhYmE1NzUgMTAwNjQ0
Cj4gPiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvYW5kcm9pZC9pb24vaW9uLmMKPiA+ICsrKyBiL2Ry
aXZlcnMvc3RhZ2luZy9hbmRyb2lkL2lvbi9pb24uYwo+ID4gQEAgLTUwOSw2ICs1MDksOSBAQCBz
dGF0aWMgdm9pZCAqaW9uX2hhbmRsZV9rbWFwX2dldChzdHJ1Y3QgaW9uX2hhbmRsZSAqaGFuZGxl
KQo+ID4gIAl2b2lkICp2YWRkcjsKPiA+ICAKPiA+ICAJaWYgKGhhbmRsZS0+a21hcF9jbnQpIHsK
PiA+ICsJCWlmIChoYW5kbGUtPmttYXBfY250ICsgMSA8IGhhbmRsZS0+a21hcF9jbnQpCj4gCj4g
V2hhdCBhYm91dCB1c2luZyB0aGUgbmljZSBoZWxwZXJzIGluIG92ZXJmbG93LmggZm9yIHRoaXM/
CgpJIGhhdmVuJ3QgaGVhcmQgb2YgdGhlc2UgYmVmb3JlLgoKTG9va3MgbGlrZSB0aGV5J3JlIG5v
dCB3aWRlbHkgdXNlZC4KCkknbGwgdHJ5IHRoZW0gb3V0IGFuZCBzZWUgaG93IHRoZXkgZ28uCgo+
ID4gKwkJCXJldHVybiBFUlJfUFRSKC1FT1ZFUkZMT1cpOwo+ID4gKwo+ID4gIAkJaGFuZGxlLT5r
bWFwX2NudCsrOwo+ID4gIAkJcmV0dXJuIGJ1ZmZlci0+dmFkZHI7Cj4gPiAgCX0KPiAKPiBXaGF0
IHN0YWJsZSBrZXJuZWwgYnJhbmNoKGVzKSBpcyB0aGlzIGZvcj8KCkkgYXNzdW1lZCB5b3VyIG1h
Z2ljIHNjcmlwdHMgY291bGQgZGV0ZXJtaW5lIHRoaXMgZnJvbSB0aGUgRml4ZXM6CnRhZy4gIEkn
bGwgYmUgbW9yZSBleHBsaWNpdCBpbiB2Mi4KCi0tIApMZWUgSm9uZXMgW+adjueQvOaWr10KU2Vu
aW9yIFRlY2huaWNhbCBMZWFkIC0gRGV2ZWxvcGVyIFNlcnZpY2VzCkxpbmFyby5vcmcg4pSCIE9w
ZW4gc291cmNlIHNvZnR3YXJlIGZvciBBcm0gU29DcwpGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8
IFR3aXR0ZXIgfCBCbG9nCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0
dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2Ry
aXZlcmRldi1kZXZlbAo=

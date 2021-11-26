Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5770745E9BA
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Nov 2021 09:56:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 795166074F;
	Fri, 26 Nov 2021 08:56:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RGoeKJ6-omfi; Fri, 26 Nov 2021 08:56:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C09FF6068D;
	Fri, 26 Nov 2021 08:56:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 681E11BF371
 for <devel@linuxdriverproject.org>; Fri, 26 Nov 2021 08:56:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 631EE401D0
 for <devel@linuxdriverproject.org>; Fri, 26 Nov 2021 08:56:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=linaro.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lH3uWic6Me5b for <devel@linuxdriverproject.org>;
 Fri, 26 Nov 2021 08:56:32 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com
 [IPv6:2a00:1450:4864:20::436])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1B69340012
 for <devel@driverdev.osuosl.org>; Fri, 26 Nov 2021 08:56:31 +0000 (UTC)
Received: by mail-wr1-x436.google.com with SMTP id s13so17128447wrb.3
 for <devel@driverdev.osuosl.org>; Fri, 26 Nov 2021 00:56:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=dPlVAyhM7mWjQgSm+rkqlA38aq0g0RUSzLsuhSHe1c0=;
 b=M2qkUwX9kDrUlv9oKv+7vhdqedOLBEuoLyRLqQWe+3rcLclJf43nfTm65nYeIcg/yj
 kG7AhgGAfe5wwokn0yiIeC2JmSeiO7lbtNehWZ8hjJnTzIA2USWt1F7zj7VfoP2oHKVp
 /OoYcLRwiqd1T1V4cmZFT1DgBrHvNNU5eYkhyHfm8zehzmjVg6iNnbdG6pATwuDuMg3w
 FSVlgEpcbdKD1c+4LmjLUEKQeZ33onBpMzyzc5e48j0R0Gz7dDbOl/xulXhk+n5GMOTt
 pwlkyMztvPflpizFy7zNQ7o8DFEldTwIHB8Ql1t4V3/JnxzPbVyH7CPRHnBNy7KwOpQ9
 hoWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=dPlVAyhM7mWjQgSm+rkqlA38aq0g0RUSzLsuhSHe1c0=;
 b=2QWU2oln9h5xM2WsJc+2BxEvDCSjCGU0te/NeUNuoPh1y78TIsDbQVNVB0P4kgzGqr
 gix/N39trARs6q7R2PmXMvAksB9jqVa8KGqZdSCywE9Kh1nqyMDrdyWtkicxOdATKQQr
 RXUzV6lLl6c3PzlE3J7EsZj5oWjSgsdInA+ktkrzwbN/qgtojMKjCZClfzfzS2Q/VH9h
 P2eAq1V7D/6QvsDTPTz9kV6BrXv7CtNzIDFSvR7EgZg717nb9L1bu43RvNvYcwlA8Q7T
 NpZLITWvZCZBjmMceQ1FLN9Uiua3/xDR/pdRwj8KYDPJND0hzzDjX3mrKTM5EAJK8eve
 h8WA==
X-Gm-Message-State: AOAM532hl4UNRMbw4He7qtQtLXUeZBZAa68JZcrptEZR59Mwc66bO/AL
 QXPRa2sFZvCIoSpySRR2oe/0VQ==
X-Google-Smtp-Source: ABdhPJyYmrMo4WedZNLK4ZSZEF5jQmcupPD8SVApxovJ/ngdNZxp27pbwryBXlfh69MPDudqggeDrw==
X-Received: by 2002:adf:ed52:: with SMTP id u18mr12461534wro.609.1637916990020; 
 Fri, 26 Nov 2021 00:56:30 -0800 (PST)
Received: from google.com ([2.31.167.18])
 by smtp.gmail.com with ESMTPSA id d7sm4776440wrw.87.2021.11.26.00.56.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 26 Nov 2021 00:56:29 -0800 (PST)
Date: Fri, 26 Nov 2021 08:56:27 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH 1/1] staging: ion: Prevent incorrect reference counting
 behavour
Message-ID: <YaChOzfm2/3gY4o3@google.com>
References: <20211125142004.686650-1-lee.jones@linaro.org>
 <20211125145004.GN6514@kadam> <YZ+muS7vC5iNs/kq@google.com>
 <20211125151822.GJ18178@kadam> <20211126071641.GO6514@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211126071641.GO6514@kadam>
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

T24gRnJpLCAyNiBOb3YgMjAyMSwgRGFuIENhcnBlbnRlciB3cm90ZToKCj4gT24gVGh1LCBOb3Yg
MjUsIDIwMjEgYXQgMDY6MTg6MjJQTSArMDMwMCwgRGFuIENhcnBlbnRlciB3cm90ZToKPiA+IEkg
aGFkIHRob3VnaHQgdGhhdCAtPmttYXBfY250IHdhcyBhIHJlZ3VsYXIgaW50IGFuZCBub3QgYW4g
dW5zaWduZWQKPiA+IGludCwgYnV0IEkgd291bGQgaGF2ZSB0byBwdWxsIGEgc3RhYmxlIHRyZWUg
dG8gc2VlIHdoZXJlIEkgbWlzcmVhZCB0aGUKPiA+IGNvZGUuCj4gCj4gSSB3YXMgbG9va2luZyBh
dCAoc3RydWN0IGlvbl9idWZmZXIpLT5rbWFwX2NudCBidXQgdGhpcyBpcwo+IChzdHJ1Y3QgaW9u
X2hhbmRsZSktPmttYXBfY250LiAgSSdtIG5vdCBzdXJlIGhvdyB0aG9zZSBhcmUgcmVsYXRlZCBi
dXQKPiBpdCBtYWtlcyBtZSBuZXJ2b3VzIHRoYXQgb25lIGNhbiBnbyBoaWdoZXIgdGhhbiB0aGUg
b3RoZXIuICBBbHNvIGJvdGgKPiBwcm9iYWJseSBuZWVkIG92ZXJmbG93IHByb3RlY3Rpb24uCj4g
Cj4gU28gSSBndWVzcyBJIHdvdWxkIGp1c3QgZG8gc29tZXRoaW5nIGxpa2U6Cj4gCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9hbmRyb2lkL2lvbi9pb24uYyBiL2RyaXZlcnMvc3RhZ2lu
Zy9hbmRyb2lkL2lvbi9pb24uYwo+IGluZGV4IDgwNmU5YjMwYjlkYzguLmU4ODQ2Mjc5YjMzYjUg
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9zdGFnaW5nL2FuZHJvaWQvaW9uL2lvbi5jCj4gKysrIGIv
ZHJpdmVycy9zdGFnaW5nL2FuZHJvaWQvaW9uL2lvbi5jCj4gQEAgLTQ4OSw2ICs0ODksOCBAQCBz
dGF0aWMgdm9pZCAqaW9uX2J1ZmZlcl9rbWFwX2dldChzdHJ1Y3QgaW9uX2J1ZmZlciAqYnVmZmVy
KQo+ICAJdm9pZCAqdmFkZHI7Cj4gIAo+ICAJaWYgKGJ1ZmZlci0+a21hcF9jbnQpIHsKPiArCQlp
ZiAoYnVmZmVyLT5rbWFwX2NudCA9PSBJTlRfTUFYKQo+ICsJCQlyZXR1cm4gRVJSX1BUUigtRU9W
RVJGTE9XKTsKPiAgCQlidWZmZXItPmttYXBfY250Kys7Cj4gIAkJcmV0dXJuIGJ1ZmZlci0+dmFk
ZHI7Cj4gIAl9Cj4gQEAgLTUwOSw2ICs1MTEsOCBAQCBzdGF0aWMgdm9pZCAqaW9uX2hhbmRsZV9r
bWFwX2dldChzdHJ1Y3QgaW9uX2hhbmRsZSAqaGFuZGxlKQo+ICAJdm9pZCAqdmFkZHI7Cj4gIAo+
ICAJaWYgKGhhbmRsZS0+a21hcF9jbnQpIHsKPiArCQlpZiAoaGFuZGxlLT5rbWFwX2NudCA9PSBJ
TlRfTUFYKQo+ICsJCQlyZXR1cm4gRVJSX1BUUigtRU9WRVJGTE9XKTsKPiAgCQloYW5kbGUtPmtt
YXBfY250Kys7Cj4gIAkJcmV0dXJuIGJ1ZmZlci0+dmFkZHI7Cj4gIAl9CgpXaGljaCBpcyBhbGwg
d2VsbCBhbmQgZ29vZCB1bnRpbCBzb21lYm9keSBjaGFuZ2VzIHRoZSB0eXBlLgoKLS0gCkxlZSBK
b25lcyBb5p2O55C85pavXQpTZW5pb3IgVGVjaG5pY2FsIExlYWQgLSBEZXZlbG9wZXIgU2Vydmlj
ZXMKTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFybSBTb0NzCkZvbGxv
dyBMaW5hcm86IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4
ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3Jn
L21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==

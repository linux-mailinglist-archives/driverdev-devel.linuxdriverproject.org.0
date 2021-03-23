Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 11E65346118
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Mar 2021 15:12:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 839E160845;
	Tue, 23 Mar 2021 14:12:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VjllRypVcsqD; Tue, 23 Mar 2021 14:12:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A5A3960833;
	Tue, 23 Mar 2021 14:12:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7EA531BF947
 for <devel@linuxdriverproject.org>; Tue, 23 Mar 2021 14:12:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7B2AA40386
 for <devel@linuxdriverproject.org>; Tue, 23 Mar 2021 14:12:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=linaro.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M6q744cOdCwN for <devel@linuxdriverproject.org>;
 Tue, 23 Mar 2021 14:12:36 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com
 [IPv6:2a00:1450:4864:20::12a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 683E8400AC
 for <devel@driverdev.osuosl.org>; Tue, 23 Mar 2021 14:12:36 +0000 (UTC)
Received: by mail-lf1-x12a.google.com with SMTP id q29so26690896lfb.4
 for <devel@driverdev.osuosl.org>; Tue, 23 Mar 2021 07:12:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=l19bR+nFxXiu4GIfVq6f/m3LcDLqMDiNOa9Zpl4Ovvc=;
 b=K2WN6O0RNtylg2y5kj+7tUO3G3Ow+0lo/9Kbfq2doL0HIfUyReVmwWRdhF0uGNJ2OX
 Sf9sQUS2cU+99jYx7m3iFdK6k47YBGTOsnDBoiJD97coMPMO/lhH3U2sptWPOEIKO4H7
 YKr76EcmmC4dtIC8svew3hPv2dkrnaPY/Lq4EyGjEcvwN9FoVLvmOC/7dMwxApzKoebv
 SNkM+3naV4PXRdlZ/+86gfwzP06/2XLnnBDnSB/PWjL2e1cGIZAgoKHGTGQy8UxmfpbI
 qszWcnijbnse7HrTyooN+GkyEGYI6hkC3TXrEPzfmKXfvlr8EjllH/lgx+m5Xjj/4kQ9
 swaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=l19bR+nFxXiu4GIfVq6f/m3LcDLqMDiNOa9Zpl4Ovvc=;
 b=PdRafM4guFSwIRS+a0DWzS7+HfL+xH57WHE/AeBQUfe1lvnJ1eP64AHqH/i/iG6iR1
 6aBsGgYYYSoQpKhAcOK7HH1ngKVyqGgzUDkG3ICb4URrNJ/ELq56MwlLb96pwdlHgFK8
 ftz6lPq3v4n6l3Dyq288SU8GTxwFyETTHV4S/c9lcy6BIjcegTwLefEce/OaNZPcjtTj
 3b/2ZtNWjwVk9HchmHS+x9LKauaODaukLMHV7J5rW1JXzK6gJqAsC3opcGalzcwmHIDK
 eiR4Z0LjqtVv0de/Dq8IUDdN+9aQWAm1IurDo1m3eRumL1wjIRX7o3TmeNFzq7bY6CMR
 kLkQ==
X-Gm-Message-State: AOAM533dX8RFDf3OL4kuxI7uOfCOmxu0XTWXljmzowdFh0jBZKypSh3Z
 1mqc7xUKpVT6rOTpusdL79edJpcv4UQ771VrnG+i7A==
X-Google-Smtp-Source: ABdhPJzly95nqr4yJOsMgNbyvkzewf61fS24O2skNJrtHSN97B0AO6qNDxBBBfq6gMyuY4h8Z8m/nW9MARYn+j3bS1I=
X-Received: by 2002:a19:501b:: with SMTP id e27mr2822930lfb.584.1616508753810; 
 Tue, 23 Mar 2021 07:12:33 -0700 (PDT)
MIME-Version: 1.0
References: <20210315132501.441681-1-Jerome.Pouiller@silabs.com>
 <20210315132501.441681-9-Jerome.Pouiller@silabs.com>
 <CAPDyKFqJf=vUqpQg3suDCadKrFTkQWFTY_qp=+yDK=_Lu9gJGg@mail.gmail.com>
 <4503971.bAhddQ8uqO@pc-42>
In-Reply-To: <4503971.bAhddQ8uqO@pc-42>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 23 Mar 2021 15:11:56 +0100
Message-ID: <CAPDyKFoXgV3m-rMKfjqRj91PNjOGaWg6odWG-EGdFKkL+dGWoA@mail.gmail.com>
Subject: Re: [PATCH v5 08/24] wfx: add bus_sdio.c
To: =?UTF-8?B?SsOpcsO0bWUgUG91aWxsZXI=?= <jerome.pouiller@silabs.com>
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
Cc: driverdevel <devel@driverdev.osuosl.org>, DTML <devicetree@vger.kernel.org>,
 netdev <netdev@vger.kernel.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-mmc <linux-mmc@vger.kernel.org>,
 =?UTF-8?Q?Pali_Roh=C3=A1r?= <pali@kernel.org>,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gTW9uLCAyMiBNYXIgMjAyMSBhdCAxODoxNCwgSsOpcsO0bWUgUG91aWxsZXIKPGplcm9tZS5w
b3VpbGxlckBzaWxhYnMuY29tPiB3cm90ZToKPgo+IEhlbGxvIFVsZiwKPgo+IE9uIE1vbmRheSAy
MiBNYXJjaCAyMDIxIDEzOjIwOjM1IENFVCBVbGYgSGFuc3NvbiB3cm90ZToKPiA+IE9uIE1vbiwg
MTUgTWFyIDIwMjEgYXQgMTQ6MjUsIEplcm9tZSBQb3VpbGxlcgo+ID4gPEplcm9tZS5Qb3VpbGxl
ckBzaWxhYnMuY29tPiB3cm90ZToKPiA+ID4KPiA+ID4gRnJvbTogSsOpcsO0bWUgUG91aWxsZXIg
PGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgo+ID4gPgo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBK
w6lyw7RtZSBQb3VpbGxlciA8amVyb21lLnBvdWlsbGVyQHNpbGFicy5jb20+Cj4gPiA+IC0tLQo+
ID4gPiAgZHJpdmVycy9uZXQvd2lyZWxlc3Mvc2lsYWJzL3dmeC9idXNfc2Rpby5jIHwgMjU5ICsr
KysrKysrKysrKysrKysrKysrKwo+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDI1OSBpbnNlcnRpb25z
KCspCj4gPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9uZXQvd2lyZWxlc3Mvc2lsYWJz
L3dmeC9idXNfc2Rpby5jCj4gPgo+ID4gWy4uLl0KPiA+Cj4gPiA+ICtzdGF0aWMgY29uc3Qgc3Ry
dWN0IHNkaW9fZGV2aWNlX2lkIHdmeF9zZGlvX2lkc1tdID0gewo+ID4gPiArICAgICAgIHsgU0RJ
T19ERVZJQ0UoU0RJT19WRU5ET1JfSURfU0lMQUJTLCBTRElPX0RFVklDRV9JRF9TSUxBQlNfV0Yy
MDApIH0sCj4gPiA+ICsgICAgICAgeyB9LAo+ID4gPiArfTsKPiA+ID4gK01PRFVMRV9ERVZJQ0Vf
VEFCTEUoc2Rpbywgd2Z4X3NkaW9faWRzKTsKPiA+ID4gKwo+ID4gPiArc3RydWN0IHNkaW9fZHJp
dmVyIHdmeF9zZGlvX2RyaXZlciA9IHsKPiA+ID4gKyAgICAgICAubmFtZSA9ICJ3Zngtc2RpbyIs
Cj4gPiA+ICsgICAgICAgLmlkX3RhYmxlID0gd2Z4X3NkaW9faWRzLAo+ID4gPiArICAgICAgIC5w
cm9iZSA9IHdmeF9zZGlvX3Byb2JlLAo+ID4gPiArICAgICAgIC5yZW1vdmUgPSB3Znhfc2Rpb19y
ZW1vdmUsCj4gPiA+ICsgICAgICAgLmRydiA9IHsKPiA+ID4gKyAgICAgICAgICAgICAgIC5vd25l
ciA9IFRISVNfTU9EVUxFLAo+ID4gPiArICAgICAgICAgICAgICAgLm9mX21hdGNoX3RhYmxlID0g
d2Z4X3NkaW9fb2ZfbWF0Y2gsCj4gPgo+ID4gSXQncyBub3QgbWFuZGF0b3J5IHRvIHN1cHBvcnQg
cG93ZXIgbWFuYWdlbWVudCwgbGlrZSBzeXN0ZW0KPiA+IHN1c3BlbmQvcmVzdW1lLiBIb3dldmVy
LCBhcyB0aGlzIGxvb2tzIGxpa2UgdGhpcyBpcyBhIGRyaXZlciBmb3IgYW4KPiA+IGVtYmVkZGVk
IFNESU8gZGV2aWNlLCB5b3UgcHJvYmFibHkgd2FudCB0aGlzLgo+ID4KPiA+IElmIHRoYXQgaXMg
dGhlIGNhc2UsIHBsZWFzZSBhc3NpZ24gdGhlIGRldl9wbV9vcHMgaGVyZSBhbmQgaW1wbGVtZW50
Cj4gPiB0aGUgLT5zdXNwZW5kfHJlc3VtZSgpIGNhbGxiYWNrcy4KPgo+IEkgaGF2ZSBubyBwbGF0
Zm9ybSB0byB0ZXN0IHN1c3BlbmQvcmVzdW1lLCBzbyBJIGhhdmUgb25seSBhCj4gdGhlb3JldGlj
YWwgdW5kZXJzdGFuZGluZyBvZiB0aGlzIHN1YmplY3QuCgpJIHNlZS4KCj4KPiBJIHVuZGVyc3Rh
bmRpbmcgaXMgdGhhdCB3aXRoIHRoZSBjdXJyZW50IGltcGxlbWVudGF0aW9uLCB0aGUKPiBkZXZp
Y2Ugd2lsbCBiZSBwb3dlcmVkIG9mZiBvbiBzdXNwZW5kIGFuZCB0aGVuIHRvdGFsbHkgcmVzZXQK
PiAoaW5jbHVkaW5nIHJlbG9hZGluZyBvZiB0aGUgZmlybXdhcmUpIG9uIHJlc3VtZS4gSSBhbSB3
cm9uZz8KCllvdSBhcmUgY29ycmVjdCwgZm9yIGEgKnJlbW92YWJsZSogU0RJTyBjYXJkLiBJbiB0
aGlzIGNhc2UsIHRoZQptbWMvc2RpbyBjb3JlIHdpbGwgcmVtb3ZlIHRoZSBjb3JyZXNwb25kaW5n
IFNESU8gY2FyZC9kZXZpY2UgYW5kIGl0cwpjb3JyZXNwb25kaW5nIFNESU8gZnVuYyBkZXZpY2Vz
IGF0IHN5c3RlbSBzdXNwZW5kLiBJdCB3aWxsIHRoZW4gYmUKcmVkZXRlY3RlZCBhdCBzeXN0ZW0g
cmVzdW1lIChhbmQgdGhlIFNESU8gZnVuYyBkcml2ZXIgcmUtcHJvYmVkKS4KCkFsdGhvdWdoLCBh
cyB0aGlzIGlzIGFuIGVtYmVkZGVkIFNESU8gZGV2aWNlLCBwZXIgZGVmaW5pdGlvbiBpdCdzIG5v
dAphIHJlbW92YWJsZSBjYXJkIChNTUNfQ0FQX05PTlJFTU9WQUJMRSBzaG91bGQgYmUgc2V0IGZv
ciB0aGUKY29ycmVzcG9uZGluZyBtbWMgaG9zdCksIHRoZSBTRElPIGNhcmQgd2lsbCBzdGljayBh
cm91bmQgYW5kIGluc3RlYWQKdGhlIC0+c3VzcGVuZHxyZXN1bWUoKSBjYWxsYmFjayBuZWVkcyB0
byBiZSBpbXBsZW1lbnRlZCBmb3IgdGhlIFNESU8KZnVuYyBkcml2ZXIuCgo+Cj4gVGhpcyBiZWhh
dmlvciBzb3VuZHMgY29ycmVjdCB0byBtZS4gWW91IHdvdWxkIGV4cGVjdCBzb21ldGhpbmcKPiBt
b3JlPwoKWWVzLCBzZWUgYWJvdmUuCgpLaW5kIHJlZ2FyZHMKVWZmZQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxA
bGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVj
dC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK

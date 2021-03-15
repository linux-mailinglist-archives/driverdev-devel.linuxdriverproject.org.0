Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 380CE33AD82
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 09:32:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 871208350A;
	Mon, 15 Mar 2021 08:32:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R0QoBrLLuzGg; Mon, 15 Mar 2021 08:32:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B82438333E;
	Mon, 15 Mar 2021 08:32:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AC0771BF2AA
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 08:32:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9B605833DB
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 08:32:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JYQPqugk7YPj for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 08:32:21 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-oi1-x232.google.com (mail-oi1-x232.google.com
 [IPv6:2607:f8b0:4864:20::232])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DC1C58333E
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 08:32:20 +0000 (UTC)
Received: by mail-oi1-x232.google.com with SMTP id w195so27083038oif.11
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 01:32:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=2Xc8iWp49pRCqQGzsIqMb2DIrVOIt3ZqYfU4w0wGIrU=;
 b=GDWKOh+B5y5t4/3l3yPKFwEhAjqYs/TZjHkCVXlV0O5nKu59tfqDo5xBB2Mo9JOPvK
 okH4VBOpblr2ZfjC7Eso7fMslf1YJ9yDz2q5FN0XMGtnyNtNTQN98ZygQST/4X/1HHFD
 OEgrswE70/6NSHVAMIl/YxeAc/+ZRQOtSowZcC6wS16B+RSclD5BMLIHA8NZ0bsKcTPt
 dt1VWC8o+b6y1h58MrVXiLrtF5tL9j1sMJNUjgFdLgcLA6k8gK43tiWPD3FM1fgKvMaa
 AEfBLtL1/WT2GFVnKhZ6zKp1olK/EkpKBTD8DlScG4PrX56mPJ2+uye3tJAZVmBpkrUX
 2aug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=2Xc8iWp49pRCqQGzsIqMb2DIrVOIt3ZqYfU4w0wGIrU=;
 b=UL9NxaXBHDDMPB2aPNrJJTGgrB/8NCCODTuWuy63pWf1saql8Co4ldr+QXNGVajWL2
 5C5gXKGnqwK9vNE2wMlAH+9Gza1kDgLkq2fwIoeZmN7dAHaRyS7LfpUpetw6nmQ86a2q
 zXIqP+jxIcpO8e0qlIqtGu22sIvLZqLpwmLkJ0Bn6nzMZMu21mB7gZuMD3+oaDuoYIo5
 aIuQa5s4cJ3/OfCgkv/95g+QjpDk8GblEswukOGBmLl+TxqC/KmasShW6t85Jcd1gGSj
 QZiZjnj66DBNR/tGf2GcXujjDiSutZLXedUEgW0+DJjVZvtQrsqeS3OJe3sG3DZHTkDo
 6b9Q==
X-Gm-Message-State: AOAM530y9Wzew7bhNF9N3W4nTLi56zUnrKmjw2bo2TS9bf8+8wxbBgEy
 /Jq4nzUOPD5V+f5yRP0458/3zFW9F84/qeH5A/s=
X-Google-Smtp-Source: ABdhPJyO+mOa+gxnocPi6HIzMptZHuWk+C0MkPWlu4+aCtCTlfpX0o6wYkmE2HSEcPfKNw6Y7EU2AW5e0P/FnPczdFU=
X-Received: by 2002:aca:4188:: with SMTP id o130mr14815413oia.53.1615797139844; 
 Mon, 15 Mar 2021 01:32:19 -0700 (PDT)
MIME-Version: 1.0
References: <CACY_kjSRbgSWsfo+JTyQdqorQ+wcy8OqAtKSbJt6tL4t-AUciw@mail.gmail.com>
In-Reply-To: <CACY_kjSRbgSWsfo+JTyQdqorQ+wcy8OqAtKSbJt6tL4t-AUciw@mail.gmail.com>
From: Shubhrajyoti Datta <shubhrajyoti.datta@gmail.com>
Date: Mon, 15 Mar 2021 14:02:08 +0530
Message-ID: <CAKfKVtHu69b+boMXPOOca5xmA2D4fbQ+3WxDhYnD93SamB70xA@mail.gmail.com>
Subject: Re: [PATCH v10 5/9] staging: clocking-wizard: Add support for dynamic
 reconfiguration
To: Zhengxun Li <zhengxunli.mxic@gmail.com>
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
Cc: devel@driverdev.osuosl.org,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, slwu@mxic.com.tw,
 Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mike Turquette <mturquette@baylibre.com>,
 Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>,
 Julien Su <juliensu@mxic.com.tw>, Rob Herring <robh+dt@kernel.org>,
 git@xilinx.com, Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-clk@vger.kernel.org, zhengxunli@mxic.com.tw
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGkgWmhlbmd4dW4sClRoYW5rcyBmb3IgdGhlIHJldmlldy4KCk9uIE1vbiwgTWFyIDE1LCAyMDIx
IGF0IDEyOjM3IFBNIFpoZW5neHVuIExpIDx6aGVuZ3h1bmxpLm14aWNAZ21haWwuY29tPiB3cm90
ZToKPgo+IEhpIFNodWJocmFqeW90aSwKPgo+IE15IG5hbWUgaXMgWmhlbmd4dW4gYW5kIEkgYW0g
dGhlIGVuZ2luZWVyIGZyb20gTWFjcm9uaXguIFdlIGFyZQo+IHVzaW5nIHRoZSBwbGF0Zm9ybSBQ
aWNvWmVkIDcwMTUvNzAzMCBTT00gKFN5c3RlbSBPbiBNb2R1bGUpLAo+IHdoaWNoIGlzIGJhc2Vk
IG9uIFhpbGlueCBaeW5xwq4tNzAwMCBBbGwgUHJvZ3JhbW1hYmxlIChBUCkgU29DIHRvCj4gdmVy
aWZ5IG91ciBGbGFzaCBkcml2ZXIuIE9mIGNvdXJzZSwgd2UgYXJlIGFsc28gdXNpbmcgeW91ciBj
bG9jawo+IHdpemFyZCwgb3VyIHZlcnNpb24gc2VlbXMgdG8gYmUgdjUuMiwgYnV0IHNvbWV0aGlu
ZyB3ZW50IHdyb25nLgo+Cj4gK3N0YXRpYyBpbnQgY2xrX3d6cmRfZHluYW1pY19yZWNvbmZpZyhz
dHJ1Y3QgY2xrX2h3ICpodywgdW5zaWduZWQgbG9uZyByYXRlLAo+ICsgdW5zaWduZWQgbG9uZyBw
YXJlbnRfcmF0ZSkKPiArewo+ICsgaW50IGVycjsKPiArIHUzMiB2YWx1ZTsKPiArIHVuc2lnbmVk
IGxvbmcgZmxhZ3MgPSAwOwo+ICsgc3RydWN0IGNsa193enJkX2RpdmlkZXIgKmRpdmlkZXIgPSB0
b19jbGtfd3pyZF9kaXZpZGVyKGh3KTsKPiArIHZvaWQgX19pb21lbSAqZGl2X2FkZHIgPSBkaXZp
ZGVyLT5iYXNlICsgZGl2aWRlci0+b2Zmc2V0Owo+ICsKPiArIGlmIChkaXZpZGVyLT5sb2NrKQo+
ICsgc3Bpbl9sb2NrX2lycXNhdmUoZGl2aWRlci0+bG9jaywgZmxhZ3MpOwo+ICsgZWxzZQo+ICsg
X19hY3F1aXJlKGRpdmlkZXItPmxvY2spOwo+ICsKPiArIHZhbHVlID0gRElWX1JPVU5EX0NMT1NF
U1QocGFyZW50X3JhdGUsIHJhdGUpOwo+ICsKPiArIC8qIENhcCB0aGUgdmFsdWUgdG8gbWF4ICov
Cj4gKyBtaW5fdCh1MzIsIHZhbHVlLCBXWlJEX0RSX01BWF9JTlRfRElWX1ZBTFVFKTsKPiArCj4g
KyAvKiBTZXQgZGl2aXNvciBhbmQgY2xlYXIgcGhhc2Ugb2Zmc2V0ICovCj4gKyB3cml0ZWwodmFs
dWUsIGRpdl9hZGRyKTsKPiArIHdyaXRlbCgweDAwLCBkaXZfYWRkciArIFdaUkRfRFJfRElWX1RP
X1BIQVNFX09GRlNFVCk7Cj4KPiBXaHkgcGhhc2UgYWx3YXlzIHNldCB0byB6ZXJvPyBXZSB3YW50
IHRvIHN1cHBvcnQgRFRSIG9wZXJhdGlvbiBpbgo+IEZsYXNoIGRyaXZlci4gQ2FuIHlvdSBhZGQg
YSBzZXRfcGhhc2UgZnVuY3Rpb24gdG8gYWRqdXN0IHRoZSBwaGFzZT8KPgo+ICsgLyogQ2hlY2sg
c3RhdHVzIHJlZ2lzdGVyICovCj4gKyBlcnIgPSByZWFkbF9wb2xsX3RpbWVvdXQoZGl2aWRlci0+
YmFzZSArIFdaUkRfRFJfU1RBVFVTX1JFR19PRkZTRVQsCj4gKyB2YWx1ZSwgdmFsdWUgJiBXWlJE
X0RSX0xPQ0tfQklUX01BU0ssCj4gKyBXWlJEX1VTRUNfUE9MTCwgV1pSRF9USU1FT1VUX1BPTEwp
Owo+ICsgaWYgKGVycikKPiArIGdvdG8gZXJyX3JlY29uZmlnOwo+ICsKPiArIC8qIEluaXRpYXRl
IHJlY29uZmlndXJhdGlvbiAqLwo+ICsgd3JpdGVsKFdaUkRfRFJfQkVHSU5fRFlOQV9SRUNPTkYs
Cj4gKyBkaXZpZGVyLT5iYXNlICsgV1pSRF9EUl9JTklUX1JFR19PRkZTRVQpOwo+ICsKPiArIC8q
IENoZWNrIHN0YXR1cyByZWdpc3RlciAqLwo+ICsgZXJyID0gcmVhZGxfcG9sbF90aW1lb3V0KGRp
dmlkZXItPmJhc2UgKyBXWlJEX0RSX1NUQVRVU19SRUdfT0ZGU0VULAo+ICsgdmFsdWUsIHZhbHVl
ICYgV1pSRF9EUl9MT0NLX0JJVF9NQVNLLAo+ICsgV1pSRF9VU0VDX1BPTEwsIFdaUkRfVElNRU9V
VF9QT0xMKTsKPgo+IEFjY29yZGluZyB0byBwZzAxNS1jbGstd2l6LnBkZiwgQ2xvY2tpbmcgV2l6
YXJkIHY1LjIgYW5kIGxhdGVyLCBuZWVkIHRvIHdyaXRlCj4gMHgwMDAwMDAwNyBmb2xsb3dlZCBi
eSAweDAwMDAwMDAyIGludG8gQ2xvY2sgQ29uZmlndXJhdGlvbiBSZWdpc3RlciAyMywgdG8KPiBj
b25zb2xpZGF0ZSB0aGUgcmVkdW5kYW50IGJpdHMgdGhhdCB0aGUgSVAgaGFzIHVwZ3JhZGVkLCBy
aWdodD8KPgo+IENhbiB5b3UgY29tcGF0aWJsZSB0byB2NS4yPwoKV2lsbCBmaXggaW4gdGhlIG5l
eHQgdmVyc2lvbi4KCj4KPiBUaGFua3MsCj4gWmhlbmd4dW4KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4
ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3Jn
L21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==

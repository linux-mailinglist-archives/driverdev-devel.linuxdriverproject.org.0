Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A06445DD1D
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Nov 2021 16:15:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B600D82735;
	Thu, 25 Nov 2021 15:15:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5u4BfAQ4VHlb; Thu, 25 Nov 2021 15:15:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CD4BB8267F;
	Thu, 25 Nov 2021 15:15:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 861A31BF27C
 for <devel@linuxdriverproject.org>; Thu, 25 Nov 2021 15:15:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 74C04408DA
 for <devel@linuxdriverproject.org>; Thu, 25 Nov 2021 15:15:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=linaro.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xK0dnDSPsN1M for <devel@linuxdriverproject.org>;
 Thu, 25 Nov 2021 15:15:44 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com
 [IPv6:2a00:1450:4864:20::42e])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5A9FD408D8
 for <devel@driverdev.osuosl.org>; Thu, 25 Nov 2021 15:15:44 +0000 (UTC)
Received: by mail-wr1-x42e.google.com with SMTP id d24so12444076wra.0
 for <devel@driverdev.osuosl.org>; Thu, 25 Nov 2021 07:15:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=Zj416Vf8zsYBbJCqFaMVME/6Ft5bARpxqJrpdaCk4II=;
 b=oP1d48T1p3nLFpm7ZSg2PWxfhBYYNWCv/ZV1tAnAhS19Wr2988wIl2RVJbdtkPUCuP
 R0NaNGR5cn7AGwyQ3JFyzOOO3YOReU/zQ8K/HxeIwH7c5o+wVcjMovbMTQPDUAmVPeRa
 lRCW9SEmfGTun59BFjVM6xJlbWGo1CLE2s8Zo4mtasCOvTCnC5/Httl2dvADqe0sBKLo
 JGWhkAvfyCo2xSUihb60qWtwq5QATQvrMsVoZjBaHA5lmesx79iAc6nRj5Yq6d7MDH41
 57Qerq6P33Am67qyUG2fh36wuZ7zuyhEnNIy1gf5AOrzAOfZgorwIOLrEk4itNvAvnrp
 lDbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=Zj416Vf8zsYBbJCqFaMVME/6Ft5bARpxqJrpdaCk4II=;
 b=jlP51nUwHyKzHMxk+kQsvOlqdXrmrlBFlPZMsoeAjClzsSFaqc0rkAAGUvTu0OX2fy
 UZt1ya9IpFkxYyZQesTHyFq8BCnYuwJhSojrSOredRI5hFEqUywsI4RAlFV+tQMw1lxN
 NH7Xr4anXI6zkY+Fn+LpxBJtSS3ErlFiYtIU1MUkx2Im4kBUqNKulE1Tnjqmmjqz1eDp
 Qh9gOaSacdMVLqaF7CaZgkP/XIXXDSfDlgXGDS7fklBbr1bxO5JO+p/vGmEVLeX80xx+
 C5qcSFqAg3Za+Vw+vktkYdY5pRePMmhPdXM0uvZxjcUYvTLx19RmodYZO4q4tuom5azl
 CGtg==
X-Gm-Message-State: AOAM530M/HD5UqFoi0YDqfBsiyL7DVgKVq5yiMMulpqhlPoS3rnEdlmx
 PdD6D9E70y4z3MS3zFJaSg5d/w==
X-Google-Smtp-Source: ABdhPJxZQ1dDUlRDRcJUlqWVWaidS/zH2a4V8OQdxM4LXyajSGenH+8rxPuNjo+rKeddxNmgBF+Ljw==
X-Received: by 2002:a05:6000:181:: with SMTP id
 p1mr7436769wrx.292.1637853342240; 
 Thu, 25 Nov 2021 07:15:42 -0800 (PST)
Received: from google.com ([2.31.167.18])
 by smtp.gmail.com with ESMTPSA id f13sm3956882wmq.29.2021.11.25.07.15.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Nov 2021 07:15:41 -0800 (PST)
Date: Thu, 25 Nov 2021 15:15:40 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH 1/1] staging: ion: Prevent incorrect reference counting
 behavour
Message-ID: <YZ+onFjtf5l311Xa@google.com>
References: <20211125142004.686650-1-lee.jones@linaro.org>
 <20211125145004.GN6514@kadam> <YZ+muS7vC5iNs/kq@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YZ+muS7vC5iNs/kq@google.com>
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

T24gVGh1LCAyNSBOb3YgMjAyMSwgTGVlIEpvbmVzIHdyb3RlOgoKPiBPbiBUaHUsIDI1IE5vdiAy
MDIxLCBEYW4gQ2FycGVudGVyIHdyb3RlOgo+IAo+ID4gT24gVGh1LCBOb3YgMjUsIDIwMjEgYXQg
MDI6MjA6MDRQTSArMDAwMCwgTGVlIEpvbmVzIHdyb3RlOgo+ID4gPiBTdXBwbHkgYWRkaXRpb25h
bCBjaGVja3MgaW4gb3JkZXIgdG8gcHJldmVudCB1bmV4cGVjdGVkIHJlc3VsdHMuCj4gPiA+IAo+
ID4gPiBGaXhlczogYjg5MmJmNzViMjAzNCAoImlvbjogU3dpdGNoIGlvbiB0byB1c2UgZG1hLWJ1
ZiIpCj4gPiA+IFNpZ25lZC1vZmYtYnk6IExlZSBKb25lcyA8bGVlLmpvbmVzQGxpbmFyby5vcmc+
Cj4gPiA+IC0tLQo+ID4gPiBTaG91bGQgYmUgYmFjay1wb3J0ZWQgZnJvbSB2NC45IGFuZCBlYXJs
aWVyLgo+ID4gPiAKPiA+ID4gIGRyaXZlcnMvc3RhZ2luZy9hbmRyb2lkL2lvbi9pb24uYyB8IDUg
KysrKysKPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykKPiA+ID4gCj4gPiA+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvYW5kcm9pZC9pb24vaW9uLmMgYi9kcml2ZXJz
L3N0YWdpbmcvYW5kcm9pZC9pb24vaW9uLmMKPiA+ID4gaW5kZXggODA2ZTliMzBiOWRjOC4uNDAy
Yjc0ZjVkN2U2OSAxMDA2NDQKPiA+ID4gLS0tIGEvZHJpdmVycy9zdGFnaW5nL2FuZHJvaWQvaW9u
L2lvbi5jCj4gPiA+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9hbmRyb2lkL2lvbi9pb24uYwo+ID4g
PiBAQCAtMjksNiArMjksNyBAQAo+ID4gPiAgI2luY2x1ZGUgPGxpbnV4L2V4cG9ydC5oPgo+ID4g
PiAgI2luY2x1ZGUgPGxpbnV4L21tLmg+Cj4gPiA+ICAjaW5jbHVkZSA8bGludXgvbW1fdHlwZXMu
aD4KPiA+ID4gKyNpbmNsdWRlIDxsaW51eC9vdmVyZmxvdy5oPgo+ID4gPiAgI2luY2x1ZGUgPGxp
bnV4L3JidHJlZS5oPgo+ID4gPiAgI2luY2x1ZGUgPGxpbnV4L3NsYWIuaD4KPiA+ID4gICNpbmNs
dWRlIDxsaW51eC9zZXFfZmlsZS5oPgo+ID4gPiBAQCAtNTA5LDYgKzUxMCwxMCBAQCBzdGF0aWMg
dm9pZCAqaW9uX2hhbmRsZV9rbWFwX2dldChzdHJ1Y3QgaW9uX2hhbmRsZSAqaGFuZGxlKQo+ID4g
PiAgCXZvaWQgKnZhZGRyOwo+ID4gPiAgCj4gPiA+ICAJaWYgKGhhbmRsZS0+a21hcF9jbnQpIHsK
PiA+ID4gKwkJaWYgKGNoZWNrX2FkZF9vdmVyZmxvdyhoYW5kbGUtPmttYXBfY250LAo+ID4gPiAr
CQkJCSAgICAgICAodW5zaWduZWQgaW50KSAxLCAmaGFuZGxlLT5rbWFwX2NudCkpCj4gPiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBeXl5e
Xl5eXl5eXl5eXl5eXgo+ID4gCj4gPiA+ICsJCQlyZXR1cm4gRVJSX1BUUigtRU9WRVJGTE9XKTsK
PiA+ID4gKwo+ID4gPiAgCQloYW5kbGUtPmttYXBfY250Kys7Cj4gPiAgICAgICAgICAgICAgICAg
Xl5eXl5eXl5eXl5eXl5eXl5eXgo+ID4gVGhpcyB3aWxsIG5vdCBkbyB3aGF0IHlvdSB3YW50IGF0
IGFsbC4gIEl0J3MgYSBkb3VibGUgaW5jcmVtZW50IG9uIHRoZQo+ID4gc3VjY2VzcyBwYXRoIGFu
ZCBpdCBsZWF2ZSBoYW5kbGUtPmttYXBfY250IG92ZXJmbG93ZWQgb24gZmFpbHVyZSBwYXRoLgo+
IAo+IEkgcmVhZCB0aGUgaGVscGVyIHRvIHRha2UgY29waWVzIG9mIHRoZSBvcmlnaW5hbCB2YXJp
YWJsZXMuCj4gCj4gI2RlZmluZSBfX3Vuc2lnbmVkX2FkZF9vdmVyZmxvdyhhLCBiLCBkKSAoeyAg
ICAgXAo+ICAgICAgICAgdHlwZW9mKGEpIF9fYSA9IChhKTsgICAgICAgICAgICAgICAgICAgIFwK
PiAgICAgICAgIHR5cGVvZihiKSBfX2IgPSAoYik7ICAgICAgICAgICAgICAgICAgICBcCj4gICAg
ICAgICB0eXBlb2YoZCkgX19kID0gKGQpOyAgICAgICAgICAgICAgICAgICAgXAo+ICAgICAgICAg
KHZvaWQpICgmX19hID09ICZfX2IpOyAgICAgICAgICAgICAgICAgIFwKPiAgICAgICAgICh2b2lk
KSAoJl9fYSA9PSBfX2QpOyAgICAgICAgICAgICAgICAgICBcCj4gICAgICAgICAqX19kID0gX19h
ICsgX19iOyAgICAgICAgICAgICAgICAgICAgICAgXAo+ICAgICAgICAgKl9fZCA8IF9fYTsgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIFwKPiB9KQo+IAo+IE1heWJlIEkgbWlzcmVhZCBpdC4K
CkkgdGhpbmsgSSBzZWUgbm93LgoKQ29waWVzIGFyZSB0YWtlbiwgYnV0IGJlY2F1c2UgJ2QnIGlz
IGEgcG9pbnRlciwgZGVyZWZlcmVuY2luZyB0aGUgY29weQppcyBqdXN0IGxpa2UgZGVyZWZlcmVu
Y2luZyB0aGUgb3JpZ2luYWwsIHRodXMgdGhlIG1lbW9yeSBhZGRyZXNzCnByb3ZpZGVkIGJ5ICdk
JyBpcyB3cml0dGVuIHRvLCB1cGRhdGluZyB0aGUgdmFyaWFibGUuCgpJbiB0aGlzIGNhc2UsIHlv
dSdyZSByaWdodCwgdGhpcyBpcyBub3Qgd2hhdCBJIHdhcyB0cnlpbmcgdG8gYWNoaWV2ZS4KCj4g
U28gdGhlIG9yaWdpbmFsIHBhdGNoIFswXSB3YXMgYmV0dGVyPwo+IAo+IFswXSBodHRwczovL2xv
cmUua2VybmVsLm9yZy9zdGFibGUvMjAyMTExMjUxMjAyMzQuNjc5ODctMS1sZWUuam9uZXNAbGlu
YXJvLm9yZy8KCkdyZWcsIGFyZSB5b3UgYWJsZSB0byB0YWtlIHRoZSBvcmlnaW5hbCBwYXRjaCBm
b3IgdjQuNCBhbmQgdjQuOSBwbGVhc2U/CgotLSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9dClNlbmlv
ciBUZWNobmljYWwgTGVhZCAtIERldmVsb3BlciBTZXJ2aWNlcwpMaW5hcm8ub3JnIOKUgiBPcGVu
IHNvdXJjZSBzb2Z0d2FyZSBmb3IgQXJtIFNvQ3MKRm9sbG93IExpbmFybzogRmFjZWJvb2sgfCBU
d2l0dGVyIHwgQmxvZwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRw
Oi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2
ZXJkZXYtZGV2ZWwK

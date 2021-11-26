Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 22CA645EA0B
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Nov 2021 10:12:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8CDE080E3D;
	Fri, 26 Nov 2021 09:12:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Dn3n4FXUVfS0; Fri, 26 Nov 2021 09:12:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 26E6B80E0A;
	Fri, 26 Nov 2021 09:12:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8AC781BF361
 for <devel@linuxdriverproject.org>; Fri, 26 Nov 2021 09:12:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7A13480CAF
 for <devel@linuxdriverproject.org>; Fri, 26 Nov 2021 09:12:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6CI2MEL21E3a for <devel@linuxdriverproject.org>;
 Fri, 26 Nov 2021 09:12:23 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com
 [IPv6:2a00:1450:4864:20::336])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9126680C80
 for <devel@driverdev.osuosl.org>; Fri, 26 Nov 2021 09:12:23 +0000 (UTC)
Received: by mail-wm1-x336.google.com with SMTP id
 o19-20020a1c7513000000b0033a93202467so6339288wmc.2
 for <devel@driverdev.osuosl.org>; Fri, 26 Nov 2021 01:12:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=8WnwyWyMB/kYzpUzxfbbpOhOFDX9Ss7cnX/FubpG7VY=;
 b=qZx3FkJuR7AMG7yHgL+SBW4L6B3AJlOgKbylLtaCdil2WQupnRwVe50HGvTWJBNHwb
 b/qyb77tP3d4rHrjHksr72ObZtudziNvP/eZOIeq5Gvv04K2Gvob+T9PU2pAO9weUF7Y
 Gj2uEwktVM4/v/38y6MgErRQNPkgQ0heJbWkNNgJC3YdkElFYtCo842Fh002zCVOBy1I
 dpFdbON26z6qpeq94QXzcFQmenfYVxenhYP1jRXklt1YRAbzTYTzPHq8M6y5dakhPMSz
 ah5P1/7I4MSd7G11Cz5QaWsHraYpDTPziwsekK3VRhsBEKfwL5Dwkc2jvuK4VijKLKR5
 MblQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=8WnwyWyMB/kYzpUzxfbbpOhOFDX9Ss7cnX/FubpG7VY=;
 b=BcsGdZ8657HXCUqyTEufXuNgbjWsGkVkPD4KoXuud67B3b4b0z0a3zVGJ3BdOyGneE
 2ezUt31QbC4n3mMhflNiw1CS/vzRNdEzgvYVMUVpxDwGYTD8H/Np9X+BK7eZG6pvF+/R
 3xrjsO0MPu+bfHm5X40AALeCiJlb3CjsVxZRzMxZGwKh4TUpn6pdVaC2pZM8nnTApAsc
 MD2pcR/0+wG0Vld5OyoC7rqWbu2G0VaPVOQuZKvNBk5WDXyK7ikbWKfPeh9ydT74EuK5
 qc4JV+K8p7tDQKtL5x99XsAr4KXUvQQq4i4VCTDZ2jDnAUAN7afExNI/n1KMe1Jiv/t3
 9R4g==
X-Gm-Message-State: AOAM531pgxXS0qAeDzRJan8rMuV2qrY6dpANJ8ig4UlmWT8NN3Fk1zX0
 59I/PoFc9HA5OJ6orRF2l7wbBg==
X-Google-Smtp-Source: ABdhPJxbKqKYs6WXhbSGGXCoKD+zbkwA08f7MeZUiX/u+RzpqOAKZaU+en+0c0sRIx+G4GD4KvDx4Q==
X-Received: by 2002:a7b:c752:: with SMTP id w18mr14375047wmk.96.1637917941648; 
 Fri, 26 Nov 2021 01:12:21 -0800 (PST)
Received: from google.com ([2.31.167.18])
 by smtp.gmail.com with ESMTPSA id x4sm9889281wmi.3.2021.11.26.01.12.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 26 Nov 2021 01:12:21 -0800 (PST)
Date: Fri, 26 Nov 2021 09:12:19 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 1/1] staging: ion: Prevent incorrect reference counting
 behavour
Message-ID: <YaCk80uhsX8TU75X@google.com>
References: <20211125142004.686650-1-lee.jones@linaro.org>
 <20211125145004.GN6514@kadam> <YZ+muS7vC5iNs/kq@google.com>
 <20211125151822.GJ18178@kadam> <20211126071641.GO6514@kadam>
 <YaChOzfm2/3gY4o3@google.com> <YaCizHYteAeLT4yk@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YaCizHYteAeLT4yk@kroah.com>
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
 arve@android.com, labbott@redhat.com, sumit.semwal@linaro.org,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gRnJpLCAyNiBOb3YgMjAyMSwgR3JlZyBLSCB3cm90ZToKCj4gT24gRnJpLCBOb3YgMjYsIDIw
MjEgYXQgMDg6NTY6MjdBTSArMDAwMCwgTGVlIEpvbmVzIHdyb3RlOgo+ID4gT24gRnJpLCAyNiBO
b3YgMjAyMSwgRGFuIENhcnBlbnRlciB3cm90ZToKPiA+IAo+ID4gPiBPbiBUaHUsIE5vdiAyNSwg
MjAyMSBhdCAwNjoxODoyMlBNICswMzAwLCBEYW4gQ2FycGVudGVyIHdyb3RlOgo+ID4gPiA+IEkg
aGFkIHRob3VnaHQgdGhhdCAtPmttYXBfY250IHdhcyBhIHJlZ3VsYXIgaW50IGFuZCBub3QgYW4g
dW5zaWduZWQKPiA+ID4gPiBpbnQsIGJ1dCBJIHdvdWxkIGhhdmUgdG8gcHVsbCBhIHN0YWJsZSB0
cmVlIHRvIHNlZSB3aGVyZSBJIG1pc3JlYWQgdGhlCj4gPiA+ID4gY29kZS4KPiA+ID4gCj4gPiA+
IEkgd2FzIGxvb2tpbmcgYXQgKHN0cnVjdCBpb25fYnVmZmVyKS0+a21hcF9jbnQgYnV0IHRoaXMg
aXMKPiA+ID4gKHN0cnVjdCBpb25faGFuZGxlKS0+a21hcF9jbnQuICBJJ20gbm90IHN1cmUgaG93
IHRob3NlIGFyZSByZWxhdGVkIGJ1dAo+ID4gPiBpdCBtYWtlcyBtZSBuZXJ2b3VzIHRoYXQgb25l
IGNhbiBnbyBoaWdoZXIgdGhhbiB0aGUgb3RoZXIuICBBbHNvIGJvdGgKPiA+ID4gcHJvYmFibHkg
bmVlZCBvdmVyZmxvdyBwcm90ZWN0aW9uLgo+ID4gPiAKPiA+ID4gU28gSSBndWVzcyBJIHdvdWxk
IGp1c3QgZG8gc29tZXRoaW5nIGxpa2U6Cj4gPiA+IAo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9zdGFnaW5nL2FuZHJvaWQvaW9uL2lvbi5jIGIvZHJpdmVycy9zdGFnaW5nL2FuZHJvaWQvaW9u
L2lvbi5jCj4gPiA+IGluZGV4IDgwNmU5YjMwYjlkYzguLmU4ODQ2Mjc5YjMzYjUgMTAwNjQ0Cj4g
PiA+IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy9hbmRyb2lkL2lvbi9pb24uYwo+ID4gPiArKysgYi9k
cml2ZXJzL3N0YWdpbmcvYW5kcm9pZC9pb24vaW9uLmMKPiA+ID4gQEAgLTQ4OSw2ICs0ODksOCBA
QCBzdGF0aWMgdm9pZCAqaW9uX2J1ZmZlcl9rbWFwX2dldChzdHJ1Y3QgaW9uX2J1ZmZlciAqYnVm
ZmVyKQo+ID4gPiAgCXZvaWQgKnZhZGRyOwo+ID4gPiAgCj4gPiA+ICAJaWYgKGJ1ZmZlci0+a21h
cF9jbnQpIHsKPiA+ID4gKwkJaWYgKGJ1ZmZlci0+a21hcF9jbnQgPT0gSU5UX01BWCkKPiA+ID4g
KwkJCXJldHVybiBFUlJfUFRSKC1FT1ZFUkZMT1cpOwo+ID4gPiAgCQlidWZmZXItPmttYXBfY250
Kys7Cj4gPiA+ICAJCXJldHVybiBidWZmZXItPnZhZGRyOwo+ID4gPiAgCX0KPiA+ID4gQEAgLTUw
OSw2ICs1MTEsOCBAQCBzdGF0aWMgdm9pZCAqaW9uX2hhbmRsZV9rbWFwX2dldChzdHJ1Y3QgaW9u
X2hhbmRsZSAqaGFuZGxlKQo+ID4gPiAgCXZvaWQgKnZhZGRyOwo+ID4gPiAgCj4gPiA+ICAJaWYg
KGhhbmRsZS0+a21hcF9jbnQpIHsKPiA+ID4gKwkJaWYgKGhhbmRsZS0+a21hcF9jbnQgPT0gSU5U
X01BWCkKPiA+ID4gKwkJCXJldHVybiBFUlJfUFRSKC1FT1ZFUkZMT1cpOwo+ID4gPiAgCQloYW5k
bGUtPmttYXBfY250Kys7Cj4gPiA+ICAJCXJldHVybiBidWZmZXItPnZhZGRyOwo+ID4gPiAgCX0K
PiA+IAo+ID4gV2hpY2ggaXMgYWxsIHdlbGwgYW5kIGdvb2QgdW50aWwgc29tZWJvZHkgY2hhbmdl
cyB0aGUgdHlwZS4KPiAKPiBUaGF0J3MgaGFyZCB0byBkbyBvbiBjb2RlIHRoYXQgaXMgcmVtb3Zl
ZCBmcm9tIHRoZSBrZXJuZWwgdHJlZSA6KQoKVGhhdCdzIGEgZGlmZmljdWx0IHN0YW5jZSB0byB0
YWtlIHdoZW4gcmV2aWV3aW5nIGEgcGF0Y2ggd2hpY2ggY2hhbmdlcwp0aGUgdmVyeSBjb2RlIHlv
dSBiYXNlIHlvdXIgYXJndW1lbnQgb24uIDpECgpJJ2xsIGRvIHdpdGggRGFuJ3MgUG9WIHRob3Vn
aCAtIG5vIHN5bXBhdGh5IGdpdmVuLiA6KQoKdjMgdG8gZm9sbG93LgoKLS0gCkxlZSBKb25lcyBb
5p2O55C85pavXQpTZW5pb3IgVGVjaG5pY2FsIExlYWQgLSBEZXZlbG9wZXIgU2VydmljZXMKTGlu
YXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFybSBTb0NzCkZvbGxvdyBMaW5h
cm86IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVy
cHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxt
YW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==

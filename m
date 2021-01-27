Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B33053057D9
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 Jan 2021 11:08:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5078886689;
	Wed, 27 Jan 2021 10:08:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BuVt2lr5tqBS; Wed, 27 Jan 2021 10:08:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E017A86554;
	Wed, 27 Jan 2021 10:08:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A6C501BF405
 for <devel@linuxdriverproject.org>; Wed, 27 Jan 2021 10:08:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9A72A20C41
 for <devel@linuxdriverproject.org>; Wed, 27 Jan 2021 10:08:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4-mtaBa4H73H for <devel@linuxdriverproject.org>;
 Wed, 27 Jan 2021 10:08:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com
 [209.85.128.42])
 by silver.osuosl.org (Postfix) with ESMTPS id DA4F920BF8
 for <devel@driverdev.osuosl.org>; Wed, 27 Jan 2021 10:08:20 +0000 (UTC)
Received: by mail-wm1-f42.google.com with SMTP id c127so1083906wmf.5
 for <devel@driverdev.osuosl.org>; Wed, 27 Jan 2021 02:08:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=2WndoVJoechlesOP2uW9G5Dn7tzK4MkFx2WMsweb0HA=;
 b=UpH17eq02fjfb4twcUSs1kzVLGwnfViW+xXxsIpep3kj4mMwpmbQwEd3udpeUvscAJ
 Bg7m1KlikJ7nYe5NuPDDLi54HdO6mAbCbhQ/pdxtSIyAywSu6U/bPrihOD4hrHLSyd+P
 89ly7Y0yHSE/Ial1sv+bDkoilOd4MF8/RKh+tSZrCCMcn3iQPBf5JwsOqC6ZDpAP/Wa+
 4TDpW6E6EVFbbTdnei+0+oqjY/VKJs/A/+/xEXzN2yXgfVmuOwl9jvMTYGUqXhvolaoA
 jWuTqGAT44a4of40CpPq48iJ+jpbsX7b+3x8WlzoJTSGuIaxKsbvlDZh1k3MF9X3gyv2
 1xjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=2WndoVJoechlesOP2uW9G5Dn7tzK4MkFx2WMsweb0HA=;
 b=pbctIciX21aDCHI+1Sb8X/P1WpC1XabLjoI7BU8skzupr+7+xAU6WkIYlq6DqOuKdU
 EUz+J6h+y1mBpFu41vp2dbbb0GehZykAG0nFhURvmUrt8Xa57aW4mSA2UFqX56YutBjZ
 WFvxgwZaZylGNX1SiQbz/mfVrZ93lK5Fw/e3F98/ZGK/0vB6NfPySu9lmZ8pNXuBxX0N
 YhE7X4evhK9S/b4hperBU9zhkuVFH0HodsYCbCe9D1iVhZXK08e0HxaY+0Bb9kgisTaI
 PdtsPZIaJBS9cYGtmMwr3A4lJwnqsAbgt4lH+F3S8bAw0mtFv6AIjYfSel07lJFhM7cX
 mwVg==
X-Gm-Message-State: AOAM533u8gCK4crYI7po2sXCIyTIKP1BIDCqju/Cjah1eF8itBcFFm4K
 kv2T4jtGsss4EdEoeVfl+aM+hw==
X-Google-Smtp-Source: ABdhPJzKk7QEfIsVAuxkRlFKl+4OqrXBwYa149X8CairnOU8B6TmtO66T64zZBYBt2QVi/VcyNwmyQ==
X-Received: by 2002:a1c:4e05:: with SMTP id g5mr3552331wmh.105.1611742099265; 
 Wed, 27 Jan 2021 02:08:19 -0800 (PST)
Received: from dell ([91.110.221.188])
 by smtp.gmail.com with ESMTPSA id g192sm2137417wmg.18.2021.01.27.02.08.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 Jan 2021 02:08:18 -0800 (PST)
Date: Wed, 27 Jan 2021 10:08:16 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v5 00/21] Move Hisilicon 6421v600 SPMI driver set out of
 staging
Message-ID: <20210127100816.GH4903@dell>
References: <cover.1611212783.git.mchehab+huawei@kernel.org>
 <YBBXcdLbj92yMJhw@kroah.com> <20210126175752.GF4839@sirena.org.uk>
 <YBBZP9LjXPi/rzfP@kroah.com> <20210126181124.GG4839@sirena.org.uk>
 <YBErBByYD8lNIWAX@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YBErBByYD8lNIWAX@kroah.com>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Mayulong <mayulong1@huawei.com>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 linux-arm-msm@vger.kernel.org, YueHaibing <yuehaibing@huawei.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Wei Xu <xuwei5@hisilicon.com>,
 linux-kernel@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Mark Brown <broonie@kernel.org>, Dan Carpenter <dan.carpenter@oracle.com>,
 Colin Ian King <colin.king@canonical.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gV2VkLCAyNyBKYW4gMjAyMSwgR3JlZyBLcm9haC1IYXJ0bWFuIHdyb3RlOgoKPiBPbiBUdWUs
IEphbiAyNiwgMjAyMSBhdCAwNjoxMToyNFBNICswMDAwLCBNYXJrIEJyb3duIHdyb3RlOgo+ID4g
T24gVHVlLCBKYW4gMjYsIDIwMjEgYXQgMDc6MDI6MzlQTSArMDEwMCwgR3JlZyBLcm9haC1IYXJ0
bWFuIHdyb3RlOgo+ID4gPiBPbiBUdWUsIEphbiAyNiwgMjAyMSBhdCAwNTo1Nzo1MlBNICswMDAw
LCBNYXJrIEJyb3duIHdyb3RlOgo+ID4gCj4gPiA+ID4gSXMgdGhlcmUgYSBicmFuY2ggd2UgY2Fu
IHB1bGwgZnJvbT8KPiA+IAo+ID4gPiBPbmNlIDAtZGF5IHBhc3NlcywgeW91IGNhbiBwdWxsIGZy
b20gbXkgc3RhZ2luZy10ZXN0aW5nIGJyYW5jaCBmcm9tCj4gPiA+IHN0YWdpbmcuZ2l0IG9uIGdp
dC5rZXJuZWwub3JnIGlmIHlvdSB3YW50LiAgR2l2ZSBpdCAyNCBob3VycyB0byBwYXNzCj4gPiA+
IGJlZm9yZSBpdCBoaXRzIHRoYXQgbG9jYXRpb24uCj4gPiAKPiA+IFRoYW5rcy4KPiAKPiBTaG91
bGQgYmUgb3V0IHRoZXJlIG5vdyBpZiB5b3Ugd2FudCB0byBwdWxsLgo+IAo+ID4gPiBEbyB5b3Ug
bmVlZCBhIHRhZyB0byBwdWxsIGZyb20/Cj4gPiAKPiA+IEl0J2QgYmUgbmljZSBidXQgbm90IGVz
c2VudGlhbC4KPiAKPiBXaHkgZG8geW91IHdhbnQvbmVlZCB0aGlzPyAgSGF2aW5nIHRoZXNlIGNo
YW5nZXMgaW4geW91ciB0cmVlIGlzIGdvb2QsCj4gYnV0IHdoYXQgYWJvdXQgb3RoZXIgY29kaW5n
IHN0eWxlIGNsZWFudXBzIHRoYXQgSSB3aWxsIGVuZCB1cCBhcHBseWluZwo+IG92ZXIgdGltZSBi
ZWZvcmUgdGhlIDUuMTItcmMxIG1lcmdlIHdpbmRvdyBvcGVucz8gIEFyZSB5b3Ugd2FudGluZyB0
bwo+IHRha2UgdGhlIG1vdmVkIGRyaXZlciBpbiB5b3VyIHRyZWUsIG9yIHNvbWV0aGluZyBlbHNl
Pwo+IAo+IFRyYWRpdGlvbmFsbHkgbW92aW5nIGRyaXZlcnMgb3V0IG9mIHN0YWdpbmcgY2FuIGJl
IGRvbmUgMiB3YXlzOgo+IAktIGFsbCBoYXBwZW5zIGluIHRoZSBzdGFnaW5nIHRyZWUsIEkgdGFr
ZSBhbiBhY2sgZnJvbSB0aGUKPiAJICBzdWJzeXN0ZW0gbWFpbnRhaW5lciB0aGF0IHRoaXMgaXMg
b2sgdG8gZG8uCj4gCS0gQSBuZXcgZHJpdmVyIGVudGVycyB0aGUgInJlYWwiIHN1YnN5c3RlbSB0
cmVlLCBhbmQgdGhlbiBJCj4gCSAgZGVsZXRlIHRoZSBkcml2ZXIgaW4gdGhlIHN0YWdpbmcgdHJl
ZS4gIFRoaXMgZG9lc24ndCBwcmVzZXJ2ZQo+IAkgIGhpc3RvcnkgYXMgd2VsbCAobm90IGF0IGFs
bCksIGJ1dCBjYW4gYmUgZWFzaWVyIGZvciB0cmVlcyB0aGF0Cj4gCSAgbW92ZSBxdWlja2x5IChs
aWtlIG5ldHdvcmtpbmcuKQo+IAo+IFdoaWNoIGV2ZXIgd29ya3MgZm9yIHlvdSBpcyBmaW5lIHdp
dGggbWUsIGJ1dCByZWx5aW5nIG9uIHRoZSBjb2RlIHRvCj4gc3RheSAibm90IHRvdWNoZWQiIGlu
IG15IHRyZWUgYWZ0ZXIgeW91IHB1bGwgaXQgYWxtb3N0IG5ldmVyIGhhcHBlbnMgZHVlCj4gdG8g
dGhlIG51bWJlciBvZiBkcml2ZS1ieSBjb2Rpbmcgc3R5bGUgY2xlYW51cHMgdGhhdCBlbmQgdXAg
aW4gdGhlCj4gc3RhZ2luZyB0cmVlIGV2ZXJ5IHdlZWsuCgpJIHdvdWxkIGhhdmUgZXhwZWN0ZWQg
dGhlIHdob2xlIHNldCB0byBiZSBtZXJnZWQgYXMgYSBzZXQgaW50byBhCnNpbmdsZSB0cmVlLCBw
bGFjZWQgb24gYW4gaW1tdXRhYmxlIGJyYW5jaCBhbmQgYSBwdWxsLXJlcXVlc3QgdG8gYmUKc2Vu
dCBvdXQgZm9yIHRoZSBvdGhlciBtYWludGFpbmVycyB0byBwdWxsIGZyb20gKGlmIHRoZXkgc28g
d2lzaGVkKS4KClRoaXMgd291bGQgZW5zdXJlIGRldmVsb3BtZW50IGNvdWxkIGNvbnRpbnVlIG9u
IGFueS9hbGwgb2YgdGhlCmFmZmVjdGVkIGRyaXZlcnMvZmlsZXMuCgpJZiBpdCdzIG5vdCB0b28g
bGF0ZSwgSSdkIGJlIG1vcmUgdGhhbiBoYXBweSB0byBmYWNpbGl0YXRlLgoKLS0gCkxlZSBKb25l
cyBb5p2O55C85pavXQpTZW5pb3IgVGVjaG5pY2FsIExlYWQgLSBEZXZlbG9wZXIgU2VydmljZXMK
TGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFybSBTb0NzCkZvbGxvdyBM
aW5hcm86IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJp
dmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21h
aWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==

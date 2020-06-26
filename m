Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D73120B2B4
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Jun 2020 15:42:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4B7C124BE8;
	Fri, 26 Jun 2020 13:42:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mlr6GHH3CpDf; Fri, 26 Jun 2020 13:42:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id DFE672474E;
	Fri, 26 Jun 2020 13:42:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5BBA51BF306
 for <devel@linuxdriverproject.org>; Fri, 26 Jun 2020 13:42:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5479284E97
 for <devel@linuxdriverproject.org>; Fri, 26 Jun 2020 13:42:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qsSBpcxPCZsf for <devel@linuxdriverproject.org>;
 Fri, 26 Jun 2020 13:42:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com
 [209.85.167.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6970384E1A
 for <devel@driverdev.osuosl.org>; Fri, 26 Jun 2020 13:42:39 +0000 (UTC)
Received: by mail-lf1-f68.google.com with SMTP id g2so5207030lfb.0
 for <devel@driverdev.osuosl.org>; Fri, 26 Jun 2020 06:42:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=uYTmePWqL+ojg7pTw86haNnpUaWsC/kAgdQhw8L9p3s=;
 b=D4EQmPul29mEzPhiRmNlkAQlLVO731Q45fBQZY6OkZ+wySHzujY7SsWTVDr8mrxsBR
 edZdMMM1RUZAR2pH1/U56nkFLjfAQh0Z+tzZCmgyIzb1R4m9wtwen41hyy6QbZjkn4a3
 DQXrWo3o4TILXzm+c7nvVviCW9ZZNhvfBCJMWJFnULtkSFdLYJX1gb/owP2jOpmBQSFs
 xcl41OkT4PwZPmmTKp1wdxzYXlidDs6FJkvACDSZgDcZxfGBW4NtZDgyJTMUtLpgm+Ca
 hw7ULIqSewsLpOd1Mm5TFpeYlu6J/loX7xSt68G1Lt4xtrsRUXMXvRG3NdiD1/YBaXFr
 j5KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=uYTmePWqL+ojg7pTw86haNnpUaWsC/kAgdQhw8L9p3s=;
 b=N+qnHNdUZ7Bgzou8EmT2wXLH6TgRD+v159gplBPoebF3tO22Ox2JmawJdCK185It4x
 EKtfqFg0rL+feF/YmtECK38QSV7R8PXqHxTB8u6bFmnGp//ibyv5LnTLqhEL6qq7Muup
 iJff71lvbVLj6vLvmKG/AuFp0CS+cuT7xiETiC+Rf/G+JHQLseQTLm5jI7IIonc0Dvd+
 xdi+4g+MGNPqb2YvpiIT/ScExrd6Ae84CrDdRW9yA8N2ccOA1ji3IJUlPct8DLxCePbg
 5+TmPaEcE68eSYQNh7hmwJ+lLncdFBs6QbeeyRlj/H6xrE2GMMBtPE3HFRwHammOxlYQ
 Ka2Q==
X-Gm-Message-State: AOAM532N+zCFBmToQ6Uo+5uwq37omVX04jjxAsTeCBQpx25pqsnIFyfV
 I+Z0mIclo2mDrnXFkdrZsis=
X-Google-Smtp-Source: ABdhPJxp6AHUyFV4TLjJuogPsoZl6byF7taRhly5fBVSV4mGsvuhu8kY81TASnruf/O1pYgVXAJJSA==
X-Received: by 2002:a19:c50a:: with SMTP id w10mr1958878lfe.48.1593178957515; 
 Fri, 26 Jun 2020 06:42:37 -0700 (PDT)
Received: from [192.168.2.145] (79-139-237-54.dynamic.spd-mgts.ru.
 [79.139.237.54])
 by smtp.googlemail.com with ESMTPSA id g142sm6812892lfd.41.2020.06.26.06.42.36
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 26 Jun 2020 06:42:36 -0700 (PDT)
Subject: Re: [PATCH v2 4/4] media: staging: tegra-vde: Power-cycle hardware on
 probe
To: Thierry Reding <thierry.reding@gmail.com>
References: <20200624150847.22672-1-digetx@gmail.com>
 <20200624150847.22672-5-digetx@gmail.com> <20200626074818.GD3109062@ulmo>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <1c306d0a-571b-dc7c-3a61-0149dfb0e2be@gmail.com>
Date: Fri, 26 Jun 2020 16:42:35 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200626074818.GD3109062@ulmo>
Content-Language: en-US
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Jonathan Hunter <jonathanh@nvidia.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 linux-tegra@vger.kernel.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

MjYuMDYuMjAyMCAxMDo0OCwgVGhpZXJyeSBSZWRpbmcg0L/QuNGI0LXRgjoKPiBPbiBXZWQsIEp1
biAyNCwgMjAyMCBhdCAwNjowODo0N1BNICswMzAwLCBEbWl0cnkgT3NpcGVua28gd3JvdGU6Cj4+
IFZERSBwYXJ0aXRpb24gaXMgbGVmdCB0dXJuZWQgT04gYWZ0ZXIgYm9vdGxvYWRlciBvbiBtb3N0
IGRldmljZXMsIGhlbmNlCj4+IGxldCdzIGVuc3VyZSB0aGF0IGl0J3MgdHVybmVkIE9GRiBpbiBv
cmRlciB0byBsb3dlciBwb3dlciBsZWFrYWdlIHdoaWxlCj4+IGhhcmR3YXJlIGlzIGlkbGluZyBi
eSB0dXJuaW5nIGl0IE9OIGFuZCBPRkYgZHVyaW5nIG9mIHRoZSBkcml2ZXIncyBwcm9iZS4KPj4K
Pj4gU2lnbmVkLW9mZi1ieTogRG1pdHJ5IE9zaXBlbmtvIDxkaWdldHhAZ21haWwuY29tPgo+PiAt
LS0KPj4gIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS90ZWdyYS12ZGUvdmRlLmMgfCA4ICsrKysrKysr
Cj4+ICAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspCj4+Cj4+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL3N0YWdpbmcvbWVkaWEvdGVncmEtdmRlL3ZkZS5jIGIvZHJpdmVycy9zdGFnaW5nL21l
ZGlhL3RlZ3JhLXZkZS92ZGUuYwo+PiBpbmRleCBiNjRlMzViODZmYjQuLjNiZTk2YzM2YmY0MyAx
MDA2NDQKPj4gLS0tIGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL3RlZ3JhLXZkZS92ZGUuYwo+PiAr
KysgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvdGVncmEtdmRlL3ZkZS5jCj4+IEBAIC0xMDY4LDYg
KzEwNjgsMTQgQEAgc3RhdGljIGludCB0ZWdyYV92ZGVfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2Rl
dmljZSAqcGRldikKPj4gIAlwbV9ydW50aW1lX3VzZV9hdXRvc3VzcGVuZChkZXYpOwo+PiAgCXBt
X3J1bnRpbWVfc2V0X2F1dG9zdXNwZW5kX2RlbGF5KGRldiwgMzAwKTsKPj4gIAo+PiArCS8qCj4+
ICsJICogVkRFIHBhcnRpdGlvbiBtYXkgYmUgbGVmdCBPTiBhZnRlciBib290bG9hZGVyLCBoZW5j
ZSBsZXQncwo+PiArCSAqIHBvd2VyLWN5Y2xlIGl0IGluIG9yZGVyIHRvIHB1dCBoYXJkd2FyZSBp
bnRvIGEgcHJlZGljdGFibGUgbG93ZXIKPj4gKwkgKiBwb3dlciBzdGF0ZS4KPj4gKwkgKi8KPj4g
KwlwbV9ydW50aW1lX2dldF9zeW5jKGRldik7Cj4+ICsJcG1fcnVudGltZV9wdXQoZGV2KTsKPj4g
Kwo+PiAgCXJldHVybiAwOwo+PiAgCj4+ICBlcnJfZGVpbml0X2lvbW11Ogo+IAo+IFNob3VsZG4n
dCB0aGlzIGhhcHBlbiBhdXRvbWF0aWNhbGx5PyBNeSB1bmRlcnN0YW5kaW5nIGlzIHRoYXQgcG93
ZXIKPiBkb21haW5zIGFyZSB0dXJuZWQgb24gYXV0b21hdGljYWxseSBiZWZvcmUgLT5wcm9iZSgp
IGFuZCB0aGVuIHVubGVzcyBhCj4gcnVudGltZSBQTSByZWZlcmVuY2UgaXMgdGFrZW4gZHVyaW5n
IC0+cHJvYmUoKSBpdCB3aWxsIGdldCB0dXJuZWQgb2ZmCj4gYWdhaW4gYWZ0ZXIgLT5wcm9iZSgp
PwoKT2xkZXIgVGVncmEgU29DcyBoYXZlbid0IGJlZW4gY29udmVydGVkIHRvIHVzZSB0aGUgZ2Vu
ZXJpYyBwb3dlci1kb21haW4KQVBJIGFuZCB0b2RheSdzIFZERSBkcml2ZXIgc3VwcG9ydHMgb25s
eSBUMjAgYW5kIFQzMCBTb0NzLgoKPiBJcyB0aGF0IG5vdCBoYXBwZW5pbmc/IElzIGF1dG8tc3Vz
cGVuZCBwZXJoYXBzIGdldHRpbmcgaW4gdGhlIHdheQo+IHNvbWVob3c/CgpXZSdyZSBtYW51YWxs
eSB0b2dnbGluZyB0aGUgUEQgdXNpbmcgbGVnYWN5IFRlZ3JhLVBEIEFQSSBpbiB0aGUgZHJpdmVy
J3MKUlBNIGNhbGxiYWNrcywgdGhhdCdzIHdoeSB0aGUgUlBNIG5lZWRzIHRvIGJlIHRvZ2dsZWQg
bWFudWFsbHkgYXMgd2VsbC4KClBlcmhhcHMgdGhpcyBodW5rIGNvdWxkIGJlIHJlbW92ZWQgaWYg
b2xkZXIgVGVyZ2FzIHdvdWxkIGdldCBhIGdlbnBkCnN1cHBvcnQuIEkgZ3Vlc3MgaXQgc2hvdWxk
bid0IGJlIGRpZmZpY3VsdCB0byBpbXBsZW1lbnQgdGhlIGdlbnBkCnN1cHBvcnQsIGJ1dCB0aGVu
IHRoZXJlIHdpbGwgYmUgYSBjb21wYXRpYmlsaXR5IHRyb3VibGUgd2l0aCBvbGRlciBEVHMsCnNv
IHBlcmhhcHMgaXQncyBub3QgcmVhbGx5IHdvcnRoIHRoZSBlZmZvcnQuCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZl
bEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9q
ZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=

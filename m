Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id ADEAD19C3E5
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Apr 2020 16:22:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0C5E0221CC;
	Thu,  2 Apr 2020 14:22:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mvPbZ3XYUjwY; Thu,  2 Apr 2020 14:22:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id F22A621507;
	Thu,  2 Apr 2020 14:22:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D9EA51BF42C
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 14:22:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D713187F76
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 14:22:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jDlYyFg9KRbQ for <devel@linuxdriverproject.org>;
 Thu,  2 Apr 2020 14:22:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f68.google.com (mail-ed1-f68.google.com
 [209.85.208.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id F011E87F74
 for <devel@driverdev.osuosl.org>; Thu,  2 Apr 2020 14:22:45 +0000 (UTC)
Received: by mail-ed1-f68.google.com with SMTP id de14so4370187edb.4
 for <devel@driverdev.osuosl.org>; Thu, 02 Apr 2020 07:22:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=X5l2jaZkJKsz+6a6JrNWsRYAPhm8JPuWg1FWcX090vk=;
 b=s/gD43nV66taD1S/FZz0cS9daN9TfFM+URMomrNK6xbCQBfxKrXX3mfZlyNLZeeiEQ
 EBbnHR/pd1OZtJCTD0UcNkkD17VIXqiJ41ononawSTYxJUabgifUtLn9EBM1n8BWg/X+
 gc0R6l/H+egDSRcugdEAJIq7MYDfpYVS6F3sxE2YNmCQLoJmf5o7hv7b7NYCCsJzpj41
 3D4c/k+5shkfCS4X3obDgj5t5+WvpipQEWJw4Lqgl28iMvqtdxjdCMxo5g5+OXY/A3p+
 /N4L1mXbpuR27dG5ktQW6Tcue+BEqY4rp76LaqOPQUcDvVwpXbVlBEhZsfK6I3Zyslwg
 DdZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=X5l2jaZkJKsz+6a6JrNWsRYAPhm8JPuWg1FWcX090vk=;
 b=WKDUc7fkHObRWkMiJLw/qnNV/d2OMmBVfPwEE7X3vQddRgFaweRxoFKW8qOH22vKG8
 MD6lTk5Jx26ffXpaeIXX7VGV3QAeEcm0Ucj77mUlAdon/O1AZ/VbB0K4zh+Iuwvc+XZc
 rNDWq0G5/rd8w/RJkWPXKq8wNZbhf1iRPSMphyfP4Jnjmeo/gAbGfGzxZaHeHPGevvsB
 xxYB1YuaqgjCA4sf9x2mRi4Yo+1kLpKCG98U/kdFVT4JsuEk+snQuZLMK1o1AUKy5SBD
 Dt9V2sJz6OxA6XX36ykz5t11lC6HgC77DSj3snLBPbxfeK18+KtVU4NBja0+S1qB2Uvh
 DWkQ==
X-Gm-Message-State: AGi0PuZDN579b2Wl884qRMDU3HONCQ+nU+3y261IjDmbWogy0k2ml84p
 DbM/AHsOCaO/GRzbHRlGHR1LQrpiShbJ0UV+oG4=
X-Google-Smtp-Source: APiQypIFj/u9vxavPc3V+SOdfgaJa6CUH7j5KYfb3LrSiDdy4GdJTPxbVwIHtHetP4fAXzeBZ80SIyrJ9Ee74O9pSok=
X-Received: by 2002:a05:6402:7d0:: with SMTP id
 u16mr3240846edy.259.1585837364544; 
 Thu, 02 Apr 2020 07:22:44 -0700 (PDT)
MIME-Version: 1.0
References: <CAEzXK1p5uuRy9kxfxpTS+hNR-WGWtc-393HP5pPgzjUq_Q-RbA@mail.gmail.com>
 <20200402104246.GL2001@kadam>
In-Reply-To: <20200402104246.GL2001@kadam>
From: =?UTF-8?B?THXDrXMgTWVuZGVz?= <luis.p.mendes@gmail.com>
Date: Thu, 2 Apr 2020 15:22:33 +0100
Message-ID: <CAEzXK1rZHDmhhXNQFVLccynM9WDbu4PzEvt5q_hMSTo1dOG4wg@mail.gmail.com>
Subject: Re: [PATCH 01/01] staging: gasket: Fix incongruency in handling of
 sysfs entries creation
To: Dan Carpenter <dan.carpenter@oracle.com>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Wentao Cai <etsai042@gmail.com>, Rob Springer <rspringer@google.com>,
 Todd Poynor <toddpoynor@google.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGkgRGFuLAoKQWggc29ycnksIG9rLCBJIHdpbGwgcmUtc2VuZCB0aGUgcGF0Y2ggdXNpbmcgZ2l0
LgpDYW4geW91IHBsZWFzZSB0ZWxsIG1lIHdoaWNoIGlzIHRoZSBjb3JyZWN0IG1haWxpbmcgbGlz
dCB0byB3aGVyZSB0aGlzCnBhdGNoIHNob3VsZCBiZSBzdWJtaXR0ZWQ/CgpUaGFua3MsCkx1w61z
CgpPbiBUaHUsIEFwciAyLCAyMDIwIGF0IDExOjQyIEFNIERhbiBDYXJwZW50ZXIgPGRhbi5jYXJw
ZW50ZXJAb3JhY2xlLmNvbT4gd3JvdGU6Cj4KPiBPbiBTdW4sIE1hciAyOSwgMjAyMCBhdCAxMDo1
OToyMVBNICswMTAwLCBMdcOtcyBNZW5kZXMgd3JvdGU6Cj4gPiBGaXggaW5jb25ncnVlbmN5IGlu
IGhhbmRsaW5nIG9mIHN5c2ZzIGVudHJpZXMgY3JlYXRpb24uCj4gPiBUaGlzIGlzc3VlIGNvdWxk
IGNhdXNlIGludmFsaWQgbWVtb3J5IGFjY2Vzc2VzLCBieSBub3QgcHJvcGVybHkKPiA+IGRldGVj
dGluZyB0aGUgZW5kIG9mIHRoZSBzeXNmcyBhdHRyaWJ1dGVzIGFycmF5Lgo+ID4KPgo+IFBsZWFz
ZSBhZGQgYSBGaXhlcyB0YWcuCj4KPiBGaXhlczogODRjNDVkNWYzYmYxICgic3RhZ2luZzogZ2Fz
a2V0OiBSZXBsYWNlIG1hY3JvIF9fQVRUUiB3aXRoIF9fQVRUUl9OVUxMIikKPgo+IFRoYXQgcGF0
Y2ggd2FzIG5ldmVyIHNlbnQgdG8gdGhlIHByb3BlciBtYWlsaW5nIGxpc3QgZm9yIHJldmlldy4K
Pgo+IEFueXdheSwgTHVpcywgeW91IHdpbGwgbmVlZCB0byByZXNlbmQgYmVjYXVzZSB5b3VyIHBh
dGNoIGRvZXNuJ3QgYXBwbHkuCj4gUGxlYXNlIHJlYWQgdGhlIGZpcnN0IHBhcmFncmFwaHMgb2Yg
RG9jdW1lbnRhdGlvbi9wcm9jZXNzL2VtYWlsLWNsaWVudHMucnN0Cj4KPiByZWdhcmRzLAo+IGRh
biBjYXJwZW50ZXIKPgo+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0
dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2Ry
aXZlcmRldi1kZXZlbAo=

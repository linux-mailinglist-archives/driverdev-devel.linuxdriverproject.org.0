Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6460660196
	for <lists+driverdev-devel@lfdr.de>; Fri,  5 Jul 2019 09:40:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 68BC788046;
	Fri,  5 Jul 2019 07:40:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8QY5K9U4al5P; Fri,  5 Jul 2019 07:40:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9A59688007;
	Fri,  5 Jul 2019 07:40:41 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4487A1BF32A
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  5 Jul 2019 07:40:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 401DF84363
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  5 Jul 2019 07:40:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UiXp8rHZoJc8
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  5 Jul 2019 07:40:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com
 [209.85.166.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 716D3872E9
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  5 Jul 2019 07:40:38 +0000 (UTC)
Received: by mail-io1-f65.google.com with SMTP id k8so17337300iot.1
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 05 Jul 2019 00:40:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=MhevpbMBkQ9tQ62Xg38f/xWoE4SYXAkPZ9M8JSUvSNw=;
 b=bDIeasZl+wUHx5l2Any5+sJPFlI6ffGad7eK6cBg3hjDaNzQ9zPZU0Hoyt2c1immys
 ZCIlAUnfiOlQGRVU7Aei0A6BCR1/kCBp9T9QshQAG6LghMZdetmwF85O1rIcpxtKs4fm
 /TaP3pqR1nBlTmUAdpGVtngA1MXNmynPd9o0snChfBHuVuDnnRiR2zzRVwgThxB2W7yK
 btFKse1DXaNXIjFmj20io5T7nhdYClZNlHjcw5euzdlFVdtQbaTueAWij+2PPdFe3d8P
 K3B7Ld7SN4Ty55tYGRgpgYCe2aBfnqvKIwJkFtfsQwn+5MphZxxIbCkJpaayLzuj1+zT
 SgbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=MhevpbMBkQ9tQ62Xg38f/xWoE4SYXAkPZ9M8JSUvSNw=;
 b=hHY21vOYPCvoFS0egh7hPOuzkTp92HMSLCIb0Cy9PuMZczAh/8R2q/+1kuvIj2clru
 gIWDjOycL397BSEvtdd43AdbOy49ZMxvE0Js/FrSl7LhU+AAx86yddgs82TuJu5C8KG/
 aUPi861UNap0liQkgm293zSkkcvvlVMGOt6sThUykiiiRLglQ/hI6/LPza9hvt5i90JN
 4K2i4y2rjBQZ2KtgzNolgntLnm4H8wpnm+tquZ8LL8grEcXWHo9autHkjXxeG2iLmTey
 fdJPBkI2J9b2dbdCFmiKAVfyxmrzH075gdIKmREVAbysxrA1/Bdwq0dlJgKfloLfAd2k
 wfNw==
X-Gm-Message-State: APjAAAVsucYYAg5tq3OAo73J/vmB26MO9gPo4cBJqJTOG9iEAwNRkIPb
 BHrKySirPZSVk2fzARhdqwNlCMszc7xaFbVI6K0=
X-Google-Smtp-Source: APXvYqwUtNM+/IlrO92m44pcrXPNnsJyEt5p3Sx9CMxz7hSgG65ZKZ/a7/svzC0uFqpIC3/luC2tblTZxmSXBSJjBww=
X-Received: by 2002:a5d:8253:: with SMTP id n19mr2706979ioo.80.1562312437810; 
 Fri, 05 Jul 2019 00:40:37 -0700 (PDT)
MIME-Version: 1.0
References: <20190705025055.GA7037@ares>
In-Reply-To: <20190705025055.GA7037@ares>
From: =?UTF-8?Q?lo=C3=AFc_tourlonias?= <loic.tourlonias@gmail.com>
Date: Fri, 5 Jul 2019 09:48:41 +0200
Message-ID: <CA+XxOSFtCyg7N8DAxyv-aqSRhMHy9hbTaaajmQe2fvW==rkJUQ@mail.gmail.com>
Subject: Re: [OSSNA] Intro to kernel hacking tutorial
To: "Tobin C. Harding" <me@tobin.cc>
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 driverdev-devel@linuxdriverproject.org,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Kernelnewbies <kernelnewbies@kernelnewbies.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGksCgpPbiBGcmksIEp1bCA1LCAyMDE5IGF0IDQ6NTEgQU0gVG9iaW4gQy4gSGFyZGluZyA8bWVA
dG9iaW4uY2M+IHdyb3RlOgo+Cj4gSGksCj4KPiBJIGFtIGRvaW5nIGEgdHV0b3JpYWwgYXQgT1NT
TkEgaW4gU2FuIERpZWdvIG9uIGdldHRpbmcgaW50byBrZXJuZWwKPiBoYWNraW5nLiAgSSdtIG9u
bHkgYSBjb3VwbGUgb2YgeWVhcnMgZGVlcCBpbnRvIGtlcm5lbCBoYWNraW5nIHNvIEkKPiB3YW50
ZWQgdG8gcmVhY2ggb3V0IHRvIHRob3NlIG1vcmUgZXhwZXJpZW5jZWQgdGhhbiBteXNlbGYgKGFu
ZCB0aG9zZQo+IGxlc3MgZXhwZXJpZW5jZWQpLgo+Cj4gSXMgdGhlcmUgYW55IHRoaW5nIHRoYXQg
eW91IHdvdWxkIHJlYWxseSBsaWtlIHRvIHNlZSBjb3ZlcmVkIGluIHRoaXMKPiB0dXRvcmlhbD8K
PgpJJ20gbm90IGludm9sdmVkIGluIGtlcm5lbCBoYWNraW5nLCBidXQgSSd2ZSB0cmllZCBzZXZl
cmFsIHRpbWVzIHRvCnN0YXJ0IHdyaXRpbmcgcGF0Y2hlcy4gQmVjYXVzZSBvZiB0aW1lIHNoYXJp
bmcgaXNzdWUgSSBoYXZlbid0IGdldCB0bwp0aGUgZW5kIGJ1dCBhIHR1dG9yaWFsIHdpbGwgYmUg
Z3JlYXQuClRoZSBxdWVzdGlvbiBJJ3ZlIGFza2VkIG1lIGR1cmluZyBteSBzZXZlcmFsIHRyaWVz
IGlzIHdoZXJlIGNhbiBJIGJlCnVzZWZ1bCAod2hpY2ggdG9waWNzLCB3aGF0IEknbSBjb25maWRl
bnQgZW5vdWdoIGluIHRvIHBsYXkgd2l0aC4uLikuCgpMb29raW5nIGluIGRyaXZlcnMvc3RhZ2lu
ZyB3YXNuJ3QgYW55IGhlbHAgaW4gbXkgY2FzZSBhbmQgbWFraW5nCmtlcm5lbCBqYW5pdG9yIGlz
IHVzZWZ1bCBidXQgbm90IHZlcnkgd2VsbCB2aWV3ZWQgYXMgSSd2ZSBoZWFyZC4KClNvIEkgdGhp
bmsgdGhhdCBkaWdnaW5nIGZ1cnRoZXIgaW4geW91ciB0dXRvcmlhbCBvbiBzZXZlcmFsIHdheXMg
dG8Kc3RhcnQga2VybmVsIGhhY2tpbmcgbWF5IGJlIGludGVyZXN0aW5nLgoKPiBDdXJyZW50IGZv
cm1hdC9jb250ZW50OiB0aGUgdHV0b3JpYWwgd2lsbCBhdHRlbXB0IHRvIGJyaWRnZSB0aGUgZ2Fw
IGluCj4gdGhlIGxlYXJuaW5nIHByb2Nlc3MgYmV0d2VlbiB0aGUgJ2ZpcnN0IHBhdGNoJyBwYWdl
IG9uIGtlcm5lbG5ld2JpZXMub3JnCj4gd2lraSBhbmQgYmVpbmcgJ2NvbWZvcnRhYmxlJyBwYXRj
aGluZyB0aGUga2VybmVsIHZpYSBMS01MLiAgT3V0Y29tZSB3aWxsCj4gKGhvcGVmdWxseSkgYmUg
YSBzbWFsbCBwYXRjaCBzZXQgaW50byBkcml2ZXJzL3N0YWdpbmcvLiAgKERvbid0IHdvcnJ5Cj4g
R3JlZyBvbmx5IG9uZSBncm91cCBnb3QgdG8gdGhpcyBzdGFnZSBsYXN0IHRpbWUsIHlvdSB3b24n
dCBnZXQgZmxvb2RlZAo+IHdpdGggcGF0Y2hlcyA6KQo+CgpIVEggYW5kIHZlcnkgZW50aHVzaWFz
dCB0byByZWFkIHRoaXMgdHV0b3JpYWwuCkxvw69jCgo+IFRoYW5rcywKPiBUb2Jpbi4KPgo+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gS2VybmVsbmV3
YmllcyBtYWlsaW5nIGxpc3QKPiBLZXJuZWxuZXdiaWVzQGtlcm5lbG5ld2JpZXMub3JnCj4gaHR0
cHM6Ly9saXN0cy5rZXJuZWxuZXdiaWVzLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2tlcm5lbG5ld2Jp
ZXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwg
bWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRl
di5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVs
Cg==

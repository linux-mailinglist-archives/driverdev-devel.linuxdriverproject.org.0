Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F9B3A7FDA
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Sep 2019 11:55:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 16B2D878BD;
	Wed,  4 Sep 2019 09:55:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8PAmrRW1PzMf; Wed,  4 Sep 2019 09:55:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C1484839C1;
	Wed,  4 Sep 2019 09:55:15 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CC49B1BF40B
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  4 Sep 2019 09:55:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C932022E54
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  4 Sep 2019 09:55:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3BwxnHYNooT4
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  4 Sep 2019 09:55:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com
 [209.85.208.67])
 by silver.osuosl.org (Postfix) with ESMTPS id E231F2041D
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  4 Sep 2019 09:55:12 +0000 (UTC)
Received: by mail-ed1-f67.google.com with SMTP id g24so21856817edu.3
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 04 Sep 2019 02:55:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=deki5b3ZXYDq4oLjcerhof00leYLpbJSSL8gVNR/VwU=;
 b=kgdTiS83Vc5JFLJgVk0Rk+swCMCemcseg2Z4zx2TUns6YBPJuR879n5isPfbHuE+VM
 ZLFAYMfJTPdEfxxUS2iSIBnUsiamXAY/eOxmLnVtFhiQCVccn3igXd097AWZdG70hrFD
 lkAELEPdu9yOgTS/4FIYbySWSMt9/CQ9YXw3yNfuBXnA11o0CoRmTYXMTL/lIh77GSWD
 uNS1a05jEgkkBRCB47tHoX7Dbx69gUq0PyTL4/5ph+ifmChcQ+fwRAJzB+UL3WyXZdoh
 wTu9XcyJ/IwwACPstPPQA5GBBfhAlP9nZrgNluBGWJPmIOJ0pebYly+vilxqZ9GPFR2h
 Jh3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=deki5b3ZXYDq4oLjcerhof00leYLpbJSSL8gVNR/VwU=;
 b=a6ma52QqajEeeu6F8oxqqd1SuSzio2GfU0k73M81iiNfb6w3Q9cEP5+ownZHdDzojg
 vvVRW3K9LbsHJwx1riQl319Z7kcy4lNHiMMVD3Tt2jmfKiiys5jAGKlZwZNJ2hF3aqaJ
 oE9OlPiA9ad4qk/ODndzxifbsT84Ojyf33TZMmznm5Qy8cB7g5/D+eODKELq7FrKaz64
 7+VQuhQaoGnfpewV3hhBHR2PwsbsxqcGuleubpo91dIebow3EdaP3nV82flTeBrKECnS
 +wZAHywbrnuf1Q7nktdnKNZLN9jrVrQztcm8i8g2mgcsUygQKZZ9cZ+wLBtek3OsKjoS
 mW2Q==
X-Gm-Message-State: APjAAAVsvfVFWfrgRRYWlLDk6kL6TNAS65ZLYk2G/Rdda7SV0t2CEg6m
 D++qx2ImiTArmyxMgbErDkLIxj9TqP6kAZZmEW8=
X-Google-Smtp-Source: APXvYqx2u+jetxt96aKN5Z/sn30LfWKqxd58TjGVnUWrdHqdMypltYrEEl9U8zNAQeu/8ku4F1/ZdXpebYRSfg7yPhc=
X-Received: by 2002:a17:906:718:: with SMTP id
 y24mr32557496ejb.71.1567590911152; 
 Wed, 04 Sep 2019 02:55:11 -0700 (PDT)
MIME-Version: 1.0
References: <20190705025055.GA7037@ares> <20190719093658.GF3111@kadam>
 <20190722092923.GB22763@ares>
 <CAPTh4OtcwP_B7gY2HLDQvihuubCKbTbVgnF9LkKaFg=pqSs64w@mail.gmail.com>
 <20190902015137.GB14611@ares>
 <CADxRZqyBgDEiZaK5At2RoCHPNquRA6OWvFg2SU3TZ9hsqEs8rg@mail.gmail.com>
 <490137.1567433334@turing-police>
In-Reply-To: <490137.1567433334@turing-police>
From: Anatoly Pugachev <matorola@gmail.com>
Date: Wed, 4 Sep 2019 12:55:00 +0300
Message-ID: <CADxRZqwucodwuLsT_CjPwva0ALk8=j2hZX5TjgcuYsH0dhn3+g@mail.gmail.com>
Subject: Re: [OSSNA] Intro to kernel hacking tutorial
To: =?UTF-8?Q?Valdis_Kl=C4=93tnieks?= <valdis.kletnieks@vt.edu>
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
Cc: Kernelnewbies <kernelnewbies@kernelnewbies.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 driverdev-devel@linuxdriverproject.org,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gTW9uLCBTZXAgMiwgMjAxOSBhdCA1OjA5IFBNIFZhbGRpcyBLbMSTdG5pZWtzIDx2YWxkaXMu
a2xldG5pZWtzQHZ0LmVkdT4gd3JvdGU6Cj4KPiBPbiBNb24sIDAyIFNlcCAyMDE5IDE1OjQyOjE5
ICswMzAwLCBBbmF0b2x5IFB1Z2FjaGV2IHNhaWQ6Cj4KPiA+IGlzIGl0IGludGVudGlvbmFsbHkg
dGhhdCB5b3UgdXNlCj4gPgo+ID4geWVzICIiIHwgbWFrZSBvbGRjb25maWcKPiA+Cj4gPiBpbnN0
ZWFkIG9mCj4gPgo+ID4gbWFrZSBvbGRkZWZjb25maWcKPgo+IFRoZXkgZG8gc29tZXRoaW5nIGRp
ZmZlcmVudC4gICdvbGRkZWZjb25maWcnIGp1c3QgdGFrZXMgdGhlIHBsYXRmb3JtIG9yCj4gYXJj
aGl0ZWN0dXJlIGRlZmNvbmZpZyBhbmQgdXBkYXRlcyBpdCBmb3IgYW55IG5ldyBDT05GSUdfKiB2
YXJpYWJsZXMgYWRkZWQKPiBzaW5jZSB0aGUgbGFzdCB0aW1lIHRoZSBkZWZjb25maWcgd2FzIHVw
ZGF0ZWQgaW4gdGhlIHRyZWUuCj4KPiB5ZXMgIiIgfCBtYWtlIG9sZGNvbmZpZyAgZG9lcyB0aGUg
c2FtZSB1cGRhdGluZyBmb3IgbmV3IENPTkZJR18qIHZhcmlhYmxlcywgYnV0Cj4gc3RhcnRzIHdp
dGggdGhlIG1vc3QgcmVjZW50IC5jb25maWcgLSB3aGljaCBwcm9kdWNlcyB3aWxkbHkgZGlmZmVy
ZW50IHJlc3VsdHMKPiBpZiB0aGUgLmNvbmZpZyBoYWQgcHJldmlvdXNseSBiZWVuIG1pbmltaXpl
ZCBieSAnbWFrZSBsb2NhbG1vZGNvbmZpZycgb3Igb3RoZXIKPiBzaW1pbGFyIHRlY2huaXF1ZXMu
CgpNYXliZSBpIGRvbid0IHVuZGVyc3RhbmQgc29tZXRoaW5nLCBidXQgc29tZW9uZSB3b3VsZCBw
cm9iYWJseSB3YW50IHRvCnBhdGNoIGtlcm5lbCAnbWFrZSBoZWxwJyBhY2NvcmRpbmdseSAsIHNp
bmNlIGN1cnJlbnQgb25lIGxpc3RzOgoKJCBtYWtlIGhlbHAKICBvbGRjb25maWcgICAgICAgLSBV
cGRhdGUgY3VycmVudCBjb25maWcgdXRpbGlzaW5nIGEgcHJvdmlkZWQgLmNvbmZpZyBhcyBiYXNl
CiAgb2xkZGVmY29uZmlnICAgIC0gU2FtZSBhcyBvbGRjb25maWcgYnV0IHNldHMgbmV3IHN5bWJv
bHMgdG8gdGhlaXIKICAgICAgICAgICAgICAgICAgICBkZWZhdWx0IHZhbHVlIHdpdGhvdXQgcHJv
bXB0aW5nCgpUaGFua3MuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0
dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2Ry
aXZlcmRldi1kZXZlbAo=

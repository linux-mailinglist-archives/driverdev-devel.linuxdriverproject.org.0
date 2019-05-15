Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C47281F18A
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 May 2019 13:55:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0982D87D63;
	Wed, 15 May 2019 11:55:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ePPXWmOD4ccs; Wed, 15 May 2019 11:55:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6D90D86F21;
	Wed, 15 May 2019 11:55:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AFF8E1BF873
 for <devel@linuxdriverproject.org>; Wed, 15 May 2019 11:55:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A9D1A8401C
 for <devel@linuxdriverproject.org>; Wed, 15 May 2019 11:55:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Tj+dFoEDNbsT for <devel@linuxdriverproject.org>;
 Wed, 15 May 2019 11:55:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A25DA855B4
 for <devel@driverdev.osuosl.org>; Wed, 15 May 2019 11:55:06 +0000 (UTC)
Received: from mail-pl1-f197.google.com ([209.85.214.197])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <kai.heng.feng@canonical.com>)
 id 1hQsUy-000227-Bz
 for devel@driverdev.osuosl.org; Wed, 15 May 2019 11:55:04 +0000
Received: by mail-pl1-f197.google.com with SMTP id q18so1580200pll.16
 for <devel@driverdev.osuosl.org>; Wed, 15 May 2019 04:55:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=2s5ZrDz9Fge3DDsd7znyW59tgDsyXymNM0mQ5XeWf1I=;
 b=f0oP0m7yFZMoR+pkLh45l0xIFy+Y7CNceBDqe5aJUjMc1cbQiAXvYRh9ui2oJ3W2cY
 TLsA1/6D/j13Ga8wPRaJxUOKDQ9x8vqp9e1sekUVSJiEo7KK4zvjsP03f6gOMvzCLFJS
 UGtjFuZ1fuhgeaUUflMB5OQYUQnEpLgxSt+21p9JiHFtm/BFGee3FdHjxUTv+3NJJ54p
 fTT/fd8diycS8z91UC4y4iT/T/uPcYXfwUFpG5SivbkmoAaXAjdeFSkVbmCMLjGmzg8H
 ozX6PlY8zzqANnqYiyXQGR2Yoe/DU9OzF6W/y51zngCMtLXEOJK1MiyEzxic1Ig1RBKg
 90pQ==
X-Gm-Message-State: APjAAAUKY/ttDvCITOa2oIhWYuKQNI0Jv4HmlmwWQEyqGhZVSu7/2Lvc
 xh5Zuwl0yC2u0K0boTbdEL8ZbIYzu6g5+f/d5xHVQ3Pcubmt1GyN45YCEwObG8zoVnXtLBjpypM
 ir2aqL0IJxi6wfGvOMGQ1SiYdaBgZATQcQawpik8=
X-Received: by 2002:a65:5a47:: with SMTP id z7mr28393357pgs.214.1557921302870; 
 Wed, 15 May 2019 04:55:02 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwTEKiAvgcqQfU7pw3kQOWbuKuSjQAvwSUOT4BOjaZHzgdEaAxeZ7WuseQslsHjwHoTFCwYeg==
X-Received: by 2002:a65:5a47:: with SMTP id z7mr28393319pgs.214.1557921302366; 
 Wed, 15 May 2019 04:55:02 -0700 (PDT)
Received: from 2001-b011-380f-14b9-2dec-a462-2693-8ecd.dynamic-ip6.hinet.net
 (2001-b011-380f-14b9-2dec-a462-2693-8ecd.dynamic-ip6.hinet.net.
 [2001:b011:380f:14b9:2dec:a462:2693:8ecd])
 by smtp.gmail.com with ESMTPSA id q193sm3818827pfc.52.2019.05.15.04.55.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 15 May 2019 04:55:01 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.8\))
Subject: Re: [PATCH] staging: Add rtl8821ce PCIe WiFi driver
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
In-Reply-To: <20190515114022.GA18824@kroah.com>
Date: Wed, 15 May 2019 19:54:58 +0800
Message-Id: <6D5557B8-8140-48A8-BED7-9587936902D8@canonical.com>
References: <20190515112401.15373-1-kai.heng.feng@canonical.com>
 <20190515114022.GA18824@kroah.com>
To: Greg KH <gregkh@linuxfoundation.org>
X-Mailer: Apple Mail (2.3445.104.8)
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
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

YXQgMTk6NDAsIEdyZWcgS0ggPGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3JnPiB3cm90ZToKCj4g
T24gV2VkLCBNYXkgMTUsIDIwMTkgYXQgMDc6MjQ6MDFQTSArMDgwMCwgS2FpLUhlbmcgRmVuZyB3
cm90ZToKPj4gVGhlIHJ0bDg4MjFjZSBjYW4gYmUgZm91bmQgb24gbWFueSBIUCBhbmQgTGVub3Zv
IGxhcHRvcHMuCj4+IFVzZXJzIGhhdmUgYmVlbiB1c2luZyBvdXQtb2YtdHJlZSBtb2R1bGUgZm9y
IGEgd2hpbGUsCj4+Cj4+IFRoZSBuZXcgUmVhbHRlayBXaUZpIGRyaXZlciwgcnR3ODgsIHdpbGwg
c3VwcG9ydCBydGw4ODIxY2UgaW4gMjAyMCBvcgo+PiBsYXRlci4KPgo+IFdoZXJlIGlzIHRoYXQg
ZHJpdmVyLCBhbmQgd2h5IGlzIGl0IGdvaW5nIHRvIHRha2Ugc28gbG9uZyB0byBnZXQgbWVyZ2Vk
PwoKcnR3ODggaXMgaW4gNS4yIG5vdywgYnV0IGl0IGRvZXNu4oCZdCBzdXBwb3J0IDg4MjFjZSB5
ZXQuCgpUaGV5IHBsYW4gdG8gYWRkIHRoZSBzdXBwb3J0IGluIDIwMjAuCgo+Cj4+IDI5NiBmaWxl
cyBjaGFuZ2VkLCAyMDYxNjYgaW5zZXJ0aW9ucygrKQo+Cj4gVWdoLCB3aHkgZG8gd2Uga2VlcCBo
YXZpbmcgdG8gYWRkIHRoZSB3aG9sZSBtZXNzIGZvciBldmVyeSBzaW5nbGUgb25lIG9mCj4gdGhl
c2UgZGV2aWNlcz8KCkJlY2F1c2UgUmVhbHRlayBkZXZpY2VzIGFyZSB1bmZvcnR1bmF0ZWx5IHVi
aXF1aXRvdXMgc28gdGhlIHN1cHBvcnQgaXMgIApiZXR0ZXIgY29tZSBmcm9tIGtlcm5lbC4KCj4K
PiBXaHkgY2FuJ3Qgd2UganVzdCBoYXZlIGEgcmVhbCBkcml2ZXIgbm93PwoKSXQgZG9lc27igJl0
IHN1cHBvcnQgcnRsODgyMWNlIHlldC4KCkthaS1IZW5nCgo+Cj4gdGhhbmtzLAo+Cj4gZ3JlZyBr
LWgKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZl
bCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVy
ZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2
ZWwK

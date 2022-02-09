Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D7774AFDE2
	for <lists+driverdev-devel@lfdr.de>; Wed,  9 Feb 2022 21:00:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DD7A3408BE;
	Wed,  9 Feb 2022 20:00:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DeXQrAMLF7bM; Wed,  9 Feb 2022 20:00:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 932A140923;
	Wed,  9 Feb 2022 20:00:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BB7E11BF422
 for <devel@linuxdriverproject.org>; Wed,  9 Feb 2022 20:00:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A3AD8404F1
 for <devel@linuxdriverproject.org>; Wed,  9 Feb 2022 20:00:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bycn0XneAPfj for <devel@linuxdriverproject.org>;
 Wed,  9 Feb 2022 20:00:08 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-vs1-xe41.google.com (mail-vs1-xe41.google.com
 [IPv6:2607:f8b0:4864:20::e41])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B1577403A7
 for <devel@driverdev.osuosl.org>; Wed,  9 Feb 2022 20:00:08 +0000 (UTC)
Received: by mail-vs1-xe41.google.com with SMTP id t184so3846513vst.13
 for <devel@driverdev.osuosl.org>; Wed, 09 Feb 2022 12:00:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:sender:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=lLqB5uXP4GxHC5TVmBdcUxwKILWbYUsnAsMtvOCXgPI=;
 b=FymC4tPqGY66YDReHX5COhUHMvjzppLh95nTUbwTlaLt8jemA6UCbTwaI+BemvvG53
 k18shnZQx5M5BJHQ7rTbTmNPDHN5nZq6R9wixKp++79+dpPRF6bub0pFSNQiGKC6MhhP
 S7VnXy7IyFwZANdULQUWeMYLsup96MWIx6z1xzFvkcS428bsmizbYNr3GwUoiIaoRYI/
 1rO+32WsbIbGHYRqVQxg1Ta8LI8brz074Dua8lDebxjYFqbYidDZG120vzy/j7UdIV+5
 pu93RudUPZzGij6I1zB/9nhLWGavyr0tPiKGK2wKPs3pR3kAT3V1biQ+JZ4Wct8gYd3W
 9GYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
 :to:content-transfer-encoding;
 bh=lLqB5uXP4GxHC5TVmBdcUxwKILWbYUsnAsMtvOCXgPI=;
 b=5iiNUgFJWGaSHpHbEFmWaWzucFjNJc534rlTI8UParLAedo/CfKb72Pk/fnnha1iQ2
 gFuxHlMIgQNyWF3x8CjdGY4w5NgCj2AUyLM7qjpqlI2Wx/BKODKAbGeWXkgMIAiGvE02
 H9Wo5fOkQvuUzcK/iHbimisoaiAnOmO4OC0MFO1b0cebtJ609HCnrxQVP+acmpblP04o
 lLlLoEQI3SjTnG3bEj8tqVKZhYD70nZsoNHiZx+9fb8LMRxERQIuWSR1kAQSPkHnlhMP
 Mhd3rofEidXXZ4SI0p3K0sOv741KYLRQ4HLgETHjJN1F4TRS5L+rg0pKwgkDKT/Cj91C
 /hxA==
X-Gm-Message-State: AOAM5306k1O5KgG/1sE0Q8cdmd25fHL507g4zaZufz1Bz+O+8w5Lhnnf
 ky/9RTZ9dZzCKetVofUig3Xjfgvmn2QJWe2KWU8=
X-Google-Smtp-Source: ABdhPJzOWVD52CylOVIYTWVqAMkteEIQzDDSxn+BMWCepgd3NjevV+3NaIUAB5/6nHYqBA7Wr4BtStd/2zUVhKA/Ksg=
X-Received: by 2002:a05:6102:1164:: with SMTP id
 k4mr884386vsg.18.1644436807508; 
 Wed, 09 Feb 2022 12:00:07 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a59:dd14:0:b0:28c:12fb:1936 with HTTP; Wed, 9 Feb 2022
 12:00:07 -0800 (PST)
From: Mrs Aishia Al-Qaddafi <mrsaishaalqadd123@gmail.com>
Date: Wed, 9 Feb 2022 12:00:07 -0800
X-Google-Sender-Auth: WTGVXEwsdPg3PWPqMXO_OuKUw28
Message-ID: <CAEO68yDmuDDGO4L4e-DqG5bh7GLYxpRXzmrK0EewqwicaKSyZw@mail.gmail.com>
Subject: Hi there can i trust you
To: undisclosed-recipients:;
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

UGxlYXNlIGJlYXIgd2l0aCBtZS4gSSBhbSB3cml0aW5nIHRoaXMgbGV0dGVyIHRvIHlvdSB3aXRo
IHRlYXJzIGFuZApzb3Jyb3cgZnJvbSBteSBoZWFydC4KCkkgYW0gQWlzaGEgTXVhbW1hciBHYWRk
YWZpLCB0aGUgb25seSBkYXVnaHRlciBvZiB0aGUgZW1iYXR0bGVkCnByZXNpZGVudCBvZiBMaWJ5
YSwgSG9uLiBNdWFtbWFyIEdhZGRhZmkuIEkga25vdyBteSBtYWlsIG1pZ2h0IGNvbWUgdG8KeW91
IGFzIGEgc3VycHJpc2UgYmVjYXVzZSB5b3UgZG9u4oCZdCBrbm93IG1lLCBidXQgZHVlIHRvIHRo
ZQp1bnNvbGljaXRlZCBuYXR1cmUgb2YgbXkgc2l0dWF0aW9uIGhlcmUgaW4gUmVmdWdlZSBjYW1w
IE91YWdhZG91Z291CkJ1cmtpbmEgRmFzbyBpIGRlY2lkZWQgdG8gY29udGFjdCB5b3UgZm9yIGhl
bHAuIEkgaGF2ZSBwYXNzZWQgdGhyb3VnaApwYWlucyBhbmQgc29ycm93ZnVsIG1vbWVudHMgc2lu
Y2UgdGhlIGRlYXRoIG9mIG15IGZhdGhlci4gQXQgdGhlIHNhbWUKdGltZSwgbXkgZmFtaWx5IGlz
IHRoZSB0YXJnZXQgb2YgV2VzdGVybiBuYXRpb25zIGxlZCBieSBOYXRvIHdobyB3YW50CnRvIGRl
c3Ryb3kgbXkgZmF0aGVyIGF0IGFsbCBjb3N0cy4gT3VyIGludmVzdG1lbnRzIGFuZCBiYW5rIGFj
Y291bnRzCmluIHNldmVyYWwgY291bnRyaWVzIGFyZSB0aGVpciB0YXJnZXRzIHRvIGZyZWV6ZS4K
Ck15IEZhdGhlciBvZiBibGVzc2VkIG1lbW9yeSBkZXBvc2l0ZWQgdGhlIHN1bSBvZiAkMjcuNU0g
KFR3ZW50eSBTZXZlbgpNaWxsaW9uIEZpdmUgSHVuZHJlZCBUaG91c2FuZCBEb2xsYXJzKSBpbiBh
IEJhbmsgYXQgQnVya2luYSBGYXNvIHdoaWNoCmhlIHVzZWQgbXkgbmFtZSBhcyB0aGUgbmV4dCBv
ZiBraW4uIEkgaGF2ZSBiZWVuIGNvbW1pc3Npb25lZCBieSB0aGUKKEJPQSkgYmFuayB0byBwcmVz
ZW50IGFuIGludGVyZXN0ZWQgZm9yZWlnbiBpbnZlc3Rvci9wYXJ0bmVyIHdobyBjYW4Kc3RhbmQg
YXMgbXkgdHJ1c3RlZSBhbmQgcmVjZWl2ZSB0aGUgZnVuZCBpbiBoaXMgYWNjb3VudCBmb3IgYSBw
b3NzaWJsZQppbnZlc3RtZW50IGluIGhpcyBjb3VudHJ5IGR1ZSB0byBteSByZWZ1Z2VlIHN0YXR1
cyBoZXJlIGluIEJ1cmtpbmEKRmFzby4KCkkgYW0gaW4gc2VhcmNoIG9mIGFuIGhvbmVzdCBhbmQg
cmVsaWFibGUgcGVyc29uIHdobyB3aWxsIGhlbHAgbWUgYW5kCnN0YW5kIGFzIG15IHRydXN0ZWUg
c28gdGhhdCBJIHdpbGwgcHJlc2VudCBoaW0gdG8gdGhlIEJhbmsgZm9yIHRoZQp0cmFuc2ZlciBv
ZiB0aGUgZnVuZCB0byBoaXMgYmFuayBhY2NvdW50IG92ZXJzZWFzLiBJIGhhdmUgY2hvc2VuIHRv
CmNvbnRhY3QgeW91IGFmdGVyIG15IHByYXllcnMgYW5kIEkgYmVsaWV2ZSB0aGF0IHlvdSB3aWxs
IG5vdCBiZXRyYXkgbXkKdHJ1c3QgYnV0IHJhdGhlciB0YWtlIG1lIGFzIHlvdXIgb3duIHNpc3Rl
ciBvciBkYXVnaHRlci4gSWYgdGhpcwp0cmFuc2FjdGlvbiBpbnRlcmVzdHMgeW91LCB5b3UgZG9u
J3QgaGF2ZSB0byBkaXNjbG9zZSBpdCB0byBhbnlib2R5CmJlY2F1c2Ugb2Ygd2hhdCBpcyBnb2lu
ZyBvbiB3aXRoIG15IGVudGlyZSBmYW1pbHksIGlmIHRoZSBVbml0ZWQKbmF0aW9uIGhhcHBlbnMg
dG8ga25vdyB0aGlzIGFjY291bnQsIHRoZXkgd2lsbCBmcmVlemUgaXQgYXMgdGhleQpmcmVlemUg
b3RoZXJzLCBzbyBwbGVhc2Uga2VlcCB0aGlzIHRyYW5zYWN0aW9uIG9ubHkgdG8geW91cnNlbGYg
dW50aWwKd2UgZmluYWxpemUgaXQuCgpTb3JyeSBmb3IgbXkgcGljdHVyZXMuIEkgd2lsbCBlbmNs
b3NlIGl0IGluIG15IG5leHQgbWFpbCBhbmQgbW9yZQphYm91dCBtZSB3aGVuIEkgaGVhciBmcm9t
IHlvdSBva2F5LgoKWW91cnMgU2luY2VyZWx5CkJlc3QgUmVnYXJkLApBaXNoYSBHYWRkYWZpCgoJ
ClJlcGx5CkZvcndhcmQKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0
cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJp
dmVyZGV2LWRldmVsCg==

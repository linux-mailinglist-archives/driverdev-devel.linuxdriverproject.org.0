Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AA10270EDC
	for <lists+driverdev-devel@lfdr.de>; Sat, 19 Sep 2020 17:17:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EFE9C86CF3;
	Sat, 19 Sep 2020 15:17:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ivqQmTIaodfk; Sat, 19 Sep 2020 15:17:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C5F36860C6;
	Sat, 19 Sep 2020 15:17:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 403941BF4D7
 for <devel@linuxdriverproject.org>; Sat, 19 Sep 2020 15:17:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3B37A87176
 for <devel@linuxdriverproject.org>; Sat, 19 Sep 2020 15:17:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tnXQWWh6gH1U for <devel@linuxdriverproject.org>;
 Sat, 19 Sep 2020 15:17:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com
 [209.85.167.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6572C8716D
 for <devel@driverdev.osuosl.org>; Sat, 19 Sep 2020 15:17:40 +0000 (UTC)
Received: by mail-lf1-f67.google.com with SMTP id u8so9352860lff.1
 for <devel@driverdev.osuosl.org>; Sat, 19 Sep 2020 08:17:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=q0+1rITu9zGQ5V58k1klugk4ipvhjZZlAIk1eT/nOkM=;
 b=jlypQ5acNaNT5R3S5pdgWVB0Vi/rYiYlvPPivmOO0iXhrfHD1rxF+Uqt8DVQZgvYMb
 ZbEUWPdUUbK3N6aqOOh1j8DJU2RLu7MSPk/Rl6muWuMm12QvakTY2nwjACarsCQR5rVS
 SGTJiErEGHmxqZPagTdm4HcK4mAecov4n6DeaTqKUjHcXVP9yQUE34ysWCCS03IsTQdh
 kl/qkYJf9z5+qS5Lp+H/VVFffpFFKYr6/9dmDJGWSoXB/M7/xgCShWMTwoDpnCf267D/
 j8fJLGUfGWzQl0w1xhg8q7GMZqQ3d39s10QPacBN7SlGDUhjtwvaSqgYbwnJQwKg+nvQ
 X0iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=q0+1rITu9zGQ5V58k1klugk4ipvhjZZlAIk1eT/nOkM=;
 b=T2dmmDNNfYMBK2erKBVz8QAwBq0BsmHfp0HXc13SfFiEZ2QMSqzIuxG1EFJCoRjJD9
 cwOLPCC2Lj02nlvYqZbnrFHgvShsk4qKTgfsFWHjr9waLLkXc3PFG/6txnVb+IaKuntG
 3avBilFsbMy4X3S3YLODoLG+Hf3SgTqoqgx8+OwzcdAXZRIihSXkzS2D4bAPJ0tKI6J5
 ffnDyEYUrV0QRWYwm1nH1ZN/N6oGs9FNGtFTekjAbnQ7DfTp+5waRvg80bI4lTz2VKUu
 Ip52NFLLho735Y1WZDjSZnwWwdqpnAerDafu7ieZ9xX5ypzbZjNTX23TIMfPhKhmHPEN
 Prcw==
X-Gm-Message-State: AOAM53082vqukEQLWlJxgVFhCrBFPtApNiYyEPsZlpiYmmMgtBIggkmn
 Bx7Y1Q3k3yE7WEpP/i3eH9EVXiYf18iVeEZ386g=
X-Google-Smtp-Source: ABdhPJzRxQXMQal5cM2KA8gj3HIjd9ffoqd6+E2q7pTn8UAGkH3YDJEsW8fBVC+6c0obtp0swSzdI9NH1rOwITvR8gE=
X-Received: by 2002:a05:6512:512:: with SMTP id
 o18mr12048009lfb.98.1600528658613; 
 Sat, 19 Sep 2020 08:17:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab3:6e58:0:0:0:0:0 with HTTP; Sat, 19 Sep 2020 08:17:38
 -0700 (PDT)
From: Kofi Koduah Sarpong <kofikoduahsarpong68@gmail.com>
Date: Sat, 19 Sep 2020 08:17:38 -0700
Message-ID: <CAGyyCaswJDtv6YEsYa0YRTX9iQo6MMCz8sQQ_ZuWQUX5BF-1xA@mail.gmail.com>
Subject: Re: investment interest from Engr: Kofi Sarpong Please go through and
 get back to me.
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
Reply-To: kkoduah.sarpong@outlook.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

THVrb2lsIE92ZXJzZWFzIEdoLiBMdGQuCk9pbCAmIEdhcyBFeHRyYWN0aW9uIENvbXBhbmllcwpO
by4gNjggTWFua3JhbG8gU3RyZWV0CkVhc3QgQ2FudG9ubWVudHMKQWNjcmEgR2hhbmEuCgpEZWFy
OiBTaXIKCk15IG5hbWUgaXMgRW5ncjogS29maSBLb2R1YWggU2FycG9uZy4KSSBhbSB0aGUgQ2hp
ZWYgRXhlY3V0aXZlIE9mZmljZXIgb2YgTHVrb2lsIE92ZXJzZWFzIEdoLiBMdGQgR2hhbmEuCkkg
d2lsbCBiZSByZXRpcmluZyBmcm9tIG15IHdvcmsgYnkgSnVuZSBuZXh0IHllYXIuIEkgd3JpdGUg
dG8gaW5mb3JtCnlvdSBvZiBteSBpbnRlbnRpb24gdG8gaW52ZXN0IGluIGEgSG90ZWwgYnVzaW5l
c3Mgb3IgYW55IG90aGVyIGZvcm1zCm9mIGJ1c2luZXNzIGluIHlvdXIgY291bnRyeSBhbmQgaSBy
ZXF1ZXN0IHlvdSBhc3Npc3RzIG1lIGluIGNhcnJ5aW5nCm91dCB0aGUgZmVhc2liaWxpdHkgc3R1
ZGllcyBvbiBsb2NhdGlvbiBhbmQgbGlrZWx5IGNvc3QgaW1wbGljYXRpb24sCnR5cGUgYW5kIGVz
dGltYXRpb24gb24gaG93IG11Y2ggaXQgd2lsbCBjb3N0IHRvIGVzdGFibGlzaCBhIHRocmVlIHN0
YXIKaG90ZWwsIGVpdGhlciBieSBvdXRyaWdodCBwdXJjaGFzZSBvZiBhbHJlYWR5IGV4aXN0aW5n
IG9uZSBvciBhCmRpbGFwaWRhdGVkIG9uZSB0aGF0IHdlIGNhbiByZW5vdmF0ZSBvciBzZXR0aW5n
IHVwIGEgbmV3IG9uZSBlbnRpcmVseS4KCklmIHlvdSBzaW5jZXJlbHkgY2Fycnkgb3V0IHRoaXMg
c3VydmV5LCBhbmQgZ2l2ZSBtZSBmZWVkYmFjayBhcyBmYXN0CmFzIHBvc3NpYmxlLCBJIHdpbGwg
Z2l2ZSB5b3UgdGhlIHBvd2VyIG9mIGF0dG9ybmV5IHRvIGJ1aWxkICYgbWFuYWdlCnRoZSBob3Rl
bCBmb3IgbWUsIHBlbmRpbmcgbXkgcmV0aXJlbWVudCBuZXh0IHllYXIgYXMgSSBzYWlkLgoKU2ly
LCBpIGhhdmUgdGhlIHN1bSBvZiAoVVMkODUgbWlsbGlvbiBVU0QpIHRoYXQgSSBkZXBvc2l0ZWQg
aW4gYQpGaW5hbmNlIGNvbXBhbnkgb3V0c2lkZSBteSBjb3VudHJ5IGZvciB0aGlzIHByb2plY3Qu
CgpQbGVhc2UgZG9u4oCZdCBkaXNyZWdhcmQgdGhpcyBtZXNzYWdlIEkgYW0gdmVyeSBzaW5jZXJl
IGluIHdoYXQgYW0KdGVsbGluZyB5b3UgdGhlIGRvY3VtZW50cyBmb3IgdGhlIGRlcG9zaXQgSSB3
aWxsIHNlbmQgdGhlbSB0byB5b3UgZm9yCnlvdXIgY29uZmlybWF0aW9uIGFzIHNvb24gYXMgd2Ug
cHJvY2VlZC4KCkkgaGF2ZSB2ZXJ5IGxpdHRsZSBpc3N1ZSB3aXRoIGhlYWx0aCByaWdodCBub3cg
YXMgYSByZXN1bHQgb2YgYWdlIGJ1dApJIGhhdmUgYmVlbiBhc3N1cmVkIGJ5IG15IGRvY3RvciB0
aGF0IEkgd2lsbCBiZSBmaW5lIGFuZCBnZXQgYmFjayB0bwp3b3JrIHNvb24gcHJlc2VudGx5IGkg
YW0gaW4gdGhlIG5laWdoYm9yaW5nIGNvdW50cnkgZm9yIG1lZGljYWwKcmVhc29uLgoKUGxlYXNl
IGRvIGxldCBtZSBrbm93IGlmIHlvdSBhcmUgY2FwYWJsZSwgYW5kIGNhbiBoYW5kbGluZyBzdWNo
CmJ1c2luZXNzLiBGZWVkIG1lIGJhY2sgd2l0aCB5b3VyIGRldGFpbHMsIGFuZCB5b3VyIGFyZWEg
b2YKc3BlY2lhbGl6YXRpb24gc2hvdWxkIGJlIGluZGljYXRlZCBhcyB3ZWxsLiBJIHdpbGwgYmUg
ZXhwZWN0aW5nIHlvdXIKcmVwbHkgYXMgc29vbiBhcyBwb3NzaWJsZS4KClBsZWFzZSBzZW5kIHlv
dXIgdGVsZXBob25lIG51bWJlciB0byBtZSBpIHdpbGwgY2FsbCB5b3UgZm9yIG1vcmUgZGV0YWls
cy4KCgpSZWdhcmRzCkVuZ3I6IEtvZmkgS29kdWFoIFNhcnBvbmcKQ2hpZWYgRXhlY3V0aXZlIE9m
ZmljZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2
ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZl
cmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRl
dmVsCg==

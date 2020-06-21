Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A4F1202CAC
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Jun 2020 22:22:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 911C98679E;
	Sun, 21 Jun 2020 20:22:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hELs5m32rMba; Sun, 21 Jun 2020 20:22:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8C17A860E6;
	Sun, 21 Jun 2020 20:22:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E4E251BF588
 for <devel@linuxdriverproject.org>; Sun, 21 Jun 2020 20:22:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D1EDF2041A
 for <devel@linuxdriverproject.org>; Sun, 21 Jun 2020 20:22:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5YF2kLIZKCaK for <devel@linuxdriverproject.org>;
 Sun, 21 Jun 2020 20:22:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f67.google.com (mail-ej1-f67.google.com
 [209.85.218.67])
 by silver.osuosl.org (Postfix) with ESMTPS id D32AA20417
 for <devel@driverdev.osuosl.org>; Sun, 21 Jun 2020 20:22:14 +0000 (UTC)
Received: by mail-ej1-f67.google.com with SMTP id q19so15862247eja.7
 for <devel@driverdev.osuosl.org>; Sun, 21 Jun 2020 13:22:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=J0VpeRSOJK/TFNJp5yzWMw9fGCcpvggw0aTUG92BVzQ=;
 b=tdTnrT2tyPt1uTy2MWy7FUoEYFfsqa3RHDPeXUjhUWDMLX87sZ1g2TDVURMmtfT8xF
 qUmgtCTCpl01qTLvJZIzkNHUVki4s0wx2H6+f6D/XcLX/pg0YtEKtJi05XfnXXKLfb5u
 e4g+rjf/tHtnkL5C82eBaJO3lrxyK7FSOAFi9F8jmJlc0ClMw8GHwZy6+sxMDDkGvPhL
 NKDJ9j0vYekTVIfEuYCHh7hKyCthVoJDUYDdXPe9kx+/7tO+ScQD2tiW9vIT/+/MNZga
 mdPEVbmhEAF1sqylWIYORVR96hFj5aGNwDwF1AgQH8hn7FR5sBaybx6UDFI4RxhAjW6S
 sZpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=J0VpeRSOJK/TFNJp5yzWMw9fGCcpvggw0aTUG92BVzQ=;
 b=fQvrDsXgPLi/lfOfESBiD77P4rd+xNOC6WTVv8qa4IsvqiO4XV7Mg+k8e8P+GKpzbj
 W+4uXSD5RiurGeQKEdLTP4az3O+Ts1tH6uDnYvfdw70e46nV9fenWTPmePkpqh1RX9KC
 LnCRTtfC6X6X76z6TIYJreWI780lUm3s1UON8sYaB7ZmAjxJjFz9Cl7WrY4oALbCrCjl
 t/A810rgmh4VHiV8QnIRfq6uGzvt+t4ylgzowNuNZ8bSk615wSWs10mHMPiznpqKaO+9
 pVidBQzUO+4SZJnRoG8S6wSK6W+tON2cbPiwfj/hGnXkUT03tASGQb4TorlRgrplIZij
 v7PQ==
X-Gm-Message-State: AOAM533XIokxozTZ1YJwh8at707r/8HwwxO2wlMOqL1iyrEyn0vC4jVW
 /Eyh6BpgOYl78a5Y/pPuLdst/ptnyqe/BwPOlpc=
X-Google-Smtp-Source: ABdhPJyIGD6FYt1yCZHGhmrJQf3Ydz94p67ZxiDI9ByOLekFTwKLdVRIGhTXFvRkGNapYH+IL1p9zM2m+yZGDldpz7U=
X-Received: by 2002:a17:906:94c4:: with SMTP id
 d4mr136936ejy.232.1592770932925; 
 Sun, 21 Jun 2020 13:22:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a54:3542:0:0:0:0:0 with HTTP; Sun, 21 Jun 2020 13:22:12
 -0700 (PDT)
From: "Mr. Scott Donald" <ais90909090@gmail.com>
Date: Sun, 21 Jun 2020 13:22:12 -0700
Message-ID: <CACAcoAdcUXVwQ47Yne6yWVh2LPP+OJPEMNxojiZO0bBLYwSxoQ@mail.gmail.com>
Subject: Hello, Please
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
Reply-To: sctnld11170@tlen.pl
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RGVhciBGcmllbmQsCkknbSBNci4gU2NvdHQgRG9uYWxkIGEgU3VjY2Vzc2Z1bCBidXNpbmVzcyBN
YW4uIGRlYWxpbmcgd2l0aApFeHBvcnRhdGlvbiwgSSBnb3QgeW91ciBtYWlsIGNvbnRhY3QgdGhy
b3VnaCBzZWFyY2ggdG8gbGV0IHlvdSBrbm93IG15ClVnbHkgU2l0dWF0aW9uIEFtIGEgZHlpbmcg
TWFuIGhlcmUgaW4gTG9zIEFuZ2VsZXMgQ2FsaWZvcm5pYSBIb3NwaXRhbApCZWQgaW4gKFVTQSks
IEkgTG9zdCBteSBXaWZlIGFuZCBteSBvbmx5IERhdWdodGVyIGZvciBDb3ZpZC0xOSBJJ20KZHlp
bmcgd2l0aCBzYW1lIHN5bXB0b21zLiBteSBEb2N0b3Igb3Blbi11cCB0byBtZSB0aGF0IEkgZG9u
J3QgaGF2ZQplbm91Z2ggdGltZSB0byBsaXZlIGFueW1vcmUsIEkgaGF2ZSBhIHByb2plY3QgdGhh
dCBJIGFtIGFib3V0IHRvIGhhbmQKb3ZlciB0byB5b3UuIEkgaGF2ZSBhbHJlYWR5IGluc3RydWN0
ZWQgdGhlIEJhcmNsYXlzIEJhbmsgb2YgTG9uZG9uIHRvCnRyYW5zZmVyIG15IGZ1bmQgc3VtIG9m
IMKjMyw3TSBHQlAgdG8geW91IGFzIHRvIGVuYWJsZSB5b3UgdG8gZ2l2ZSA1MCUKdG8gQ2hhcml0
YWJsZSBIb21lIGFuZCB0YWtlIDUwJSBJIGhhdmUgZ2l2ZW4gYWxsIEkgaGF2ZSBoZXJlIGluCkFt
ZXJpY2EgdG8gQ2hhcml0YWJsZSBob21lIEkgYXNrIG15IERvY3RvciB0byBoZWxwIG1lIGtlZXAg
eW91IG5vdGljZQp3aGVuIEknbSBubyBtb3JlIHBsZWFzZSwgYWxsb3cgbWUgdG8gc2VlIHlvdSBv
biBteSBEb2N0b3Igd2hhdHMtYXBwCnZpZGVvIGNhbGwgdmVyeSB1cmdlbnQgcGxlYXNlLCBoZXJl
IGlzIG15IERvY3RvciBXaGF0cy1hcHAgTnVtYmVyIGZvcgp1cmdlbnQgbm90aWNlICsxMzAxOTY5
MjczNwoKSG9wZSBUbyBIZWFyIEZyb20gWW91LiBJJ20gc2VuZGluZyB0aGlzIGVtYWlsIHRvIHlv
dSBmb3IgdGhlIHNlY29uZAp0aW1lIHlldCBubyByZXNwb25zZSBmcm9tIHlvdS4KCk15IFJlZ2Fy
ZHMuCgpNci4gU2NvdHQgRG9uYWxkCkNFTwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9q
ZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK

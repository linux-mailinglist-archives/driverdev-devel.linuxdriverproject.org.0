Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E89E314506
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Feb 2021 01:43:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 882FD86191;
	Tue,  9 Feb 2021 00:43:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VnnBwQu8BeBp; Tue,  9 Feb 2021 00:43:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4973B86135;
	Tue,  9 Feb 2021 00:43:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2E7A51BF977
 for <devel@linuxdriverproject.org>; Tue,  9 Feb 2021 00:43:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2B20C86135
 for <devel@linuxdriverproject.org>; Tue,  9 Feb 2021 00:43:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DpDd-2Ke2Y8A for <devel@linuxdriverproject.org>;
 Tue,  9 Feb 2021 00:43:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com
 [209.85.219.175])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B5AA286132
 for <devel@driverdev.osuosl.org>; Tue,  9 Feb 2021 00:43:14 +0000 (UTC)
Received: by mail-yb1-f175.google.com with SMTP id v123so16421860yba.13
 for <devel@driverdev.osuosl.org>; Mon, 08 Feb 2021 16:43:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=RchYhSnUH4D8ir65x6OKK1yxktPnAGhcFCbackPivPM=;
 b=HJm923hcZrf0dfNmclH0lcXqxIyFCnn3UQzdchco8/ZeNO+ScgmLlPbEBW2g4tH+ub
 9BIKiS6ReP0qT56QTrC54AzlplOnIhBrMQXptF69K4nkjy+VOqJYDWz44Cv6c/sIwDU8
 BQ5C3N3m7oGg+9MDUjBJEN+sVoRkJACuDB4PGlMTtibFwTGArOUw3eqY8WHtSvWWP2uK
 vyuK3IC7WdT6EGfOn0cCbFEkQ9u2pywygxDhx08lgMrRIK11M27m5rng7zRLfmMdQ0Jy
 +dHn7zJ4eZLMWsVdd9WpauMc0qfGyGVVjxQG52LSSscCluvh+XnyTLgtQX4dJZy+aunq
 i4Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=RchYhSnUH4D8ir65x6OKK1yxktPnAGhcFCbackPivPM=;
 b=beqEFKbpfyXtnC9K6EDNCP0AF+AwOxhPKqcmlwn3OuJAMgn8c7KBpBl5bxparhokKO
 bvYaWC50YQ9APunzPl5e10RFkWljyvSzJj/FzlG0UKvlgiiRa9DeWPIWlPMRT0itx5/U
 hgC+jOrtOI4dZJP+lBq3YFdQgyFYGOA1QPWux/uTwjma6eLBa4ADQqhbZTTgI8IeHR0W
 BRNLh8erlePotYIHzbZRZgBH8lla6f+8psjijrFhB+tdfubNVy2gK3RSHqLOjKY5ruc6
 yQRlVKEfcNTptDdn5F+F6QMPt0OoaZdO/d99c+xF3MR7ZzE/UsPxU3wjrCtegZ10yZva
 4kmA==
X-Gm-Message-State: AOAM530dmHMgWasokKbI16XkRM+lUTA1D25IoQm0gKv25TWiFuJIs1Kd
 OJJWHwD9BJjNaIpwaH3lwpzBjQrVP3Ubh0aSUF4=
X-Google-Smtp-Source: ABdhPJxG5LKbrsvPTLHLSTJPoOWI3qUUtr0X3kNxbX99P4ZDRMX4QYhlFvcO+S8NJnl5o9Sx7b4Fg8k/qHR4JHt39tk=
X-Received: by 2002:a05:6902:706:: with SMTP id
 k6mr28980167ybt.52.1612831393828; 
 Mon, 08 Feb 2021 16:43:13 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a0d:f305:0:0:0:0:0 with HTTP;
 Mon, 8 Feb 2021 16:43:13 -0800 (PST)
From: "Mrs. Grace Williams" <iyamuedwin1@gmail.com>
Date: Mon, 8 Feb 2021 16:43:13 -0800
Message-ID: <CAPqwXFTJkLNRSwhK8mSRz94+32g6GT_=D3s=6PcQo3_4qHvbbA@mail.gmail.com>
Subject: FORM MRS.GRACE WILLIAMS
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
Reply-To: gracewillia01@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGVsbG8gVG8gV2hvbSBJdCBNYXkgQ29uY2VybiwKRGVhciBGcmllbmQsCgpQbGVhc2UgZm9yZ2l2
ZSBtZSBmb3Igc3RyZXNzaW5nIHlvdSB3aXRoIG15IHByZWRpY2FtZW50cyBhcyBJIGtub3cKdGhh
dCB0aGlzIGxldHRlciBtYXkgY29tZSB0byB5b3UgYXMgYmlnIHN1cnByaXNlLiBBY3R1YWxseSwg
YXMgbXkKcGFzdG9yIGFkdmlzZWQgbWUgdG8gcmVqZWN0IGVhcnRobHkgcmV3YXJkIGFuZCB0aGFu
a3MgYnkgaGFuZGluZyB0aGUKcHJvamVjdCB0byBzb21lb25lIEkgaGF2ZSBuZXZlciBzZWVuIG9y
IG1ldCBmb3IgYSBncmVhdGVyIHJld2FyZCBpbgpoZWF2ZW4gd2FpdHMgZm9yIHdob2V2ZXIgY2Fu
IGdpdmUgc3VjaCBhIGNvc3RseSBkb25hdGlvbi4gSSBjYW1lCmFjcm9zcyB5b3VyIEUtbWFpbCBm
cm9tIG15IHBlcnNvbmFsIHNlYXJjaCwgYW5kIEkgZGVjaWRlZCB0byBlbWFpbCB5b3UKZGlyZWN0
bHkgYmVsaWV2aW5nIHRoYXQgeW91IHdpbGwgYmUgaG9uZXN0IHRvIGZ1bGZpbGwgbXkgZmluYWwg
d2lzaApiZWZvcmUgb3IgYWZ0ZXIgbXkgZGVhdGguCgpNZWFud2hpbGUsIEkgYW0gTWFkYW0gR3Jh
Y2UgV2lsbGlhbXMsIDUzIHllYXJzLCBhbSBmcm9tIFVLLCBtYXJyaWVkCkpPIFdpbGxpYW1zIG15
IG1vdGhlciBzaGUgZnJvbSBTb3V0aCBLb3JlYSwgd2UgbGl2ZSB0b2dldGhlciBpbiBVU0EKYmVm
b3JlIGhlIGRlYWQuIEkgYW0gc3VmZmVyaW5nIGZyb20gQWRlbm9jYXJjaW5vbWEgQ2FuY2VyIG9m
IHRoZSBsdW5ncwpmb3IgdGhlIHBhc3QgOCB5ZWFycyBhbmQgZnJvbSBhbGwgaW5kaWNhdGlvbiBt
eSBjb25kaXRpb24gaXMgcmVhbGx5CmRldGVyaW9yYXRpbmcgYXMgbXkgZG9jdG9ycyBoYXZlIGNv
bmZpcm1lZCBhbmQgY291cmFnZW91c2x5IGFkdmlzZWQgbWUKdGhhdCBJIG1heSBub3QgbGl2ZSBi
ZXlvbmQgMiB3ZWVrcyBmcm9tIG5vdyBmb3IgdGhlIHJlYXNvbiB0aGF0IG15CnR1bW9yIGhhcyBy
ZWFjaGVkIGEgY3JpdGljYWwgc3RhZ2Ugd2hpY2ggaGFzIGRlZmlsZWQgYWxsIGZvcm1zIG9mCm1l
ZGljYWwgdHJlYXRtZW50LgoKU2luY2UgbXkgZGF5cyBhcmUgbnVtYmVyZWQsIEnigJl2ZSBkZWNp
ZGVkIHdpbGxpbmdseSB0byBmdWxmaWxsIG15CmxvbmctdGltZSB2b3cgdG8gZG9uYXRlIHRvIHRo
ZSB1bmRlcnByaXZpbGVnZWQgdGhlIHN1bSBvZiBFaWdodApNaWxsaW9uIEZpdmUgSHVuZHJlZCBU
aG91c2FuZCBEb2xsYXJzIEkgZGVwb3NpdGVkIGluIGEgZGlmZmVyZW50CmFjY291bnQgb3ZlciAx
MCB5ZWFycyBub3cgYmVjYXVzZSBJIGhhdmUgdHJpZWQgdG8gaGFuZGxlIHRoaXMgcHJvamVjdApi
eSBteXNlbGYgYnV0IEkgaGF2ZSBzZWVuIHRoYXQgbXkgaGVhbHRoIGNvdWxkIG5vdCBhbGxvdyBt
ZSB0byBkbyBzbwphbnltb3JlLiBNeSBwcm9taXNlIGZvciB0aGUgcG9vciBpbmNsdWRlcyBidWls
ZGluZyBvZiB3ZWxsLWVxdWlwcGVkCmNoYXJpdHkgZm91bmRhdGlvbiBob3NwaXRhbCBhbmQgYSB0
ZWNobmljYWwgc2Nob29sIGZvciB0aGVpciBzdXJ2aXZhbC4KCklmIHlvdSB3aWxsIGJlIGhvbmVz
dCwga2luZCBhbmQgd2lsbGluZyB0byBhc3Npc3QgbWUgaGFuZGxlIHRoaXMKY2hhcml0eSBwcm9q
ZWN0IGFzIEnigJl2ZSBtZW50aW9uZWQgaGVyZSwgSSB3aWxsIGxpa2UgeW91IHRvIENvbnRhY3Qg
bWUKdGhyb3VnaCB0aGlzIGVtYWlsIGFkZHJlc3MgKGdyYWNld2lsbGlhMDFAZ21haWwuY29tKS4K
CkJlc3QgUmVnYXJkcyEKTXJzLiBHcmFjZSBXaWxsaWFtcwpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhk
cml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcv
bWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK

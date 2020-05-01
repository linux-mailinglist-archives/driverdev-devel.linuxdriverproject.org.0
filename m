Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E96D01C214B
	for <lists+driverdev-devel@lfdr.de>; Sat,  2 May 2020 01:43:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B79C126291;
	Fri,  1 May 2020 23:43:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XsrBtMEn3Wt5; Fri,  1 May 2020 23:43:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1EE4620770;
	Fri,  1 May 2020 23:43:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DFC741BF2A3
 for <devel@linuxdriverproject.org>; Fri,  1 May 2020 23:43:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D50E887F65
 for <devel@linuxdriverproject.org>; Fri,  1 May 2020 23:43:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oVkvfKUfux6E for <devel@linuxdriverproject.org>;
 Fri,  1 May 2020 23:43:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com
 [209.85.208.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C025887F63
 for <devel@driverdev.osuosl.org>; Fri,  1 May 2020 23:43:38 +0000 (UTC)
Received: by mail-lj1-f195.google.com with SMTP id a21so4046286ljb.9
 for <devel@driverdev.osuosl.org>; Fri, 01 May 2020 16:43:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=jM94nNBrNF36elR9SpxnlLBXmyEcl3UvUFgw939tv+U=;
 b=DWASZQ1Oxa/89on0nxmWTTa2cYZum+LxDTV1cWfNZVql4n+wFGghbeAc4zvto/p6hl
 P615UpWfUZZKwugJrINfG8K4BGDSEOPeQufciUD0xQ4BcLTdsA4a09IPWeogiBDQ6CA9
 HNFfYI3uKt43jwaYHR7vtXBeQI4wqFwIyN7ZZ6ogCl+CGSYY5fGYXrqlulAzUbuIxZmh
 yBJXbY4JR7cT7LTUFPc3Gg3hDNij81X/zgbdY5HhX6TEsazpvXs1Bo26kJOmJUE9tIKQ
 ZwyDGvB3YC562F8uNHWYLL2qODNJUR6mIAtz9J6wIbuHPRZVvxv5P++uvrtctVWq9O2a
 Havg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=jM94nNBrNF36elR9SpxnlLBXmyEcl3UvUFgw939tv+U=;
 b=a9AVxWfFhw0kLViMwYyS+gtJyWxMMgc9k3P2PDvV5w6Az/XxZH/O9FDk4Y/X7UCepi
 ggLf2Airi8ZXp8tf3hcuHInMNyYM7JwYUmEwlbrlf5V9hmBjcuK1Dj3BGeJzXiBzgWOk
 YJpAgjttjjP81cdxFjIMoCvK48YcVk4aM/M55XX/POPZHkYZOqPrAAmJXHxJ7KRq6PVI
 zWsESVWpMrgE1wqEDSO61UGQK131OHN0u/2mNUPw1vzlUDDAKirgGfG7FIoEKL2EG41r
 bw/M0UABvzQxDl5dlnh7J8zmqCIcm75uww3sgBtpPjBHSTPhNTER6u6D6FO6DAEQTfKm
 Tdag==
X-Gm-Message-State: AGi0PuZLJeylxUm+gkCGL/5RfgXoF90uICLQsURZ/Pz1jUQKH4hPTKVu
 //yPceLqsq74ITN+nGAwcH2YGAn196CWSNG/BVI=
X-Google-Smtp-Source: APiQypKIkPHgBbZdSNU2qZsjKhxWyXUVfe0XPzXMoQiuyOHRDqMp/fK9sZSna3/w1/KVXn+lyzQYHQ/m+5DqcMl5LQo=
X-Received: by 2002:a2e:5813:: with SMTP id m19mr3550608ljb.230.1588376616475; 
 Fri, 01 May 2020 16:43:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a19:f50b:0:0:0:0:0 with HTTP;
 Fri, 1 May 2020 16:43:35 -0700 (PDT)
From: "Mr. Wilson Robert" <tntcourierse0r@gmail.com>
Date: Sat, 2 May 2020 00:43:35 +0100
Message-ID: <CAE4JwL9if-nA7OKg=3PGZQcHgYPgSO9VSDQ7nQ7qn5FLwOnwRg@mail.gmail.com>
Subject: Dear Owner,
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
Reply-To: robertmrwilson@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RnJvbTogTXIuIFdpbHNvbiBSb2JlcnQKIERpcmVjdG9yIEluc3BlY3Rpb24gVW5pdAogSGFydHNm
aWVsZOKAk0phY2tzb24gSW50ZXJuYXRpb25hbAogQWlycG9ydCwgQXRsYW50YSBHZW9yZ2lhIFVu
aXRlZC1TdGF0ZXMKIFJlZ2lvbmFsIERpdmlzaW9uIFNoaXBtZW50CiBPZmZpY2VyLCBBdGxhbnRh
IEdlb3JnaWEuCgogRGVhciBPd25lciwKCkkgYW0gTXIuIFdpbHNvbiBSb2JlcnQsIEhlYWQgT2Zm
aWNlci1pbi1DaGFyZ2UsIGFuZCBBZG1pbmlzdHJhdGl2ZQpTZXJ2aWNlIEluc3BlY3Rpb24gVW5p
dCBVbml0ZWQgTmF0aW9ucyBJbnNwZWN0aW9uIEFnZW5jeSBpbgpIYXJ0c2ZpZWxk4oCTSmFja3Nv
biBJbnRlcm5hdGlvbmFsIEFpcnBvcnQgQXRsYW50YSwgR2VvcmdpYS4gRHVyaW5nIG91cgppbnZl
c3RpZ2F0aW9uLCBJIGRpc2NvdmVyZWQgYW4gYWJhbmRvbmVkIHNoaXBtZW50IHRocm91Z2ggYSBE
aXBsb21hdApmcm9tIFVuaXRlZCBLaW5nZG9tIHdoaWNoIHdhcyB0cmFuc2ZlcnJlZCBmcm9tIEpG
IEtlbm5lZHkgQWlycG9ydCB0bwpvdXIgZmFjaWxpdHkgaGVyZSBpbiBBdGxhbnRhLCBhbmQgd2hl
biBzY2FubmVkIGl0IHJldmVhbGVkIGFuCnVuZGlzY2xvc2VkIHN1bSBvZiBtb25leSBpbiAyIE1l
dGFsIFRydW5rIEJveGVzIHdlaWdoaW5nIGFwcHJveGltYXRlbHkKMTMwa2cgZWFjaC4KCiBUaGUg
Y29uc2lnbm1lbnQgd2FzIGFiYW5kb25lZCBiZWNhdXNlIHRoZSBDb250ZW50IHdhcyBub3QgcHJv
cGVybHkKZGVjbGFyZWQgYnkgdGhlIGNvbnNpZ25lZSBhcyBtb25leSByYXRoZXIgaXQgd2FzIGRl
Y2xhcmVkIGFzIHBlcnNvbmFsCmVmZmVjdC9jbGFzc2lmaWVkIGRvY3VtZW50IHRvIGVpdGhlciBh
dm9pZCBkaXZlcnNpb24gYnkgdGhlIFNoaXBwaW5nCkFnZW50IG9yIGNvbmZpc2NhdGlvbiBieSB0
aGUgcmVsZXZhbnQgYXV0aG9yaXRpZXMuIFRoZSBkaXBsb21hdCdzCmluYWJpbGl0eSB0byBwYXkg
Zm9yIE5vbiBJbnNwZWN0aW9uIGZlZXMgYW1vbmcgb3RoZXIgdGhpbmdzIGFyZSB0aGUKcmVhc29u
IHdoeSB0aGUgY29uc2lnbm1lbnQgaXMgZGVsYXllZCBhbmQgYWJhbmRvbmVkLgoKIEJ5IG15IGFz
c2Vzc21lbnQsIGVhY2ggb2YgdGhlIGJveGVzIGNvbnRhaW5zIGFib3V0ICQ4LjVNIG9yIG1vcmUu
VGhleQphcmUgc3RpbGwgbGVmdCBpbiB0aGUgYWlycG9ydCBzdG9yYWdlIGZhY2lsaXR5IHRpbGwg
dG9kYXkuIFRoZQpDb25zaWdubWVudHMgbGlrZSBJIHNhaWQgYXJlIHR3byBtZXRhbCB0cnVuayBi
b3hlcyB3ZWlnaGluZyBhYm91dCA2NWtnCmVhY2ggKEludGVybmFsIGRpbWVuc2lvbjogVzYxIHgg
SDE1NiB4IEQ3MyAoY20pIGVmZmVjdGl2ZSBjYXBhY2l0eToKNjgwIEwpIEFwcHJveGltYXRlbHku
IFRoZSBkZXRhaWxzIG9mIHRoZSBjb25zaWdubWVudCBpbmNsdWRpbmcgeW91cgpuYW1lIGFuZCBl
bWFpbCBvbiB0aGUgb2ZmaWNpYWwgZG9jdW1lbnQgZnJvbSBVbml0ZWQgTmF0aW9ucycgb2ZmaWNl
IGluCkxvbmRvbiB3aGVyZSB0aGUgc2hpcG1lbnQgd2FzIHRhZ2dlZCBhcyBwZXJzb25hbCBlZmZl
Y3RzL2NsYXNzaWZpZWQKZG9jdW1lbnQgaXMgc3RpbGwgYXZhaWxhYmxlIHdpdGggdXMuIEFzIGl0
IHN0YW5kcyBub3csIHlvdSBoYXZlIHRvCnJlY29uZmlybSB5b3VyIGZ1bGwgbmFtZSwgUGhvbmUg
TnVtYmVyLCBmdWxsIGFkZHJlc3Mgc28gSSBjYW4KY3Jvc3MtY2hlY2sgYW5kIHNlZSBpZiBpdCBj
b3JyZXNwb25kcyB3aXRoIHRoZSBvbmUgb24gdGhlIG9mZmljaWFsCmRvY3VtZW50cy4gSXQgaXMg
bm93IGxlZnQgdG8geW91IHRvIGRlY2lkZSBpZiB5b3Ugc3RpbGwgbmVlZCB0aGUKY29uc2lnbm1l
bnQgb3IgYWxsb3cgdXMgcmVwYXRyaWF0ZSBpdCBiYWNrIHRvIFVLIChwbGFjZSBvZiBvcmlnaW4p
IGFzCndlIHdlcmUgaW5zdHJ1Y3RlZC4gIChSRVBMWSBUTyBUSElTIEVNQUlMOnJvYmVydG1yd2ls
c29uQGdtYWlsLmNvbSkKCiBBcyBJIGRpZCBzYXkgYWdhaW4sIHRoZSBzaGlwcGVyIGFiYW5kb25l
ZCBpdCBhbmQgcmFuIGF3YXkgbW9zdAppbXBvcnRhbnRseSBiZWNhdXNlIGhlIGdhdmUgYSBmYWxz
ZSBkZWNsYXJhdGlvbiwgaGUgY291bGQgbm90IHBheSBmb3IKdGhlIHllbGxvdyB0YWcsIGhlIGNv
dWxkIG5vdCBzZWN1cmUgYSB2YWxpZCBub24gaW5zcGVjdGlvbgpkb2N1bWVudChzKSwgZXRjLiBJ
IGFtIHJlYWR5IHRvIGFzc2lzdCB5b3UgaW4gYW55IHdheSBJIGNhbiBmb3IgeW91IHRvCmdldCBi
YWNrIHRoaXMgcGFja2FnZXMgcHJvdmlkZWQgeW91IHdpbGwgYWxzbyBnaXZlIG1lIHNvbWV0aGlu
ZyBvdXQgb2YKaXQgKGZpbmFuY2lhbCBncmF0aWZpY2F0aW9uKS4gWW91IGNhbiBlaXRoZXIgY29t
ZSBpbiBwZXJzb24sIG9yIHlvdQplbmdhZ2UgdGhlIHNlcnZpY2VzIG9mIGEgc2VjdXJlIHNoaXBw
aW5nL2RlbGl2ZXJ5IENvbXBhbnkvYWdlbnQgdGhhdAp3aWxsIHByb3ZpZGUgdGhlIG5lY2Vzc2Fy
eSBzZWN1cml0eSB0aGF0IGlzIHJlcXVpcmVkIHRvIGRlbGl2ZXIgIHRoZQpwYWNrYWdlIHRvIHlv
dXIgZG9vcnN0ZXAgb3IgdGhlIGRlc3RpbmF0aW9uIG9mIHlvdXIgY2hvaWNlLiBJIG5lZWQgdGhl
CiBlbnRpcmUgZ3VhcmFudGVlIHRoYXQgSSBjYW4gZ2V0IGZyb20geW91IGJlZm9yZSBJIGNhbiBn
ZXQgaW52b2x2ZWQgaW4KIHRoaXMgcHJvamVjdC4KCiBQbGVhc2UgcmVwbHkgdGhpcyBlbWFpbCBz
dHJpY3RseSBhdCAgLgoKIEJlc3QgUmVnYXJkcywKIE1yLiBXaWxzb24gUm9iZXJ0CiBIZWFkIE9m
ZmljZXItaW4tQ2hhcmdlCiBBZG1pbmlzdHJhdGl2ZSBTZXJ2aWNlIEluc3BlY3Rpb24gVW5pdApf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWls
aW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2Lmxp
bnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK

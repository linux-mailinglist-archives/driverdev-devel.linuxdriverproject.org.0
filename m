Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CF943EBFB8
	for <lists+driverdev-devel@lfdr.de>; Sat, 14 Aug 2021 04:23:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BF3246077C;
	Sat, 14 Aug 2021 02:23:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3VvzJRwFZ9bN; Sat, 14 Aug 2021 02:23:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E8A836060B;
	Sat, 14 Aug 2021 02:23:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 882331BF4E7
 for <devel@linuxdriverproject.org>; Sat, 14 Aug 2021 02:23:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 77CDD80EDB
 for <devel@linuxdriverproject.org>; Sat, 14 Aug 2021 02:23:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BU_T3KjbF0sH for <devel@linuxdriverproject.org>;
 Sat, 14 Aug 2021 02:23:30 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ot1-x32b.google.com (mail-ot1-x32b.google.com
 [IPv6:2607:f8b0:4864:20::32b])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5EAA580ED8
 for <devel@driverdev.osuosl.org>; Sat, 14 Aug 2021 02:23:30 +0000 (UTC)
Received: by mail-ot1-x32b.google.com with SMTP id
 l36-20020a0568302b24b0290517526ce5e3so6845867otv.11
 for <devel@driverdev.osuosl.org>; Fri, 13 Aug 2021 19:23:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=7Xq9jb2sUMv3xaNw7Q5Cgt7yCkc3M0xn16Wn4AtIDKI=;
 b=OzrI9xbHA+sTKNv67iiMrSWHffXy44L+HkzKqwonyDmmy2KYpb/rVjeD0InNV5YSQl
 RQVYoYgnsvnFujigyJGCLXg6H2jOiwkpR/Vh150M0XoKltaOavN3k9bSdmB3Aw3MHku6
 PurzpUKi8dbwJIe8SGWJftdspATGr302Z90R8Mtx7EzwL25WtE6e63zIqLg6d2OI4B6F
 +LRmE7DBvgD/JNHxSb1ckAwwKU5GOQukldGWZH7BbN8PA5SdsMBiw7hMiazIEKO+KWPN
 RaHUBEG6yszupjeUVNjms10ESne+Fk+rZBhnI84cXts1W5qIoxqaYyA6Tm7HvJzovTNE
 0JCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=7Xq9jb2sUMv3xaNw7Q5Cgt7yCkc3M0xn16Wn4AtIDKI=;
 b=CuseeRDLcE79/tLEn8av+oUNtRKgCpUAIgGNkhexXHK1wvfEsSJ0f+STNivWNmQKLz
 ZeTeg8C4W9RRguEOBLqplMrjV3dAlaA/iXSPmcuNWNXCUXEBL+TjP5ifHQesjCoywGjm
 Rps94qQpS8bynrz8W4t6eWDLIROjJs8MFnxlwwS6Dq3L9Z3d0Q59tEurLtYObVQISWaV
 qL6MWgtM4SiM7i0uEBlEs+1TPQVZi8ytx80mipeRtSEZQPeCPRBLp8pUZoVKDYCHKQ1D
 Vc4EQSY3Yk0d+g/KQigKvmeJVvdSwcefmErfYJ0QSyb9ac2qqa3meiUBSvmnJ6+6xTow
 ZDUQ==
X-Gm-Message-State: AOAM530h6vX3y7gUhDBJQEf3oBWpwYPLfqPbyEhLiNl/CpbFamdcFx3H
 XuIuQyJLYgPkKd95OQ5KiFXMu82VD+Sh/geu/5s=
X-Google-Smtp-Source: ABdhPJwatrrrzNy4lJLaMnfrQCFPKNs5tJ6xSfjC30koJYfPwvxzQphkTnKG+cmicvHDc/SJAGiDS/DFe4pN1TwM3OA=
X-Received: by 2002:a05:6830:1dc5:: with SMTP id
 a5mr4266339otj.137.1628907809311; 
 Fri, 13 Aug 2021 19:23:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6808:f0d:0:0:0:0 with HTTP; Fri, 13 Aug 2021 19:23:28
 -0700 (PDT)
From: Deedee Paul <deedeepaul21@gmail.com>
Date: Sat, 14 Aug 2021 02:23:28 +0000
Message-ID: <CAL-_JaEcKQij58+3wK25riXSrhJU=hsRZg5QrF=eoVLuxPV8Jg@mail.gmail.com>
Subject: Hello
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
Reply-To: deedeepaul@yandex.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

QXR0ZW50aW9uOiBCZW5lZmljaWFyeSwKClRoaXMgaXMgdG8gb2ZmaWNpYWxseSBpbmZvcm0geW91
IHRoYXQgd2UgaGF2ZSBiZWVuIGhhdmluZyBtZWV0aW5ncyBmb3IKdGhlIHBhc3Qgd2Vla3Mgbm93
IHdoaWNoIGVuZGVkIFR3byBkYXlzIGFnbyB3aXRoIE1yLiBKb2huIFcuIEFzaGUsClByZXNpZGVu
dCBvZiB0aGUgNjh0aCBzZXNzaW9uIG9mIHRoZSBVTiBHZW5lcmFsIEFzc2VtYmx5LCBNci4gRGF2
aWQKUi5NYWxwYXNzLiB0aGUgV29ybGQgQmFuayBQcmVzaWRlbnQgYW5kIEhvbi4gTXJzLiBDaHJp
c3RpbmUgTGFnZ2FyZAooSU1GKSBEaXJlY3RvciBHZW5lcmFsLCBpbiB0aGUgbWVldGluZyB3ZSB0
YWxrZWQgYWJvdXQgaG93IHRvCmNvbXBlbnNhdGUgU2NhbSB2aWN0aW0ncyBwZW9wbGUgYW5kIGFs
bCB0aGUgcGVvcGxlIHRoYXQgd2VyZSBhZmZlY3RlZAp0aGUgbW9zdCBieSB0aGlzIENvcm9uYXZp
cnVzIHBhbmRlbWljLgoKWW91ciBlbWFpbCBhZGRyZXNzIHdhcyBzdWNjZXNzZnVsbHkgc2VsZWN0
ZWQgZm9yIHRoaXMgZG9uYXRpb24gd2l0aCBvdGhlcnMuCgpUaGUgVW5pdGVkIE5hdGlvbnMgaGF2
ZSBhZ3JlZWQgdG8gY29tcGVuc2F0ZSB5b3Ugd2l0aCB0aGUgc3VtIG9mCigkMTUwLDAwMC4wMCkg
T25lIGh1bmRyZWQgYW5kIGZpZnR5IHRob3VzYW5kIFVuaXRlZCBTdGF0ZXMgRG9sbGFycy4gV2UK
aGF2ZSBhcnJhbmdlZCB5b3VyIHBheW1lbnQgdGhyb3VnaCBXT1JMRCBBVE0gTUFTVEVSQ0FSRCB3
aGljaCBpcyB0aGUKbGF0ZXN0IGluc3RydWN0aW9uIGZyb20gdGhlIFdvcmxkIEJhbmsgR3JvdXAu
CgpGb3IgdGhlIGNvbGxlY3Rpb24gb2YgeW91ciBXT1JMRCBBVE0gTUFTVEVSQ0FSRCBjb250YWN0
IG91cgpyZXByZXNlbnRhdGl2ZSBSZXYuIERhdmlkIFdvb2QsIHNlbmQgdG8gaGltIHlvdXIgY29u
dGFjdCBhZGRyZXNzIHdoZXJlCnlvdSB3YW50IHlvdXIgTUFTVEVSQ0FSRCB0byBiZSBzZW50IHRv
IHlvdSwgbGlrZQoKMS4gWW91ciBGdWxsIE5hbWU6IC4uLi4uLi4uLgoyLiBZb3VyIENvdW50cnkg
YW5kIFlvdXIgRGVsaXZlcnkgSG9tZSBBZGRyZXNzOiAuLi4uLi4uLgozLiBZb3VyIFRlbGVwaG9u
ZTogLi4uLi4uLi4uLi4uLi4KCkhpcyBlLW1haWwgYWRkcmVzczogKGRkYXZpZHdvb2QxQHlhbmRl
eC5jb20pIEhlIGlzIGEgQ2FuYWRpYW4gKFVOKQpyZXByZXNlbnRhdGl2ZSBBZ2VudC4KClRoYW5r
cy4KVGVsOiAxIDUxMyA0NTIgNDM1Mi4KTXIuIE1pY2hhZWwgTcO4bGxlciBEaXJlY3Rvci1HZW5l
cmFsIG9mIHRoZSBVbml0ZWQgTmF0aW9ucyBPZmZpY2UKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJp
dmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21h
aWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 51C703E46B5
	for <lists+driverdev-devel@lfdr.de>; Mon,  9 Aug 2021 15:33:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 54D6640346;
	Mon,  9 Aug 2021 13:33:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZP8zvlicrRwi; Mon,  9 Aug 2021 13:33:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 90A8C403A3;
	Mon,  9 Aug 2021 13:33:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C34991BF3DF
 for <devel@linuxdriverproject.org>; Mon,  9 Aug 2021 13:32:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B269D82B34
 for <devel@linuxdriverproject.org>; Mon,  9 Aug 2021 13:32:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ntYXTOurJ3Td for <devel@linuxdriverproject.org>;
 Mon,  9 Aug 2021 13:32:56 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-yb1-xb44.google.com (mail-yb1-xb44.google.com
 [IPv6:2607:f8b0:4864:20::b44])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1E3B182433
 for <devel@driverdev.osuosl.org>; Mon,  9 Aug 2021 13:32:56 +0000 (UTC)
Received: by mail-yb1-xb44.google.com with SMTP id z5so27754141ybj.2
 for <devel@driverdev.osuosl.org>; Mon, 09 Aug 2021 06:32:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=7Xq9jb2sUMv3xaNw7Q5Cgt7yCkc3M0xn16Wn4AtIDKI=;
 b=HJtSjL/PND+qlfbiyHn9lMsbcHh3DRzuxpuHOlUNGnBjA9j2n4xptSiRg+QotPI2yc
 YrsFzq8UymWlOCIAd3Odb/iFYJuX0LGlZdRjMfsGhbVm6a1M1syMagOLWYnHsH0RJHoB
 dho55ZktHMyU2GcrHgyUtE8Z5u/MdgY4ja+xlCzG3hn8J0hsrzFy8RLVV27rodIoRsvC
 Gi0juO31DkVIzTQfxZPdo5WLzZKxOLh6F2Ug33gc9y2aeq74RBwRfk+Y4OdgIDswcyx/
 gGOSe19GrXb3DVN5K34KQAN4TKZF56VD/PYW3A3eYVYoVmkuOJyuKpv/xyvF3ChppTX/
 tf4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=7Xq9jb2sUMv3xaNw7Q5Cgt7yCkc3M0xn16Wn4AtIDKI=;
 b=uDSBdG90Kr3SfkEW5mt4xK7bKxMcVkyLlZBUrPE7yrDbtqJMFt3GwVi6DA4bEiY+F7
 LwPbsgVRRS7xQJhiNPA8eC6WqlFxkA4B4X7Sbta9tNUBYLbifzoOWX2aq28Q4Xd1eue/
 7n195ag+7gsGWIgaAUyaqvVST32KeYq5hqjCD+dr7+6HgP6cFBejwSfWV8Ojdw14KlUz
 9PzGLKOLWPMzcic/LugT+UjvuK2MgLQ3via3+CEy3sMBQdXQyiMKEbzgHMDnPM+VoRfG
 X/xzmlemMXiX/JB+58q2e2XRNB8sPJtwrVjikqProv819W6XD+huBgwdlJwDhcaBA5kq
 hKjg==
X-Gm-Message-State: AOAM531/7dhE/EUiAeudCKkCWL5xBg8baVcznFIBRkhHMgJdHJRhp0wO
 dGs1rF4xTs53xxDK/LYR2kTYVB791+KULpcAChU=
X-Google-Smtp-Source: ABdhPJzitChKOrXQMwcSo/2baQu8bErqjhbyo//yzrRDwa41bg1na7h148ALoR3tZruhFB/zK7m8gGI0+AyBUD7Po7E=
X-Received: by 2002:a25:7b83:: with SMTP id
 w125mr30884788ybc.238.1628515975057; 
 Mon, 09 Aug 2021 06:32:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6918:7a23:b029:52:9b86:3899 with HTTP; Mon, 9 Aug 2021
 06:32:54 -0700 (PDT)
From: Nicolas Billy <gaddafia395@gmail.com>
Date: Mon, 9 Aug 2021 13:32:54 +0000
Message-ID: <CAGgkav3+qdrzrHOJVn8V83GPrdmVWhvr9kF_Qa2yv0TtDCHQDw@mail.gmail.com>
Subject: Donations
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
Reply-To: nicolasbilly@yandex.com
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

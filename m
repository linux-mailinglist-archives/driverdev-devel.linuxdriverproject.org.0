Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F150468CF9
	for <lists+driverdev-devel@lfdr.de>; Sun,  5 Dec 2021 20:27:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 93CFE6070E;
	Sun,  5 Dec 2021 19:27:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4Vzf-UZ3Y43K; Sun,  5 Dec 2021 19:27:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id EC9AE606BB;
	Sun,  5 Dec 2021 19:27:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C39591BF383
 for <devel@linuxdriverproject.org>; Sun,  5 Dec 2021 19:27:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BBAE340472
 for <devel@linuxdriverproject.org>; Sun,  5 Dec 2021 19:27:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id df9k4mnbbW39 for <devel@linuxdriverproject.org>;
 Sun,  5 Dec 2021 19:27:43 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com
 [IPv6:2607:f8b0:4864:20::52e])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EB41940462
 for <devel@driverdev.osuosl.org>; Sun,  5 Dec 2021 19:27:42 +0000 (UTC)
Received: by mail-pg1-x52e.google.com with SMTP id l190so8411852pge.7
 for <devel@driverdev.osuosl.org>; Sun, 05 Dec 2021 11:27:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=NZsnLu5JmN0mE37TObDYmENJFpHRKr3ZiAm6Rt4MF0E=;
 b=RG0X4jsGlHaVQkvDADKyJu6kSIsCXzMatCJDPfBwxmb8LozOicoRNqqtIm5Bu8Hjh5
 O9sBi3X6O3IarnHzr2BWYdqdmmcU0HCHnwvlSz/UL2Z+jVKDvUvo5h8ba7+HVIzq5D+E
 HE1sxWl8Y03sKdz/9T1rCieUN9QDjnn3ewvHOtKIeKIKrcpX+YjZJmXUh+6+cUVxcJ3h
 xcSUCXv0ARngEHGHCwyepszUVZPvidW29UrTEvQkNaPLLFg9gklX4ai+CLMMmPMyxRJn
 WYtg2YMLtSwNWVCa7ZJnNEyMGHFWUKnGLeah6mcvZ92OQWC7AjwWX7Kmu6eC5l0RZMEz
 zNZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=NZsnLu5JmN0mE37TObDYmENJFpHRKr3ZiAm6Rt4MF0E=;
 b=GfFD7OcbtrD3bC5mJK7D3WomrT61PGF0vBqt+kXdLE4i9UiAnjX5M5roD4zDxoPfxc
 B5awGy0LUiX+nRWM3HZsz3fuv7dM0RxF9xRPDU4gnmwLBAgY17M0eXKppZTf5FJPreQZ
 J/RUYFy9eZEVi+HvDr2JtSzOuihhN+7puDT0J3sfHwuQxm15Q1tGYGNUtSvnQ5N7PPUI
 KcD5P1bBNzRl/nmJx8KjXsMeEdCCdPWH1OuGx9FFUoUCXM3eQ0aS8ifhFjhNlac1RlkZ
 xSuiiq4QLruHo0jlPgfMQBDQFTfwfE6knmbpfuq8q85lBgIozCmRMRikTjO/4K9/OKYN
 Sybg==
X-Gm-Message-State: AOAM5330F8BhzWRkvRFZxScvfl+yqvlToEfqre6e4lQ6VQhE39MsOBKW
 Vh8ZbFpWvWefsg4BpO4/OWxQ62ZcY4uML2S2GPE=
X-Google-Smtp-Source: ABdhPJy6fubScU2XwIfrzkeZi6kbxxSKIZuYyvHClhH0evfe2tc35KYmWWLPLR/5ui/YkZ5D4nuJfoT8SHC6Ojf6x5M=
X-Received: by 2002:a65:44c4:: with SMTP id g4mr15261504pgs.103.1638732462344; 
 Sun, 05 Dec 2021 11:27:42 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6a10:b756:0:0:0:0 with HTTP; Sun, 5 Dec 2021 11:27:42
 -0800 (PST)
From: Hamid Fadil Abbas <kgbeauty.empas@gmail.com>
Date: Sun, 5 Dec 2021 22:27:42 +0300
Message-ID: <CANDY_yG8yUvcwgM=wkSnLy0zcag89Z-B0qGZp2XrAAfGtVzvtA@mail.gmail.com>
Subject: =?UTF-8?Q?Hallo=21=21_Guten_Tag_Empf=C3=A4nger?=
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
Reply-To: martiniparker4@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGFsbG8hISBHdXRlbiBUYWcgRW1wZsOkbmdlcgoKICAgICAgICAgIEljaCBiaW4gSGFtaWQgQWJh
c3MsIGVpbiBNaXRhcmJlaXRlciBkZXIgVmFraWZCYW5rLCBUw7xya2VpLgpJY2ggaGFiZSBTaWUg
d2VnZW4gZWluZXMgdmVyc3RvcmJlbmVuIEt1bmRlbiBrb250YWt0aWVydCwgZGVyIDIwMDMgYmVp
CmVpbmVtIEF1dG91bmZhbGwgYXVmIGRlciBJc3RhbmJ1bGVyIEF1dG9iYWhuIHVtcyBMZWJlbiBr
YW0gdW5kIElocgpJbnRlcmVzc2Ugd8OkcmUgZGFua2Jhci4gRXIgd2FyIG1pciBlaW4gdmVydHJh
dXRlciBLdW5kZS4KVm9yIHNlaW5lbSBUb2QgaGF0dGUgbWVpbiBNYW5kYW50IDM2IE1pbGxpb25l
biBVUy1Eb2xsYXIgKCQKMzYuMDAwLjAwMCwwMCkgaW4gZGVyIE9iaHV0IG1laW5lcyBGaW5hbnpp
bnN0aXR1dHMgaGllciBpbiBkZXIgVMO8cmtlaQpoaW50ZXJsYXNzZW4gTWl0dGVsLiBMZWlkZXIg
aGF0dGUgZXIgenVtIFplaXRwdW5rdCBzZWluZXMgVG9kZXMga2VpbgpUZXN0YW1lbnQuCiAgICAg
ICBBbGxlIHVudGVybm9tbWVuZW4gQmVtw7xodW5nZW4gbGllw59lbiBrZWluZSBWZXJiaW5kdW5n
IHp1IGVpbmVtCnNlaW5lciBGYW1pbGllbm1pdGdsaWVkZXIgZXJrZW5uZW4uIERhcyBuZXVlIEVV
LUVyYnJlY2h0IC8gR3V0c2NocmlmdAovIEZvbmRzIGxlZ3QgamVkb2NoIGVpbmUgRnJpc3QgZmVz
dCwgaW5uZXJoYWxiIGRlcmVyIHNvbGNoZQpHdXRzY2hyaWZ0ZW4gYW5nZW5vbW1lbiB3ZXJkZW4g
a8O2bm5lbi4gRGFzIEZpbmFuemluc3RpdHV0IGhhdCBtaWNoCmFuZ2V3aWVzZW4sIGRhcyBuw6Rj
aHN0ZSBGYW1pbGllbm1pdGdsaWVkIGJlcmVpdHp1c3RlbGxlbiwgZGFzIGRpZQpHZWxkZXIgYW5m
b3JkZXJuIHdpcmQsIHVuZCB3aXJkIGRlbSBGaW5hbnppbnN0aXR1dCBkdXJjaCBkaWUKV2VpZ2Vy
dW5nLCBhdWYgZGllc2VzIFVsdGltYXR1bSB6dSByZWFnaWVyZW4sIGdlc2V0emxpY2ggZXJsYXVi
ZW4sCmRpZXNlIEdlbGRlciBhbiBkaWUgRVUtWmVudHJhbGJhbmsgYWxzIHVuYXVmZ2Vmb3JkZXJ0
ZSBHZWxkZXIgenUKbWVsZGVuLgogICAgICBNZWluIEtvbGxlZ2UgdW5kIGljaCBoYWJlbiBhbGxl
IG5vdHdlbmRpZ2VuIFZvcmF1c3NldHp1bmdlbiBmw7xyCmRpZSBGcmVpZ2FiZSBkaWVzZXIgTWl0
dGVsIGdlc2NoYWZmZW4sIHVuZCBpY2ggYmVhYnNpY2h0aWdlLCBJaG5lbiBhbHMKQmVnw7xuc3Rp
Z3RlbiBkaWVzZSBHZWxlZ2VuaGVpdCB6dSBwcsOkc2VudGllcmVuLiBCaXR0ZSBiZWFjaHRlbiBT
aWUsCmRhc3MgbWlyIGFsbGUgbm90d2VuZGlnZW4gSW5mb3JtYXRpb25lbi9Eb2t1bWVudGF0aW9u
ZW4genUgZGllc2VtCkZvbmRzIHJlY2h0bGljaCB6dXIgVmVyZsO8Z3VuZyBnZXN0ZWxsdCB3ZXJk
ZW4uIEJpdHRlIHNlbmRlbiBTaWUgbWlyCklocmUgS29tbWVudGFyZSwgaW5kZW0gU2llIGVpbmUg
QW50d29ydCBhbiBkaWVzZSBFLU1haWwtQWRyZXNzZQpzZW5kZW46IG1vcnRnYWdlYWx0ZWdyYUBn
bWFpbC5jb20KCkdyw7zDn2UKSGFtaWQgQWJhcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJw
cm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1h
bi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK

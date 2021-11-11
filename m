Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C400F44DCE1
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Nov 2021 22:08:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C991A404FE;
	Thu, 11 Nov 2021 21:08:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XTwxvi1_jZ-Y; Thu, 11 Nov 2021 21:08:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1DF6D404E2;
	Thu, 11 Nov 2021 21:08:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8C3171BF388
 for <devel@linuxdriverproject.org>; Thu, 11 Nov 2021 21:08:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8833E60600
 for <devel@linuxdriverproject.org>; Thu, 11 Nov 2021 21:08:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id inDadrXEFEng for <devel@linuxdriverproject.org>;
 Thu, 11 Nov 2021 21:08:31 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com
 [IPv6:2a00:1450:4864:20::129])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 89D6C6059B
 for <devel@driverdev.osuosl.org>; Thu, 11 Nov 2021 21:08:31 +0000 (UTC)
Received: by mail-lf1-x129.google.com with SMTP id b1so11233485lfs.13
 for <devel@driverdev.osuosl.org>; Thu, 11 Nov 2021 13:08:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:sender:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=oNd+yoKFdt4ZkISv7Jib53kui1CUs3HWEeusHpSFEuc=;
 b=U+v94wHnSFCgcmMcCi1X7z/Hxym8Pch18ar9cZoAucOkI3Rg6en9SLf1r6N6V6j1fh
 iYAC9Is6Cg3A4yzAu83f1A0xVCfOY3knYSTHWTtK1sXxw6QR7rGczU60YRb9dWTUnhnN
 MFqPEI6D711ovMzIqeu8v7INgjVWixmrp/kAzLWvAq7b421r0JbTkXhXaHywB+pYuIKW
 fylifAyZPOjWvAtwBmrNI4H4gxaemM1SXFhjOeDVbuhdyRCWi7cNecNyIn4jvenM28ga
 TGEidVRSBDOxuramDc+YVazQ93C1uEgvg3d2IK7HPKka/0q/cin7n175rJlTy2429CeF
 KNQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
 :to:content-transfer-encoding;
 bh=oNd+yoKFdt4ZkISv7Jib53kui1CUs3HWEeusHpSFEuc=;
 b=yu1fpm/1n9b3C+47rkR8oW5cierVXHrCf6Gbfexsp21yNjE6vEC1MmNS5yoF0ZCJKo
 9YgrVgRnGrK4AL3zZFF4hFY6Mf15oOy+GpQaR9dEbC+xTvg5wJXrQ9iVs5sQj0ccJMMJ
 uMM4jy0yahEqIbTJu/PtV/ZUhGz5lBm4WcTai84c9WWVP+0U6YT+B1u5mxQTlGzVvy2t
 zpJn02JdS10tvV7qj1ivS78R7bkctGwyZ9ye4cDpmL+hNxTcO7ignozsPGlXSCVzMggE
 7LR4pI0dfX23f6PYRYM4zPJuMD9afutCqKFvYGOCImq8yNvUpsXMFxuYgvnPz5ol7B45
 gvOw==
X-Gm-Message-State: AOAM531vlstDhNPmfuo4y4usZriOQxurfSiBroOp+BkUIklx7ng1bGDA
 kwfpcez3klvZvVGNWsiKWJbtCQlLY9WG4ZPjn+E=
X-Google-Smtp-Source: ABdhPJwXV3+a9+clIYBxYCJ2oYlWZtUi+iYyM0VlTMlTjWluwsNRl98Z+mrIJT5k0r7GJ6Z1IaEaVlMdljOpAjoNgHU=
X-Received: by 2002:a19:2d11:: with SMTP id k17mr9463419lfj.186.1636664909249; 
 Thu, 11 Nov 2021 13:08:29 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6512:45c:0:0:0:0 with HTTP; Thu, 11 Nov 2021 13:08:28
 -0800 (PST)
From: Aisha Al-Qaddafi <aisha.gdaff21@gmail.com>
Date: Thu, 11 Nov 2021 22:08:28 +0100
X-Google-Sender-Auth: S2DLfqYrFtFf8x2VvyoeckbMVRQ
Message-ID: <CAFNE3Fh1O3z6G5F3UMWCzzEhj41asXLGEqD407ep7+TQzC_xeg@mail.gmail.com>
Subject: My Dear Friend
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

SGVsbG8gTXkgQmVsb3ZlZCBPbmUsIGkgbmVlZCB5b3VyIGFzc2lzdGFuY2UsCgpQbGVhc2UgYmVh
ciB3aXRoIG1lLiBJIGFtIHdyaXRpbmcgdGhpcyBsZXR0ZXIgdG8geW91IHdpdGggdGVhcnMgYW5k
CnNvcnJvdyBmcm9tIG15IGhlYXJ0LgoKSSBhbSBBaXNoYSBNdWFtbWFyIEdhZGRhZmksIHRoZSBv
bmx5IGRhdWdodGVyIG9mIHRoZSBlbWJhdHRsZWQKcHJlc2lkZW50IG9mIExpYnlhLCBIb24uIE11
YW1tYXIgR2FkZGFmaS4gSSBrbm93IG15IG1haWwgbWlnaHQgY29tZSB0bwp5b3UgYXMgYSBzdXJw
cmlzZSBiZWNhdXNlIHlvdSBkb27igJl0IGtub3cgbWUsIGJ1dCBkdWUgdG8gdGhlCnVuc29saWNp
dGVkIG5hdHVyZSBvZiBteSBzaXR1YXRpb24gaGVyZSBpbiBSZWZ1Z2VlIGNhbXAgT3VhZ2Fkb3Vn
b3UKQnVya2luYSBGYXNvIGkgZGVjaWRlZCB0byBjb250YWN0IHlvdSBmb3IgaGVscC4gSSBoYXZl
IHBhc3NlZCB0aHJvdWdoCnBhaW5zIGFuZCBzb3Jyb3dmdWwgbW9tZW50cyBzaW5jZSB0aGUgZGVh
dGggb2YgbXkgZmF0aGVyLiBBdCB0aGUgc2FtZQp0aW1lLCBteSBmYW1pbHkgaXMgdGhlIHRhcmdl
dCBvZiBXZXN0ZXJuIG5hdGlvbnMgbGVkIGJ5IE5hdG8gd2hvIHdhbnQKdG8gZGVzdHJveSBteSBm
YXRoZXIgYXQgYWxsIGNvc3RzLiBPdXIgaW52ZXN0bWVudHMgYW5kIGJhbmsgYWNjb3VudHMKaW4g
c2V2ZXJhbCBjb3VudHJpZXMgYXJlIHRoZWlyIHRhcmdldHMgdG8gZnJlZXplLgoKTXkgRmF0aGVy
IG9mIGJsZXNzZWQgbWVtb3J5IGRlcG9zaXRlZCB0aGUgc3VtIG9mICQyNy41TSAoVHdlbnR5IFNl
dmVuCk1pbGxpb24gRml2ZSBIdW5kcmVkIFRob3VzYW5kIERvbGxhcnMpIGluIGEgQmFuayBhdCBC
dXJraW5hIEZhc28gd2hpY2gKaGUgdXNlZCBteSBuYW1lIGFzIHRoZSBuZXh0IG9mIGtpbi4gSSBo
YXZlIGJlZW4gY29tbWlzc2lvbmVkIGJ5IHRoZQooQk9BKSBiYW5rIHRvIHByZXNlbnQgYW4gaW50
ZXJlc3RlZCBmb3JlaWduIGludmVzdG9yL3BhcnRuZXIgd2hvIGNhbgpzdGFuZCBhcyBteSB0cnVz
dGVlIGFuZCByZWNlaXZlIHRoZSBmdW5kIGluIGhpcyBhY2NvdW50IGZvciBhIHBvc3NpYmxlCmlu
dmVzdG1lbnQgaW4gaGlzIGNvdW50cnkgZHVlIHRvIG15IHJlZnVnZWUgc3RhdHVzIGhlcmUgaW4g
QnVya2luYQpGYXNvLgoKSSBhbSBpbiBzZWFyY2ggb2YgYW4gaG9uZXN0IGFuZCByZWxpYWJsZSBw
ZXJzb24gd2hvIHdpbGwgaGVscCBtZSBhbmQKc3RhbmQgYXMgbXkgdHJ1c3RlZSBzbyB0aGF0IEkg
d2lsbCBwcmVzZW50IGhpbSB0byB0aGUgQmFuayBmb3IgdGhlCnRyYW5zZmVyIG9mIHRoZSBmdW5k
IHRvIGhpcyBiYW5rIGFjY291bnQgb3ZlcnNlYXMuIEkgaGF2ZSBjaG9zZW4gdG8KY29udGFjdCB5
b3UgYWZ0ZXIgbXkgcHJheWVycyBhbmQgSSBiZWxpZXZlIHRoYXQgeW91IHdpbGwgbm90IGJldHJh
eSBteQp0cnVzdCBidXQgcmF0aGVyIHRha2UgbWUgYXMgeW91ciBvd24gc2lzdGVyIG9yIGRhdWdo
dGVyLiBJZiB0aGlzCnRyYW5zYWN0aW9uIGludGVyZXN0cyB5b3UsIHlvdSBkb24ndCBoYXZlIHRv
IGRpc2Nsb3NlIGl0IHRvIGFueWJvZHkKYmVjYXVzZSBvZiB3aGF0IGlzIGdvaW5nIG9uIHdpdGgg
bXkgZW50aXJlIGZhbWlseSwgaWYgdGhlIFVuaXRlZApuYXRpb24gaGFwcGVucyB0byBrbm93IHRo
aXMgYWNjb3VudCwgdGhleSB3aWxsIGZyZWV6ZSBpdCBhcyB0aGV5CmZyZWV6ZSBvdGhlcnMsIHNv
IHBsZWFzZSBrZWVwIHRoaXMgdHJhbnNhY3Rpb24gb25seSB0byB5b3Vyc2VsZiB1bnRpbAp3ZSBm
aW5hbGl6ZSBpdC4KClNvcnJ5IGZvciBteSBwaWN0dXJlcy4gSSB3aWxsIGVuY2xvc2UgaXQgaW4g
bXkgbmV4dCBtYWlsIGFuZCBtb3JlCmFib3V0IG1lIHdoZW4gSSBoZWFyIGZyb20geW91IG9rYXku
CgpZb3VycyBTaW5jZXJlbHkKQmVzdCBSZWdhcmQsCkFpc2hhIEdhZGRhZmkKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRl
dmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnBy
b2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==

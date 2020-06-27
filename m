Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F258820C49A
	for <lists+driverdev-devel@lfdr.de>; Sun, 28 Jun 2020 00:06:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6B61488430;
	Sat, 27 Jun 2020 22:06:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sLRYWBL68etc; Sat, 27 Jun 2020 22:06:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 77E6A88126;
	Sat, 27 Jun 2020 22:06:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EB1E41BF41D
 for <devel@linuxdriverproject.org>; Sat, 27 Jun 2020 22:05:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E7B45883DA
 for <devel@linuxdriverproject.org>; Sat, 27 Jun 2020 22:05:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mkgXRNvKYszj for <devel@linuxdriverproject.org>;
 Sat, 27 Jun 2020 22:05:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id F12FD88126
 for <devel@driverdev.osuosl.org>; Sat, 27 Jun 2020 22:05:56 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id j1so6229942pfe.4
 for <devel@driverdev.osuosl.org>; Sat, 27 Jun 2020 15:05:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=hDm0J70xfMLbVvceQHwxPddZCp69UMTk2d0jtKg2a8s=;
 b=N6kPulua2YSlM8imcShAj91mdG3FVs3SsXSz87fb1+u3nd7u7PFa6MKJ279dIRDWxh
 0Ldfj86Lh7w+Xrc1R5Ac12lp/bi6BKorqLlDMWYld1qOBhdJB4N7Na0XiYaHB8nKtBEn
 57C/Tzw6MUWAOIXcOnRxxN4MeNm7iQhU/hvtXzHXK0vqQBasxFJE8WhTf5ke+LZ6XEZm
 /oWHd42QW3NLQJh3kf1TRlauenW2jL1Poq5HUYmLYngCGGUW3fX0WLGx3ldU3AhEukyR
 HJCMoV5irc6uSRF+aDmFQnYTlSn+N9B5n6b9ltoSvd3dHTYHCaXSwIr77k6vqrwMxy85
 lwfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=hDm0J70xfMLbVvceQHwxPddZCp69UMTk2d0jtKg2a8s=;
 b=TA5vOZMlMxj58W0ATws11Buk/LLa/8UlJsZWd1LF0ohD6UdjIjaK6oYfS0ajWPsDSD
 agYtqfsJjRN0rLGRVeb8uuA4N/FlgHmYmCTZCiynfj/IgFd0Q0OZBGvCJJXuHpfehwpe
 B/Atuyhfq2WprM5rLnVxPi041slNt10SB+P8Smlfxo69C74iXN1D0fNxq+fJBpWIDIBU
 5Aw3gea9Wmv+MplCoXMR5P/kpv2UB+GgcXvp2ux+kweYV5NXsM7BSWBHNJM7Se1NDAxz
 /qwlBdlAO/C/DRvhwk2CxkuJn/+woZ2xVEiRZhTbArcaYbGTsdNH7mawQBxvxo1Zwgq/
 dhDw==
X-Gm-Message-State: AOAM532b2PQzcZxu/46nYWjz7zDybu87P52q+UIEHSdTTo4WHmkgKM5p
 Lbhh0C8hJS5fZ0GQgwa1hCAv7xTZNKr89p84VYtkMExNvTg=
X-Google-Smtp-Source: ABdhPJwHv45zwmNuK/YSX2uBVAIqQ2zLOwtA+ngiZqoTP9Rs9Xn2gCCD3OWXiVcvkiJ+PU31Rp2ZvkRVy2hsrxlhX9g=
X-Received: by 2002:a92:7749:: with SMTP id s70mr10069248ilc.259.1593295098567; 
 Sat, 27 Jun 2020 14:58:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4f:4e46:0:0:0:0:0 with HTTP; Sat, 27 Jun 2020 14:58:17
 -0700 (PDT)
From: lookman joe <mrlookmanjoe@gmail.com>
Date: Sat, 27 Jun 2020 22:58:17 +0100
Message-ID: <CAG9X5Hfvk-fmbqs9+RtHRqyUu35f9-A5+EbwjPrw9eVNH09ftg@mail.gmail.com>
Subject: 
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

TU9ORVktR1JBTSBUUkFOU0ZFUlJFRCBQQVlNRU5UIElORk86CgpCZWxvdyBpcyB0aGUgc2VuZGVy
4oCZcyBpbmZvcm1hdGlvbgoKCgoxLiBNRy4gUkVGRVJFTkNFIE5PIzogMzYzNjA4NTcKCjIuIFNF
TkRFUidTIE5BTUU6IEpvaG5zb24gV2lsbGlhbXMKCjMuIEFNT1VOVCBUTyBQSUNLVVA6IFVTJDEw
LDAwMAoKCgpHbyB0byBhbnkgTW9uZXkgR3JhbSBvZmZpY2UgbmVhciB5b3UgYW5kIHBpY2sgdXAg
dGhlIHBheW1lbnQgVHJhY2sgdGhlCgpSZWZlcmVuY2UgTnVtYmVyIGJ5IHZpc2l0aW5nIGFuZCBj
bGljayB0aGUgbGluayBiZWxvdwoKKGh0dHBzOi8vc2VjdXJlLm1vbmV5Z3JhbS5jb20vZW1iZWQv
dHJhY2spIGFuZCBlbnRlciB0aGUgUmVmZXJlbmNlCgpOdW1iZXI6IDM2MzYwODU3IGFuZCB0aGUg
TGFzdCBOYW1lOiBXaWxsaWFtcywgeW91IHdpbGwgZmluZCB0aGUgcGF5bWVudAoKYXZhaWxhYmxl
IGZvciBwaWNrdXAgaW5zdGFudGx5LgoKWW91cnMgU2luY2VyZWx5LAoKTXJzLiBIZWxlbiBNYXJ2
aXMKVW5pdGVkIE5hdGlvbnMgTGlhaXNvbiBPZmZpY2UKRGlyZWN0b3JhdGUgZm9yIEludGVybmF0
aW9uYWwgUGF5bWVudHMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0
cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJp
dmVyZGV2LWRldmVsCg==

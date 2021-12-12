Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D6698471981
	for <lists+driverdev-devel@lfdr.de>; Sun, 12 Dec 2021 10:37:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E50008597E;
	Sun, 12 Dec 2021 09:37:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K8VvI5Ju1jvB; Sun, 12 Dec 2021 09:37:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 34666857D6;
	Sun, 12 Dec 2021 09:37:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 985311BF3E9
 for <devel@linuxdriverproject.org>; Sun, 12 Dec 2021 09:37:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 79AFE41C79
 for <devel@linuxdriverproject.org>; Sun, 12 Dec 2021 09:37:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u_Ag6Vqj0lE8 for <devel@linuxdriverproject.org>;
 Sun, 12 Dec 2021 09:37:22 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com
 [IPv6:2607:f8b0:4864:20::744])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CD1AB41C64
 for <devel@linuxdriverproject.org>; Sun, 12 Dec 2021 09:37:21 +0000 (UTC)
Received: by mail-qk1-x744.google.com with SMTP id g28so11648394qkk.9
 for <devel@linuxdriverproject.org>; Sun, 12 Dec 2021 01:37:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:sender:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=oNd+yoKFdt4ZkISv7Jib53kui1CUs3HWEeusHpSFEuc=;
 b=PSdNthBUcOH+tWbgTX2Nk4zMJHKgU4HkBCIGumLQtb83Y8+78OMr4e4PYG/YCldOcB
 E/ISqcJ8w74uehJWbF8N9VMNTDfUTfg+YIjDOBnQFPij7UcpEdJ/T44HptLc+TqyxFgE
 cQFD9K7zclIRKXpNWH/X7nKULN1xNW9y3Lpdk21vcZwt91EQj10lTXItZlps5M9PnlAj
 fZgIFXIfMfaoERi38p/hu2lhDQwnan5qkeI/KrfGUxtB9jkUy2WjBoCDvymeJkq4g2EA
 DfrG2bM0QCdxI01R4op+9KHXg/ka1oi2zWcSRd1Kqgcvjrr0lrQ8IgTyGH3Tib5wDInU
 GaHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
 :to:content-transfer-encoding;
 bh=oNd+yoKFdt4ZkISv7Jib53kui1CUs3HWEeusHpSFEuc=;
 b=Wz+lNH+VIbhfLBdLKqPm5nks/lSlmkwCheyANcnK50PkHuQ0X8yb28Y8sevTvzQ3aA
 xrIMSLKoPFW/McE1ATI3IHOkGI7KiM7CFsCTl4+cZ4SZWqaNZDt82k1u1LBkdswIaBCW
 D7RbD2pUbM52BOGySgAzHdf63r7pWdz2YVXrlry23cvYPz44vbii04q9YZtcMkn6XJCe
 VubyRJLr1GfuSvfrRl2XYgCqXMSZFw9RBCj+g6ufdoZm8xlMYPKMCvupS67fOtv4drmW
 nnni4Ocl24Vi6PrHTsY0HRBnxvbp0WIXDks8eKvKIZDQdzzT/zRbn26nMEf+K28UXBAx
 TxNQ==
X-Gm-Message-State: AOAM531uTwE86gkn7hDk0XOgFxIz81m2cHJLNoGuXD6dam2pcfc/0Tiq
 b5NC4+FU+fi6IRJkX0z4EIpLL8ZNcLoKng6b+Xs=
X-Google-Smtp-Source: ABdhPJzAVs88vU+gCNOY6rBJFrJn6OF+n7VjYdX/6UXWWizzYsQZVBd37WSN1VeaspsNfeHoymDSrpvKBAwZeXzHxBk=
X-Received: by 2002:ae9:eb13:: with SMTP id b19mr28134714qkg.389.1639301840594; 
 Sun, 12 Dec 2021 01:37:20 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6214:caf:0:0:0:0 with HTTP; Sun, 12 Dec 2021 01:37:20
 -0800 (PST)
From: Aisha Al-Qaddafi <aishaqadafi77@gmail.com>
Date: Sun, 12 Dec 2021 10:37:20 +0100
X-Google-Sender-Auth: t7Qb8ISfsjlNvoRvSRLYHLh98v8
Message-ID: <CAFwp+Me6=MzL=H13GbjC7DNeAcaU6hLHGVc9wMAxTyvTSBW1Bw@mail.gmail.com>
Subject: hello dear
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
